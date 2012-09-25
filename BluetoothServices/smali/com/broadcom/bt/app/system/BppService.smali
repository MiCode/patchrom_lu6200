.class public Lcom/broadcom/bt/app/system/BppService;
.super Landroid/app/Service;
.source "BppService.java"


# static fields
.field private static mRefs:I


# instance fields
.field private mBinder:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/app/system/BppService;->mRefs:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    sget v0, Lcom/broadcom/bt/app/system/BppService;->mRefs:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/broadcom/bt/app/system/BppService;->mRefs:I

    .line 37
    const-string v0, "BppAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructor: Reference Count= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/app/system/BppService;->mRefs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/BppService;->mBinder:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/broadcom/bt/app/system/BppService;->mBinder:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->stop()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/system/BppService;->mBinder:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    .line 82
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 84
    return-void

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/broadcom/bt/app/system/BppService;->mBinder:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 44
    const-string v1, "BppAppService"

    const-string v2, "Starting service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :try_start_0
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 49
    new-instance v1, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/broadcom/bt/app/system/BppService;->mBinder:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    .line 50
    iget-object v1, p0, Lcom/broadcom/bt/app/system/BppService;->mBinder:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BppAppService"

    const-string v2, "Error while enabling printer service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 59
    const-string v1, "BppAppService"

    const-string v2, "Destroying service..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/app/system/BppService;->mBinder:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/broadcom/bt/app/system/BppService;->mBinder:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;->stop()V

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/app/system/BppService;->mBinder:Lcom/broadcom/bt/service/bpp/BluetoothPrinterService;

    .line 67
    :cond_0
    sget v1, Lcom/broadcom/bt/app/system/BppService;->mRefs:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/broadcom/bt/app/system/BppService;->mRefs:I

    .line 68
    const-string v1, "BppAppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finalize: Reference Count= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/broadcom/bt/app/system/BppService;->mRefs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "BppAppService"

    const-string v2, "Error while destroying printer service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
