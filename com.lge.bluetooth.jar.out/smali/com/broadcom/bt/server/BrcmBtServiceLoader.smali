.class public Lcom/broadcom/bt/server/BrcmBtServiceLoader;
.super Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;
.source "BrcmBtServiceLoader.java"

# interfaces
.implements Lcom/broadcom/bt/server/IBrcmBtServiceLoader;


# static fields
.field private static final FM_ALWAYS_ON:Z = true

.field public static final TAG:Ljava/lang/String; = "BrcmBtServiceLoader"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;-><init>()V

    .line 43
    const-string v0, "BrcmBtServiceLoader"

    const-string v1, "default construct is called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void
.end method


# virtual methods
.method public loadServices(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 50
    :try_start_0
    const-string v3, "BrcmBtServiceLoader"

    const-string v4, "Initializing...."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 52
    .local v1, pkgMgr:Landroid/content/pm/PackageManager;
    const-string v3, "com.broadcom.bt.app.system"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 53
    .local v0, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    const-string v3, "system"

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    const-string v3, "BrcmBtServiceLoader"

    const-string v4, "********BT/Fm services configured to run in system process..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v3, "service.brcm.bt.is_sta"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v3, "BrcmBtServiceLoader"

    const-string v4, "Soft On/Off enabled...Starting FM services..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {p1}, Lcom/broadcom/bt/service/fm/FmServiceManager;->init(Landroid/content/Context;)V

    .line 70
    .end local v0           #info:Landroid/content/pm/ApplicationInfo;
    .end local v1           #pkgMgr:Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 64
    .restart local v0       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v1       #pkgMgr:Landroid/content/pm/PackageManager;
    :cond_0
    const-string v3, "BrcmBtServiceLoader"

    const-string v4, "********BT/Fm services configured to run as standalone process..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v3, "service.brcm.bt.is_sta"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v0           #info:Landroid/content/pm/ApplicationInfo;
    .end local v1           #pkgMgr:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 68
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "BrcmBtServiceLoader"

    const-string v4, "Error reading BrcmBluetoothServices package"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
