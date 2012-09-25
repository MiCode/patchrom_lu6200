.class public Lcom/broadcom/bt/app/pbap/PbapApplication;
.super Ljava/lang/Object;
.source "PbapApplication.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static mServiceEnabled:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/app/pbap/PbapApplication;->mServiceEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isServiceEnabled()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/broadcom/bt/app/pbap/PbapApplication;->mServiceEnabled:Z

    return v0
.end method

.method public static setServiceEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 41
    sput-boolean p0, Lcom/broadcom/bt/app/pbap/PbapApplication;->mServiceEnabled:Z

    .line 42
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 46
    const-string v1, "PbapApplication"

    const-string v2, "Loading PbapApplication."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p1, p0, Lcom/broadcom/bt/app/pbap/PbapApplication;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v0, svcMgrIntent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.ServiceManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lcom/broadcom/bt/app/pbap/PbapApplication;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 54
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "name"
    .parameter "service"

    .prologue
    .line 58
    const-string v3, "PbapApplication"

    const-string v4, "Connected to Service Manager"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {p2}, Lcom/broadcom/bt/service/framework/IServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/framework/IServiceManager;

    move-result-object v1

    .line 62
    .local v1, svcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;
    :try_start_0
    const-string v3, "bluetooth_pbap"

    invoke-interface {v1, v3}, Lcom/broadcom/bt/service/framework/IServiceManager;->getServiceState(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, serviceState:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    sput-boolean v3, Lcom/broadcom/bt/app/pbap/PbapApplication;->mServiceEnabled:Z

    .line 67
    const-string v3, "PbapApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PBAP Service Enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/broadcom/bt/app/pbap/PbapApplication;->mServiceEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0           #serviceState:I
    :goto_1
    iget-object v3, p0, Lcom/broadcom/bt/app/pbap/PbapApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 74
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/broadcom/bt/app/pbap/PbapApplication;->mContext:Landroid/content/Context;

    .line 75
    return-void

    .line 64
    .restart local v0       #serviceState:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 69
    .end local v0           #serviceState:I
    :catch_0
    move-exception v2

    .line 70
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "PbapApplication"

    const-string v4, "Unable to get Bluetooth Pbap Service State"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 79
    const-string v0, "PbapApplication"

    const-string v1, "Disconnected from Service Manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method
