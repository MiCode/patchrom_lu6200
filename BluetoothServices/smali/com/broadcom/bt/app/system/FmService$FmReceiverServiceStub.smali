.class final Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;
.super Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/system/FmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FmReceiverServiceStub"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverService$Stub;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mContext:Landroid/content/Context;

    .line 75
    const-string v0, "bluetooth_fm_receiver_service"

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmReceiverService;

    iput-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    .line 77
    return-void
.end method


# virtual methods
.method public declared-synchronized estimateNoiseFloorLevel(I)I
    .locals 1
    .parameter "nflLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 412
    const/4 v0, 0x2

    .line 414
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->estimateNoiseFloorLevel(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIsMute()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 470
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 471
    const/4 v0, 0x0

    .line 473
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getIsMute()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMonoStereoMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 446
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 447
    const/4 v0, 0x2

    .line 449
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getMonoStereoMode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRadioIsOn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 480
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    if-nez v0, :cond_0

    .line 481
    const/4 v0, 0x0

    .line 483
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getRadioIsOn()Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized getStatus()I
    .locals 1

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x3

    .line 181
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getStatus()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTunedFrequency()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 459
    const/4 v0, 0x2

    .line 461
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getTunedFrequency()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 478
    return-void
.end method

.method public declared-synchronized muteAudio(Z)I
    .locals 1
    .parameter "mute"

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 195
    const/4 v0, 0x3

    .line 197
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->muteAudio(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 93
    :goto_0
    monitor-exit p0

    return-void

    .line 92
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekRdsStation(IIII)I
    .locals 1
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x2

    .line 248
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->seekRdsStation(IIII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekStation(II)I
    .locals 1
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x2

    .line 219
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->seekStation(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekStationAbort()I
    .locals 1

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 261
    const/4 v0, 0x2

    .line 263
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->seekStationAbort()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioMode(I)I
    .locals 1
    .parameter "audioMode"

    .prologue
    .line 308
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 309
    const/4 v0, 0x2

    .line 311
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioMode(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioPath(I)I
    .locals 1
    .parameter "audioPath"

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 332
    const/4 v0, 0x2

    .line 334
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioPath(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFMVolume(I)I
    .locals 1
    .parameter "volume"

    .prologue
    .line 367
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 368
    const/4 v0, 0x2

    .line 370
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setFMVolume(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLiveAudioPolling(ZI)I
    .locals 1
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 432
    const/4 v0, 0x2

    .line 434
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setLiveAudioPolling(ZI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRdsMode(IIII)I
    .locals 1
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x2

    .line 291
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRdsMode(IIII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStepSize(I)I
    .locals 1
    .parameter "stepSize"

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 352
    const/4 v0, 0x2

    .line 354
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setStepSize(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWorldRegion(II)I
    .locals 1
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 392
    const/4 v0, 0x2

    .line 394
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setWorldRegion(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 391
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tuneRadio(I)I
    .locals 1
    .parameter "freq"

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x2

    .line 168
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->tuneRadio(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized turnOffRadio()I
    .locals 1

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 150
    const/4 v0, 0x2

    .line 152
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->turnOffRadio()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized turnOnRadio(I[C)I
    .locals 1
    .parameter "functionalityMask"
    .parameter "clientPackagename"

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x2

    .line 136
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->turnOnRadio(I[C)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    monitor-exit p0

    return-void

    .line 106
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
