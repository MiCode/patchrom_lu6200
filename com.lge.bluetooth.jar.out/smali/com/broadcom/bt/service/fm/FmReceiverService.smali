.class public final Lcom/broadcom/bt/service/fm/FmReceiverService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmReceiverService$3;,
        Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;,
        Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;,
        Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;,
        Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;
    }
.end annotation


# static fields
.field private static FMQueue:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "FmReceiverService"

.field private static final V:Z = true


# instance fields
.field private current_CMD:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private m_ClientName:Ljava/lang/String;

.field private final m_callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/fm/IFmReceiverCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected operationHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    .line 418
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiverService;->classFmInitNative()V

    .line 419
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    .line 209
    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    .line 590
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/fm/FmReceiverService$1;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    .line 741
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$2;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/fm/FmReceiverService$2;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 426
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->logTimeOut(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initializeStateMachine()V

    return-void
.end method

.method static synthetic access$1600(Lcom/broadcom/bt/service/fm/FmReceiverService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallback(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/broadcom/bt/service/fm/FmReceiverService;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsDataEventCallback(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioModeEventCallback(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioPathEventCallback(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/fm/FmReceiverService;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendWorldRegionEventCallback(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendEstimateNflEventCallback(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/broadcom/bt/service/fm/FmReceiverService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallback(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/broadcom/bt/service/fm/FmReceiverService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendVolumeEventCallback(II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/broadcom/bt/service/fm/FmReceiverService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_ClientName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallback(IIZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p9}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method private static native classFmInitNative()V
.end method

.method private cleanQueue(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    .locals 9
    .parameter "job"

    .prologue
    const-wide/16 v7, 0x0

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 214
    .local v2, now:J
    sget-object v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 215
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;>;"
    if-eqz p1, :cond_3

    .line 216
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 217
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    .line 220
    .local v0, existingJob:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    iget-object v4, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    sget-object v5, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_OFF:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    if-ne v4, v5, :cond_1

    .line 221
    iget-wide v4, v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_2

    .line 222
    const-string v4, "FmReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed because of a FM off request. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 224
    const/4 v0, 0x0

    .line 225
    goto :goto_0

    .line 228
    :cond_1
    iget-object v4, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    sget-object v5, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SEEK_STATION_ABORT:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    if-ne v4, v5, :cond_2

    .line 229
    const-string v4, "FmReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed because of an abort request. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 231
    const/4 v0, 0x0

    .line 232
    goto :goto_0

    .line 235
    :cond_2
    iget-wide v4, v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_0

    .line 236
    const-string v4, "FmReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "****** ***** Sent. So remove Job:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 238
    const/4 v0, 0x0

    .line 239
    goto :goto_0

    .line 244
    .end local v0           #existingJob:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    :cond_3
    return-void
.end method

.method private native cleanupLoopNative()V
.end method

.method private native configureDeemphasisNative(I)Z
.end method

.method private native configureSignalNotificationNative(I)Z
.end method

.method private native disableNative(Z)Z
.end method

.method private native enableNative(I)Z
.end method

.method private native estimateNoiseFloorNative(I)Z
.end method

.method private fetchNextJob()V
    .locals 5

    .prologue
    .line 368
    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 369
    :try_start_0
    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    .line 370
    .local v0, job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    if-nez v0, :cond_0

    .line 371
    monitor-exit v2

    .line 379
    :goto_0
    return-void

    .line 373
    :cond_0
    const-string v1, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "******* ******* Processing job:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->cleanQueue(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V

    .line 375
    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 377
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->processCommands()V

    .line 378
    monitor-exit v2

    goto :goto_0

    .end local v0           #job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native getAudioQualityNative(Z)Z
.end method

.method private native initLoopNative()V
.end method

.method private native initNativeDataNative()V
.end method

.method private initializeStateMachine()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 528
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 529
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 530
    const/16 v0, 0x7f

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 531
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    .line 532
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    .line 533
    const-string v0, ""

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    .line 534
    const-string v0, ""

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    .line 535
    const-string v0, ""

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    .line 536
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    .line 537
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 538
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    .line 539
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    .line 540
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    .line 541
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAlternateFreqHopThreshold:I

    .line 542
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    .line 543
    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    .line 544
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    .line 545
    sput v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mStepSize:I

    .line 546
    sput-boolean v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mLiveAudioQuality:Z

    .line 547
    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    .line 548
    const/16 v0, 0x64

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSignalPollInterval:I

    .line 549
    const/16 v0, 0x40

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mDeemphasisTime:I

    .line 550
    return-void
.end method

.method private logTimeOut(I)V
    .locals 3
    .parameter "what"

    .prologue
    .line 553
    packed-switch p1, :pswitch_data_0

    .line 583
    const-string v0, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BTAPP TIMEOUT (1, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :goto_0
    return-void

    .line 555
    :pswitch_0
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_ENABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 557
    :pswitch_1
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_DISABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 559
    :pswitch_2
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_SEARCH"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 561
    :pswitch_3
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_TUNE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 563
    :pswitch_4
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_MUTE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 565
    :pswitch_5
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_SEEK_ABORT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 567
    :pswitch_6
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_SET_RDS_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    :pswitch_7
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_SET_AUDIO_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    :pswitch_8
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_SET_AUDIO_PATH"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 573
    :pswitch_9
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_SET_STEP_SIZE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 575
    :pswitch_a
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_SET_FM_VOLUME"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 577
    :pswitch_b
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_SET_WORLD_REGION"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 579
    :pswitch_c
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_NFL"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 581
    :pswitch_d
    const-string v0, "FmReceiverService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_GENERIC"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 553
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private native muteNative(Z)Z
.end method

.method private processCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)Z
    .locals 7
    .parameter "job"

    .prologue
    const/4 v6, 0x4

    .line 266
    const/4 v1, 0x0

    .line 268
    .local v1, successful:I
    const/4 v2, -0x1

    iput v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    .line 270
    iget-wide v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->timeSent:J

    .line 272
    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***** ***** processCommand:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService$3;->$SwitchMap$com$broadcom$bt$service$fm$FmReceiverService$FMCommand:[I

    iget-object v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->command:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 335
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 275
    :pswitch_0
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_turnOnRadio(I)I

    move-result v1

    .line 276
    goto :goto_0

    .line 278
    :pswitch_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_turnOffRadio()I

    move-result v1

    .line 279
    goto :goto_0

    .line 281
    :pswitch_2
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_tuneRadio(I)I

    move-result v1

    .line 282
    goto :goto_0

    .line 284
    :pswitch_3
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_getStatus()I

    move-result v1

    .line 285
    goto :goto_0

    .line 287
    :pswitch_4
    iget-boolean v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->b_arg1:Z

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_muteAudio(Z)I

    move-result v1

    .line 288
    goto :goto_0

    .line 290
    :pswitch_5
    iput v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    .line 291
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_seekStation(II)I

    move-result v1

    .line 292
    goto :goto_0

    .line 294
    :pswitch_6
    iput v6, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    .line 295
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    iget v4, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg3:I

    iget v5, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg4:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_seekRdsStation(IIII)I

    move-result v1

    .line 296
    goto :goto_0

    .line 302
    :pswitch_7
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    iget v4, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg3:I

    iget v5, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg4:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setRdsMode(IIII)I

    move-result v1

    .line 303
    goto :goto_0

    .line 305
    :pswitch_8
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setAudioMode(I)I

    move-result v1

    .line 306
    goto :goto_0

    .line 308
    :pswitch_9
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setAudioPath(I)I

    move-result v1

    .line 309
    goto :goto_0

    .line 311
    :pswitch_a
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setStepSize(I)I

    move-result v1

    .line 312
    goto :goto_0

    .line 314
    :pswitch_b
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setWorldRegion(II)I

    move-result v1

    .line 315
    goto :goto_0

    .line 318
    :pswitch_c
    :try_start_0
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_estimateNoiseFloorLevel(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    .line 322
    goto :goto_0

    .line 325
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_d
    :try_start_1
    iget-boolean v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->b_arg1:Z

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg2:I

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setLiveAudioPolling(ZI)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 326
    :catch_1
    move-exception v0

    .line 327
    .restart local v0       #e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    .line 329
    goto :goto_0

    .line 331
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_e
    iget v2, p1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->arg1:I

    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->process_setFMVolume(I)I

    move-result v1

    goto/16 :goto_0

    .line 335
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private processCommands()V
    .locals 5

    .prologue
    .line 345
    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***** ***** processCommands:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    sget-object v2, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 349
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    .line 351
    .local v1, job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->processCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    .end local v1           #job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    :cond_0
    return-void

    .line 361
    .restart local v1       #job:Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private process_estimateNoiseFloorLevel(I)I
    .locals 7
    .parameter "nflLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1592
    const-string v3, "FmReceiverService"

    const-string v4, "estimateNoiseFloorLevel()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    const/4 v2, 0x0

    .line 1597
    .local v2, returnStatus:I
    if-eq p1, v5, :cond_1

    if-eq p1, v6, :cond_1

    if-eqz p1, :cond_1

    .line 1600
    const/4 v2, 0x4

    .line 1626
    :cond_0
    :goto_0
    return v2

    .line 1601
    :cond_1
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v5, v3, :cond_2

    .line 1602
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    const/4 v2, 0x3

    goto :goto_0

    .line 1605
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1607
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1608
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1609
    const/16 v3, 0xe

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1610
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1611
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1614
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->estimateNoiseFloorNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 1615
    const/4 v2, 0x0

    .line 1622
    :goto_1
    if-eqz v2, :cond_0

    .line 1623
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1617
    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    .line 1618
    :catch_0
    move-exception v0

    .line 1619
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1620
    const-string v3, "FmReceiverService"

    const-string v4, "estimateNoiseFloorNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_getStatus()I
    .locals 4

    .prologue
    .line 951
    const-string v1, "FmReceiverService"

    const-string v2, "getStatus()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/4 v0, 0x0

    .line 955
    .local v0, returnStatus:I
    const/4 v1, 0x2

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v1, v2, :cond_0

    .line 956
    const-string v1, "FmReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/4 v0, 0x3

    .line 963
    :goto_0
    return v0

    .line 960
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    goto :goto_0
.end method

.method private process_muteAudio(Z)I
    .locals 7
    .parameter "mute"

    .prologue
    const/4 v6, 0x1

    .line 982
    const-string v3, "FmReceiverService"

    const-string v4, "muteAudio()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    const/4 v2, 0x0

    .line 986
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_1

    .line 987
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const/4 v2, 0x3

    .line 1011
    :cond_0
    :goto_0
    return v2

    .line 990
    :cond_1
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 992
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 993
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 994
    const/4 v3, 0x6

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 995
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 996
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 999
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->muteNative(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 1000
    const/4 v2, 0x0

    .line 1007
    :goto_1
    if-eqz v2, :cond_0

    .line 1008
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1002
    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1005
    const-string v3, "FmReceiverService"

    const-string v4, "muteAudio failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_seekRdsStation(IIII)I
    .locals 9
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    const/16 v8, 0xff

    const/4 v7, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1110
    const-string v3, "FmReceiverService"

    const-string v4, "seekRdsStation():1"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    const/4 v2, 0x0

    .line 1115
    .local v2, returnStatus:I
    if-ltz p2, :cond_0

    if-le p2, v8, :cond_2

    .line 1117
    :cond_0
    const/4 v2, 0x4

    .line 1153
    :cond_1
    :goto_0
    return v2

    .line 1118
    :cond_2
    if-ltz p4, :cond_3

    if-le p4, v8, :cond_4

    .line 1120
    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    .line 1121
    :cond_4
    if-eqz p3, :cond_5

    if-eq p3, v6, :cond_5

    if-eq p3, v5, :cond_5

    .line 1124
    const/4 v2, 0x4

    goto :goto_0

    .line 1125
    :cond_5
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v5, v3, :cond_6

    .line 1126
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/4 v2, 0x3

    goto :goto_0

    .line 1129
    :cond_6
    sput v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1131
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1132
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1133
    iput v7, v1, Landroid/os/Message;->arg1:I

    .line 1134
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1135
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1138
    and-int/lit16 p1, p1, 0x83

    .line 1141
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchNative(IIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_7

    .line 1142
    const/4 v2, 0x0

    .line 1149
    :goto_1
    if-eqz v2, :cond_1

    .line 1150
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1144
    :cond_7
    const/4 v2, 0x2

    goto :goto_1

    .line 1145
    :catch_0
    move-exception v0

    .line 1146
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1147
    const-string v3, "FmReceiverService"

    const-string v4, "searchNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_seekStation(II)I
    .locals 7
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x1

    .line 1038
    const-string v3, "FmReceiverService"

    const-string v4, "seekStation():1"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/4 v2, 0x0

    .line 1043
    .local v2, returnStatus:I
    if-ltz p2, :cond_0

    const/16 v3, 0xff

    if-le p2, v3, :cond_2

    .line 1045
    :cond_0
    const/4 v2, 0x4

    .line 1078
    :cond_1
    :goto_0
    return v2

    .line 1046
    :cond_2
    if-eqz p1, :cond_3

    const/16 v3, 0x80

    if-eq p1, v3, :cond_3

    const/16 v3, 0x81

    if-eq p1, v3, :cond_3

    const/16 v3, 0x82

    if-eq p1, v3, :cond_3

    .line 1048
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "seekStation failed, scanMode too high (0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const/4 v2, 0x3

    goto :goto_0

    .line 1050
    :cond_3
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_4

    .line 1051
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const/4 v2, 0x3

    goto :goto_0

    .line 1054
    :cond_4
    sput v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1056
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1057
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1058
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 1059
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1060
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1063
    and-int/lit16 p1, p1, 0x83

    .line 1066
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchNative(IIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_5

    .line 1067
    const/4 v2, 0x0

    .line 1074
    :goto_1
    if-eqz v2, :cond_1

    .line 1075
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1069
    :cond_5
    const/4 v2, 0x2

    goto :goto_1

    .line 1070
    :catch_0
    move-exception v0

    .line 1071
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1072
    const-string v3, "FmReceiverService"

    const-string v4, "searchNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_setAudioMode(I)I
    .locals 7
    .parameter "audioMode"

    .prologue
    const/4 v6, 0x1

    .line 1285
    const/4 v2, 0x0

    .line 1287
    .local v2, returnStatus:I
    const-string v3, "FmReceiverService"

    const-string v4, "setAudioMode()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_1

    .line 1290
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    const/4 v2, 0x3

    .line 1318
    :cond_0
    :goto_0
    return v2

    .line 1293
    :cond_1
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1295
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1296
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1297
    const/16 v3, 0x9

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1298
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1299
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1302
    and-int/lit8 p1, p1, 0x3

    .line 1305
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioModeNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 1306
    const/4 v2, 0x0

    .line 1313
    :goto_1
    if-eqz v2, :cond_0

    .line 1314
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1308
    :cond_2
    const/4 v2, 0x2

    goto :goto_1

    .line 1309
    :catch_0
    move-exception v0

    .line 1310
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1311
    const-string v3, "FmReceiverService"

    const-string v4, "setAudioModeNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_setAudioPath(I)I
    .locals 8
    .parameter "audioPath"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1345
    const/4 v2, 0x0

    .line 1347
    .local v2, returnStatus:I
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAudioPath("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v7, v3, :cond_2

    .line 1350
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const/4 v2, 0x3

    .line 1374
    :goto_0
    if-eqz v2, :cond_0

    .line 1375
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1379
    :cond_0
    if-nez p1, :cond_4

    .line 1380
    const-string v3, "fm_route=disabled"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1387
    :cond_1
    :goto_1
    return v2

    .line 1353
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1355
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1356
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1357
    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1358
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1359
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1362
    and-int/lit8 p1, p1, 0x3

    .line 1365
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioPathNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 1366
    const/4 v2, 0x0

    goto :goto_0

    .line 1368
    :cond_3
    const/4 v2, 0x2

    goto :goto_0

    .line 1369
    :catch_0
    move-exception v0

    .line 1370
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1371
    const-string v3, "FmReceiverService"

    const-string v4, "setAudioPathNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1381
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #msg:Landroid/os/Message;
    :cond_4
    if-ne p1, v6, :cond_5

    .line 1382
    const-string v3, "fm_route=fm_speaker"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1

    .line 1383
    :cond_5
    if-ne p1, v7, :cond_1

    .line 1384
    const-string v3, "fm_route=fm_headset"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1
.end method

.method private process_setFMVolume(I)I
    .locals 7
    .parameter "volume"

    .prologue
    const/4 v6, 0x1

    .line 1466
    const-string v3, "FmReceiverService"

    const-string v4, "setFMVolume()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    const/4 v2, 0x0

    .line 1471
    .local v2, returnStatus:I
    if-ltz p1, :cond_0

    const/16 v3, 0x100

    if-le p1, v3, :cond_2

    .line 1473
    :cond_0
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "volume is illegal ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const/4 v2, 0x4

    .line 1500
    :cond_1
    :goto_0
    return v2

    .line 1475
    :cond_2
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_3

    .line 1476
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    const/4 v2, 0x3

    goto :goto_0

    .line 1479
    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1481
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1482
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1483
    const/16 v3, 0xc

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1484
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1485
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1486
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFMVolume ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setFMVolumeNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 1489
    const/4 v2, 0x0

    .line 1496
    :goto_1
    if-eqz v2, :cond_1

    .line 1497
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1491
    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    .line 1492
    :catch_0
    move-exception v0

    .line 1493
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1494
    const-string v3, "FmReceiverService"

    const-string v4, "setFMVolumeNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_setLiveAudioPolling(ZI)I
    .locals 5
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 1651
    const/4 v1, 0x0

    .line 1653
    .local v1, returnStatus:I
    const-string v2, "FmReceiverService"

    const-string v3, "setLiveAudioPolling()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    if-eqz p1, :cond_1

    const/16 v2, 0xa

    if-lt p2, v2, :cond_0

    const v2, 0x186a0

    if-le p2, v2, :cond_1

    .line 1658
    :cond_0
    const/4 v1, 0x4

    .line 1679
    :goto_0
    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 1681
    return v1

    .line 1659
    :cond_1
    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v4, v2, :cond_2

    .line 1660
    const-string v2, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    const/4 v1, 0x3

    goto :goto_0

    .line 1663
    :cond_2
    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1666
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getAudioQualityNative(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->configureSignalNotificationNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_3

    .line 1668
    const/4 v1, 0x0

    .line 1676
    :goto_1
    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    goto :goto_0

    .line 1670
    :cond_3
    const/4 v1, 0x2

    goto :goto_1

    .line 1671
    :catch_0
    move-exception v0

    .line 1672
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x2

    .line 1673
    const-string v2, "FmReceiverService"

    const-string v3, "setLiveAudioPolling failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_setRdsMode(IIII)I
    .locals 10
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 1214
    const/4 v5, 0x0

    .line 1216
    .local v5, returnStatus:I
    const-string v7, "FmReceiverService"

    const-string v8, "setRdsMode()"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    if-ltz p4, :cond_0

    const/16 v7, 0xff

    if-le p4, v7, :cond_2

    .line 1221
    :cond_0
    const/4 v5, 0x4

    .line 1260
    :cond_1
    :goto_0
    return v5

    .line 1222
    :cond_2
    const/4 v7, 0x2

    sget v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v7, v8, :cond_3

    .line 1223
    const-string v6, "FmReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "STATE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    const/4 v5, 0x3

    goto :goto_0

    .line 1226
    :cond_3
    const/4 v7, 0x4

    sput v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1227
    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    .line 1229
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1230
    .local v2, msg:Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 1231
    const/16 v7, 0x8

    iput v7, v2, Landroid/os/Message;->arg1:I

    .line 1232
    iget-object v7, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1233
    iget-object v7, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1388

    invoke-virtual {v7, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1236
    and-int/lit8 p1, p1, 0x3

    .line 1237
    and-int/lit8 p3, p3, 0x1

    .line 1238
    and-int/lit8 p2, p2, 0x7c

    .line 1239
    if-eqz p1, :cond_5

    move v4, v6

    .line 1240
    .local v4, rdsOnNative:Z
    :goto_1
    if-eqz p3, :cond_4

    move v0, v6

    .line 1243
    .local v0, afOnNative:Z
    :cond_4
    and-int/lit8 v3, p1, 0x1

    .line 1247
    .local v3, rdsModeNative:I
    :try_start_0
    invoke-direct {p0, v4, v0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRdsModeNative(ZZI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_6

    .line 1248
    const/4 v5, 0x0

    .line 1256
    :goto_2
    if-eqz v5, :cond_1

    .line 1257
    iget-object v7, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v7, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .end local v0           #afOnNative:Z
    .end local v3           #rdsModeNative:I
    .end local v4           #rdsOnNative:Z
    :cond_5
    move v4, v0

    .line 1239
    goto :goto_1

    .line 1250
    .restart local v0       #afOnNative:Z
    .restart local v3       #rdsModeNative:I
    .restart local v4       #rdsOnNative:Z
    :cond_6
    const/4 v5, 0x2

    goto :goto_2

    .line 1252
    :catch_0
    move-exception v1

    .line 1253
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "FmReceiverService"

    const-string v8, "setRdsNative failed"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1254
    const/4 v5, 0x2

    goto :goto_2
.end method

.method private process_setStepSize(I)I
    .locals 7
    .parameter "stepSize"

    .prologue
    const/4 v6, 0x1

    .line 1413
    const-string v3, "FmReceiverService"

    const-string v4, "setStepSize()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    const/4 v2, 0x0

    .line 1418
    .local v2, returnStatus:I
    const/16 v3, 0x10

    if-eq p1, v3, :cond_1

    if-eqz p1, :cond_1

    .line 1420
    const/4 v2, 0x4

    .line 1446
    :cond_0
    :goto_0
    return v2

    .line 1421
    :cond_1
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 1422
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    const/4 v2, 0x3

    goto :goto_0

    .line 1425
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1427
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1428
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1429
    const/16 v3, 0xb

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1430
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1431
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1434
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setScanStepNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 1435
    const/4 v2, 0x0

    .line 1442
    :goto_1
    if-eqz v2, :cond_0

    .line 1443
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1437
    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    .line 1438
    :catch_0
    move-exception v0

    .line 1439
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1440
    const-string v3, "FmReceiverService"

    const-string v4, "setScanStepNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_setWorldRegion(II)I
    .locals 7
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1529
    const-string v3, "FmReceiverService"

    const-string v4, "setWorldRegion()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    const/4 v2, 0x0

    .line 1534
    .local v2, returnStatus:I
    if-eqz p1, :cond_1

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_1

    .line 1537
    const/4 v2, 0x4

    .line 1566
    :cond_0
    :goto_0
    return v2

    .line 1538
    :cond_1
    if-eqz p2, :cond_2

    const/16 v3, 0x40

    if-eq p2, v3, :cond_2

    .line 1540
    const/4 v2, 0x4

    goto :goto_0

    .line 1541
    :cond_2
    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v5, v3, :cond_3

    .line 1542
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const/4 v2, 0x3

    goto :goto_0

    .line 1545
    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1547
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1548
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1549
    const/16 v3, 0xd

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1550
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1551
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1554
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setRegionNative(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->configureDeemphasisNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 1555
    const/4 v2, 0x0

    .line 1562
    :goto_1
    if-eqz v2, :cond_0

    .line 1563
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1557
    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    .line 1558
    :catch_0
    move-exception v0

    .line 1559
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 1560
    const-string v3, "FmReceiverService"

    const-string v4, "setRdsNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_tuneRadio(I)I
    .locals 7
    .parameter "freq"

    .prologue
    const/4 v6, 0x1

    .line 901
    const-string v3, "FmReceiverService"

    const-string v4, "tuneRadio()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const/4 v2, 0x0

    .line 906
    .local v2, returnStatus:I
    if-lt p1, v6, :cond_0

    const v3, 0x1869f

    if-le p1, v3, :cond_2

    .line 908
    :cond_0
    const/4 v2, 0x4

    .line 934
    :cond_1
    :goto_0
    return v2

    .line 909
    :cond_2
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_3

    .line 910
    const-string v3, "FmReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const/4 v2, 0x3

    goto :goto_0

    .line 913
    :cond_3
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 915
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 916
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 917
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 918
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 919
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 922
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->tuneNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 923
    const/4 v2, 0x0

    .line 930
    :goto_1
    if-eqz v2, :cond_1

    .line 931
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 925
    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    .line 926
    :catch_0
    move-exception v0

    .line 927
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 928
    const-string v3, "FmReceiverService"

    const-string v4, "tuneNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_turnOffRadio()I
    .locals 8

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 843
    const-string v3, "FmReceiverService"

    const-string v4, "turnOffRadio()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const/4 v2, 0x0

    .line 847
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eq v3, v4, :cond_0

    .line 849
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 851
    :cond_0
    sput v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 853
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 854
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 855
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 856
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 857
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 860
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->disableNative(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 861
    const/4 v2, 0x0

    .line 869
    :goto_0
    if-eqz v2, :cond_1

    .line 871
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 874
    :cond_1
    invoke-virtual {p0, v7}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setAudioPath(I)I

    .line 879
    sput v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 881
    return v2

    .line 863
    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    .line 864
    :catch_0
    move-exception v0

    .line 865
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x2

    .line 866
    const-string v3, "FmReceiverService"

    const-string v4, "turnOnRadioNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_turnOnRadio(I)I
    .locals 9
    .parameter "functionalityMask"

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 769
    const-string v5, "FmReceiverService"

    const-string v6, "turnOnRadio........()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->initFmPower()V

    .line 771
    const/4 v4, 0x0

    .line 772
    .local v4, returnStatus:I
    and-int/lit8 v3, p1, 0x3

    .line 773
    .local v3, requestedRegion:I
    and-int/lit8 v2, p1, 0x70

    .line 776
    .local v2, requestedRdsFeatures:I
    if-eq v3, v8, :cond_1

    if-eq v3, v7, :cond_1

    if-eqz v3, :cond_1

    .line 779
    const-string v5, "FmReceiverService"

    const-string v6, "Illegal parameter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v4, 0x4

    .line 822
    :cond_0
    :goto_0
    return v4

    .line 781
    :cond_1
    and-int/lit8 v5, v2, 0x10

    if-eqz v5, :cond_2

    and-int/lit8 v5, v2, 0x20

    if-eqz v5, :cond_2

    .line 783
    const-string v5, "FmReceiverService"

    const-string v6, "Illegal parameter (2)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/4 v4, 0x4

    goto :goto_0

    .line 785
    :cond_2
    sget-boolean v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-eqz v5, :cond_3

    .line 790
    invoke-direct {p0, v8}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    goto :goto_0

    .line 792
    :cond_3
    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eqz v5, :cond_4

    .line 793
    const-string v5, "FmReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const/4 v4, 0x3

    goto :goto_0

    .line 796
    :cond_4
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFuncMask:I

    .line 797
    sput v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 799
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 800
    .local v1, msg:Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 801
    iput v7, v1, Landroid/os/Message;->arg1:I

    .line 802
    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 803
    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x4e20

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 806
    and-int/lit8 p1, p1, 0x73

    .line 809
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->enableNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_5

    .line 810
    const/4 v4, 0x0

    .line 818
    :goto_1
    if-eqz v4, :cond_0

    .line 819
    iget-object v5, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 812
    :cond_5
    const/4 v4, 0x2

    goto :goto_1

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x2

    .line 816
    const-string v5, "FmReceiverService"

    const-string v6, "turnOnRadioNative failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    .locals 4
    .parameter "job"

    .prologue
    .line 248
    const-string v0, "FmReceiverService"

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 252
    :try_start_0
    const-string v0, "FmReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****** ****** Adding FM Job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->cleanQueue(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V

    .line 254
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->processCommands()V

    .line 260
    :cond_0
    monitor-exit v1

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private registerForstopPackage([C)V
    .locals 3
    .parameter "clientPackagename"

    .prologue
    .line 726
    invoke-static {p1}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_ClientName:Ljava/lang/String;

    .line 727
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 728
    .local v0, mPackageFilt:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 729
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 731
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 732
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 734
    return-void
.end method

.method private native searchAbortNative()Z
.end method

.method private native searchNative(IIII)Z
.end method

.method private sendAudioModeEventCallback(I)V
    .locals 6
    .parameter "audioMode"

    .prologue
    .line 1991
    const-string v4, "FmReceiverService"

    const-string v5, "sendAudioModeEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2004
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2005
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2008
    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onAudioModeEvent(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2005
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2009
    :catch_0
    move-exception v3

    .line 2010
    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendAudioModeEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2014
    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 2015
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2023
    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 2024
    return-void

    .line 2013
    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendAudioModeEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    .line 1978
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1979
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1980
    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1981
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1982
    return-void
.end method

.method private sendAudioPathEventCallback(I)V
    .locals 6
    .parameter "audioPath"

    .prologue
    .line 2043
    const-string v4, "FmReceiverService"

    const-string v5, "sendAudioPathEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2056
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2057
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2060
    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onAudioPathEvent(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2057
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2061
    :catch_0
    move-exception v3

    .line 2062
    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendAudioPathEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2066
    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 2067
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2075
    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 2077
    return-void

    .line 2065
    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendAudioPathEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    .line 2030
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2031
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x15

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2032
    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2033
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2034
    return-void
.end method

.method private sendEstimateNflEventCallback(I)V
    .locals 6
    .parameter "nfl"

    .prologue
    .line 2149
    const-string v4, "FmReceiverService"

    const-string v5, "sendEstimateNflEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2161
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2162
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2165
    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onEstimateNflEvent(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2162
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2166
    :catch_0
    move-exception v3

    .line 2167
    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendEstimateNflEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2171
    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 2172
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2180
    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 2182
    return-void

    .line 2170
    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendEstimateNflEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    .line 2136
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2137
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2138
    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2139
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2140
    return-void
.end method

.method private sendLiveAudioQualityEventCallback(I)V
    .locals 6
    .parameter "rssi"

    .prologue
    .line 2201
    const-string v4, "FmReceiverService"

    const-string v5, "sendLiveAudioQualityEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2211
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2214
    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onLiveAudioQualityEvent(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2211
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2215
    :catch_0
    move-exception v3

    .line 2216
    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendLiveAudioQualityEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2220
    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 2221
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2224
    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    return-void

    .line 2219
    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendLiveAudioQualityEventCallbackFromLocalStore(I)V
    .locals 2
    .parameter "rssi"

    .prologue
    .line 2188
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2189
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x18

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2190
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2191
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2192
    return-void
.end method

.method private sendRdsDataEventCallback(IILjava/lang/String;)V
    .locals 6
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    .line 1948
    const-string v4, "FmReceiverService"

    const-string v5, "sendRdsDataEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1959
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1962
    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onRdsDataEvent(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1959
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1963
    :catch_0
    move-exception v3

    .line 1964
    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendRdsModeEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1968
    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 1969
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1972
    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    return-void

    .line 1967
    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendRdsDataEventCallbackFromLocalStore(IILjava/lang/String;)V
    .locals 2
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    .line 1931
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1932
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1933
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1934
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1935
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1936
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1937
    return-void
.end method

.method private sendRdsModeEventCallback(II)V
    .locals 6
    .parameter "rdsMode"
    .parameter "alternateFreqMode"

    .prologue
    .line 1890
    const-string v4, "FmReceiverService"

    const-string v5, "sendRdsModeEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1904
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1905
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1908
    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onRdsModeEvent(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1905
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1909
    :catch_0
    move-exception v3

    .line 1910
    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendRdsModeEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1914
    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 1915
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1923
    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 1925
    return-void

    .line 1913
    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendRdsModeEventCallbackFromLocalStore()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1865
    const-string v4, "FmReceiverService"

    const-string v5, "sendRdsModeEventCallbackFromLocalStore"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    const/4 v2, 0x0

    .line 1867
    .local v2, rds:I
    sget-boolean v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    if-eqz v4, :cond_1

    move v0, v3

    .line 1869
    .local v0, af:I
    :goto_0
    sget-boolean v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    if-eqz v4, :cond_0

    .line 1870
    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    if-nez v4, :cond_2

    move v2, v3

    .line 1872
    :cond_0
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1873
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x12

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1874
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1875
    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 1876
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1879
    return-void

    .line 1867
    .end local v0           #af:I
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1870
    .restart local v0       #af:I
    :cond_2
    const/4 v2, 0x2

    goto :goto_1
.end method

.method private sendSeekCompleteEventCallback(IIZI)V
    .locals 6
    .parameter "freq"
    .parameter "rssi"
    .parameter "seekSuccess"
    .parameter "iSendNextJob"

    .prologue
    .line 1822
    const-string v4, "FmReceiverService"

    const-string v5, "sendSeekCompleteEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1837
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 1838
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1841
    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onSeekCompleteEvent(IIZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1838
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1842
    :catch_0
    move-exception v3

    .line 1843
    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendSeekCompleteEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1847
    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 1848
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1857
    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    if-lez p4, :cond_0

    .line 1858
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 1859
    :cond_0
    return-void

    .line 1846
    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_1
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendSeekCompleteEventCallbackFromLocalStore(Z)V
    .locals 6
    .parameter "SendNextJob"

    .prologue
    const/4 v2, 0x1

    .line 1798
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1799
    .local v0, msg:Landroid/os/Message;
    const/16 v3, 0x11

    iput v3, v0, Landroid/os/Message;->what:I

    .line 1800
    new-instance v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZ)V

    .line 1803
    .local v1, search_st:Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Search_Params;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1804
    if-ne p1, v2, :cond_0

    :goto_0
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 1805
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1807
    return-void

    .line 1804
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendStatusEventCallback(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 13
    .parameter "freq"
    .parameter "rssi"
    .parameter "radioIsOn"
    .parameter "rdsProgramType"
    .parameter "rdsProgramService"
    .parameter "rdsRadioText"
    .parameter "rdsProgramTypeName"
    .parameter "isMute"
    .parameter "iSendNextJob"

    .prologue
    .line 1763
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    if-eqz v0, :cond_0

    .line 1764
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 1767
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    .line 1768
    .local v9, callbacks:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v9, :cond_2

    .line 1771
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1768
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1775
    :catch_0
    move-exception v10

    .line 1776
    .local v10, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1780
    .end local v9           #callbacks:I
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v12           #i:I
    :catch_1
    move-exception v11

    .line 1781
    .local v11, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1789
    .end local v11           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    if-lez p9, :cond_1

    .line 1790
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 1791
    :cond_1
    return-void

    .line 1779
    .restart local v9       #callbacks:I
    .restart local v12       #i:I
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendStatusEventCallbackFromLocalStore(Z)V
    .locals 12
    .parameter "SendNextJob"

    .prologue
    const/4 v11, 0x1

    .line 1728
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 1729
    .local v10, msg:Landroid/os/Message;
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    sget v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    sget-boolean v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    sget v5, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    sget-object v6, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    sget-object v7, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    sget-object v8, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    sget-boolean v9, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1737
    .local v0, status:Lcom/broadcom/bt/service/fm/FmReceiverService$FM_Status_Params;
    const/16 v1, 0x10

    iput v1, v10, Landroid/os/Message;->what:I

    .line 1738
    if-ne p1, v11, :cond_0

    move v1, v11

    :goto_0
    iput v1, v10, Landroid/os/Message;->arg1:I

    .line 1739
    iput-object v0, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1740
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1741
    return-void

    .line 1738
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendVolumeEventCallback(II)V
    .locals 6
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 2248
    const-string v4, "FmReceiverService"

    const-string v5, "sendVolumeEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2262
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2263
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2266
    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1, p2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onVolumeEvent(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2263
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2267
    :catch_0
    move-exception v3

    .line 2268
    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendVolumeEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2272
    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 2273
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2281
    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 2283
    return-void

    .line 2271
    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendVolumeEventCallbackFromLocalStore(II)V
    .locals 2
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 2231
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2232
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x19

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2233
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2234
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2235
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2236
    return-void
.end method

.method private sendWorldRegionEventCallback(I)V
    .locals 6
    .parameter "worldRegion"

    .prologue
    .line 2096
    const-string v4, "FmReceiverService"

    const-string v5, "sendWorldRegionEventCallback"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    const/4 v4, 0x2

    sput v4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2110
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 2111
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2114
    :try_start_1
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;->onWorldRegionEvent(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2111
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2115
    :catch_0
    move-exception v3

    .line 2116
    .local v3, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "FmReceiverService"

    const-string v5, "sendWorldRegionEventCallback"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2120
    .end local v0           #callbacks:I
    .end local v2           #i:I
    .end local v3           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 2121
    .local v1, e_i:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 2129
    .end local v1           #e_i:Ljava/lang/IllegalStateException;
    :goto_2
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 2130
    return-void

    .line 2119
    .restart local v0       #callbacks:I
    .restart local v2       #i:I
    :cond_0
    :try_start_3
    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private sendWorldRegionEventCallbackFromLocalStore()V
    .locals 2

    .prologue
    .line 2083
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2084
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x16

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2085
    sget v1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2086
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2087
    return-void
.end method

.method private native setAudioModeNative(I)Z
.end method

.method private native setAudioPathNative(I)Z
.end method

.method private native setFMVolumeNative(I)Z
.end method

.method private native setRdsModeNative(ZZI)Z
.end method

.method private native setRegionNative(I)Z
.end method

.method private native setScanStepNative(I)Z
.end method

.method private native tuneNative(I)Z
.end method

.method private unRegisterpackFilter()V
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 738
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_ClientName:Ljava/lang/String;

    .line 739
    return-void
.end method


# virtual methods
.method public checkForPendingResponses()V
    .locals 2

    .prologue
    .line 2289
    const-string v0, "FmReceiverService"

    const-string v1, "checkForPendingResponses"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallbackFromLocalStore(I)V

    .line 2291
    return-void
.end method

.method public clearAllQueue()V
    .locals 4

    .prologue
    .line 386
    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 387
    :try_start_0
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 388
    const-string v0, "FmReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******* Clearing the queue. Present size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    sget-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 390
    const/4 v0, 0x0

    sput-object v0, Lcom/broadcom/bt/service/fm/FmReceiverService;->FMQueue:Ljava/util/LinkedList;

    .line 392
    :cond_0
    monitor-exit v1

    .line 393
    return-void

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized estimateNoiseFloorLevel(I)I
    .locals 2
    .parameter "nflLevel"

    .prologue
    .line 1586
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_ESTIMATE_NOISE_FLOOR_LEVEL:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1587
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1586
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->stopFM_Loop()V

    .line 430
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 431
    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x4e20

    .line 484
    const-string v0, "FmReceiverService"

    const-string v1, "finish - cleanup Service here"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 488
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 489
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 490
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 491
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 492
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 493
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 494
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 495
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 496
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 497
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 498
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 499
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 500
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 501
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 503
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 504
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 505
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 506
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 507
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 508
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 509
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 510
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 514
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 515
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 516
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 518
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 519
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 520
    iput-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->clearAllQueue()V

    .line 523
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 524
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseService;->finish()V

    .line 525
    return-void
.end method

.method public declared-synchronized getIsMute()Z
    .locals 1

    .prologue
    .line 1715
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMonoStereoMode()I
    .locals 1

    .prologue
    .line 1697
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 479
    const-string v0, "FmReceiverService"

    const-string v1, "getName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v0, "bluetooth_fm_receiver_service"

    return-object v0
.end method

.method public getRadioIsOn()Z
    .locals 1

    .prologue
    .line 402
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    return v0
.end method

.method public declared-synchronized getStatus()I
    .locals 2

    .prologue
    .line 946
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_GET_STATUS:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 946
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTunedFrequency()I
    .locals 1

    .prologue
    .line 1706
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized muteAudio(Z)I
    .locals 2
    .parameter "mute"

    .prologue
    .line 976
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_MUTE_AUDIO:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;Z)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 976
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onRadioAfJumpEvent(III)V
    .locals 4
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v3, 0x1

    .line 2406
    const-string v0, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioAfJumpEvent(status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rssi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2410
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 2411
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 2412
    sput-boolean v3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 2413
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore(Z)V

    .line 2416
    return-void
.end method

.method public onRadioAudioDataEvent(III)V
    .locals 2
    .parameter "status"
    .parameter "rssi"
    .parameter "mode"

    .prologue
    .line 2453
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioAudioDataEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2457
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2460
    if-nez p1, :cond_0

    .line 2461
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 2462
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    .line 2464
    :cond_0
    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendLiveAudioQualityEventCallbackFromLocalStore(I)V

    .line 2465
    return-void
.end method

.method public onRadioAudioModeEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "mode"

    .prologue
    .line 2419
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioAudioModeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2428
    if-nez p1, :cond_0

    .line 2429
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioMode:I

    .line 2431
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioModeEventCallbackFromLocalStore()V

    .line 2433
    return-void
.end method

.method public onRadioAudioPathEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "path"

    .prologue
    .line 2436
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioAudioPathEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2445
    if-nez p1, :cond_0

    .line 2446
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAudioPath:I

    .line 2448
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendAudioPathEventCallbackFromLocalStore()V

    .line 2450
    return-void
.end method

.method public onRadioDeemphEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "time"

    .prologue
    .line 2547
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioDeemphEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2553
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2554
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 2555
    return-void
.end method

.method public onRadioMuteEvent(IZ)V
    .locals 3
    .parameter "status"
    .parameter "muted"

    .prologue
    const/4 v2, 0x1

    .line 2337
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioMuteEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    if-nez p1, :cond_0

    .line 2341
    sput-boolean p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mIsMute:Z

    .line 2345
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2351
    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    .line 2353
    return-void
.end method

.method public onRadioNflEstimationEvent(I)V
    .locals 2
    .parameter "level"

    .prologue
    .line 2583
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioNflEstimationEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2589
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2592
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mEstimatedNoiseFloorLevel:I

    .line 2593
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendEstimateNflEventCallbackFromLocalStore()V

    .line 2595
    return-void
.end method

.method public onRadioOffEvent(I)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2315
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioOffEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->shutdownFmPower()V

    .line 2319
    if-nez p1, :cond_0

    .line 2320
    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    .line 2324
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2327
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-nez v0, :cond_1

    .line 2328
    sput v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2332
    :cond_1
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    .line 2334
    return-void
.end method

.method public onRadioOnEvent(I)V
    .locals 3
    .parameter "status"

    .prologue
    const/4 v2, 0x1

    .line 2295
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioOnEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    if-nez p1, :cond_0

    .line 2298
    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    .line 2302
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2305
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRadioIsOn:Z

    if-nez v0, :cond_1

    .line 2306
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2310
    :cond_1
    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    .line 2312
    return-void
.end method

.method public onRadioRdsModeEvent(IZZI)V
    .locals 3
    .parameter "status"
    .parameter "rdsOn"
    .parameter "afOn"
    .parameter "rdsType"

    .prologue
    .line 2468
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioRdsModeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    if-nez p1, :cond_0

    .line 2472
    sput-boolean p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsOn:Z

    .line 2473
    sput-boolean p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mAfOn:Z

    .line 2474
    sput p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    .line 2475
    const-string v0, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioRdsModeEvent( rdsOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", afOn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2486
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallbackFromLocalStore()V

    .line 2487
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    .line 2491
    return-void
.end method

.method public onRadioRdsTypeEvent(II)V
    .locals 3
    .parameter "status"
    .parameter "rdsType"

    .prologue
    const/4 v2, 0x1

    .line 2495
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioRdsTypeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    if-nez p1, :cond_0

    .line 2499
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsType:I

    .line 2502
    :cond_0
    sget v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    if-ne v2, v0, :cond_1

    .line 2507
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2509
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsModeEventCallbackFromLocalStore()V

    .line 2510
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    .line 2515
    :goto_0
    return-void

    .line 2513
    :cond_1
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_op_state:I

    goto :goto_0
.end method

.method public onRadioRdsUpdateEvent(IIILjava/lang/String;)V
    .locals 3
    .parameter "status"
    .parameter "data"
    .parameter "index"
    .parameter "text"

    .prologue
    .line 2518
    const-string v0, "FmReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRadioRdsUpdateEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    if-nez p1, :cond_0

    .line 2523
    packed-switch p2, :pswitch_data_0

    .line 2542
    :goto_0
    :pswitch_0
    invoke-direct {p0, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendRdsDataEventCallbackFromLocalStore(IILjava/lang/String;)V

    .line 2544
    :cond_0
    return-void

    .line 2525
    :pswitch_1
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramType:I

    goto :goto_0

    .line 2528
    :pswitch_2
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramTypeName:Ljava/lang/String;

    goto :goto_0

    .line 2531
    :pswitch_3
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsRadioText:Ljava/lang/String;

    goto :goto_0

    .line 2534
    :pswitch_4
    sput-object p4, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRdsProgramService:Ljava/lang/String;

    goto :goto_0

    .line 2523
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onRadioRegionEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "region"

    .prologue
    .line 2569
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioRegionEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2577
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mWorldRegion:I

    .line 2578
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendWorldRegionEventCallbackFromLocalStore()V

    .line 2580
    return-void
.end method

.method public onRadioScanStepEvent(I)V
    .locals 2
    .parameter "stepSize"

    .prologue
    .line 2558
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioScanStepEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2561
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2564
    const/4 v0, 0x2

    sput v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->radio_state:I

    .line 2565
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->fetchNextJob()V

    .line 2566
    return-void
.end method

.method public onRadioSearchCompleteEvent(III)V
    .locals 3
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v1, 0x1

    .line 2389
    const-string v0, "FmReceiverService"

    const-string v2, "onRadioSearchCompleteEvent()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2398
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 2399
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 2400
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 2401
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore(Z)V

    .line 2403
    return-void

    .line 2400
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRadioSearchEvent(II)V
    .locals 3
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v2, 0x1

    .line 2374
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioSearchEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2382
    sput p1, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 2383
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 2384
    sput-boolean v2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mSeekSuccess:Z

    .line 2385
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendSeekCompleteEventCallbackFromLocalStore(Z)V

    .line 2386
    return-void
.end method

.method public onRadioTuneEvent(III)V
    .locals 3
    .parameter "status"
    .parameter "rssi"
    .parameter "freq"

    .prologue
    const/4 v2, 0x1

    .line 2356
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioTuneEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2365
    if-nez p1, :cond_0

    .line 2366
    sput p2, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mRssi:I

    .line 2367
    sput p3, Lcom/broadcom/bt/service/fm/FmReceiverServiceState;->mFreq:I

    .line 2369
    :cond_0
    invoke-direct {p0, v2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendStatusEventCallbackFromLocalStore(Z)V

    .line 2371
    return-void
.end method

.method public onRadioVolumeEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 2598
    const-string v0, "FmReceiverService"

    const-string v1, "onRadioVolumeEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2606
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->sendVolumeEventCallbackFromLocalStore(II)V

    .line 2608
    return-void
.end method

.method public declared-synchronized onStateChangeEvent(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 2691
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    if-eqz v0, :cond_0

    .line 2692
    iput-boolean p1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    .line 2693
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-eqz v0, :cond_1

    .line 2694
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2706
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2696
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2691
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerCallback(Lcom/broadcom/bt/service/fm/IFmReceiverCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 406
    if-eqz p1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 409
    :cond_0
    return-void
.end method

.method public declared-synchronized seekRdsStation(IIII)I
    .locals 6
    .parameter "scanMode"
    .parameter "minSignalStrength"
    .parameter "rdsCondition"
    .parameter "rdsValue"

    .prologue
    .line 1103
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SEEK_RDS_STATION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;IIII)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1104
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekStation(II)I
    .locals 2
    .parameter "scanMode"
    .parameter "minSignalStrength"

    .prologue
    .line 1032
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SEEK_STATION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;II)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1033
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1032
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekStationAbort()I
    .locals 4

    .prologue
    .line 1167
    monitor-enter p0

    :try_start_0
    const-string v2, "FmReceiverService"

    const-string v3, "seekStationAbort()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const/4 v1, 0x3

    .line 1171
    .local v1, returnStatus:I
    iget v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->current_CMD:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1173
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->searchAbortNative()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1174
    const/4 v1, 0x0

    .line 1182
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1176
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 1177
    :catch_0
    move-exception v0

    .line 1178
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x2

    .line 1179
    :try_start_2
    const-string v2, "FmReceiverService"

    const-string v3, "searchAbortNative failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1167
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioMode(I)I
    .locals 2
    .parameter "audioMode"

    .prologue
    .line 1279
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_AUDIO_MODE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1280
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioPath(I)I
    .locals 2
    .parameter "audioPath"

    .prologue
    .line 1339
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_AUDIO_PATH:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1340
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFMVolume(I)I
    .locals 2
    .parameter "volume"

    .prologue
    .line 1461
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_VOLUME:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1462
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1461
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLiveAudioPolling(ZI)I
    .locals 2
    .parameter "liveAudioPolling"
    .parameter "signalPollInterval"

    .prologue
    .line 1644
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_LIVE_AUDIO_POLLING:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;ZI)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1645
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1644
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRdsMode(IIII)I
    .locals 6
    .parameter "rdsMode"
    .parameter "rdsFeatures"
    .parameter "afMode"
    .parameter "afThreshold"

    .prologue
    .line 1207
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_RDS_MODE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;IIII)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1208
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStepSize(I)I
    .locals 2
    .parameter "stepSize"

    .prologue
    .line 1406
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_STEP_SIZE:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1407
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWorldRegion(II)I
    .locals 2
    .parameter "worldRegion"
    .parameter "deemphasisTime"

    .prologue
    .line 1523
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_SET_WORLD_REGION:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;II)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1524
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1523
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 434
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverService"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 436
    const-string v0, "FmReceiverService"

    const-string v1, "Service already started...Skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :goto_0
    monitor-exit p0

    return-void

    .line 439
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->startFM_Loop()V

    .line 445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    .line 446
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startFM_Loop()V
    .locals 2

    .prologue
    .line 462
    const-string v0, "FmReceiverService"

    const-string v1, "startFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initLoopNative()V

    .line 464
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->initNativeDataNative()V

    .line 465
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 450
    monitor-enter p0

    :try_start_0
    const-string v0, "FmReceiverService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 452
    const-string v0, "FmReceiverService"

    const-string v1, "Service already stopped...Skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    :goto_0
    monitor-exit p0

    return-void

    .line 455
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->stopFM_Loop()V

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    .line 458
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->onStateChangeEvent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopFM_Loop()V
    .locals 2

    .prologue
    .line 471
    const-string v0, "FmReceiverService"

    const-string v1, "stopFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->cleanupLoopNative()V

    .line 474
    return-void
.end method

.method public declared-synchronized tuneRadio(I)I
    .locals 2
    .parameter "freq"

    .prologue
    .line 896
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_TUNE_RADIO:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 896
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized turnOffRadio()I
    .locals 2

    .prologue
    .line 837
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_OFF:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V

    .line 838
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->unRegisterpackFilter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 839
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 837
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized turnOnRadio(I[C)I
    .locals 2
    .parameter "functionalityMask"
    .parameter "clientPackagename"

    .prologue
    .line 715
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;->FM_ON:Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;-><init>(Lcom/broadcom/bt/service/fm/FmReceiverService$FMCommand;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmReceiverService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmReceiverService$FMJob;)V

    .line 717
    invoke-direct {p0, p2}, Lcom/broadcom/bt/service/fm/FmReceiverService;->registerForstopPackage([C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 715
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
    .line 412
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmReceiverService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :cond_0
    monitor-exit p0

    return-void

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
