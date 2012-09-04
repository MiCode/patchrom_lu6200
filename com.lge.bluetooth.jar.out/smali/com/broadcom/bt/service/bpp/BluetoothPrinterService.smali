.class public final Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;
.super Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;
.source "BluetoothPrinterService.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IBtService;


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothPrinterService"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mIsStarted:Z

.field protected mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

.field private mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "isAppService"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/IBluetoothPrinterService$Stub;-><init>()V

    .line 581
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    .line 49
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Initialize Bluetooth Printer Service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_InitBluetoothPrinter()V

    .line 52
    return-void
.end method

.method private native Native_BluetoothPrinterAbort()V
.end method

.method private native Native_BluetoothPrinterDisable()V
.end method

.method private native Native_BluetoothPrinterEnable()V
.end method

.method private native Native_BluetoothPrinterGetCapabilities(Ljava/lang/String;)V
.end method

.method private native Native_BluetoothPrinterObexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native Native_BluetoothPrinterPartialImageResponse(Ljava/lang/String;)V
.end method

.method private native Native_BluetoothPrinterPrint(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method private native Native_BluetoothPrinterPrintAny(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private native Native_BluetoothPrinterPrintBip(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native Native_BluetoothPrinterPrintBpp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method private native Native_BluetoothPrinterPrintOpp(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private native Native_InitBluetoothPrinter()V
.end method


# virtual methods
.method native Native_BluetoothPrinterCancelBppStatus()V
.end method

.method native Native_BluetoothPrinterRefObjectResponse(Ljava/lang/String;)V
.end method

.method public abort()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 467
    const-string v2, "BluetoothPrinterService"

    const-string v3, "abort"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterAbort()V

    .line 473
    invoke-static {}, Lcom/broadcom/bt/service/bpp/PrintManager;->getCurrentJob()Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v0

    .line 474
    .local v0, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    if-eqz v0, :cond_0

    .line 475
    const/4 v2, 0x4

    iput v2, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mPrintState:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v0           #job:Lcom/broadcom/bt/service/bpp/PrintJob;
    :cond_0
    :goto_0
    return-void

    .line 477
    :catch_0
    move-exception v1

    .line 478
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothPrinterService"

    const-string v3, "abort"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public cancelBppStatus()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 519
    const-string v1, "BluetoothPrinterService"

    const-string v2, "cancelBppStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterCancelBppStatus()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_0
    return-void

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothPrinterService"

    const-string v2, "cancelBppStatus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized disable()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterDisable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :goto_0
    monitor-exit p0

    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "BluetoothPrinterService"

    const-string v2, "disable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 185
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enable()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterEnable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    :goto_0
    monitor-exit p0

    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 166
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public getCapabilities(Ljava/lang/String;)V
    .locals 4
    .parameter "bluetoothAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :try_start_0
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapabilities("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->enable()V

    .line 216
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterGetCapabilities(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothPrinterService"

    const-string v2, "getCapabilities"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "bluetooth_bpp_service"

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public obexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "password"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 498
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "obexAuthenticationResponse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterObexAuthenticationResponse(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothPrinterService"

    const-string v2, "obexAuthenticationResponse"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized onStateChangeEvent(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    if-eqz v0, :cond_0

    .line 594
    iget-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 597
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public partialImageResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 543
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "partialImageResponse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterPartialImageResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :goto_0
    return-void

    .line 550
    :catch_0
    move-exception v0

    .line 551
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothPrinterService"

    const-string v2, "partialImageResponse"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public print(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    .locals 10
    .parameter "bluetoothAddress"
    .parameter "serviceMask"
    .parameter "fileFormat"
    .parameter "header"
    .parameter "name"
    .parameter "bipParams"
    .parameter "bppParams"
    .parameter "objectResolver"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 428
    :cond_0
    const-string v0, "BluetoothPrinterService"

    const-string v1, "print(): filepath not set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_1
    invoke-static/range {p1 .. p9}, Lcom/broadcom/bt/service/bpp/PrintManager;->createJob(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BipParameters;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/BppObjectResolver;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v8

    .line 434
    .local v8, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    invoke-virtual {v8}, Lcom/broadcom/bt/service/bpp/PrintJob;->setStartState()V

    .line 437
    const-string v0, "BluetoothPrinterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "print("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v8, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/broadcom/bt/service/bpp/PrintJob;->mBipParams:Lcom/broadcom/bt/service/bpp/BipParameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/broadcom/bt/service/bpp/PrintJob;->mBppParams:Lcom/broadcom/bt/service/bpp/BppParameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->enable()V

    .line 444
    invoke-static {v8}, Lcom/broadcom/bt/service/bpp/PrintManager;->setCurrentJob(Lcom/broadcom/bt/service/bpp/PrintJob;)V

    .line 445
    iget-object v1, v8, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    iget v2, v8, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    iget v3, v8, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    iget-object v4, v8, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    iget-object v5, v8, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    iget-object v6, v8, Lcom/broadcom/bt/service/bpp/PrintJob;->mBipParams:Lcom/broadcom/bt/service/bpp/BipParameters;

    iget-object v7, v8, Lcom/broadcom/bt/service/bpp/PrintJob;->mBppParams:Lcom/broadcom/bt/service/bpp/BppParameters;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterPrint(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_0
    iget-wide v0, v8, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    return-wide v0

    .line 448
    :catch_0
    move-exception v9

    .line 449
    .local v9, t:Ljava/lang/Throwable;
    const-string v0, "BluetoothPrinterService"

    const-string v1, "print"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public printAny(Ljava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    .locals 6
    .parameter "bluetoothAddress"
    .parameter "name"
    .parameter "fileFormat"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 240
    :cond_0
    const-string v2, "BluetoothPrinterService"

    const-string v3, "printAny(): filepath not set"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/broadcom/bt/service/bpp/PrintManager;->createJob(Ljava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v0

    .line 244
    .local v0, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/PrintJob;->setStartState()V

    .line 247
    const-string v2, "BluetoothPrinterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "printAny("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBipParams:Lcom/broadcom/bt/service/bpp/BipParameters;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBppParams:Lcom/broadcom/bt/service/bpp/BppParameters;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->enable()V

    .line 254
    invoke-static {v0}, Lcom/broadcom/bt/service/bpp/PrintManager;->setCurrentJob(Lcom/broadcom/bt/service/bpp/PrintJob;)V

    .line 255
    iget-object v2, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    iget v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    invoke-direct {p0, v2, v3, v4}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterPrintAny(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    iget-wide v2, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    return-wide v2

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothPrinterService"

    const-string v3, "printAny"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public printBip(Ljava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    .locals 6
    .parameter "bluetoothAddress"
    .parameter "name"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 362
    :cond_0
    const-string v2, "BluetoothPrinterService"

    const-string v3, "printBip(): filepath not set"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_1
    const/4 v2, 0x0

    invoke-static {p1, p2, v2, p3}, Lcom/broadcom/bt/service/bpp/PrintManager;->createJob(Ljava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v0

    .line 366
    .local v0, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/PrintJob;->setStartState()V

    .line 369
    const-string v2, "BluetoothPrinterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "printBip("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBipParams:Lcom/broadcom/bt/service/bpp/BipParameters;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBppParams:Lcom/broadcom/bt/service/bpp/BppParameters;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->enable()V

    .line 376
    invoke-static {v0}, Lcom/broadcom/bt/service/bpp/PrintManager;->setCurrentJob(Lcom/broadcom/bt/service/bpp/PrintJob;)V

    .line 377
    iget-object v2, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterPrintBip(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    iget-wide v2, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    return-wide v2

    .line 378
    :catch_0
    move-exception v1

    .line 379
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothPrinterService"

    const-string v3, "printBip"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public printBpp(Ljava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    .locals 6
    .parameter "bluetoothAddress"
    .parameter "name"
    .parameter "bppParams"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 321
    :cond_0
    const-string v2, "BluetoothPrinterService"

    const-string v3, "printBpp(): filepath not set"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/broadcom/bt/service/bpp/PrintManager;->createJob(Ljava/lang/String;Ljava/lang/String;Lcom/broadcom/bt/service/bpp/BppParameters;Lcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v0

    .line 325
    .local v0, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/PrintJob;->setStartState()V

    .line 328
    const-string v2, "BluetoothPrinterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "printBpp("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBipParams:Lcom/broadcom/bt/service/bpp/BipParameters;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBppParams:Lcom/broadcom/bt/service/bpp/BppParameters;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->enable()V

    .line 335
    invoke-static {v0}, Lcom/broadcom/bt/service/bpp/PrintManager;->setCurrentJob(Lcom/broadcom/bt/service/bpp/PrintJob;)V

    .line 336
    iget-object v2, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBppParams:Lcom/broadcom/bt/service/bpp/BppParameters;

    invoke-direct {p0, v2, v3, v4}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterPrintBpp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :goto_0
    iget-wide v2, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    return-wide v2

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothPrinterService"

    const-string v3, "printBpp"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public printOpp(Ljava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)J
    .locals 6
    .parameter "bluetoothAddress"
    .parameter "name"
    .parameter "fileFormat"
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    const-string v4, "Need BLUETOOTH permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 280
    :cond_0
    const-string v2, "BluetoothPrinterService"

    const-string v3, "printOpp(): filepath not set"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/broadcom/bt/service/bpp/PrintManager;->createJob(Ljava/lang/String;Ljava/lang/String;ILcom/broadcom/bt/service/bpp/IBluetoothPrinterTaskCallback;)Lcom/broadcom/bt/service/bpp/PrintJob;

    move-result-object v0

    .line 284
    .local v0, job:Lcom/broadcom/bt/service/bpp/PrintJob;
    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/PrintJob;->setStartState()V

    .line 287
    const-string v2, "BluetoothPrinterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "printOpp("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mServiceMask:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mHeader:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBipParams:Lcom/broadcom/bt/service/bpp/BipParameters;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBppParams:Lcom/broadcom/bt/service/bpp/BppParameters;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->enable()V

    .line 294
    invoke-static {v0}, Lcom/broadcom/bt/service/bpp/PrintManager;->setCurrentJob(Lcom/broadcom/bt/service/bpp/PrintJob;)V

    .line 295
    iget-object v2, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mBluetoothAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mName:Ljava/lang/String;

    iget v4, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mFileFormat:I

    invoke-direct {p0, v2, v3, v4}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterPrintOpp(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    iget-wide v2, v0, Lcom/broadcom/bt/service/bpp/PrintJob;->mJobId:J

    return-wide v2

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "BluetoothPrinterService"

    const-string v3, "printOpp"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public refObjectResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 567
    const-string v1, "BluetoothPrinterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refObjectResponse("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->Native_BluetoothPrinterRefObjectResponse(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :goto_0
    return-void

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BluetoothPrinterService"

    const-string v2, "refObjectResponse"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    .locals 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->registerClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z

    move-result v0

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized removeStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 589
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    monitor-exit p0

    return-void

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 585
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    monitor-exit p0

    return-void

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 3

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "BluetoothPrinterService"

    const-string v1, "start() called, but service already running.Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :goto_0
    monitor-exit p0

    return-void

    .line 77
    :cond_0
    :try_start_1
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Enabling Bpp Service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    if-nez v0, :cond_1

    .line 80
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Starting BluetoothPrinterEventLoop..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;-><init>(Landroid/content/Context;Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    .line 82
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->start()V

    .line 84
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 93
    const-string v0, "BluetoothPrinterService"

    const-string v1, "stop() called, but service already disabled. Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :goto_0
    monitor-exit p0

    return-void

    .line 99
    :cond_0
    :try_start_1
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Disabling Bpp Service..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    if-eqz v0, :cond_1

    .line 104
    const-string v0, "BluetoothPrinterService"

    const-string v1, "Stopping BluetoothPrinterEventLoop..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->interrupt()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    .line 109
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mIsStarted:Z

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z
    .locals 3
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->mThread:Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterEventLoop;->unregisterClientCallback(Lcom/broadcom/bt/service/bpp/IBluetoothPrinterCallback;)Z

    move-result v0

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
