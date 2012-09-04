.class public final Lcom/broadcom/bt/service/fm/FmTransmitter;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "FmTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmTransmitter$1;,
        Lcom/broadcom/bt/service/fm/FmTransmitter$FmBroadcastReceiver;,
        Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ON_BEST_CHANNEL:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_BEST_CHANNEL"

.field public static final ACTION_ON_CHANNEL_STATUS:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_CHANNEL_STATUS"

.field public static final ACTION_ON_DISABLE:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_DISABLE"

.field public static final ACTION_ON_ENABLE:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_ENABLE"

.field public static final ACTION_ON_SET_TX_FREQ:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_SET_TX_FREQ"

.field public static final ACTION_ON_SET_TX_PWR:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_SET_TX_PWR"

.field public static final ACTION_ON_STATUS:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_STATUS"

.field private static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.fm.action."

#the value of this static final field might be set in the static constructor
.field private static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final AUDIO_MODE_MONO:I = 0x0

.field public static final AUDIO_MODE_STEREO:I = 0x1

.field public static final AUDIO_PATH_ADC:I = 0x1

.field public static final AUDIO_PATH_HCI:I = 0x2

.field public static final AUDIO_PATH_I2S:I = 0x0

.field public static final AUDIO_VOLUME_HI:I = 0x0

.field public static final AUDIO_VOLUME_LOW:I = 0x2

.field public static final AUDIO_VOLUME_MED:I = 0x1

.field public static final AUDIO_VOLUME_WEAK:I = 0x3

.field public static final BANDWIDTH_100K:I = 0x1

.field public static final BANDWIDTH_200K:I = 0x2

.field public static final BANDWIDTH_50K:I = 0x0

.field public static final CHIRP_MODE_AUTO:I = 0x2

.field public static final CHIRP_MODE_MANUAL:I = 0x1

.field public static final CHIRP_MODE_OFF:I = 0x0

.field private static final D:Z = true

.field public static final EXTRA_CHANNEL_STATUS:Ljava/lang/String; = "CHANNEL_STATUS"

.field public static final EXTRA_FREQ:Ljava/lang/String; = "FREQ"

.field public static final EXTRA_NUM_CHNL:Ljava/lang/String; = "NUM_CHNL"

.field public static final EXTRA_PWR:Ljava/lang/String; = "PWR"

.field public static final EXTRA_RSSI:Ljava/lang/String; = "RSSI"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "STATUS"

.field public static final EXTRA_STATUS_TYPE:Ljava/lang/String; = "STATUS_TYPE"

.field public static final FM_TRANSMITTER_PERM:Ljava/lang/String; = "android.permission.ACCESS_FM_TRANSMITTER"

.field public static final MUTE_ALL:I = 0x0

.field public static final MUTE_L:I = 0x2

.field public static final MUTE_R:I = 0x3

.field public static final MUTE_UNMUTE:I = 0x1

.field public static final NOTIFY_AUD_LVL_BIT:I = 0x2

.field public static final NOTIFY_NONE:I = 0x0

.field public static final NOTIFY_RSSI_BIT:I = 0x1

.field public static final PREEMPHASIS_50US:I = 0x1

.field public static final PREEMPHASIS_75US:I = 0x2

.field public static final PREEMPHASIS_OFF:I = 0x0

.field public static final REGION_EUROPE:I = 0x2

.field public static final REGION_JAPAN:I = 0x1

.field public static final REGION_US:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_fm_transmitter_service"

.field public static final STATUS_BUSY:I = 0x1

.field public static final STATUS_ERR_FLAG_TOUT:I = 0x4

.field public static final STATUS_ERR_FREQ:I = 0x3

.field public static final STATUS_ERR_GENERIC:I = 0x5

.field public static final STATUS_ERR_VCMD:I = 0x2

.field public static final STATUS_ILLEGAL_COMMAND:I = 0x6

.field public static final STATUS_ILLEGAL_PARAMETERS:I = 0x7

.field public static final STATUS_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FmTransmitter"

.field private static final V:Z = true


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

.field private mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-string v0, "com.broadcom.bt.app.fm.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/fm/FmTransmitter;->ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    .line 435
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 70
    sget v0, Lcom/broadcom/bt/service/fm/FmTransmitter;->ACTION_PREFIX_LENGTH:I

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 531
    if-nez p0, :cond_0

    .line 532
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 535
    .restart local p0
    :cond_0
    const-string v0, "com.broadcom.bt.app.fm.action.ON_BEST_CHANNEL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    const-string v0, "com.broadcom.bt.app.fm.action.ON_CHANNEL_STATUS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    const-string v0, "com.broadcom.bt.app.fm.action.ON_DISABLE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 538
    const-string v0, "com.broadcom.bt.app.fm.action.ON_ENABLE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 539
    const-string v0, "com.broadcom.bt.app.fm.action.ON_SET_TX_FREQ"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 540
    const-string v0, "com.broadcom.bt.app.fm.action.ON_SET_TX_PWR"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 541
    const-string v0, "com.broadcom.bt.app.fm.action.ON_STATUS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 542
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 5
    .parameter "ctx"
    .parameter "cb"

    .prologue
    .line 418
    const-string v2, "FmTransmitter"

    const-string v3, "getProxy"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v2, "bluetooth_fm_transmitter_service"

    invoke-static {p0, v2}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 421
    const-string v2, "FmTransmitter"

    const-string v3, "Unable to get FMTransmitter proxy: service is not enabled."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v1, 0x0

    .line 431
    :goto_0
    return v1

    .line 424
    :cond_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitter;

    invoke-direct {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;-><init>()V

    .line 425
    .local v0, p:Lcom/broadcom/bt/service/fm/FmTransmitter;
    const-string v2, "com.broadcom.bt.app.system"

    const-string v3, "com.broadcom.bt.app.system.FmTxService"

    invoke-virtual {v0, p0, p1, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitter;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 429
    .local v1, result:Z
    const-string v2, "FmTransmitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProxy result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized abortScanForBestChannel()I
    .locals 4

    .prologue
    .line 1094
    monitor-enter p0

    const/4 v1, 0x5

    .line 1097
    .local v1, returnCode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 1098
    const/4 v2, 0x6

    .line 1106
    :goto_0
    monitor-exit p0

    return v2

    .line 1101
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->abortScanForBestChannel()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 1106
    goto :goto_0

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "FmTransmitter"

    const-string v3, "abortScanForBestChannel() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1094
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized disableFmTransmitter()I
    .locals 4

    .prologue
    .line 659
    monitor-enter p0

    const/4 v1, 0x5

    .line 662
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->disableFmTransmitter()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 666
    :goto_0
    monitor-exit p0

    return v1

    .line 663
    :catch_0
    move-exception v0

    .line 664
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmTransmitter"

    const-string v3, "disableFmTransmitter() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 659
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized enableFmTransmitter()I
    .locals 5

    .prologue
    .line 629
    monitor-enter p0

    :try_start_0
    const-string v2, "FmTransmitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FmTransmitter.enableFmTransmitter() mService:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    const/4 v1, 0x0

    .line 634
    .local v1, returnCode:I
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->enableFmTransmitter()I

    move-result v1

    .line 636
    const-string v2, "FmTransmitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returnCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 642
    :goto_0
    monitor-exit p0

    return v1

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "FmTransmitter"

    const-string v3, "enableFmTransmitter() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 629
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #returnCode:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 1199
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 1200
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 567
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    if-eqz v1, :cond_0

    .line 568
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 579
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 583
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    .line 586
    :cond_1
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V

    .line 587
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy;->mContext:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 588
    monitor-exit p0

    return-void

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "FmTransmitter"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 567
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getRadioIsOn()Z
    .locals 5

    .prologue
    .line 599
    const-string v2, "FmTransmitter"

    const-string v3, "FmTransmitter.getRadioIsOn()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v1, 0x0

    .line 603
    .local v1, returnStatus:Z
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->getRadioIsOn()Z

    move-result v1

    .line 605
    const-string v2, "FmTransmitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "returnStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :goto_0
    return v1

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string v3, "getRadioIsOn() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "service"

    .prologue
    .line 444
    const-string v1, "FmTransmitter"

    const-string v2, "**** init service ****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    const/4 v1, 0x1

    .line 451
    :goto_0
    return v1

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "FmTransmitter"

    const-string v2, "Unable to initialize BluetoothFMTX proxy with service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized muteAudio(I)I
    .locals 4
    .parameter "mute"

    .prologue
    .line 988
    monitor-enter p0

    const/4 v1, 0x5

    .line 991
    .local v1, returnCode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 992
    const/4 v2, 0x6

    .line 1000
    :goto_0
    monitor-exit p0

    return v2

    .line 995
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->muteAudio(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 1000
    goto :goto_0

    .line 996
    :catch_0
    move-exception v0

    .line 997
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "FmTransmitter"

    const-string v3, "muteAudio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 988
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 466
    monitor-enter p0

    :try_start_0
    const-string v0, "FmTransmitter"

    const-string v1, "registerEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    monitor-exit p0

    return-void

    .line 466
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .locals 4
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    .line 484
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    .line 486
    const-string v1, "FmTransmitter"

    const-string v2, "registerEventHandler MAIN INTENTS:false CALLBACKS:true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    if-nez v1, :cond_0

    .line 509
    new-instance v1, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitter;Lcom/broadcom/bt/service/fm/FmTransmitter$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    .line 512
    const-string v1, "FmTransmitter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mService.registerCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->registerCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 522
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 517
    :catch_0
    move-exception v0

    .line 518
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "FmTransmitter"

    const-string v2, "Error registering callback handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 484
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;Landroid/content/IntentFilter;ZI)V
    .locals 2
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 477
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/broadcom/bt/service/fm/FmTransmitter;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    monitor-exit p0

    return-void

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scanForBestChannel(IZ)I
    .locals 4
    .parameter "numChans"
    .parameter "optimize"

    .prologue
    .line 1063
    monitor-enter p0

    const/4 v1, 0x5

    .line 1066
    .local v1, returnCode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 1067
    const/4 v2, 0x6

    .line 1075
    :goto_0
    monitor-exit p0

    return v2

    .line 1070
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->scanForBestChannel(IZ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 1075
    goto :goto_0

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "FmTransmitter"

    const-string v3, "scanForBestChannel() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1063
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioMode(I)I
    .locals 4
    .parameter "audioMode"

    .prologue
    .line 788
    monitor-enter p0

    const/4 v1, 0x5

    .line 791
    .local v1, returnCode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 792
    const/4 v2, 0x6

    .line 800
    :goto_0
    monitor-exit p0

    return v2

    .line 795
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setAudioMode(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 800
    goto :goto_0

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "FmTransmitter"

    const-string v3, "setAudioMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 788
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioPath(I)I
    .locals 4
    .parameter "audioPath"

    .prologue
    .line 954
    monitor-enter p0

    const/4 v1, 0x5

    .line 957
    .local v1, returnCode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 958
    const/4 v2, 0x6

    .line 967
    :goto_0
    monitor-exit p0

    return v2

    .line 962
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setAudioPath(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 967
    goto :goto_0

    .line 963
    :catch_0
    move-exception v0

    .line 964
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "FmTransmitter"

    const-string v3, "setAudioPath() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 954
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setBandwidth(I)I
    .locals 4
    .parameter "bandwidth"

    .prologue
    .line 888
    monitor-enter p0

    const/4 v1, 0x5

    .line 891
    .local v1, returnCode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 892
    const/4 v2, 0x6

    .line 900
    :goto_0
    monitor-exit p0

    return v2

    .line 895
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setBandwidth(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 900
    goto :goto_0

    .line 896
    :catch_0
    move-exception v0

    .line 897
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "FmTransmitter"

    const-string v3, "setBandwidth() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 888
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setInterferenceNotif(I)I
    .locals 4
    .parameter "notifBitmask"

    .prologue
    .line 1025
    monitor-enter p0

    const/4 v1, 0x5

    .line 1028
    .local v1, returnCode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 1029
    const/4 v2, 0x6

    .line 1037
    :goto_0
    monitor-exit p0

    return v2

    .line 1032
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setInterferenceNotif(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 1037
    goto :goto_0

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "FmTransmitter"

    const-string v3, "setInterferenceNotif() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1025
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setPreemphasis(I)I
    .locals 4
    .parameter "preemph"

    .prologue
    .line 921
    monitor-enter p0

    const/4 v1, 0x5

    .line 924
    .local v1, returnCode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 925
    const/4 v2, 0x6

    .line 933
    :goto_0
    monitor-exit p0

    return v2

    .line 928
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setPreemphasis(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 933
    goto :goto_0

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "FmTransmitter"

    const-string v3, "setPreemphasis() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 921
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setPwrLevel(I)I
    .locals 4
    .parameter "dbGain"

    .prologue
    .line 755
    monitor-enter p0

    const/4 v1, 0x5

    .line 758
    .local v1, returnCode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 759
    const/4 v2, 0x6

    .line 767
    :goto_0
    monitor-exit p0

    return v2

    .line 762
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setPwrLevel(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 767
    goto :goto_0

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "FmTransmitter"

    const-string v3, "setPwrLevel() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 755
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setRegion(I)I
    .locals 4
    .parameter "region"

    .prologue
    .line 855
    monitor-enter p0

    const/4 v1, 0x5

    .line 858
    .local v1, returnCode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 859
    const/4 v2, 0x6

    .line 867
    :goto_0
    monitor-exit p0

    return v2

    .line 862
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setRegion(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 867
    goto :goto_0

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "FmTransmitter"

    const-string v3, "setRegion() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 855
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setTxFrequency(I)I
    .locals 4
    .parameter "frequency"

    .prologue
    .line 722
    monitor-enter p0

    const/4 v1, 0x5

    .line 725
    .local v1, returnCode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 726
    const/4 v2, 0x6

    .line 734
    :goto_0
    monitor-exit p0

    return v2

    .line 729
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setTxFrequency(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 734
    goto :goto_0

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "FmTransmitter"

    const-string v3, "setTxFrequency() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 722
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setTxPower(Z)I
    .locals 4
    .parameter "powerOn"

    .prologue
    .line 686
    monitor-enter p0

    const/4 v1, 0x5

    .line 689
    .local v1, returnCode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 690
    const/4 v2, 0x6

    .line 698
    :goto_0
    monitor-exit p0

    return v2

    .line 693
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setTxPower(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 698
    goto :goto_0

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "FmTransmitter"

    const-string v3, "setTxPower() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 686
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setVolume(I)I
    .locals 4
    .parameter "volume"

    .prologue
    .line 822
    monitor-enter p0

    const/4 v1, 0x5

    .line 825
    .local v1, returnCode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 826
    const/4 v2, 0x6

    .line 834
    :goto_0
    monitor-exit p0

    return v2

    .line 829
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setVolume(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 834
    goto :goto_0

    .line 830
    :catch_0
    move-exception v0

    .line 831
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "FmTransmitter"

    const-string v3, "setVolume() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 822
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized startAudioChirp(ZIIIIIIII)I
    .locals 12
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
    .line 1152
    monitor-enter p0

    const/4 v11, 0x5

    .line 1155
    .local v11, returnCode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    const/4 v0, 0x6

    .line 1165
    :goto_0
    monitor-exit p0

    return v0

    .line 1159
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->startAudioChirp(ZIIIIIIII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    :goto_1
    move v0, v11

    .line 1165
    goto :goto_0

    .line 1161
    :catch_0
    move-exception v10

    .line 1162
    .local v10, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "FmTransmitter"

    const-string v1, "startAudioChirp() failed"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1152
    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopAudioChirp()I
    .locals 4

    .prologue
    .line 1183
    monitor-enter p0

    const/4 v1, 0x5

    .line 1186
    .local v1, returnCode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitter;->getRadioIsOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 1187
    const/4 v2, 0x6

    .line 1195
    :goto_0
    monitor-exit p0

    return v2

    .line 1190
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->stopAudioChirp()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 1195
    goto :goto_0

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "FmTransmitter"

    const-string v3, "stopAudioChirp() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1183
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized unregisterEventHandler()V
    .locals 3

    .prologue
    .line 547
    monitor-enter p0

    :try_start_0
    const-string v1, "FmTransmitter"

    const-string v2, "unregisterEventHandler()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 564
    :goto_0
    monitor-exit p0

    return-void

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "FmTransmitter"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 547
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
