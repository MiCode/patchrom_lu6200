.class Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;
.super Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmReceiverCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmReceiver;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1301
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiver;Lcom/broadcom/bt/service/fm/FmReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1301
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;-><init>(Lcom/broadcom/bt/service/fm/FmReceiver;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized onAudioModeEvent(I)V
    .locals 1
    .parameter "audioMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1345
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onAudioModeEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1347
    :cond_0
    monitor-exit p0

    return-void

    .line 1345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onAudioPathEvent(I)V
    .locals 1
    .parameter "audioPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1353
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onAudioPathEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1355
    :cond_0
    monitor-exit p0

    return-void

    .line 1353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onEstimateNflEvent(I)V
    .locals 1
    .parameter "nfl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1361
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onEstimateNoiseFloorLevelEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    :cond_0
    monitor-exit p0

    return-void

    .line 1361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onLiveAudioQualityEvent(I)V
    .locals 1
    .parameter "rssi"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1369
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onLiveAudioQualityEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1371
    :cond_0
    monitor-exit p0

    return-void

    .line 1369
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRdsDataEvent(IILjava/lang/String;)V
    .locals 1
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1337
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onRdsDataEvent(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    :cond_0
    monitor-exit p0

    return-void

    .line 1337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRdsModeEvent(II)V
    .locals 1
    .parameter "rdsMode"
    .parameter "alternateFreqHopEnabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1329
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onRdsModeEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1331
    :cond_0
    monitor-exit p0

    return-void

    .line 1329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onSeekCompleteEvent(IIZ)V
    .locals 1
    .parameter "freq"
    .parameter "rssi"
    .parameter "seeksuccess"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1321
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onSeekCompleteEvent(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    :cond_0
    monitor-exit p0

    return-void

    .line 1321
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .parameter "freq"
    .parameter "rssi"
    .parameter "radioIsOn"
    .parameter "rdsProgramType"
    .parameter "rdsProgramService"
    .parameter "rdsRadioText"
    .parameter "rdsProgramTypeName"
    .parameter "isMute"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1310
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1315
    :cond_0
    monitor-exit p0

    return-void

    .line 1310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onVolumeEvent(II)V
    .locals 1
    .parameter "status"
    .parameter "volume"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1384
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onVolumeEvent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1386
    :cond_0
    monitor-exit p0

    return-void

    .line 1384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onWorldRegionEvent(I)V
    .locals 1
    .parameter "worldRegion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1377
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiver$FmReceiverCallback;->this$0:Lcom/broadcom/bt/service/fm/FmReceiver;

    #getter for: Lcom/broadcom/bt/service/fm/FmReceiver;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;
    invoke-static {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->access$100(Lcom/broadcom/bt/service/fm/FmReceiver;)Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;->onWorldRegionEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    :cond_0
    monitor-exit p0

    return-void

    .line 1377
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
