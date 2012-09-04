.class public final Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "BluetoothPBAPService.java"


# static fields
.field private static final D:Z = true

.field private static final FILE_ZERO_VCF_21:Ljava/lang/String; = "/data/data/com.broadcom.bt.app.system/0_21.vcf"

.field private static final FILE_ZERO_VCF_30:Ljava/lang/String; = "/data/data/com.broadcom.bt.app.system/0_30.vcf"

.field private static final PBAP_MODE_BTLD:I = 0x1

.field private static final PBAP_MODE_GOOGLE:I = 0x2

.field private static final PBAP_MODE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothPBAPService"


# instance fields
.field mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPbapMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 82
    invoke-static {}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->classInitNative()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupPbapNativeDataNative()V
.end method

.method private native disablePbapServerNative()V
.end method

.method private native enableDefaultPbapServerNative()V
.end method

.method private native enablePbapServerNative(ILjava/lang/String;Ljava/lang/String;ZB[B)V
.end method

.method private native initPbapNativeDataNative()V
.end method

.method private static needAccessRequest()Z
    .locals 4

    .prologue
    .line 89
    :try_start_0
    const-string v1, "true"

    const-string v2, "service.brcm.bt.secure_mode"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 93
    .local v0, t:Ljava/lang/Throwable;
    :goto_0
    return v1

    .line 91
    .end local v0           #t:Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 92
    .restart local v0       #t:Ljava/lang/Throwable;
    const-string v1, "BluetoothPBAPService"

    const-string v2, "needAccessRequest()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onPbapAccessRequested(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "opCode"
    .parameter "fileName"
    .parameter "remoteAddress"
    .parameter "remoteDeviceName"

    .prologue
    .line 464
    const-string v0, "BluetoothPBAPService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPbapAccessRequested "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " File name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v9, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "bluetooth_pbap"

    const/4 v5, -0x1

    const-wide/16 v7, 0x0

    move-object v2, p4

    move-object v3, p3

    move v4, p1

    move-object v6, p2

    invoke-static/range {v0 .. v8}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createAccessRequest(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {v9, v0, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method private onPbapAuth()V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method private onPbapClosed()V
    .locals 4

    .prologue
    .line 410
    const-string v1, "BluetoothPBAPService"

    const-string v2, "onPbapClosed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, pbapClosedIntent:Landroid/content/Intent;
    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 415
    const-string v1, "bt_svc_name"

    invoke-virtual {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.broadcom.bt.app.pbap.action.ON_PBAP_CLOSED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method private onPbapConnected()V
    .locals 4

    .prologue
    .line 378
    const-string v1, "BluetoothPBAPService"

    const-string v2, "onPbapConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v0, Landroid/content/Intent;

    const-string v1, "broadcom.android.bluetooth.intent.action.BT_SERVICE_CONNECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, pbapOpenIntent:Landroid/content/Intent;
    const-string v1, "broadcom.android.bluetooth.intent.BLUETOOTH_SERVICE_CONNECTED"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 383
    const-string v1, "bt_svc_name"

    invoke-virtual {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.broadcom.bt.app.pbap.action.ON_PBAP_OPENED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method private onPbapDisabled()V
    .locals 2

    .prologue
    .line 371
    const-string v0, "BluetoothPBAPService"

    const-string v1, "onPbapDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->onStateChangeEvent(Z)V

    .line 374
    return-void
.end method

.method private onPbapEnabled()V
    .locals 2

    .prologue
    .line 277
    const-string v0, "BluetoothPBAPService"

    const-string v1, "onPbapEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->onStateChangeEvent(Z)V

    .line 281
    return-void
.end method

.method private onPbapOperCompleted(Ljava/lang/String;BB)V
    .locals 3
    .parameter "filePath"
    .parameter "op_code"
    .parameter "status"

    .prologue
    .line 478
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.broadcom.bt.app.pbap.action.ON_PBAP_OP_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, i:Landroid/content/Intent;
    const-string v1, "FILEPATH"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const-string v1, "OPERATION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 481
    const-string v1, "STATUS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    .line 482
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method private native pbapServerAccessRspNative(BZLjava/lang/String;)V
.end method

.method private native pbapServerAuthenRspNative(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method declared-synchronized enablePbapServer(ILjava/lang/String;Ljava/lang/String;ZB[B)V
    .locals 3
    .parameter "security_mask"
    .parameter "service_name"
    .parameter "root_path"
    .parameter "enable_authen"
    .parameter "realm_len"
    .parameter "realm"

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->enablePbapServerNative(ILjava/lang/String;Ljava/lang/String;ZB[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    monitor-exit p0

    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPBAPService"

    const-string v2, "enablePbapServerNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 268
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->finish()V

    .line 202
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 203
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 192
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->cleanupPbapNativeDataNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    :cond_0
    monitor-exit p0

    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "BluetoothPBAPService"

    const-string v2, "Unable to cleanup pbap service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 190
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-string v0, "bluetooth_pbap"

    return-object v0
.end method

.method public declared-synchronized init()V
    .locals 1

    .prologue
    .line 126
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsFinish:Z

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I

    .line 128
    invoke-direct {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->initPbapNativeDataNative()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pbapServerAccessRsp(BZLjava/lang/String;)V
    .locals 3
    .parameter "op_code"
    .parameter "access"
    .parameter "filename"

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->pbapServerAccessRspNative(BZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    monitor-exit p0

    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPBAPService"

    const-string v2, "PbapServerAccessRspNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 228
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized pbapServerAuthenRsp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "password"
    .parameter "userId"

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->pbapServerAuthenRspNative(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    monitor-exit p0

    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BluetoothPBAPService"

    const-string v2, "PbapServerAuthRspNative failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerCallback(Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 250
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 253
    :cond_0
    return-void
.end method

.method public declared-synchronized start()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 136
    monitor-enter p0

    :try_start_0
    const-string v3, "BluetoothPBAPService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start: mPbapMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget v3, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I

    if-nez v3, :cond_0

    .line 139
    const-string v3, "service.brcm.bt.pbap_mode"

    const-string v4, "property not found"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, pbapMode:Ljava/lang/String;
    const-string v3, "BluetoothPBAPService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**********PBAP_MODE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-eqz v2, :cond_2

    const-string v3, "btld"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 143
    const/4 v3, 0x1

    iput v3, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I

    .line 150
    .end local v2           #pbapMode:Ljava/lang/String;
    :cond_0
    :goto_0
    iget v3, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I

    if-ne v3, v6, :cond_3

    .line 151
    const-string v3, "BluetoothPBAPService"

    const-string v4, "Start BTLD PBAP server..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->enableDefaultPbapServerNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 164
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 146
    .restart local v2       #pbapMode:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x2

    :try_start_2
    iput v3, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 136
    .end local v2           #pbapMode:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "BluetoothPBAPService"

    const-string v4, "enableDefaultPbapServerNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 158
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    iget v3, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I

    if-ne v3, v7, :cond_1

    .line 159
    const-string v3, "BluetoothPBAPService"

    const-string v4, "Start Google PBAP server: permission = [android.permission.BLUETOOTH]..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v1, Landroid/content/Intent;

    const-string v3, "broadcom.android.bluetooth.intent.action.BT_PBAP_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, i:Landroid/content/Intent;
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/16 v4, 0xc

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    iget-object v3, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized stop()V
    .locals 5

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    const-string v2, "BluetoothPBAPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop: mPbapMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget v2, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 171
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->disablePbapServerNative()V

    .line 174
    invoke-direct {p0}, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->onPbapDisabled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "BluetoothPBAPService"

    const-string v3, "disablePbapServerNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 167
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 180
    :cond_1
    :try_start_3
    iget v2, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mPbapMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 181
    const-string v2, "BluetoothPBAPService"

    const-string v3, "Stop Google PBAP server..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v1, Landroid/content/Intent;

    const-string v2, "broadcom.android.bluetooth.intent.action.BT_PBAP_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, i:Landroid/content/Intent;
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    iget-object v2, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/broadcom/bt/service/pbap/IBluetoothPBAPCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 256
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/broadcom/bt/service/pbap/BluetoothPBAPService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 259
    :cond_0
    return-void
.end method
