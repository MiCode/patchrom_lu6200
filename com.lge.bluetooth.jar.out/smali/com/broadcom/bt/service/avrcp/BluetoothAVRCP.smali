.class public Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "BluetoothAVRCP.java"


# static fields
.field public static final ACTION_ON_AVRCP_CONNECTED:Ljava/lang/String; = "com.broadcom.bt.app.avrcp.action.ON_AVRCP_CONNECTED"

.field public static final ACTION_ON_AVRCP_DISCONNECTED:Ljava/lang/String; = "com.broadcom.bt.app.avrcp.action.ON_AVRCP_DISCONNECTED"

.field static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.avrcp.action."

#the value of this static final field might be set in the static constructor
.field static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final AVRCPS_DISCONNECT_TYPE_GRACEFUL:I = 0x0

.field public static final AVRCPS_DISCONNECT_TYPE_IMMEDIATE:I = 0x1

.field public static final EXTRA_ADDRESS:Ljava/lang/String; = "address"

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_avrcp"

.field private static final TAG:Ljava/lang/String; = "BluetoothAVRCP"


# instance fields
.field private mService:Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "com.broadcom.bt.app.avrcp.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 112
    return-void
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 3
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 101
    const-string v1, "bluetooth_avrcp"

    invoke-static {p0, v1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    const-string v1, "BluetoothAVRCP"

    const-string v2, "Unable to get proxy: service is not enabled."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v1, 0x0

    .line 106
    :goto_0
    return v1

    .line 105
    :cond_0
    new-instance v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;

    invoke-direct {v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;-><init>()V

    .line 106
    .local v0, p:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;
    const-string v1, "com.broadcom.bt.app.system"

    const-string v2, "com.broadcom.bt.app.system.BluetoothAVRCPService"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public disconnect(B)V
    .locals 2
    .parameter "type"

    .prologue
    .line 148
    const-string v0, "BluetoothAVRCP"

    const-string v1, "disconnect..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "BluetoothAVRCP"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 133
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "service"

    .prologue
    .line 121
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCP;->mService:Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    const/4 v1, 0x1

    .line 126
    :goto_0
    return v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothAVRCP"

    const-string v2, "Unable to initialize proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    const/4 v1, 0x0

    goto :goto_0
.end method
