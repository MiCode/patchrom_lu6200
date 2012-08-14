.class public Lcom/android/internal/telephony/LgeFastDormancyHandler;
.super Lcom/android/internal/util/StateMachine;
.source "LgeFastDormancyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;,
        Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;,
        Lcom/android/internal/telephony/LgeFastDormancyHandler$UnknownState;,
        Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;,
        Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;,
        Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;
    }
.end annotation


# static fields
.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_DOWN:I = 0x1

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field private static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field private static final EVENT_CHECK_NETSTAT:I = 0x18c4b

.field protected static final EVENT_DATA_CONNECTION_ATTACHED:I = 0x42010

.field protected static final EVENT_DATA_CONNECTION_DETACHED:I = 0x42009

.field protected static final EVENT_DATA_STATE_CHANGED:I = 0x42004

.field protected static final EVENT_ICC_CHANGED:I = 0x42021

.field private static final EVENT_INTERNAL_DEFINED:I = 0x18c4a

.field private static final EVENT_OEM_RIL_MESSAGE_GO_DORMANT_RESPONSE:I = 0x18c4d

.field protected static final EVENT_PS_RESTRICT_DISABLED:I = 0x42017

.field protected static final EVENT_PS_RESTRICT_ENABLED:I = 0x42016

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x42001

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x42006

.field private static final EVENT_RADIO_TECHNOLOGY_CHANGED:I = 0x18c4c

.field protected static final EVENT_RECORDS_LOADED:I = 0x42002

.field protected static final EVENT_ROAMING_OFF:I = 0x4200c

.field protected static final EVENT_ROAMING_ON:I = 0x4200b

.field protected static final EVENT_TETHERED_MODE_STATE_CHANGED:I = 0x42022

.field protected static final EVENT_VOICE_CALL_ENDED:I = 0x42008

.field protected static final EVENT_VOICE_CALL_STARTED:I = 0x42007

.field private static final INTENT_CHECK_NETSTAT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.ACTION_CHECK_NETSTAT"

.field protected static final LISTEN_DATA_CONNECTION_STATE:I = 0x40

.field protected static final LISTEN_NONE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "FASTDORMANCY"

.field private static final QCRIL_EVT_HOOK_DATA_GO_DORMANT:I = 0x80003

.field private static currentRadioTech:I

.field private static isChangedRt:Z

.field private static oldRadioTech:I


# instance fields
.field DBG:Z

.field VDBG:Z

.field mAlarm:Landroid/app/AlarmManager;

.field mCallActivState:Z

.field private mCheckNetStatIntent:Landroid/app/PendingIntent;

.field mCm:Lcom/android/internal/telephony/CommandsInterface;

.field mContext:Landroid/content/Context;

.field private mDchFachState:Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;

.field mDct:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

.field mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

.field mFDRetryManager:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;

.field mHandler:Landroid/os/Handler;

.field protected mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private mIdleState:Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mIsFdPause:Z

.field mIsReady:Z

.field mLastIsUMTS:Z

.field mNetStatMonitor:Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;

.field mSst:Lcom/android/internal/telephony/ServiceStateTracker;

.field private final mTeleManager:Landroid/telephony/TelephonyManager;

.field private mUiccManager:Lcom/android/internal/telephony/UiccManager;

.field private mUnknownState:Lcom/android/internal/telephony/LgeFastDormancyHandler$UnknownState;

.field mfastdormancy_dial:Z

.field pm:Landroid/os/PowerManager;

.field sWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 162
    sput v0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->currentRadioTech:I

    .line 163
    sput v0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->oldRadioTech:I

    .line 164
    sput-boolean v0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->isChangedRt:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 8
    .parameter "context"
    .parameter "ci"
    .parameter "sst"
    .parameter "dct"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 592
    const-string v2, "FastDormancy"

    invoke-direct {p0, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 133
    iput-object v6, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mCheckNetStatIntent:Landroid/app/PendingIntent;

    .line 142
    iput-boolean v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mLastIsUMTS:Z

    .line 144
    iput-boolean v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIsReady:Z

    .line 147
    const-string/jumbo v2, "persist.lge.data.fdpause"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIsFdPause:Z

    .line 151
    const-string/jumbo v2, "persist.lge.data.fdlog_basic"

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->DBG:Z

    .line 152
    const-string/jumbo v2, "persist.lge.data.fdlog_detail"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->VDBG:Z

    .line 160
    iput-object v6, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mHandler:Landroid/os/Handler;

    .line 168
    iput-boolean v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mfastdormancy_dial:Z

    .line 173
    iput-boolean v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mCallActivState:Z

    .line 176
    new-instance v2, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler$1;-><init>(Lcom/android/internal/telephony/LgeFastDormancyHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 824
    new-instance v2, Lcom/android/internal/telephony/LgeFastDormancyHandler$UnknownState;

    invoke-direct {v2, p0, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler$UnknownState;-><init>(Lcom/android/internal/telephony/LgeFastDormancyHandler;Lcom/android/internal/telephony/LgeFastDormancyHandler$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mUnknownState:Lcom/android/internal/telephony/LgeFastDormancyHandler$UnknownState;

    .line 923
    new-instance v2, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;

    invoke-direct {v2, p0, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;-><init>(Lcom/android/internal/telephony/LgeFastDormancyHandler;Lcom/android/internal/telephony/LgeFastDormancyHandler$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIdleState:Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;

    .line 1163
    new-instance v2, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;

    invoke-direct {v2, p0, v6}, Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;-><init>(Lcom/android/internal/telephony/LgeFastDormancyHandler;Lcom/android/internal/telephony/LgeFastDormancyHandler$1;)V

    iput-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mDchFachState:Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;

    .line 594
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const-string/jumbo v3, "missing TelephonyManager"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 596
    iput-object p1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mContext:Landroid/content/Context;

    .line 597
    iput-object p2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 598
    iput-object p3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mSst:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 599
    iput-object p4, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mDct:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    .line 601
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->pm:Landroid/os/PowerManager;

    .line 602
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->pm:Landroid/os/PowerManager;

    const-string v3, "DataTracker-FD"

    invoke-virtual {v2, v7, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 604
    new-instance v2, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;-><init>(Lcom/android/internal/telephony/LgeFastDormancyHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    .line 605
    new-instance v2, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;

    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;-><init>(Lcom/android/internal/telephony/LgeFastDormancyHandler;Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;)V

    iput-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDRetryManager:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;

    .line 606
    new-instance v2, Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;-><init>(Lcom/android/internal/telephony/LgeFastDormancyHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mNetStatMonitor:Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;

    .line 608
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mUnknownState:Lcom/android/internal/telephony/LgeFastDormancyHandler$UnknownState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->addState(Lcom/android/internal/util/State;)V

    .line 609
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIdleState:Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->addState(Lcom/android/internal/util/State;)V

    .line 610
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mDchFachState:Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->addState(Lcom/android/internal/util/State;)V

    .line 611
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mUnknownState:Lcom/android/internal/telephony/LgeFastDormancyHandler$UnknownState;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->setInitialState(Lcom/android/internal/util/State;)V

    .line 613
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mHandler:Landroid/os/Handler;

    .line 619
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mHandler:Landroid/os/Handler;

    const v4, 0x42004

    invoke-interface {v2, v3, v4, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 632
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/UiccManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/UiccManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 633
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mHandler:Landroid/os/Handler;

    const v4, 0x42021

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 639
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mDct:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mHandler:Landroid/os/Handler;

    const v4, 0x42007

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 640
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mDct:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mHandler:Landroid/os/Handler;

    const v4, 0x42008

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 647
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 648
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 649
    const-string v2, "com.android.internal.telephony.ACTION_CHECK_NETSTAT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 650
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 652
    const-string v2, "android.net.conn.ACTION_FAST_DORMANCY_ENABLED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    const-string v2, "android.net.conn.ACTION_FAST_DORMANCY_DISABLED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 655
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 657
    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mAlarm:Landroid/app/AlarmManager;

    .line 659
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->start()V

    .line 660
    iput-boolean v7, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIsReady:Z

    .line 662
    const-string v2, "Fast Dormancy Logic is ready."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V

    .line 664
    return-void

    .line 641
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 642
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "FASTDORMANCY"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/LgeFastDormancyHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/LgeFastDormancyHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/LgeFastDormancyHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/LgeFastDormancyHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->currentRadioTech:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    sput p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->currentRadioTech:I

    return p0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 82
    sget v0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->oldRadioTech:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    sput p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->oldRadioTech:I

    return p0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    sput-boolean p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->isChangedRt:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/LgeFastDormancyHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/LgeFastDormancyHandler;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/LgeFastDormancyHandler;)Lcom/android/internal/telephony/LgeFastDormancyHandler$UnknownState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mUnknownState:Lcom/android/internal/telephony/LgeFastDormancyHandler$UnknownState;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/LgeFastDormancyHandler;)Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mDchFachState:Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;

    return-object v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 1394
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->DBG:Z

    if-eqz v0, :cond_0

    .line 1395
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIsReady:Z

    if-eqz v0, :cond_1

    const-string v0, "FASTDORMANCY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    :cond_0
    :goto_0
    return-void

    .line 1396
    :cond_1
    const-string v0, "FASTDORMANCY"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 1380
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1381
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIsReady:Z

    if-eqz v0, :cond_1

    const-string v0, "FASTDORMANCY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    const-string v0, "FASTDORMANCY"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logi(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 1408
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1409
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIsReady:Z

    if-eqz v0, :cond_1

    const-string v0, "FASTDORMANCY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :cond_0
    :goto_0
    return-void

    .line 1410
    :cond_1
    const-string v0, "FASTDORMANCY"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logv(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 1401
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1402
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIsReady:Z

    if-eqz v0, :cond_1

    const-string v0, "FASTDORMANCY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    :cond_0
    :goto_0
    return-void

    .line 1403
    :cond_1
    const-string v0, "FASTDORMANCY"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 1387
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1388
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIsReady:Z

    if-eqz v0, :cond_1

    const-string v0, "FASTDORMANCY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_0
    :goto_0
    return-void

    .line 1389
    :cond_1
    const-string v0, "FASTDORMANCY"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private playRingTone(I)V
    .locals 8
    .parameter "sound_type"

    .prologue
    const/4 v7, 0x0

    .line 1417
    iget-object v5, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    invoke-virtual {v5}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->getIsDebugMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 1419
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FD_playRingTone with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Sound_type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V

    .line 1421
    iget-object v5, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 1422
    .local v1, mAudioManager:Landroid/media/AudioManager;
    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-virtual {v1, v7, v5, v6}, Landroid/media/AudioManager;->setRouting(III)V

    .line 1424
    const/4 v0, 0x4

    .line 1425
    .local v0, StreamType:I
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 1426
    .local v4, volume:I
    invoke-virtual {v1, v0, v4, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1428
    new-instance v2, Landroid/media/RingtoneManager;

    iget-object v5, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 1429
    .local v2, mRingtoneManager:Landroid/media/RingtoneManager;
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/media/RingtoneManager;->setType(I)V

    .line 1430
    iget-object v5, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    .line 1432
    .local v3, ringtone:Landroid/media/Ringtone;
    if-eqz v3, :cond_0

    .line 1433
    invoke-virtual {v3, v0}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 1434
    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 668
    iget-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIsReady:Z

    if-eqz v0, :cond_2

    .line 670
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIsReady:Z

    .line 675
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataCallListChanged(Landroid/os/Handler;)V

    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UiccManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 692
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 697
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->quit()V

    .line 701
    :cond_2
    return-void
.end method

.method isUMTS()Z
    .locals 3

    .prologue
    .line 1215
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 1217
    .local v0, tech:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isUMTS(): RadioTech("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->logv(Ljava/lang/String;)V

    .line 1219
    packed-switch v0, :pswitch_data_0

    .line 1228
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1226
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1219
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onCallActiveStateChanged(Z)V
    .locals 0
    .parameter "activState"

    .prologue
    .line 1368
    iput-boolean p1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mCallActivState:Z

    .line 1369
    return-void
.end method

.method protected onDataCallListChanged(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    .line 1309
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    .line 1311
    .local v0, dcStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 1357
    :cond_0
    :goto_0
    return-void

    .line 1318
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->isUMTS()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1320
    const-string/jumbo v4, "onDataCallListChanged(): reset all logic since the attached network is non-3G"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->logd(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->resetAll()V

    goto :goto_0

    .line 1325
    :cond_2
    const/4 v2, 0x1

    .line 1327
    .local v2, isDormant:Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V

    .line 1329
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, s:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 1331
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataCallState;

    iget v4, v4, Lcom/android/internal/telephony/DataCallState;->active:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 1333
    const/4 v2, 0x0

    .line 1339
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prev:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", curr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V

    .line 1341
    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 1343
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->playRingTone(I)V

    .line 1346
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIdleState:Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIdleState:Lcom/android/internal/telephony/LgeFastDormancyHandler$IdleState;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 1329
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1349
    :cond_5
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->playRingTone(I)V

    .line 1352
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mDchFachState:Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mDchFachState:Lcom/android/internal/telephony/LgeFastDormancyHandler$DchFachState;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0
.end method

.method protected onGoDormantReponse(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoDormantResult"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->logv(Ljava/lang/String;)V

    .line 1362
    return-void
.end method

.method protected onRadioTechnologyChanged()V
    .locals 3

    .prologue
    .line 1255
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->isUMTS()Z

    move-result v0

    .line 1257
    .local v0, newIsUMTS:Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mLastIsUMTS:Z

    if-eq v1, v0, :cond_1

    .line 1260
    sget-boolean v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->isChangedRt:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/internal/telephony/LgeFastDormancyHandler;->currentRadioTech:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 1262
    const-string v1, "change RT!! load DB setting!!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->logd(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->onRecordsLoaded()V

    .line 1266
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mUnknownState:Lcom/android/internal/telephony/LgeFastDormancyHandler$UnknownState;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1267
    iput-boolean v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mLastIsUMTS:Z

    .line 1268
    iget-boolean v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mLastIsUMTS:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->scheduleCheckNetStat()V

    .line 1270
    :cond_1
    return-void
.end method

.method protected onRecordsLoaded()V
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->loadSettingFromDb()V

    .line 1297
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->getIsActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1299
    const-string v0, "Fast Dormancy is disabled."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->dispose()V

    .line 1301
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->quit()V

    .line 1303
    :cond_0
    return-void
.end method

.method resetAll()V
    .locals 2

    .prologue
    .line 1206
    const-string/jumbo v0, "resetAll()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->logd(Ljava/lang/String;)V

    .line 1208
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mCheckNetStatIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1209
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mNetStatMonitor:Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LgeFastDormancyHandler$NetStatMonitor;->checkNetStat()Z

    .line 1210
    iget-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDRetryManager:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyRetryManager;->resetCount()V

    .line 1211
    return-void
.end method

.method scheduleCheckNetStat()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1175
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->playRingTone(I)V

    .line 1178
    iget-boolean v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIsFdPause:Z

    if-ne v3, v4, :cond_0

    .line 1179
    const-string v3, "Scheduling checkNetStat:mIsFdPause is true, discard sending event for FD-Triggering"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V

    .line 1201
    :goto_0
    return-void

    .line 1184
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mFDConfig:Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;

    invoke-virtual {v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler$FastDormancyConfig;->getDataTransferCheckTimerValue()J

    move-result-wide v1

    .line 1188
    .local v1, interval:J
    invoke-virtual {p0}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mUnknownState:Lcom/android/internal/telephony/LgeFastDormancyHandler$UnknownState;

    if-ne v3, v4, :cond_1

    .line 1189
    const-string v3, "Scheduling checkNetStat for 1000 msec"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V

    .line 1190
    const v3, 0x18c4b

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 1193
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scheduling checkNetStat for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "msec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->logi(Ljava/lang/String;)V

    .line 1194
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.ACTION_CHECK_NETSTAT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1195
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mCheckNetStatIntent:Landroid/app/PendingIntent;

    .line 1197
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mAlarm:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mCheckNetStatIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1198
    iget-object v3, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mAlarm:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v1

    iget-object v7, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mCheckNetStatIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected updateIccAvailability()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1273
    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    if-nez v1, :cond_1

    .line 1291
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UiccManager;->getIccRecords(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 1279
    .local v0, newIccRecords:Lcom/android/internal/telephony/IccRecords;
    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eq v1, v0, :cond_0

    .line 1280
    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_2

    .line 1281
    const-string v1, "Removing stale icc objects."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->logd(Ljava/lang/String;)V

    .line 1282
    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 1283
    iput-object v4, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 1285
    :cond_2
    if-eqz v0, :cond_0

    .line 1286
    const-string v1, "New records found"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/LgeFastDormancyHandler;->logd(Ljava/lang/String;)V

    .line 1287
    iput-object v0, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 1288
    iget-object v1, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/LgeFastDormancyHandler;->mHandler:Landroid/os/Handler;

    const v3, 0x42002

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method
