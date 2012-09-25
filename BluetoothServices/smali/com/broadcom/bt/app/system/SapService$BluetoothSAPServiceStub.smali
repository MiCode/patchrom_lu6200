.class final Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;
.super Lcom/broadcom/bt/service/sap/IBluetoothSAPService$Stub;
.source "SapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/system/SapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothSAPServiceStub"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/broadcom/bt/service/sap/IBluetoothSAPService$Stub;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mContext:Landroid/content/Context;

    .line 66
    const-string v0, "bluetooth_sap"

    invoke-static {v0}, Lcom/broadcom/bt/service/framework/BluetoothServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    iput-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    .line 68
    return-void
.end method


# virtual methods
.method public declared-synchronized disable()V
    .locals 3

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->disable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect(B)V
    .locals 3
    .parameter "type"

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->disconnect(B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    :cond_0
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enable()V
    .locals 3

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->enable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    monitor-exit p0

    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .locals 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->registerCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    .locals 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/broadcom/bt/app/system/SapService$BluetoothSAPServiceStub;->mSvc:Lcom/broadcom/bt/service/sap/BluetoothSAPService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/sap/BluetoothSAPService;->unregisterCallback(Lcom/broadcom/bt/service/sap/IBluetoothSAPCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_0
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
