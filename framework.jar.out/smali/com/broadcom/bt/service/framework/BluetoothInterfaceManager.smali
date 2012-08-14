.class public Lcom/broadcom/bt/service/framework/BluetoothInterfaceManager;
.super Ljava/lang/Object;
.source "BluetoothInterfaceManager.java"


# static fields
.field private static final BRCM_SVR_LOADER_IMPL_CLASS_NAME:Ljava/lang/String; = "com.broadcom.bt.server.BrcmBtServiceLoader"

.field private static final BT_SVR_CONFIG_IMPL_CLASS_NAME:Ljava/lang/String; = "com.broadcom.bt.service.framework.BluetoothServiceConfig"

.field private static final POWER_MGR_SVR_IMPL_CLASS_NAME:Ljava/lang/String; = "com.broadcom.bt.service.framework.PowerManagementService"

.field private static final TAG:Ljava/lang/String; = "BTIFMGR"

.field private static sBluetoothServiceConfig:Lcom/broadcom/bt/service/framework/IBluetoothServiceConfig;

.field private static sBrcmBtServiceLoader:Lcom/broadcom/bt/server/IBrcmBtServiceLoader;

.field private static sPowerManagementService:Lcom/broadcom/bt/service/framework/IPowerManagementService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 37
    sput-object v3, Lcom/broadcom/bt/service/framework/BluetoothInterfaceManager;->sBluetoothServiceConfig:Lcom/broadcom/bt/service/framework/IBluetoothServiceConfig;

    .line 38
    sput-object v3, Lcom/broadcom/bt/service/framework/BluetoothInterfaceManager;->sPowerManagementService:Lcom/broadcom/bt/service/framework/IPowerManagementService;

    .line 39
    sput-object v3, Lcom/broadcom/bt/service/framework/BluetoothInterfaceManager;->sBrcmBtServiceLoader:Lcom/broadcom/bt/server/IBrcmBtServiceLoader;

    .line 42
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v3, "/system/framework/com.lge.bluetooth.jar"

    const-class v4, Lcom/broadcom/bt/service/framework/BluetoothInterfaceManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 45
    .local v0, cl:Ljava/lang/ClassLoader;
    :try_start_0
    const-string v3, "com.broadcom.bt.service.framework.BluetoothServiceConfig"

    const/4 v4, 0x1

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 46
    .local v1, cls:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/framework/IBluetoothServiceConfig;

    sput-object v3, Lcom/broadcom/bt/service/framework/BluetoothInterfaceManager;->sBluetoothServiceConfig:Lcom/broadcom/bt/service/framework/IBluetoothServiceConfig;

    .line 48
    const-string v3, "com.broadcom.bt.service.framework.PowerManagementService"

    const/4 v4, 0x1

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/framework/IPowerManagementService;

    sput-object v3, Lcom/broadcom/bt/service/framework/BluetoothInterfaceManager;->sPowerManagementService:Lcom/broadcom/bt/service/framework/IPowerManagementService;

    .line 51
    const-string v3, "com.broadcom.bt.server.BrcmBtServiceLoader"

    const/4 v4, 0x1

    invoke-static {v3, v4, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/server/IBrcmBtServiceLoader;

    sput-object v3, Lcom/broadcom/bt/service/framework/BluetoothInterfaceManager;->sBrcmBtServiceLoader:Lcom/broadcom/bt/server/IBrcmBtServiceLoader;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 61
    .end local v1           #cls:Ljava/lang/Class;
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, e:Ljava/lang/ClassNotFoundException;
    const-string v3, "BTIFMGR"

    const-string v4, "Class not found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 56
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 57
    .local v2, e:Ljava/lang/InstantiationException;
    const-string v3, "BTIFMGR"

    const-string v4, "Can\'t create instance"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    .end local v2           #e:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    .line 59
    .local v2, e:Ljava/lang/IllegalAccessException;
    const-string v3, "BTIFMGR"

    const-string v4, "Can\'t access"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIBluetoothServiceConfig()Lcom/broadcom/bt/service/framework/IBluetoothServiceConfig;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/broadcom/bt/service/framework/BluetoothInterfaceManager;->sBluetoothServiceConfig:Lcom/broadcom/bt/service/framework/IBluetoothServiceConfig;

    return-object v0
.end method

.method public static getIBrcmBtServiceLoader()Lcom/broadcom/bt/server/IBrcmBtServiceLoader;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/broadcom/bt/service/framework/BluetoothInterfaceManager;->sBrcmBtServiceLoader:Lcom/broadcom/bt/server/IBrcmBtServiceLoader;

    return-object v0
.end method

.method public static getIPowerManagementService()Lcom/broadcom/bt/service/framework/IPowerManagementService;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/broadcom/bt/service/framework/BluetoothInterfaceManager;->sPowerManagementService:Lcom/broadcom/bt/service/framework/IPowerManagementService;

    return-object v0
.end method
