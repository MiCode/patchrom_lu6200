.class final Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;
.super Lcom/broadcom/bt/service/pbap/IBluetoothPBAP$Stub;
.source "PbapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/system/PbapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothPBAPServiceStub"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/broadcom/bt/service/pbap/IBluetoothPBAP$Stub;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;->mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    .line 54
    iput-object v0, p0, Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;->mContext:Landroid/content/Context;

    .line 69
    iput-object p1, p0, Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;->mContext:Landroid/content/Context;

    .line 70
    const-string v0, "bluetooth_pbap"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    iput-object v0, p0, Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;->mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    .line 72
    return-void
.end method


# virtual methods
.method public declared-synchronized pbapServerAccessRsp(BZLjava/lang/String;)V
    .locals 3
    .parameter "op_code"
    .parameter "access"
    .parameter "filename"

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;->mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;->mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->pbapServerAccessRsp(BZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    monitor-exit p0

    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pbapServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "password"
    .parameter "userId"

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;->mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;->mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->pbapServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit p0

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerCallback(Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback;)V
    .locals 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;->mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;->mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->registerCallback(Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback;)V
    .locals 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;->mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/broadcom/bt/app/system/PbapService$BluetoothPBAPServiceStub;->mSvc:Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->unregisterCallback(Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
