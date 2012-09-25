.class Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;
.super Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;
.source "FmTxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/system/FmTxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FmTransmitterServiceStub"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mContext:Landroid/content/Context;

    .line 79
    const-string v0, "bluetooth_fm_transmitter_service"

    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmServiceManager;->getService(Ljava/lang/String;)Lcom/broadcom/bt/service/framework/IBtService;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;

    iput-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    .line 81
    return-void
.end method


# virtual methods
.method public declared-synchronized abortScanForBestChannel()I
    .locals 1

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x5

    .line 203
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->abortScanForBestChannel()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disableFmTransmitter()I
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x5

    .line 109
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->disableFmTransmitter()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableFmTransmitter()I
    .locals 1

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x5

    .line 102
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->enableFmTransmitter()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 99
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
    .line 223
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    if-nez v0, :cond_0

    .line 224
    const/4 v0, 0x0

    .line 226
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->getRadioIsOn()Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized muteAudio(I)I
    .locals 1
    .parameter "mute"

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x5

    .line 182
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->muteAudio(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 88
    :goto_0
    monitor-exit p0

    return-void

    .line 87
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->registerCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scanForBestChannel(IZ)I
    .locals 1
    .parameter "numChans"
    .parameter "optimize"

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x5

    .line 196
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->scanForBestChannel(IZ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioMode(I)I
    .locals 1
    .parameter "audioMode"

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x5

    .line 140
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setAudioMode(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioPath(I)I
    .locals 1
    .parameter "audioPath"

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x5

    .line 175
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setAudioPath(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBandwidth(I)I
    .locals 1
    .parameter "bandwidth"

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x5

    .line 161
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setBandwidth(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setInterferenceNotif(I)I
    .locals 1
    .parameter "notifBitmask"

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x5

    .line 189
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setInterferenceNotif(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPreemphasis(I)I
    .locals 1
    .parameter "preemph"

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x5

    .line 168
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setPreemphasis(I)I
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

.method public declared-synchronized setPwrLevel(I)I
    .locals 1
    .parameter "dbGain"

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x5

    .line 130
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setPwrLevel(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRegion(I)I
    .locals 1
    .parameter "region"

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 152
    const/4 v0, 0x5

    .line 154
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setRegion(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTxFrequency(I)I
    .locals 1
    .parameter "frequency"

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 121
    const/4 v0, 0x5

    .line 123
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setTxFrequency(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTxPower(Z)I
    .locals 1
    .parameter "powerOn"

    .prologue
    .line 113
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x5

    .line 116
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setTxPower(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVolume(I)I
    .locals 1
    .parameter "volume"

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 145
    const/4 v0, 0x5

    .line 147
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setVolume(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startAudioChirp(ZIIIIIIII)I
    .locals 10
    .parameter "autoOn"
    .parameter "leftMgn"
    .parameter "rightMgn"
    .parameter "leftFreq"
    .parameter "rightFreq"
    .parameter "leftMrk"
    .parameter "rightMrk"
    .parameter "leftSpc"
    .parameter "rightSpc"

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 209
    const/4 v0, 0x5

    .line 211
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->startAudioChirp(ZIIIIIIII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopAudioChirp()I
    .locals 1

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 217
    const/4 v0, 0x5

    .line 219
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->stopAudioChirp()I
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

.method public declared-synchronized unregisterCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 96
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/app/system/FmTxService$FmTransmitterServiceStub;->mSvc:Lcom/broadcom/bt/service/fm/FmTransmitterService;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
