.class public final Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;
.super Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub;
.source "BluetoothAVRCPServiceStub.java"


# static fields
.field private static final D:Z = true

.field private static final DBG_REF_COUNT:Z = false

.field private static REF_COUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothAVRCPServiceStub"

.field private static mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->REF_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub;-><init>()V

    .line 48
    const-string v0, "BluetoothAVRCPServiceStub"

    const-string v1, "BluetoothAVRCPServiceStub"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v0, "bluetooth_avrcp"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getServiceEventLoop(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    sput-object v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    .line 55
    return-void
.end method


# virtual methods
.method public declared-synchronized disable()V
    .locals 2

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothAVRCPServiceStub"

    const-string v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->disable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enable()V
    .locals 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    const-string v0, "BluetoothAVRCPServiceStub"

    const-string v1, "enable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;->enable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 59
    const-string v0, "BluetoothAVRCPServiceStub"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPServiceStub;->mService:Lcom/broadcom/bt/service/avrcp/BluetoothAVRCPService;

    .line 68
    :cond_0
    invoke-super {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothAVRCPService$Stub;->finalize()V

    .line 69
    return-void
.end method
