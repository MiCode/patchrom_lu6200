.class public abstract Lcom/android/internal/telephony/DataConnection;
.super Lcom/android/internal/util/StateMachine;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnection$2;,
        Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;,
        Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;,
        Lcom/android/internal/telephony/DataConnection$DcQosActiveState;,
        Lcom/android/internal/telephony/DataConnection$DcActiveState;,
        Lcom/android/internal/telephony/DataConnection$DcActivatingState;,
        Lcom/android/internal/telephony/DataConnection$DcInactiveState;,
        Lcom/android/internal/telephony/DataConnection$DcDefaultState;,
        Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;,
        Lcom/android/internal/telephony/DataConnection$CallSetupException;,
        Lcom/android/internal/telephony/DataConnection$FailCause;,
        Lcom/android/internal/telephony/DataConnection$DisconnectParams;,
        Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    }
.end annotation


# static fields
.field protected static final BASE:I = 0x40000

.field protected static final DBG:Z = true

.field protected static final EVENT_CONNECT:I = 0x40000

.field protected static final EVENT_DEACTIVATE_DONE:I = 0x40003

.field protected static final EVENT_DISCONNECT:I = 0x40004

.field protected static final EVENT_DISCONNECT_ALL:I = 0x40006

.field protected static final EVENT_GET_LAST_FAIL_DONE:I = 0x40002

.field protected static final EVENT_LOG_BAD_DNS_ADDRESS:I = 0xc3b4

.field protected static final EVENT_QOS_DISABLE:I = 0x40020

.field protected static final EVENT_QOS_DISABLE_DONE:I = 0x40021

.field protected static final EVENT_QOS_ENABLE:I = 0x4001e

.field protected static final EVENT_QOS_ENABLE_DONE:I = 0x4001f

.field protected static final EVENT_QOS_GET_STATUS:I = 0x40028

.field protected static final EVENT_QOS_GET_STATUS_DONE:I = 0x40029

.field protected static final EVENT_QOS_IND:I = 0x4002a

.field protected static final EVENT_QOS_MODIFY:I = 0x40022

.field protected static final EVENT_QOS_MODIFY_DONE:I = 0x40023

.field protected static final EVENT_QOS_RESUME:I = 0x40026

.field protected static final EVENT_QOS_RESUME_DONE:I = 0x40027

.field protected static final EVENT_QOS_SUSPEND:I = 0x40024

.field protected static final EVENT_QOS_SUSPEND_DONE:I = 0x40025

.field protected static final EVENT_RIL_CONNECTED:I = 0x40005

.field protected static final EVENT_SETUP_DATA_CONNECTION_DONE:I = 0x40001

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field protected static final RIL_MAX_FAIL:I = 0x3

.field protected static final VDBG:Z

.field protected static mCount:I

.field protected static mCountLock:Ljava/lang/Object;

.field public static rilFailCount:I


# instance fields
.field protected cid:I

.field protected createTime:J

.field private inShutdown:Z

.field protected lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field protected lastFailTime:J

.field protected mAc:Lcom/android/internal/util/AsyncChannel;

.field private mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

.field private mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

.field protected mApn:Lcom/android/internal/telephony/DataProfile;

.field private mApnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field protected mCapabilities:Landroid/net/LinkCapabilities;

.field private mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

.field private mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

.field private mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

.field private mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

.field private mId:I

.field private mInPartialRetry:Z

.field private mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mLinkProperties:Landroid/net/LinkProperties;

.field private mPartialSuccess:Z

.field private mPendingProtocol:Ljava/lang/String;

.field private mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

.field protected mQosFlowIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReconnectIntent:Landroid/app/PendingIntent;

.field private mRefCount:I

.field private mRetryMgr:Lcom/android/internal/telephony/RetryManager;

.field protected mRetryOverride:I

.field protected mRilVersion:I

.field protected mTag:I

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/DataConnection;->mCountLock:Ljava/lang/Object;

    .line 109
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/DataConnection;->rilFailCount:I

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;ILcom/android/internal/telephony/RetryManager;Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 4
    .parameter "phone"
    .parameter "name"
    .parameter "id"
    .parameter "rm"
    .parameter "dct"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 347
    invoke-direct {p0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 93
    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mApnList:Ljava/util/List;

    .line 94
    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 97
    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnection;->mPartialSuccess:Z

    .line 100
    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    .line 101
    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnection;->mInPartialRetry:Z

    .line 102
    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 105
    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnection;->inShutdown:Z

    .line 321
    iput v3, p0, Lcom/android/internal/telephony/DataConnection;->mRilVersion:I

    .line 323
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 324
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mCapabilities:Landroid/net/LinkCapabilities;

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    .line 329
    iput v3, p0, Lcom/android/internal/telephony/DataConnection;->mRetryOverride:I

    .line 370
    new-instance v0, Lcom/android/internal/telephony/DataConnection$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DataConnection$1;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1083
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    .line 1189
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    .line 1304
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    .line 1473
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcActiveState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    .line 1625
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcQosActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    .line 1670
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    .line 1715
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

    .line 348
    const-string v0, "DataConnection constructor E"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 349
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 350
    iput-object p5, p0, Lcom/android/internal/telephony/DataConnection;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 351
    iput p3, p0, Lcom/android/internal/telephony/DataConnection;->mId:I

    .line 352
    iput-object p4, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    .line 353
    iput v3, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    .line 355
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->setDbg(Z)V

    .line 356
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;)V

    .line 357
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->setInitialState(Lcom/android/internal/util/State;)V

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mApnList:Ljava/util/List;

    .line 366
    const-string v0, "DataConnection constructor X"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/telephony/DataConnection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnection;->inShutdown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/DataConnection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/telephony/DataConnection;->mId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$DisconnectParams;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/DataConnection$DisconnectParams;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActivatingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataCallState$SetupResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataCallState$SetupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/DataConnection;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->tearDownData(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingErrorCreatingConnection:Lcom/android/internal/telephony/DataConnection$DcDisconnectionErrorCreatingConnection;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/DataConnection;Landroid/os/AsyncResult;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->getSuggestedRetryTime(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/DataConnection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnection;->mInPartialRetry:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/internal/telephony/DataConnection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnection;->mInPartialRetry:Z

    return p1
.end method

.method static synthetic access$3202(Lcom/android/internal/telephony/DataConnection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnection;->mPartialSuccess:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcQosActiveState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->updateLinkProperty(Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/internal/telephony/DataConnection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/telephony/DataConnection;->tearDownQos()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/DataConnection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/DataConnection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput p1, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    return p1
.end method

.method static synthetic access$608(Lcom/android/internal/telephony/DataConnection;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    return v0
.end method

.method static synthetic access$610(Lcom/android/internal/telephony/DataConnection;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 85
    iget v0, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/DataConnection;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mApnList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/DataConnection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/telephony/DataConnection;->isPartialSuccess()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/DataConnection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/telephony/DataConnection;->restartRild()V

    return-void
.end method

.method private checkAndUpdatePartialProtocolFailure(Landroid/net/LinkProperties;)V
    .locals 5
    .parameter "lp"

    .prologue
    const/4 v4, 0x0

    .line 773
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getDataCallProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IPV4V6"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndUpdatePartialProtocolFailure() LP:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->isV4AddrPresent(Landroid/net/LinkProperties;)Z

    move-result v0

    .line 778
    .local v0, isIpv4Connected:Z
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->isV6AddrPresent(Landroid/net/LinkProperties;)Z

    move-result v1

    .line 781
    .local v1, isIpv6Connected:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    .line 784
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->NO_Retry_DualIP_PartialFail:Z

    if-eqz v2, :cond_3

    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[LGE_DATA] NO Retry DualIP PartialFail, mPartialSuccess : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/DataConnection;->mPartialSuccess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 791
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: partial data call failure, isIpv4Connected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isIpv6Connected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 805
    .end local v0           #isIpv4Connected:Z
    .end local v1           #isIpv6Connected:Z
    :cond_2
    :goto_1
    return-void

    .line 787
    .restart local v0       #isIpv4Connected:Z
    .restart local v1       #isIpv6Connected:Z
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnection;->mPartialSuccess:Z

    goto :goto_0

    .line 795
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 796
    const-string v2, "Dual-IP call successful."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 798
    iput-boolean v4, p0, Lcom/android/internal/telephony/DataConnection;->mPartialSuccess:Z

    .line 799
    iput-boolean v4, p0, Lcom/android/internal/telephony/DataConnection;->mInPartialRetry:Z

    goto :goto_1

    .line 801
    :cond_5
    const-string v2, "Error: Both v4 and v6 calls have failed."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getSuggestedRetryTime(Landroid/os/AsyncResult;)I
    .locals 3
    .parameter "ar"

    .prologue
    .line 708
    const/4 v1, -0x1

    .line 709
    .local v1, retry:I
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 710
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataCallState;

    .line 711
    .local v0, response:Lcom/android/internal/telephony/DataCallState;
    iget v1, v0, Lcom/android/internal/telephony/DataCallState;->suggestedRetryTime:I

    .line 713
    .end local v0           #response:Lcom/android/internal/telephony/DataCallState;
    :cond_0
    return v1
.end method

.method private handleErrorCodes(Lcom/android/internal/telephony/DataCallState;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 683
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    .line 684
    .local v0, lp:Landroid/net/LinkProperties;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/DataCallState;->setLinkProperties(Landroid/net/LinkProperties;Z)Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 687
    iget v1, p1, Lcom/android/internal/telephony/DataCallState;->status:I

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 688
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->isV4AddrPresent(Landroid/net/LinkProperties;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 691
    const-string v1, "IP"

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    .line 702
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPendingProtocol set to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 705
    :cond_1
    return-void

    .line 694
    :cond_2
    iget v1, p1, Lcom/android/internal/telephony/DataCallState;->status:I

    sget-object v2, Lcom/android/internal/telephony/DataConnection$FailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 695
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->isV6AddrPresent(Landroid/net/LinkProperties;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 698
    const-string v1, "IPV6"

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    goto :goto_0
.end method

.method private isPartialSuccess()Z
    .locals 1

    .prologue
    .line 2119
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnection;->mPartialSuccess:Z

    return v0
.end method

.method private isRildState(Ljava/lang/String;)Z
    .locals 3
    .parameter "state"

    .prologue
    .line 857
    const-string/jumbo v1, "init.svc.ril-daemon"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 858
    .local v0, daemon_state:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRildState init.svc.ril-daemon : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 860
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    const/4 v1, 0x1

    .line 863
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 5
    .parameter "cp"
    .parameter "cause"

    .prologue
    .line 449
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->onCompletedMsg:Landroid/os/Message;

    .line 450
    .local v0, connectionCompletedMsg:Landroid/os/Message;
    if-nez v0, :cond_0

    .line 469
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 455
    .local v1, timeStamp:J
    iget v3, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 457
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne p2, v3, :cond_1

    .line 458
    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    .line 459
    invoke-static {v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 466
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyConnectionCompleted at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 461
    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 462
    iput-wide v1, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    .line 463
    new-instance v3, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    iget v4, p0, Lcom/android/internal/telephony/DataConnection;->mRetryOverride:I

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/DataConnection$CallSetupException;-><init>(I)V

    invoke-static {v0, p2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_1
.end method

.method private notifyDisconnectCompleted(Lcom/android/internal/telephony/DataConnection$DisconnectParams;Z)V
    .locals 7
    .parameter "dp"
    .parameter "sendAll"

    .prologue
    .line 479
    const/4 v1, 0x0

    .line 480
    .local v1, alreadySent:Lcom/android/internal/telephony/ApnContext;
    const/4 v4, 0x0

    .line 482
    .local v4, reason:Ljava/lang/String;
    iget-object v5, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    if-eqz v5, :cond_1

    .line 484
    iget-object v3, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    .line 485
    .local v3, msg:Landroid/os/Message;
    iget-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/internal/telephony/ApnContext;

    if-eqz v5, :cond_0

    .line 486
    iget-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #alreadySent:Lcom/android/internal/telephony/ApnContext;
    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 488
    .restart local v1       #alreadySent:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    iget-object v4, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->reason:Ljava/lang/String;

    .line 493
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 494
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 496
    .end local v3           #msg:Landroid/os/Message;
    :cond_1
    if-eqz p2, :cond_4

    .line 497
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->mApnList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 498
    .local v0, a:Lcom/android/internal/telephony/ApnContext;
    if-eq v0, v1, :cond_2

    .line 499
    if-eqz v4, :cond_3

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 500
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->mDataConnectionTracker:Lcom/android/internal/telephony/DataConnectionTracker;

    const v6, 0x4200f

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 502
    .restart local v3       #msg:Landroid/os/Message;
    invoke-static {v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    .line 503
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 507
    .end local v0           #a:Lcom/android/internal/telephony/ApnContext;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #msg:Landroid/os/Message;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NotifyDisconnectCompleted DisconnectParams="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method private onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataCallState$SetupResult;
    .locals 5
    .parameter "ar"

    .prologue
    .line 643
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/DataCallState;

    .line 644
    .local v1, response:Lcom/android/internal/telephony/DataCallState;
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 647
    .local v0, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetupConnectionCompleted failed, ar.exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " response="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 653
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_0

    .line 656
    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 657
    .local v2, result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v3, v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 679
    :goto_0
    return-object v2

    .line 658
    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_0
    if-eqz v1, :cond_1

    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->version:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    .line 659
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto :goto_0

    .line 661
    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 662
    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection$FailCause;->fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    goto :goto_0

    .line 664
    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_3
    iget v3, v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    iget v4, p0, Lcom/android/internal/telephony/DataConnection;->mTag:I

    if-eq v3, v4, :cond_4

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BUG: onSetupConnectionCompleted is stale cp.tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mtag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/DataConnection;->mTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 668
    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto :goto_0

    .line 669
    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_4
    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    if-eqz v3, :cond_5

    .line 670
    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 671
    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->status:I

    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection$FailCause;->fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 672
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnection;->handleErrorCodes(Lcom/android/internal/telephony/DataCallState;)V

    goto :goto_0

    .line 674
    .end local v2           #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetupConnectionCompleted received DataCallState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 675
    iget v3, v1, Lcom/android/internal/telephony/DataCallState;->cid:I

    iput v3, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    .line 676
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnection;->updateLinkProperty(Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    move-result-object v3

    iget-object v2, v3, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .restart local v2       #result:Lcom/android/internal/telephony/DataCallState$SetupResult;
    goto :goto_0
.end method

.method private restartRild()V
    .locals 3

    .prologue
    .line 813
    const/4 v0, 0x0

    .line 819
    .local v0, retry_count:I
    const-string v1, "ctl.stop"

    const-string/jumbo v2, "ril-daemon"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :goto_0
    const-string/jumbo v1, "stopped"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnection;->isRildState(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 825
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 827
    :catch_0
    move-exception v1

    goto :goto_0

    .line 832
    :cond_0
    const-string v1, "ctl.start"

    const-string/jumbo v2, "ril-daemon"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :cond_1
    :goto_1
    const-string/jumbo v1, "running"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnection;->isRildState(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 838
    const-wide/16 v1, 0x1f4

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 842
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 843
    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 845
    const-string v1, "ctl.start"

    const-string/jumbo v2, "ril-daemon"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const/4 v0, 0x0

    goto :goto_1

    .line 840
    :catch_1
    move-exception v1

    goto :goto_2

    .line 852
    :cond_2
    return-void
.end method

.method private setLinkProperties(Lcom/android/internal/telephony/DataCallState;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/DataCallState$SetupResult;
    .locals 6
    .parameter "response"
    .parameter "lp"

    .prologue
    .line 719
    const/4 v1, 0x0

    .line 720
    .local v1, okToUseSystemPropertyDns:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "net."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/telephony/DataCallState;->ifname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 721
    .local v2, propertyPrefix:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    .line 722
    .local v0, dnsServers:[Ljava/lang/String;
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dns1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 723
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dns2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 724
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->isDnsOk([Ljava/lang/String;)Z

    move-result v1

    .line 727
    invoke-virtual {p1, p2, v1}, Lcom/android/internal/telephony/DataCallState;->setLinkProperties(Landroid/net/LinkProperties;Z)Lcom/android/internal/telephony/DataCallState$SetupResult;

    move-result-object v3

    return-object v3
.end method

.method private tearDownData(Ljava/lang/Object;)V
    .locals 12
    .parameter "o"

    .prologue
    const/4 v11, 0x0

    const v10, 0x40003

    .line 390
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 391
    .local v6, mContext:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "airplane_mode_on"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 394
    .local v5, mAirplaneMode:I
    const/4 v2, 0x0

    .line 395
    .local v2, discReason:I
    if-eqz p1, :cond_0

    instance-of v7, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    if-eqz v7, :cond_0

    move-object v3, p1

    .line 396
    check-cast v3, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    .line 397
    .local v3, dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    iget-object v4, v3, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    .line 398
    .local v4, m:Landroid/os/Message;
    iget-object v7, v3, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->reason:Ljava/lang/String;

    const-string/jumbo v8, "radioTurnedOff"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 399
    const/4 v2, 0x1

    .line 404
    .end local v3           #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    .end local v4           #m:Landroid/os/Message;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 406
    const/4 v1, 0x1

    .line 407
    .local v1, calling_deactfunc:Z
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/internal/telephony/LGfeature;->PowerOff_OnlyDettach:Z

    if-eqz v7, :cond_1

    .line 408
    if-nez v5, :cond_4

    iget-boolean v7, p0, Lcom/android/internal/telephony/DataConnection;->inShutdown:Z

    if-nez v7, :cond_4

    .line 409
    const/4 v1, 0x1

    .line 416
    :cond_1
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[PowerOff_OnlyDettach] ::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 418
    if-eqz v1, :cond_2

    .line 421
    const-string/jumbo v7, "tearDownData radio is on, call deactivateDataCall"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 422
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v8, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {p0, v10, p1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v7, v8, v2, v9}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    .line 431
    .end local v1           #calling_deactfunc:Z
    :cond_2
    :goto_2
    return-void

    .line 400
    .restart local v3       #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    .restart local v4       #m:Landroid/os/Message;
    :cond_3
    iget-object v7, v3, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->reason:Ljava/lang/String;

    const-string/jumbo v8, "pdpReset"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 401
    const/4 v2, 0x2

    goto :goto_0

    .line 412
    .end local v3           #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    .end local v4           #m:Landroid/os/Message;
    .restart local v1       #calling_deactfunc:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 427
    .end local v1           #calling_deactfunc:Z
    :cond_5
    const-string/jumbo v7, "tearDownData radio is off sendMessage EVENT_DEACTIVATE_DONE immediately"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 428
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, p1, v11, v11}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 429
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-virtual {p0, v10, v0}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    goto :goto_2
.end method

.method private tearDownQos()V
    .locals 6

    .prologue
    .line 437
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Integer;

    move-object v0, v4

    check-cast v0, [Ljava/lang/Integer;

    .local v0, arr$:[Ljava/lang/Integer;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 438
    .local v2, id:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->qosRelease(I)V

    .line 437
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    .end local v2           #id:I
    :cond_0
    return-void
.end method

.method private updateLinkProperty(Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    .locals 3
    .parameter "newState"

    .prologue
    .line 741
    new-instance v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;-><init>(Landroid/net/LinkProperties;)V

    .line 743
    .local v0, result:Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    if-nez p1, :cond_0

    .line 768
    :goto_0
    return-object v0

    .line 746
    :cond_0
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    .line 749
    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/DataConnection;->setLinkProperties(Lcom/android/internal/telephony/DataCallState;Landroid/net/LinkProperties;)Lcom/android/internal/telephony/DataCallState$SetupResult;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/DataCallState$SetupResult;

    .line 750
    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/DataCallState$SetupResult;

    sget-object v2, Lcom/android/internal/telephony/DataCallState$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataCallState$SetupResult;

    if-eq v1, v2, :cond_1

    .line 751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLinkProperty failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->setupResult:Lcom/android/internal/telephony/DataCallState$SetupResult;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 755
    :cond_1
    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 757
    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 758
    const-string/jumbo v1, "updateLinkProperty old != new"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 762
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 764
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    .line 766
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DataConnection;->checkAndUpdatePartialProtocolFailure(Landroid/net/LinkProperties;)V

    goto :goto_0
.end method


# virtual methods
.method public bringUp(Landroid/os/Message;Lcom/android/internal/telephony/DataProfile;)V
    .locals 2
    .parameter "onCompletedMsg"
    .parameter "apn"

    .prologue
    .line 1731
    const/high16 v0, 0x4

    new-instance v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    invoke-direct {v1, p2, p1}, Lcom/android/internal/telephony/DataConnection$ConnectionParams;-><init>(Lcom/android/internal/telephony/DataProfile;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1732
    return-void
.end method

.method protected clearSettings()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 620
    const-string v0, "clearSettings"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 622
    iput-wide v4, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    .line 623
    iput-wide v4, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    .line 624
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 625
    iput v2, p0, Lcom/android/internal/telephony/DataConnection;->mRetryOverride:I

    .line 626
    iput v1, p0, Lcom/android/internal/telephony/DataConnection;->mRefCount:I

    .line 627
    iput v2, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    .line 629
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mLinkProperties:Landroid/net/LinkProperties;

    .line 630
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnection;->mInPartialRetry:Z

    .line 631
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnection;->mPartialSuccess:Z

    .line 632
    iput-object v3, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    .line 633
    iput-object v3, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    .line 634
    return-void
.end method

.method public configureRetry(III)Z
    .locals 1
    .parameter "maxRetryCount"
    .parameter "retryTime"
    .parameter "randomizationTime"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    move-result v0

    return v0
.end method

.method public configureRetry(Ljava/lang/String;)Z
    .locals 1
    .parameter "configStr"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getDataCallProtocol()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2078
    const/4 v0, 0x0

    .line 2081
    .local v0, protocol:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2082
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2083
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    iget-object v0, v1, Lcom/android/internal/telephony/DataProfile;->roamingProtocol:Ljava/lang/String;

    .line 2093
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    if-nez v1, :cond_2

    .end local v0           #protocol:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 2085
    .restart local v0       #protocol:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    iget-object v0, v1, Lcom/android/internal/telephony/DataProfile;->protocol:Ljava/lang/String;

    goto :goto_0

    .line 2089
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mApn:Lcom/android/internal/telephony/DataProfile;

    iget-object v0, v1, Lcom/android/internal/telephony/DataProfile;->protocol:Ljava/lang/String;

    goto :goto_0

    .line 2093
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mPendingProtocol:Ljava/lang/String;

    goto :goto_1
.end method

.method public getDataConnectionId()I
    .locals 1

    .prologue
    .line 536
    iget v0, p0, Lcom/android/internal/telephony/DataConnection;->mId:I

    return v0
.end method

.method public getQosStatus(I)V
    .locals 2
    .parameter "qosId"

    .prologue
    .line 1766
    const v0, 0x40028

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1767
    return-void
.end method

.method protected getRadioTechnology(I)I
    .locals 3
    .parameter "defaultRadioTechnology"

    .prologue
    .line 512
    iget v1, p0, Lcom/android/internal/telephony/DataConnection;->mRilVersion:I

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 513
    move v0, p1

    .line 517
    .local v0, radioTechnology:I
    :goto_0
    return v0

    .line 515
    .end local v0           #radioTechnology:I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v1

    add-int/lit8 v0, v1, 0x2

    .restart local v0       #radioTechnology:I
    goto :goto_0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getRetryCount()I

    move-result v0

    return v0
.end method

.method public getRetryTimer()I
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v0

    return v0
.end method

.method public increaseRetryCount()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    .line 566
    return-void
.end method

.method protected abstract isDnsOk([Ljava/lang/String;)Z
.end method

.method public isInactive()Z
    .locals 3

    .prologue
    .line 2056
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2057
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 2056
    .end local v0           #retVal:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQosAvailable()Z
    .locals 3

    .prologue
    .line 2065
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mQosActiveState:Lcom/android/internal/telephony/DataConnection$DcQosActiveState;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2066
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 2065
    .end local v0           #retVal:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRetryForever()Z
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->isRetryForever()Z

    move-result v0

    return v0
.end method

.method public isRetryNeeded()Z
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v0

    return v0
.end method

.method public isV4AddrPresent(Landroid/net/LinkProperties;)Z
    .locals 4
    .parameter "lp"

    .prologue
    .line 2097
    const/4 v0, 0x0

    .line 2098
    .local v0, found:Z
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 2099
    .local v2, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet4Address;

    if-eqz v3, :cond_0

    .line 2100
    const/4 v0, 0x1

    .line 2104
    .end local v2           #linkAddr:Landroid/net/LinkAddress;
    :cond_1
    return v0
.end method

.method public isV6AddrPresent(Landroid/net/LinkProperties;)Z
    .locals 4
    .parameter "lp"

    .prologue
    .line 2108
    const/4 v0, 0x0

    .line 2109
    .local v0, found:Z
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 2110
    .local v2, linkAddr:Landroid/net/LinkAddress;
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v3, v3, Ljava/net/Inet6Address;

    if-eqz v3, :cond_0

    .line 2111
    const/4 v0, 0x1

    .line 2115
    .end local v2           #linkAddr:Landroid/net/LinkAddress;
    :cond_1
    return v0
.end method

.method public isValidQos(I)Z
    .locals 2
    .parameter "qosId"

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract onConnect(Lcom/android/internal/telephony/DataConnection$ConnectionParams;)V
.end method

.method protected onQosGetStatus(I)V
    .locals 3
    .parameter "qosId"

    .prologue
    .line 1824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get QoS Status, qosId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1826
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x40029

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->getQosStatus(ILandroid/os/Message;)V

    .line 1827
    return-void
.end method

.method protected onQosGetStatusDone(ILandroid/os/AsyncResult;Ljava/lang/String;)V
    .locals 10
    .parameter "qosId"
    .parameter "ar"
    .parameter "error"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1947
    iget-object v6, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    move-object v3, v6

    check-cast v3, [Ljava/lang/String;

    .line 1948
    .local v3, qosStatusResp:[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1949
    .local v4, spec:Lcom/android/internal/telephony/QosSpec;
    const/4 v2, 0x0

    .line 1950
    .local v2, qosStatus:I
    const/16 v5, 0xc

    .line 1952
    .local v5, status:I
    if-eqz v3, :cond_2

    array-length v6, v3

    if-lt v6, v9, :cond_2

    .line 1953
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Entire Status Msg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1956
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->isValidQos(I)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-object v6, v3, v8

    if-eqz v6, :cond_1

    .line 1957
    aget-object v6, v3, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1959
    packed-switch v2, :pswitch_data_0

    .line 1968
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid qosStatus:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1972
    :goto_0
    array-length v6, v3

    if-le v6, v9, :cond_1

    .line 1974
    new-instance v4, Lcom/android/internal/telephony/QosSpec;

    .end local v4           #spec:Lcom/android/internal/telephony/QosSpec;
    invoke-direct {v4}, Lcom/android/internal/telephony/QosSpec;-><init>()V

    .line 1976
    .restart local v4       #spec:Lcom/android/internal/telephony/QosSpec;
    const/4 v0, 0x2

    .local v0, i:I
    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_0

    .line 1977
    aget-object v6, v3, v0

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/QosSpec;->createPipe(Ljava/lang/String;)Lcom/android/internal/telephony/QosSpec$QosPipe;

    .line 1976
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1961
    .end local v0           #i:I
    :pswitch_0
    const/16 v5, 0xd

    .line 1962
    goto :goto_0

    .line 1965
    :pswitch_1
    const/4 v5, 0x1

    .line 1966
    goto :goto_0

    .line 1979
    .restart local v0       #i:I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QoS Spec for upper layers:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/internal/telephony/QosSpec;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1988
    .end local v0           #i:I
    :cond_1
    :goto_2
    new-instance v1, Lcom/android/internal/telephony/QosIndication;

    invoke-direct {v1}, Lcom/android/internal/telephony/QosIndication;-><init>()V

    .line 1989
    .local v1, ind:Lcom/android/internal/telephony/QosIndication;
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/QosIndication;->setQosId(I)V

    .line 1990
    invoke-virtual {v1, v5, p3}, Lcom/android/internal/telephony/QosIndication;->setIndState(ILjava/lang/String;)V

    .line 1991
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/QosIndication;->setQosState(I)V

    .line 1992
    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/QosIndication;->setQosSpec(Lcom/android/internal/telephony/QosSpec;)V

    .line 1993
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/internal/telephony/QosIndication;->getIndication()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1994
    return-void

    .line 1983
    .end local v1           #ind:Lcom/android/internal/telephony/QosIndication;
    :cond_2
    const-string v6, "Invalid Qos Status message, going back to Active State"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1984
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 1959
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onQosRelease(I)V
    .locals 3
    .parameter "qosId"

    .prologue
    .line 1788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting QoS Release, qosId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1790
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x40021

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->releaseQos(ILandroid/os/Message;)V

    .line 1791
    return-void
.end method

.method protected onQosReleaseDone(ILjava/lang/String;)V
    .locals 4
    .parameter "qosId"
    .parameter "error"

    .prologue
    .line 1886
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1887
    new-instance v0, Lcom/android/internal/telephony/QosIndication;

    invoke-direct {v0}, Lcom/android/internal/telephony/QosIndication;-><init>()V

    .line 1888
    .local v0, ind:Lcom/android/internal/telephony/QosIndication;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/QosIndication;->setIndState(ILjava/lang/String;)V

    .line 1889
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/QosIndication;->setQosId(I)V

    .line 1890
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/internal/telephony/QosIndication;->getIndication()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1892
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQosReleaseDone Complete, qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " QoS Flow Count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1899
    .end local v0           #ind:Lcom/android/internal/telephony/QosIndication;
    :goto_0
    return-void

    .line 1897
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQosReleaseDone Invalid qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onQosResume(I)V
    .locals 3
    .parameter "qosId"

    .prologue
    .line 1812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting QoS Resume, qosId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1814
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x40027

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->resumeQos(ILandroid/os/Message;)V

    .line 1815
    return-void
.end method

.method protected onQosResumeDone(ILjava/lang/String;)V
    .locals 3
    .parameter "qosId"
    .parameter "error"

    .prologue
    .line 1928
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1929
    new-instance v0, Lcom/android/internal/telephony/QosIndication;

    invoke-direct {v0}, Lcom/android/internal/telephony/QosIndication;-><init>()V

    .line 1930
    .local v0, ind:Lcom/android/internal/telephony/QosIndication;
    const/16 v1, 0xa

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/QosIndication;->setIndState(ILjava/lang/String;)V

    .line 1931
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/QosIndication;->setQosId(I)V

    .line 1932
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/internal/telephony/QosIndication;->getIndication()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQosResumeDone Complete, qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1939
    .end local v0           #ind:Lcom/android/internal/telephony/QosIndication;
    :goto_0
    return-void

    .line 1937
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQosResumeDone Invalid qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onQosSetup(Lcom/android/internal/telephony/QosSpec;)V
    .locals 5
    .parameter "qosSpec"

    .prologue
    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting QoS Setup. QosSpec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1777
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v1, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->getRilQosSpec()Ljava/util/ArrayList;

    move-result-object v2

    const v3, 0x4001f

    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->getUserData()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setupQosReq(ILjava/util/ArrayList;Landroid/os/Message;)V

    .line 1779
    return-void
.end method

.method protected onQosSetupDone(I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "userData"
    .parameter "responses"
    .parameter "error"

    .prologue
    .line 1840
    const/4 v1, 0x0

    .line 1841
    .local v1, failure:Z
    const/16 v3, 0xc

    .line 1843
    .local v3, state:I
    new-instance v2, Lcom/android/internal/telephony/QosIndication;

    invoke-direct {v2}, Lcom/android/internal/telephony/QosIndication;-><init>()V

    .line 1844
    .local v2, ind:Lcom/android/internal/telephony/QosIndication;
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/QosIndication;->setUserData(I)V

    .line 1846
    if-nez p3, :cond_0

    .line 1849
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p2, v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1850
    const/4 v4, 0x1

    aget-object v4, p2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/QosIndication;->setQosId(I)V

    .line 1851
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1852
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added QosId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, p2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to DC:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " QoS Flow Count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1866
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 1867
    const/4 v3, 0x0

    .line 1873
    :goto_1
    invoke-virtual {v2, v3, p3}, Lcom/android/internal/telephony/QosIndication;->setIndState(ILjava/lang/String;)V

    .line 1874
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/internal/telephony/QosIndication;->getIndication()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1876
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onQosSetupDone Complete, userData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1877
    return-void

    .line 1855
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1857
    :catch_0
    move-exception v0

    .line 1858
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onQosSetupDone: Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1859
    const/4 v1, 0x1

    .line 1863
    goto :goto_0

    .line 1860
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 1861
    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onQosSetupDone: Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1862
    const/4 v1, 0x1

    goto :goto_0

    .line 1869
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_2
    const-string v4, "Error in Qos Setup, going back to Active State"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1870
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_1
.end method

.method protected onQosStateChangedInd(Landroid/os/AsyncResult;)V
    .locals 9
    .parameter "ar"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2000
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    move-object v2, v5

    check-cast v2, [Ljava/lang/String;

    .line 2001
    .local v2, qosInd:[Ljava/lang/String;
    const/16 v3, 0xc

    .line 2003
    .local v3, qosIndState:I
    if-eqz v2, :cond_0

    array-length v5, v2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 2005
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid Qos State Changed Ind:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 2047
    :goto_0
    return-void

    .line 2009
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onQosStateChangedInd: qosId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 2011
    new-instance v1, Lcom/android/internal/telephony/QosIndication;

    invoke-direct {v1}, Lcom/android/internal/telephony/QosIndication;-><init>()V

    .line 2014
    .local v1, ind:Lcom/android/internal/telephony/QosIndication;
    const/4 v5, 0x0

    :try_start_0
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/QosIndication;->setQosId(I)V

    .line 2017
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2019
    .local v4, qosState:I
    packed-switch v4, :pswitch_data_0

    .line 2036
    :pswitch_0
    const-string v5, "Invalid Qos State, ignoring indication!"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2045
    .end local v4           #qosState:I
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Lcom/android/internal/telephony/QosIndication;->setIndState(ILjava/lang/String;)V

    .line 2046
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/internal/telephony/QosIndication;->getIndication()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2021
    .restart local v4       #qosState:I
    :pswitch_1
    const/4 v3, 0x1

    .line 2022
    goto :goto_1

    .line 2024
    :pswitch_2
    const/4 v3, 0x3

    .line 2025
    goto :goto_1

    .line 2027
    :pswitch_3
    const/4 v3, 0x4

    .line 2028
    goto :goto_1

    .line 2030
    :pswitch_4
    const/16 v3, 0x8

    .line 2031
    goto :goto_1

    .line 2033
    :pswitch_5
    const/4 v3, 0x5

    .line 2034
    goto :goto_1

    .line 2039
    .end local v4           #qosState:I
    :catch_0
    move-exception v0

    .line 2040
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception processing indication:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2041
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 2042
    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception processing indication:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2019
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onQosSuspend(I)V
    .locals 3
    .parameter "qosId"

    .prologue
    .line 1800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting QoS Suspend, qosId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1802
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x40025

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->suspendQos(ILandroid/os/Message;)V

    .line 1803
    return-void
.end method

.method protected onQosSuspendDone(ILjava/lang/String;)V
    .locals 3
    .parameter "qosId"
    .parameter "error"

    .prologue
    .line 1908
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mQosFlowIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1909
    new-instance v0, Lcom/android/internal/telephony/QosIndication;

    invoke-direct {v0}, Lcom/android/internal/telephony/QosIndication;-><init>()V

    .line 1910
    .local v0, ind:Lcom/android/internal/telephony/QosIndication;
    const/16 v1, 0x9

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/QosIndication;->setIndState(ILjava/lang/String;)V

    .line 1911
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/QosIndication;->setQosId(I)V

    .line 1912
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/internal/telephony/QosIndication;->getIndication()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQosSuspendDone Complete, qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 1919
    .end local v0           #ind:Lcom/android/internal/telephony/QosIndication;
    :goto_0
    return-void

    .line 1917
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onQosSuspendDone Invalid qosId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public qosModify(ILcom/android/internal/telephony/QosSpec;)V
    .locals 2
    .parameter "qosId"
    .parameter "qosSpec"

    .prologue
    .line 1753
    const v0, 0x40022

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1755
    return-void
.end method

.method public qosRelease(I)V
    .locals 2
    .parameter "qosId"

    .prologue
    .line 1749
    const v0, 0x40020

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1750
    return-void
.end method

.method public qosResume(I)V
    .locals 2
    .parameter "qosId"

    .prologue
    .line 1762
    const v0, 0x40026

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1763
    return-void
.end method

.method public qosSetup(Lcom/android/internal/telephony/QosSpec;)V
    .locals 1
    .parameter "qosSpec"

    .prologue
    .line 1745
    const v0, 0x4001e

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1746
    return-void
.end method

.method public qosSuspend(I)V
    .locals 2
    .parameter "qosId"

    .prologue
    .line 1758
    const v0, 0x40024

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1759
    return-void
.end method

.method public resetRetryCount()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 580
    return-void
.end method

.method public retryForeverUsingLastTimeout()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->retryForeverUsingLastTimeout()V

    .line 587
    return-void
.end method

.method public tearDown(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "reason"
    .parameter "onCompletedMsg"

    .prologue
    .line 1741
    const v0, 0x40004

    new-instance v1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/DataConnection$DisconnectParams;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 1742
    return-void
.end method

.method public tearDownAll(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "reason"
    .parameter "onCompletedMsg"

    .prologue
    .line 2129
    const v0, 0x40006

    new-instance v1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/telephony/DataConnection$DisconnectParams;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 2131
    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method
