.class public final Lcom/broadcom/bt/service/fm/FmTransmitterService;
.super Lcom/broadcom/bt/service/framework/BaseService;
.source "FmTransmitterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmTransmitterService$2;,
        Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;,
        Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;,
        Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;,
        Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static FMTX_Queue:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;",
            ">;"
        }
    .end annotation
.end field

.field private static final FMTX_STATE_BUSY:I = 0x4

.field private static final FMTX_STATE_OFF:I = 0x0

.field private static final FMTX_STATE_READY_FOR_COMMAND:I = 0x2

.field private static final FMTX_STATE_STARTING:I = 0x1

.field private static final FMTX_STATE_STOPPING:I = 0x3

.field private static final FM_TRANSMITTER_PERM:Ljava/lang/String; = "android.Manifest.permission.ACCESS_FM_RECEIVER"

.field private static final OPERATION_FMTX_ABORT_SEARCH:I = 0x10

.field private static final OPERATION_FMTX_BCHNL_EVT:I = 0x25

.field private static final OPERATION_FMTX_CFG_EVT:I = 0x22

.field private static final OPERATION_FMTX_CHIRP_EVT:I = 0x26

.field private static final OPERATION_FMTX_DISABLE:I = 0x3

.field private static final OPERATION_FMTX_DISABLE_EVT:I = 0x1f

.field private static final OPERATION_FMTX_ENABLE:I = 0x2

.field private static final OPERATION_FMTX_ENABLE_EVT:I = 0x1e

.field private static final OPERATION_FMTX_INTF_EVT:I = 0x24

.field private static final OPERATION_FMTX_INTF_NOTIF:I = 0xe

.field private static final OPERATION_FMTX_MUTE_EVT:I = 0x23

.field private static final OPERATION_FMTX_POWER_EVT:I = 0x20

.field private static final OPERATION_FMTX_SEARCH_BEST_CHANS:I = 0xf

.field private static final OPERATION_FMTX_SET_AUDIO_MODE:I = 0x7

.field private static final OPERATION_FMTX_SET_AUDIO_PATH:I = 0xc

.field private static final OPERATION_FMTX_SET_BANDWIDTH:I = 0xa

.field private static final OPERATION_FMTX_SET_FREQ_EVT:I = 0x21

.field private static final OPERATION_FMTX_SET_MUTE_AUDIO:I = 0xd

.field private static final OPERATION_FMTX_SET_PREEMPHASIS:I = 0xb

.field private static final OPERATION_FMTX_SET_REGION:I = 0x9

.field private static final OPERATION_FMTX_SET_TXFREQ:I = 0x5

.field private static final OPERATION_FMTX_SET_TXPWR_LEVEL:I = 0x6

.field private static final OPERATION_FMTX_SET_VOLUME:I = 0x8

.field private static final OPERATION_FMTX_START_AUDIO_CHIRP:I = 0x11

.field private static final OPERATION_FMTX_STATUS_EVT:I = 0x20

.field private static final OPERATION_FMTX_STOP_AUDIO_CHIRP:I = 0x12

.field private static final OPERATION_FMTX_TIMEOUT:I = 0x1

.field private static final OPERATION_FMTX_TIMEOUT_GENERIC:I = 0x1388

.field private static final OPERATION_FMTX_TIMEOUT_SEARCH:I = 0x4e20

.field private static final OPERATION_FMTX_TIMEOUT_SHUTDOWN:I = 0x4e20

.field private static final OPERATION_FMTX_TIMEOUT_STARTUP:I = 0x4e20

.field private static final OPERATION_FMTX_TXPOWER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FmTransmitterService"

.field private static final V:Z = true

.field private static radio_state:I


# instance fields
.field private current_CMD:I

.field private m_bpowerOn:Z

.field private final m_callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;",
            ">;"
        }
    .end annotation
.end field

.field private m_iSaveFreq:I

.field protected operationHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    sput v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 237
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    .line 442
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->classFmTxInitNative()V

    .line 443
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 448
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/framework/BaseService;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    .line 107
    iput-boolean v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    .line 108
    iput v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_iSaveFreq:I

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->current_CMD:I

    .line 675
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$1;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    .line 449
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->initializeStateMachine()V

    .line 450
    return-void
.end method

.method private HandleStatusTimeOut(I)V
    .locals 6
    .parameter "Cmd"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 593
    sput v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 594
    packed-switch p1, :pswitch_data_0

    .line 666
    :pswitch_0
    const-string v2, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TIMEOUT Handling UNKNOWN CALLBACK: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_0
    return-void

    .line 598
    :pswitch_1
    sput v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 599
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onFmTransmitterEnabledEventFromLocal(I)V

    goto :goto_0

    .line 605
    :pswitch_2
    sput v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 606
    invoke-direct {p0, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onFmTransmitterDisabledEventFromLocal(I)V

    goto :goto_0

    .line 611
    :pswitch_3
    iget v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_iSaveFreq:I

    invoke-direct {p0, v3, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onSetTxFrequencyEventFromLocal(II)V

    goto :goto_0

    .line 615
    :pswitch_4
    iget-boolean v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    invoke-direct {p0, v3, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onSetTxPowerEventFromLocal(IZ)V

    goto :goto_0

    .line 620
    :pswitch_5
    new-array v0, v4, [I

    .line 621
    .local v0, freq:[I
    new-array v1, v4, [I

    .line 623
    .local v1, rssi:[I
    aput v2, v0, v2

    aput v2, v1, v2

    .line 624
    invoke-direct {p0, v3, v2, v0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onBestChannelEventFromLocal(II[I[I)V

    goto :goto_0

    .line 629
    .end local v0           #freq:[I
    .end local v1           #rssi:[I
    :pswitch_6
    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    .line 633
    :pswitch_7
    invoke-direct {p0, v4, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    .line 637
    :pswitch_8
    invoke-direct {p0, v5, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    .line 641
    :pswitch_9
    invoke-direct {p0, v5, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    .line 645
    :pswitch_a
    invoke-direct {p0, v3, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    .line 649
    :pswitch_b
    const/4 v2, 0x5

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    .line 653
    :pswitch_c
    const/4 v2, 0x6

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    .line 657
    :pswitch_d
    const/4 v2, 0x7

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    .line 662
    :pswitch_e
    const/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    goto :goto_0

    .line 594
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private native abortScanForBestChannelNative()Z
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->logTimeOut(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->HandleStatusTimeOut(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/broadcom/bt/service/fm/FmTransmitterService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onChannelStatusEventFromLocal(III)V

    return-void
.end method

.method static synthetic access$1700(Lcom/broadcom/bt/service/fm/FmTransmitterService;II[I[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onBestChannelEventFromLocal(II[I[I)V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/fm/FmTransmitterService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    return-void
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onFmTransmitterEnabledEventFromLocal(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/broadcom/bt/service/fm/FmTransmitterService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onFmTransmitterDisabledEventFromLocal(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/broadcom/bt/service/fm/FmTransmitterService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    return v0
.end method

.method static synthetic access$600(Lcom/broadcom/bt/service/fm/FmTransmitterService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onSetTxPowerEventFromLocal(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/broadcom/bt/service/fm/FmTransmitterService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStatusEventFromLocal(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/broadcom/bt/service/fm/FmTransmitterService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onSetTxFrequencyEventFromLocal(II)V

    return-void
.end method

.method private static native classFmTxInitNative()V
.end method

.method private cleanQueue(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    .locals 9
    .parameter "job"

    .prologue
    const-wide/16 v7, 0x0

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 244
    .local v2, now:J
    sget-object v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 245
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;>;"
    if-eqz p1, :cond_3

    .line 246
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 247
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    .line 250
    .local v0, existingJob:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    iget-object v4, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->command:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    sget-object v5, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_OFF:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    if-ne v4, v5, :cond_1

    .line 251
    iget-wide v4, v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->timeSent:J

    cmp-long v4, v4, v7

    if-nez v4, :cond_2

    .line 252
    const-string v4, "FmTransmitterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed because of a FMTX off request. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 254
    const/4 v0, 0x0

    .line 255
    goto :goto_0

    .line 258
    :cond_1
    iget-object v4, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->command:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    sget-object v5, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_ABORT_SEARCH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    if-ne v4, v5, :cond_2

    .line 259
    const-string v4, "FmTransmitterService"

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

    .line 260
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 261
    const/4 v0, 0x0

    .line 262
    goto :goto_0

    .line 265
    :cond_2
    iget-wide v4, v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->timeSent:J

    cmp-long v4, v4, v7

    if-eqz v4, :cond_0

    .line 266
    const-string v4, "FmTransmitterService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "****** ***** Sent. So remove Job:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 268
    const/4 v0, 0x0

    .line 269
    goto :goto_0

    .line 274
    .end local v0           #existingJob:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    :cond_3
    return-void
.end method

.method private native cleanupLoopNative()V
.end method

.method private native disableNative()Z
.end method

.method private native enableNative()Z
.end method

.method private fetchNextJob()V
    .locals 5

    .prologue
    .line 395
    sget-object v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 396
    :try_start_0
    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    .line 397
    .local v0, job:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    if-nez v0, :cond_0

    .line 398
    monitor-exit v2

    .line 406
    :goto_0
    return-void

    .line 400
    :cond_0
    const-string v1, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "******* ******* Processing FMTX job:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->cleanQueue(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V

    .line 402
    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 404
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->processCommands()V

    .line 405
    monitor-exit v2

    goto :goto_0

    .end local v0           #job:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native initLoopNative()V
.end method

.method private native initNativeDataNative()V
.end method

.method private initializeStateMachine()V
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x0

    sput-boolean v0, Lcom/broadcom/bt/service/fm/FmTransmitterServiceState;->mRadioIsOn:Z

    .line 545
    return-void
.end method

.method private logTimeOut(I)V
    .locals 3
    .parameter "what"

    .prologue
    .line 549
    packed-switch p1, :pswitch_data_0

    .line 585
    const-string v0, "FmTransmitterService"

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

    .line 587
    :goto_0
    return-void

    .line 551
    :pswitch_0
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_ENABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 553
    :pswitch_1
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_DISABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 555
    :pswitch_2
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_TXPOWER"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 557
    :pswitch_3
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SET_TXFREQ"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 559
    :pswitch_4
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SET_TXPWR_LEVEL"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 561
    :pswitch_5
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SET_AUDIO_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 563
    :pswitch_6
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SET_VOLUME"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 565
    :pswitch_7
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SET_REGION"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 567
    :pswitch_8
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SET_BANDWIDTH"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    :pswitch_9
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SET_PREEMPHASIS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    :pswitch_a
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SET_AUDIO_PATH"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 573
    :pswitch_b
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SET_MUTE_AUDIO"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 575
    :pswitch_c
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_INTF_NOTIF"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 577
    :pswitch_d
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_SEARCH_BEST_CHANS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 579
    :pswitch_e
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_ABORT_SEARCH"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 581
    :pswitch_f
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_START_AUDIO_CHIRP"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 583
    :pswitch_10
    const-string v0, "FmTransmitterService"

    const-string v1, "BTAPP TIMEOUT on OPERATION_FMTX_STOP_AUDIO_CHIRP"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 549
    nop

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
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private native muteAudioNative(I)Z
.end method

.method private onBestChannelEventFromLocal(II[I[I)V
    .locals 5
    .parameter "status"
    .parameter "numCh"
    .parameter "freq"
    .parameter "rssi"

    .prologue
    .line 1833
    const-string v3, "FmTransmitterService"

    const-string v4, "onBestChannelEventFromLocal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1848
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1851
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onBestChannelEvent(II[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1848
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1852
    :catch_0
    move-exception v1

    .line 1853
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1856
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1858
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    .line 1859
    return-void
.end method

.method private onChannelStatusEventFromLocal(III)V
    .locals 5
    .parameter "status"
    .parameter "rssi"
    .parameter "channel_status"

    .prologue
    .line 1886
    const-string v3, "FmTransmitterService"

    const-string v4, "onChannelStatusEventFromLocal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1900
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1903
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2, p3}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onChannelStatusEvent(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1900
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1905
    :catch_0
    move-exception v1

    .line 1906
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1909
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1911
    return-void
.end method

.method private onFmTransmitterDisabledEventFromLocal(I)V
    .locals 5
    .parameter "status"

    .prologue
    .line 1628
    const-string v3, "FmTransmitterService"

    const-string v4, "onFmTransmitterDisabledEventFromLocal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->shutdownFmPower()V

    .line 1633
    if-nez p1, :cond_0

    .line 1635
    const/4 v3, 0x0

    sput-boolean v3, Lcom/broadcom/bt/service/fm/FmTransmitterServiceState;->mRadioIsOn:Z

    .line 1645
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1646
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1649
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onFmTransmitterDisabledEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1646
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1650
    :catch_0
    move-exception v1

    .line 1651
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1654
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1657
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    .line 1658
    return-void
.end method

.method private onFmTransmitterEnabledEventFromLocal(I)V
    .locals 5
    .parameter "status"

    .prologue
    .line 1588
    const-string v3, "FmTransmitterService"

    const-string v4, "onFmTransmitterEnabledEventFromLocal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    if-nez p1, :cond_0

    .line 1593
    const/4 v3, 0x1

    sput-boolean v3, Lcom/broadcom/bt/service/fm/FmTransmitterServiceState;->mRadioIsOn:Z

    .line 1602
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1603
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1606
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onFmTransmitterEnabledEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1603
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1607
    :catch_0
    move-exception v1

    .line 1608
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1611
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1613
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    .line 1614
    return-void
.end method

.method private onSetTxFrequencyEventFromLocal(II)V
    .locals 5
    .parameter "status"
    .parameter "frequency"

    .prologue
    .line 1733
    const-string v3, "FmTransmitterService"

    const-string v4, "onSetTxFrequencyEventFromLocal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1746
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1749
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onSetTxFrequencyEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1746
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1750
    :catch_0
    move-exception v1

    .line 1751
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1754
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1756
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    .line 1757
    return-void
.end method

.method private onSetTxPowerEventFromLocal(IZ)V
    .locals 5
    .parameter "status"
    .parameter "powerOn"

    .prologue
    .line 1781
    const-string v3, "FmTransmitterService"

    const-string v4, "onSetTxPowerEventFromLocal"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1793
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1796
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onSetTxPowerEvent(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1793
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1797
    :catch_0
    move-exception v1

    .line 1798
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1801
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1803
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    .line 1804
    return-void
.end method

.method private onStatusEventFromLocal(II)V
    .locals 6
    .parameter "type"
    .parameter "status"

    .prologue
    .line 1687
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStatusEventFromLocal: type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1699
    .local v0, callbacks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1702
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v3, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;->onStatusEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1699
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1703
    :catch_0
    move-exception v1

    .line 1704
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1707
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1709
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    .line 1710
    return-void
.end method

.method private processCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)Z
    .locals 11
    .parameter "job"

    .prologue
    .line 295
    const/4 v10, 0x0

    .line 297
    .local v10, successful:I
    const/4 v0, -0x1

    iput v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->current_CMD:I

    .line 299
    iget-wide v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->timeSent:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->timeSent:J

    .line 301
    const-string v0, "FmTransmitterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***** ***** process FMTX Command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$2;->$SwitchMap$com$broadcom$bt$service$fm$FmTransmitterService$FMTX_Command:[I

    iget-object v1, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->command:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 357
    const-string v0, "FmTransmitterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***** ***** unknown command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v10, 0x5

    .line 362
    :cond_0
    :goto_0
    if-nez v10, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 304
    :pswitch_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_enableFmTransmitter()I

    move-result v10

    .line 305
    goto :goto_0

    .line 307
    :pswitch_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_disableFmTransmitter()I

    move-result v10

    .line 308
    goto :goto_0

    .line 310
    :pswitch_2
    iget-boolean v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->b_arg1:Z

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setTxPower(Z)I

    move-result v10

    .line 311
    goto :goto_0

    .line 313
    :pswitch_3
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setTxFrequency(I)I

    move-result v10

    .line 314
    goto :goto_0

    .line 316
    :pswitch_4
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setPwrLevel(I)I

    move-result v10

    .line 317
    goto :goto_0

    .line 319
    :pswitch_5
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setAudioMode(I)I

    move-result v10

    .line 320
    goto :goto_0

    .line 322
    :pswitch_6
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setVolume(I)I

    move-result v10

    .line 323
    goto :goto_0

    .line 325
    :pswitch_7
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setRegion(I)I

    move-result v10

    .line 326
    goto :goto_0

    .line 328
    :pswitch_8
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setBandwidth(I)I

    move-result v10

    .line 329
    goto :goto_0

    .line 331
    :pswitch_9
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setPreemphasis(I)I

    move-result v10

    .line 332
    goto :goto_0

    .line 334
    :pswitch_a
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setAudioPath(I)I

    move-result v10

    .line 335
    goto :goto_0

    .line 337
    :pswitch_b
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_muteAudio(I)I

    move-result v10

    .line 338
    goto :goto_0

    .line 340
    :pswitch_c
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_setInterferenceNotif(I)I

    move-result v10

    .line 341
    goto :goto_0

    .line 343
    :pswitch_d
    const/16 v0, 0xf

    iput v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->current_CMD:I

    .line 344
    iget v0, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    iget-boolean v1, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->b_arg1:Z

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_scanForBestChannel(IZ)I

    move-result v10

    .line 345
    goto :goto_0

    .line 351
    :pswitch_e
    iget-boolean v1, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->b_arg1:Z

    iget v2, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg1:I

    iget v3, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg2:I

    iget v4, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg3:I

    iget v5, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg4:I

    iget v6, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg5:I

    iget v7, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg6:I

    iget v8, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg7:I

    iget v9, p1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->arg8:I

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_startAudioChirp(ZIIIIIIII)I

    move-result v10

    .line 352
    goto :goto_0

    .line 354
    :pswitch_f
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->process_stopAudioChirp()I

    move-result v10

    .line 355
    goto/16 :goto_0

    .line 362
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 302
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
        :pswitch_f
    .end packed-switch
.end method

.method private processCommands()V
    .locals 5

    .prologue
    .line 372
    const-string v2, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "***** ***** process FMTX_Commands:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    sget-object v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 376
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    .line 378
    .local v1, job:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->processCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 391
    .end local v1           #job:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    :cond_0
    return-void

    .line 388
    .restart local v1       #job:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private process_disableFmTransmitter()I
    .locals 8

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 783
    const-string v3, "FmTransmitterService"

    const-string v4, "process_disableFmTransmitter()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v2, 0x5

    .line 787
    .local v2, returnStatus:I
    sput v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 790
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 791
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 792
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 794
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 795
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 798
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->disableNative()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 799
    const/4 v2, 0x0

    .line 805
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 806
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 811
    :cond_1
    iput-boolean v7, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    .line 812
    sput v7, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 814
    return v2

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 802
    const-string v3, "FmTransmitterService"

    const-string v4, "disableFmTransmitter failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_enableFmTransmitter()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 733
    const-string v3, "FmTransmitterService"

    const-string v4, "process_enableFmTransmitter()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmServiceManager;->initFmPower()V

    .line 736
    const/4 v2, 0x5

    .line 738
    .local v2, returnStatus:I
    sput v6, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 741
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 742
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 743
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 745
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 746
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 749
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->enableNative()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 750
    const/4 v2, 0x0

    .line 757
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 758
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 760
    :cond_1
    return v2

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 753
    const-string v3, "FmTransmitterService"

    const-string v4, "enableFmTransmitter failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_muteAudio(I)I
    .locals 7
    .parameter "mute"

    .prologue
    const/4 v6, 0x1

    .line 1278
    const-string v3, "FmTransmitterService"

    const-string v4, "process_muteAudio()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    const/4 v2, 0x5

    .line 1282
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 1283
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const/4 v2, 0x3

    .line 1306
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1307
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1309
    :cond_1
    return v2

    .line 1287
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1290
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1291
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1292
    const/16 v3, 0xd

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1294
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1295
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1298
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->muteAudioNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1299
    const/4 v2, 0x0

    goto :goto_0

    .line 1300
    :catch_0
    move-exception v0

    .line 1301
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 1302
    const-string v3, "FmTransmitterService"

    const-string v4, "muteAudio failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_scanForBestChannel(IZ)I
    .locals 7
    .parameter "numChans"
    .parameter "optimize"

    .prologue
    const/4 v6, 0x1

    .line 1371
    const-string v3, "FmTransmitterService"

    const-string v4, "process_scanForBestChannel()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/4 v2, 0x5

    .line 1375
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 1376
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    const/4 v2, 0x3

    .line 1399
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1400
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1402
    :cond_1
    return v2

    .line 1380
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1383
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1384
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1385
    const/16 v3, 0xf

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1387
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1388
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1391
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->scanForBestChannelNative(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1392
    const/4 v2, 0x0

    goto :goto_0

    .line 1393
    :catch_0
    move-exception v0

    .line 1394
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 1395
    const-string v3, "FmTransmitterService"

    const-string v4, "scanForBestChannel failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setAudioMode(I)I
    .locals 7
    .parameter "audioMode"

    .prologue
    const/4 v6, 0x1

    .line 989
    const-string v3, "FmTransmitterService"

    const-string v4, "process_setAudioMode()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/4 v2, 0x5

    .line 994
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 995
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/4 v2, 0x3

    .line 1018
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1019
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1021
    :cond_1
    return v2

    .line 999
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1002
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1003
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1004
    const/4 v3, 0x7

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1006
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1007
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1010
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setAudioModeNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1011
    const/4 v2, 0x0

    goto :goto_0

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 1014
    const-string v3, "FmTransmitterService"

    const-string v4, "setAudioMode failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setAudioPath(I)I
    .locals 7
    .parameter "audioPath"

    .prologue
    const/4 v6, 0x1

    .line 1230
    const-string v3, "FmTransmitterService"

    const-string v4, "process_setAudioPath()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const/4 v2, 0x5

    .line 1234
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 1235
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const/4 v2, 0x3

    .line 1258
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1259
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1261
    :cond_1
    return v2

    .line 1239
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1242
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1243
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1244
    const/16 v3, 0xc

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1246
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1247
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1250
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setAudioPathNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1251
    const/4 v2, 0x0

    goto :goto_0

    .line 1252
    :catch_0
    move-exception v0

    .line 1253
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 1254
    const-string v3, "FmTransmitterService"

    const-string v4, "setAudioPath failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setBandwidth(I)I
    .locals 7
    .parameter "bandwidth"

    .prologue
    const/4 v6, 0x1

    .line 1132
    const-string v3, "FmTransmitterService"

    const-string v4, "process_setBandwidth()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v2, 0x5

    .line 1136
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 1137
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    const/4 v2, 0x3

    .line 1160
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1161
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1163
    :cond_1
    return v2

    .line 1141
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1144
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1145
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1146
    const/16 v3, 0xa

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1148
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1149
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1152
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setBandwidthNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1153
    const/4 v2, 0x0

    goto :goto_0

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 1156
    const-string v3, "FmTransmitterService"

    const-string v4, "setBandwidth failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setInterferenceNotif(I)I
    .locals 6
    .parameter "notifBitmask"

    .prologue
    const/4 v5, 0x2

    .line 1326
    const-string v2, "FmTransmitterService"

    const-string v3, "process_setInterferenceNotif()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const/4 v1, 0x5

    .line 1330
    .local v1, returnStatus:I
    sget v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v5, v2, :cond_1

    .line 1331
    const-string v2, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    const/4 v1, 0x3

    .line 1347
    :cond_0
    :goto_0
    sput v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1350
    const-string v2, "FmTransmitterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process_setInterferenceNotif() return ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    .line 1354
    return v1

    .line 1335
    :cond_1
    const/4 v2, 0x4

    sput v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1339
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setInterferenceNotifNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1340
    const/4 v1, 0x0

    goto :goto_0

    .line 1341
    :catch_0
    move-exception v0

    .line 1342
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 1343
    const-string v2, "FmTransmitterService"

    const-string v3, "setInterferenceNotif failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setPreemphasis(I)I
    .locals 7
    .parameter "preemph"

    .prologue
    const/4 v6, 0x1

    .line 1181
    const-string v3, "FmTransmitterService"

    const-string v4, "setPreemphasis()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    const/4 v2, 0x5

    .line 1186
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 1187
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    const/4 v2, 0x3

    .line 1210
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1211
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1213
    :cond_1
    return v2

    .line 1191
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1194
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1195
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1196
    const/16 v3, 0xb

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1198
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1199
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1202
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setPreemphasisNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1203
    const/4 v2, 0x0

    goto :goto_0

    .line 1204
    :catch_0
    move-exception v0

    .line 1205
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 1206
    const-string v3, "FmTransmitterService"

    const-string v4, "setPreemphasis failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setPwrLevel(I)I
    .locals 7
    .parameter "dbGain"

    .prologue
    const/4 v6, 0x1

    .line 937
    const-string v3, "FmTransmitterService"

    const-string v4, "process_setPwrLevel()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 v2, 0x5

    .line 942
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 943
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const/4 v2, 0x3

    .line 966
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 967
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 969
    :cond_1
    return v2

    .line 947
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 950
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 951
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 952
    const/4 v3, 0x6

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 954
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 955
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 958
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setPwrLevelNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 959
    const/4 v2, 0x0

    goto :goto_0

    .line 960
    :catch_0
    move-exception v0

    .line 961
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 962
    const-string v3, "FmTransmitterService"

    const-string v4, "setPwrLevel failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setRegion(I)I
    .locals 7
    .parameter "region"

    .prologue
    const/4 v6, 0x1

    .line 1084
    const-string v3, "FmTransmitterService"

    const-string v4, "process_setRegion()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    const/4 v2, 0x5

    .line 1088
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 1089
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/4 v2, 0x3

    .line 1112
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1113
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1115
    :cond_1
    return v2

    .line 1093
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1096
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1097
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1098
    const/16 v3, 0x9

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1100
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1101
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1104
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setRegionNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1105
    const/4 v2, 0x0

    goto :goto_0

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 1108
    const-string v3, "FmTransmitterService"

    const-string v4, "setRegion failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setTxFrequency(I)I
    .locals 7
    .parameter "frequency"

    .prologue
    const/4 v6, 0x1

    .line 890
    const-string v3, "FmTransmitterService"

    const-string v4, "process_setTxFrequency()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const/4 v2, 0x5

    .line 894
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 895
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const/4 v2, 0x3

    .line 918
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 919
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 921
    :cond_1
    return v2

    .line 899
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 902
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 903
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 904
    const/4 v3, 0x5

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 905
    iput p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_iSaveFreq:I

    .line 906
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 907
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 910
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setTxFrequencyNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 911
    const/4 v2, 0x0

    goto :goto_0

    .line 912
    :catch_0
    move-exception v0

    .line 913
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 914
    const-string v3, "FmTransmitterService"

    const-string v4, "setTxFrequency failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_setTxPower(Z)I
    .locals 8
    .parameter "powerOn"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    .line 831
    const-string v3, "FmTransmitterService"

    const-string v4, "process_setTxPower()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/4 v2, 0x5

    .line 836
    .local v2, returnStatus:I
    sget v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v7, v3, :cond_1

    .line 837
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const/4 v2, 0x3

    .line 874
    :cond_0
    :goto_0
    return v2

    .line 839
    :cond_1
    iget-boolean v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    if-ne v3, p1, :cond_2

    .line 841
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 842
    sput v7, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 843
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 844
    .local v1, msg:Landroid/os/Message;
    iput v5, v1, Landroid/os/Message;->what:I

    .line 845
    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 846
    iput-boolean p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    .line 848
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 853
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    sput v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 856
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 857
    .restart local v1       #msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 858
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 860
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 861
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 864
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setTxPowerNative(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 865
    const/4 v2, 0x0

    .line 871
    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    .line 872
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 866
    :catch_0
    move-exception v0

    .line 867
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 868
    const-string v3, "FmTransmitterService"

    const-string v4, "setTxPower failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private process_setVolume(I)I
    .locals 7
    .parameter "volume"

    .prologue
    const/4 v6, 0x1

    .line 1037
    const-string v3, "FmTransmitterService"

    const-string v4, "process_setVolume()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const/4 v2, 0x5

    .line 1041
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_2

    .line 1042
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    const/4 v2, 0x3

    .line 1065
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1066
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1068
    :cond_1
    return v2

    .line 1046
    :cond_2
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1049
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1050
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1051
    const/16 v3, 0x8

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1053
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1054
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1057
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->setVolumeNative(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1058
    const/4 v2, 0x0

    goto :goto_0

    .line 1059
    :catch_0
    move-exception v0

    .line 1060
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 1061
    const-string v3, "FmTransmitterService"

    const-string v4, "setVolume failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_startAudioChirp(ZIIIIIIII)I
    .locals 6
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
    .line 1446
    const-string v3, "FmTransmitterService"

    const-string v4, "process_startAudioChirp()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const/4 v2, 0x5

    .line 1450
    .local v2, returnStatus:I
    const/4 v3, 0x2

    sget v4, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v3, v4, :cond_1

    .line 1451
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const/4 v2, 0x3

    .line 1475
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1476
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    .line 1477
    return v2

    .line 1455
    :cond_1
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1458
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1459
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1460
    const/16 v3, 0x11

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1462
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1463
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1466
    :try_start_0
    invoke-direct/range {p0 .. p9}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->startAudioChirpNative(ZIIIIIIII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1468
    const/4 v2, 0x0

    goto :goto_0

    .line 1469
    :catch_0
    move-exception v0

    .line 1470
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 1471
    const-string v3, "FmTransmitterService"

    const-string v4, "startAudioChirp failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private process_stopAudioChirp()I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1495
    const-string v3, "FmTransmitterService"

    const-string v4, "process_stopAudioChirp()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    const/4 v2, 0x5

    .line 1499
    .local v2, returnStatus:I
    sget v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eq v7, v3, :cond_1

    .line 1500
    const-string v3, "FmTransmitterService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const/4 v2, 0x3

    .line 1522
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1523
    sput v7, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1525
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->fetchNextJob()V

    .line 1526
    return v2

    .line 1504
    :cond_1
    const/4 v3, 0x4

    sput v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1507
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1508
    .local v1, msg:Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 1509
    const/16 v3, 0x12

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1511
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1512
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1515
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->stopAudioChirpNative()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1516
    const/4 v2, 0x0

    goto :goto_0

    .line 1517
    :catch_0
    move-exception v0

    .line 1518
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x5

    .line 1519
    const-string v3, "FmTransmitterService"

    const-string v4, "stopAudioChirpNative failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    .locals 4
    .parameter "job"

    .prologue
    .line 278
    const-string v0, "FmTransmitterService"

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 282
    :try_start_0
    const-string v0, "FmTransmitterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****** ****** Adding FMTX Job: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->cleanQueue(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V

    .line 284
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 287
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 288
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->processCommands()V

    .line 290
    :cond_0
    monitor-exit v1

    .line 291
    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private native scanForBestChannelNative(IZ)Z
.end method

.method private native setAudioModeNative(I)Z
.end method

.method private native setAudioPathNative(I)Z
.end method

.method private native setBandwidthNative(I)Z
.end method

.method private native setInterferenceNotifNative(I)Z
.end method

.method private native setPreemphasisNative(I)Z
.end method

.method private native setPwrLevelNative(I)Z
.end method

.method private native setRegionNative(I)Z
.end method

.method private native setTxFrequencyNative(I)Z
.end method

.method private native setTxPowerNative(Z)Z
.end method

.method private native setVolumeNative(I)Z
.end method

.method private native startAudioChirpNative(ZIIIIIIII)Z
.end method

.method private startFM_Loop()V
    .locals 2

    .prologue
    .line 477
    const-string v0, "FmTransmitterService"

    const-string v1, "startFmTransmit_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->initLoopNative()V

    .line 480
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->initNativeDataNative()V

    .line 481
    return-void
.end method

.method private native stopAudioChirpNative()Z
.end method

.method private stopFM_Loop()V
    .locals 2

    .prologue
    .line 485
    const-string v0, "FmTransmitterService"

    const-string v1, "stopFM_Loop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->cleanupLoopNative()V

    .line 488
    return-void
.end method


# virtual methods
.method public declared-synchronized abortScanForBestChannel()I
    .locals 4

    .prologue
    .line 1420
    monitor-enter p0

    :try_start_0
    const-string v2, "FmTransmitterService"

    const-string v3, "abortScanForBestChannel()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    const/4 v1, 0x5

    .line 1424
    .local v1, returnStatus:I
    iget v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->current_CMD:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->current_CMD:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    .line 1427
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->abortScanForBestChannelNative()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1428
    const/4 v1, 0x0

    .line 1434
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1429
    :catch_0
    move-exception v0

    .line 1430
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x5

    .line 1431
    :try_start_2
    const-string v2, "FmTransmitterService"

    const-string v3, "abortScanForBestChannel failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1420
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #returnStatus:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public clearAllQueue()V
    .locals 4

    .prologue
    .line 412
    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 413
    :try_start_0
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    .line 414
    const-string v0, "FmTransmitterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******* Clearing the queue. Present size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    sget-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 416
    const/4 v0, 0x0

    sput-object v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->FMTX_Queue:Ljava/util/LinkedList;

    .line 418
    :cond_0
    monitor-exit v1

    .line 419
    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized disableFmTransmitter()I
    .locals 2

    .prologue
    .line 822
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_OFF:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 822
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableFmTransmitter()I
    .locals 3

    .prologue
    .line 766
    monitor-enter p0

    :try_start_0
    sget v0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    if-eqz v0, :cond_0

    .line 768
    const-string v0, "FmTransmitterService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal STATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    const/4 v0, 0x6

    .line 773
    :goto_0
    monitor-exit p0

    return v0

    .line 772
    :cond_0
    :try_start_1
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_ON:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 773
    const/4 v0, 0x0

    goto :goto_0

    .line 766
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
    .line 453
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->stopFM_Loop()V

    .line 454
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 455
    return-void
.end method

.method public finish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x20

    const/16 v2, 0x4e20

    .line 500
    const-string v0, "FmTransmitterService"

    const-string v1, "finish - cleanup Service here"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 504
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 505
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 506
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 507
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 508
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 509
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 510
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 511
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 512
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 513
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 514
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 515
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 516
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 518
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 519
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 521
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 522
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 523
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 525
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 527
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 529
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 530
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 531
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 533
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 534
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 535
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 536
    iput-object v4, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    .line 538
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->clearAllQueue()V

    .line 539
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 540
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseService;->finish()V

    .line 541
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 494
    const-string v0, "FmTransmitterService"

    const-string v1, "getName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string v0, "bluetooth_fm_transmitter_service"

    return-object v0
.end method

.method public getRadioIsOn()Z
    .locals 1

    .prologue
    .line 426
    sget-boolean v0, Lcom/broadcom/bt/service/fm/FmTransmitterServiceState;->mRadioIsOn:Z

    return v0
.end method

.method public declared-synchronized muteAudio(I)I
    .locals 2
    .parameter "mute"

    .prologue
    .line 1316
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_MUTE_AUDIO:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBestChannelEvent(II[I[I)V
    .locals 7
    .parameter "status"
    .parameter "numCh"
    .parameter "freq"
    .parameter "rssi"

    .prologue
    .line 1819
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService;II[I[I)V

    .line 1821
    .local v0, st:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_BChnl_Status_Params;
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1822
    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1823
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 1825
    .local v6, msg:Landroid/os/Message;
    const/16 v1, 0x25

    iput v1, v6, Landroid/os/Message;->what:I

    .line 1826
    iput-object v0, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1828
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1829
    return-void
.end method

.method public onChannelStatusEvent(III)V
    .locals 3
    .parameter "status"
    .parameter "rssi"
    .parameter "channel_status"

    .prologue
    .line 1874
    new-instance v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService;III)V

    .line 1876
    .local v1, st:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Intf_Status_Params;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1878
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x24

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1879
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1881
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1882
    return-void
.end method

.method public onFmTransmitterDisabledEvent(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 1617
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1618
    const/4 v1, 0x0

    sput v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1619
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1620
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1621
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1623
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1624
    return-void
.end method

.method public onFmTransmitterEnabledEvent(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 1577
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1578
    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1579
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1580
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1581
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1583
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1584
    return-void
.end method

.method public onSetTxFrequencyEvent(II)V
    .locals 3
    .parameter "status"
    .parameter "frequency"

    .prologue
    .line 1721
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1722
    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1723
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1724
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x21

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1725
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1726
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1728
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1729
    return-void
.end method

.method public onSetTxPowerEvent(IZ)V
    .locals 3
    .parameter "status"
    .parameter "powerOn"

    .prologue
    .line 1769
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1770
    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1771
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1772
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1773
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1774
    iput-boolean p2, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_bpowerOn:Z

    .line 1776
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1777
    return-void
.end method

.method public declared-synchronized onStateChangeEvent(Z)V
    .locals 1
    .parameter "started"

    .prologue
    .line 1914
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    if-eqz v0, :cond_0

    .line 1915
    iput-boolean p1, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    .line 1916
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    if-eqz v0, :cond_1

    .line 1917
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1929
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 1919
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1914
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onStatusEvent(II)V
    .locals 3
    .parameter "type"
    .parameter "status"

    .prologue
    .line 1675
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1676
    const/4 v1, 0x2

    sput v1, Lcom/broadcom/bt/service/fm/FmTransmitterService;->radio_state:I

    .line 1677
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1678
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x20

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1679
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1680
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1682
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->operationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1683
    return-void
.end method

.method public registerCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    .locals 1
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 430
    if-eqz p1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 433
    :cond_0
    return-void
.end method

.method public declared-synchronized scanForBestChannel(IZ)I
    .locals 2
    .parameter "numChans"
    .parameter "optimize"

    .prologue
    .line 1409
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SEARCH_BEST_CHANS:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;IZ)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1410
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1409
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioMode(I)I
    .locals 2
    .parameter "audioMode"

    .prologue
    .line 1027
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_AUDIO_MODE:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1027
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioPath(I)I
    .locals 2
    .parameter "audioPath"

    .prologue
    .line 1268
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_AUDIO_PATH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1269
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBandwidth(I)I
    .locals 2
    .parameter "bandwidth"

    .prologue
    .line 1170
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_BANDWIDTH:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setInterferenceNotif(I)I
    .locals 2
    .parameter "notifBitmask"

    .prologue
    .line 1361
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_INTF_NOTIF:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1362
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPreemphasis(I)I
    .locals 2
    .parameter "preemph"

    .prologue
    .line 1220
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_PREEMPHASIS:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1221
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPwrLevel(I)I
    .locals 3
    .parameter "dbGain"

    .prologue
    .line 975
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_TXPWR_LEVEL:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 975
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRegion(I)I
    .locals 2
    .parameter "region"

    .prologue
    .line 1122
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_REGION:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTxFrequency(I)I
    .locals 2
    .parameter "frequency"

    .prologue
    .line 927
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_TXFREQ:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 927
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTxPower(Z)I
    .locals 2
    .parameter "powerOn"

    .prologue
    .line 880
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_TXPOWER:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;Z)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 880
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVolume(I)I
    .locals 2
    .parameter "volume"

    .prologue
    .line 1074
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_SET_VOLUME:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1, p1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;I)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1075
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1074
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 459
    monitor-enter p0

    :try_start_0
    const-string v0, "FmTransmitterService"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->startFM_Loop()V

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    .line 463
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStateChangeEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startAudioChirp(ZIIIIIIII)I
    .locals 11
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
    .line 1484
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_START_AUDIO_CHIRP:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;ZIIIIIIII)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1485
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1484
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 468
    monitor-enter p0

    :try_start_0
    const-string v0, "FmTransmitterService"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-direct {p0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->stopFM_Loop()V

    .line 471
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseService;->mIsStarted:Z

    .line 472
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->onStateChangeEvent(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopAudioChirp()I
    .locals 2

    .prologue
    .line 1533
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;

    sget-object v1, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;->FMTX_STOP_AUDIO_CHIRP:Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Command;)V

    invoke-direct {p0, v0}, Lcom/broadcom/bt/service/fm/FmTransmitterService;->queueFMCommand(Lcom/broadcom/bt/service/fm/FmTransmitterService$FMTX_Job;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1534
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1533
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
    .line 436
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitterService;->m_callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    :cond_0
    monitor-exit p0

    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
