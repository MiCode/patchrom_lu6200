.class public abstract Lcom/android/internal/telephony/DataConnectionTracker;
.super Landroid/os/Handler;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnectionTracker$3;,
        Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;,
        Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;,
        Lcom/android/internal/telephony/DataConnectionTracker$ApnChangeObserver;,
        Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
        Lcom/android/internal/telephony/DataConnectionTracker$State;
    }
.end annotation


# static fields
.field public static ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String; = null

.field protected static final APN_ADMIN_ID:I = 0x8

.field protected static final APN_CBS_ID:I = 0x7

.field protected static final APN_DEFAULT_ID:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final APN_DELAY_MILLIS:I = 0x0

.field protected static final APN_DUN_ID:I = 0x3

.field protected static final APN_ENTITLEMENT_ID:I = 0xa

.field protected static final APN_FOTA_ID:I = 0x6

.field protected static final APN_HIPRI_ID:I = 0x4

.field protected static final APN_IMS_ID:I = 0x5

.field protected static final APN_INVALID_ID:I = -0x1

.field protected static final APN_MMS_ID:I = 0x1

.field protected static final APN_NUM_TYPES:I = 0xc

.field protected static final APN_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field protected static final APN_SUPL_ID:I = 0x2

.field public static final APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field protected static final APN_VZW800_ID:I = 0xb

.field protected static final APN_VZWAPP_ID:I = 0x9

.field protected static final BASE:I = 0x42000

.field public static final CMD_SET_DEPENDENCY_MET:I = 0x4201f

.field public static final CMD_SET_POLICY_DATA_ENABLE:I = 0x42020

.field public static final CMD_SET_USER_DATA_ENABLE:I = 0x4201d

.field protected static final DATA_CONNECTION_ACTIVE_PH_LINK_DOWN:I = 0x1

.field protected static final DATA_CONNECTION_ACTIVE_PH_LINK_INACTIVE:I = 0x0

.field protected static final DATA_CONNECTION_ACTIVE_PH_LINK_UP:I = 0x2

.field protected static final DATA_STALL_ALARM_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0xea60

.field protected static final DATA_STALL_ALARM_NON_AGGRESSIVE_DELAY_IN_MS_DEFAULT:I = 0x57e40

.field protected static final DATA_STALL_ALARM_TAG_EXTRA:Ljava/lang/String; = "data.stall.alram.tag"

.field protected static final DATA_STALL_NO_RECV_POLL_LIMIT:I = 0x1

.field protected static final DBG:Z = true

.field protected static final DEFALUT_DATA_ON_BOOT_PROP:Ljava/lang/String; = "net.def_data_on_boot"

.field protected static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

.field protected static final DEFAULT_MAX_PDP_RESET_FAIL:I = 0x3

.field public static final DISABLED:I = 0x0

.field public static final ENABLED:I = 0x1

.field protected static final EVENT_APN_CHANGED:I = 0x42013

.field protected static final EVENT_CDMA_DATA_DETACHED:I = 0x42014

.field protected static final EVENT_CDMA_OTA_PROVISION:I = 0x42019

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x42015

.field public static final EVENT_CLEAN_UP_ALL_CONNECTIONS:I = 0x4201e

.field public static final EVENT_CLEAN_UP_CONNECTION:I = 0x42018

.field protected static final EVENT_DATA_CONNECTION_ATTACHED:I = 0x42010

.field protected static final EVENT_DATA_CONNECTION_DETACHED:I = 0x42009

.field protected static final EVENT_DATA_ERROR_FAIL_CAUSE:I = 0x4202c

.field protected static final EVENT_DATA_LOCK_STATE_CHANGED:I = 0x4202b

.field protected static final EVENT_DATA_SETUP_COMPLETE:I = 0x42000

.field protected static final EVENT_DATA_STALL_ALARM:I = 0x42011

.field protected static final EVENT_DATA_STATE_CHANGED:I = 0x42004

.field protected static final EVENT_DISCONNECT_DONE:I = 0x4200f

.field protected static final EVENT_DO_RECOVERY:I = 0x42012

.field protected static final EVENT_DUN_MODE_CHANGE:I = 0x4202e

.field protected static final EVENT_ENABLE_NEW_APN:I = 0x4200d

.field protected static final EVENT_GET_DATA_CALL_PROFILE_DONE:I = 0x42024

.field protected static final EVENT_GET_W_MODEM_INFO_CS_PROTECTION:I = 0x4202d

.field protected static final EVENT_ICC_CHANGED:I = 0x42021

.field protected static final EVENT_LINK_STATE_CHANGED:I = 0x4200a

.field protected static final EVENT_MODEM_DATA_PROFILE_READY:I = 0x42025

.field protected static final EVENT_POLL_PDP:I = 0x42005

.field public static final EVENT_PPP_RESYNC_TO_BLOCK_EHRPD_INTERNET_IPV6:I = 0x42030

.field protected static final EVENT_PREFERRED_NETWORK_TYPE_CHANGED:I = 0x42027

.field protected static final EVENT_PS_RESTRICT_DISABLED:I = 0x42017

.field protected static final EVENT_PS_RESTRICT_ENABLED:I = 0x42016

.field protected static final EVENT_PS_RETRY_RESET:I = 0x42026

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x42001

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x42006

.field public static final EVENT_RADIO_REGISTERED_TO_NETWORK:I = 0x42031

.field protected static final EVENT_RAT_CHANGED:I = 0x4202a

.field protected static final EVENT_READ_MODEM_PROFILES:I = 0x42023

.field protected static final EVENT_RECORDS_LOADED:I = 0x42002

.field protected static final EVENT_RESET_DONE:I = 0x4201c

.field protected static final EVENT_RESTART_RADIO:I = 0x4201a

.field protected static final EVENT_RESTORE_DEFAULT_APN:I = 0x4200e

.field protected static final EVENT_ROAMING_OFF:I = 0x4200c

.field protected static final EVENT_ROAMING_ON:I = 0x4200b

.field protected static final EVENT_SETDEFAULT_TOCHANGE_AFTER:I = 0x4202f

.field protected static final EVENT_SET_INTERNAL_DATA_ENABLE:I = 0x4201b

.field protected static final EVENT_TETHERED_MODE_STATE_CHANGED:I = 0x42022

.field protected static final EVENT_TRY_SETUP_DATA:I = 0x42003

.field protected static final EVENT_VOICE_CALL_ENDED:I = 0x42008

.field protected static final EVENT_VOICE_CALL_STARTED:I = 0x42007

.field public static EXTRA_MESSENGER:Ljava/lang/String; = null

.field protected static final FAIL_DATA_SETUP_COUNTER:Ljava/lang/String; = "fail_data_setup_counter"

.field protected static final FAIL_DATA_SETUP_FAIL_CAUSE:Ljava/lang/String; = "fail_data_setup_fail_cause"

.field protected static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reason"

.field protected static final INTENT_SET_FAIL_DATA_SETUP_COUNTER:Ljava/lang/String; = "com.android.internal.telephony.dataconnectiontracker.intent_set_fail_data_setup_counter"

.field protected static final IP_VERSION_SUPPORT_TYPE_DUAL:I = 0x3

.field protected static final IP_VERSION_SUPPORT_TYPE_IPV4:I = 0x0

.field protected static final IP_VERSION_SUPPORT_TYPE_IPV6:I = 0x2

.field protected static final IP_VERSION_SUPPORT_TYPE_NOT_AVAILABLE:I = -0x1

.field protected static final MESSAGE_GET_PREFERRED_NETWORK_TYPE:I = 0x42028

.field public static final MESSAGE_GET_PREFERRED_NETWORK_TYPE_APNCHANGE:I = 0x42032

.field protected static final MESSAGE_SET_PREFERRED_NETWORK_TYPE:I = 0x42029

.field protected static final NO_RECV_POLL_LIMIT:I = 0x18

.field protected static final NT_MODE_INVALID:I = -0x1

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field protected static final NUMBER_SENT_PACKETS_OF_HANG:I = 0xa

.field protected static final POLL_LONGEST_RTT:I = 0x1d4c0

.field protected static final POLL_NETSTAT_MILLIS:I = 0x3e8

.field protected static final POLL_NETSTAT_SCREEN_OFF_MILLIS:I = 0x927c0

.field protected static final POLL_NETSTAT_SLOW_MILLIS:I = 0x1388

.field protected static final RESTORE_DEFAULT_APN_DELAY:I = 0xea60

.field protected static final SECONDARY_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"

.field protected static final VDBG:Z = true

.field protected static final VZW_DATA_RETRY_CONFIG:Ljava/lang/String; = "default_randomization=0,max_retries=infinite,1000,1000,2000:100,2000:100,3000:100,3000:100"

.field static mApnPriorities:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected static sPolicyDataEnabled:Z


# instance fields
.field public dataEnabled:[Z

.field public dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

.field public datablockbyadmin:Z

.field protected enabledCount:I

.field public imsRegiState:Z

.field public isAPNDataBlock:Z

.field protected mActiveApn:Lcom/android/internal/telephony/DataProfile;

.field protected mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

.field public mAllApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field protected mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field private mApnObserver:Lcom/android/internal/telephony/DataConnectionTracker$ApnChangeObserver;

.field protected mApnToDataConnectionId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mAutoAttachOnCreation:Z

.field protected mCheckForConnectivity:Z

.field protected mCheckForSubscription:Z

.field protected mCidActive:I

.field protected mDataConnectionAsyncChannels:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/DataConnectionAc;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataConnectionTracker:Landroid/os/Handler;

.field protected mDataConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataEnabledLock:Ljava/lang/Object;

.field private final mDataRoamingSettingObserver:Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;

.field protected mDataStallAlarmIntent:Landroid/app/PendingIntent;

.field protected mDataStallAlarmTag:I

.field protected mDataStallTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

.field protected mFailDataSetupCounter:I

.field protected mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field protected mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mInternalDataEnabled:Z

.field protected mIsDisposed:Z

.field protected mIsPsRestricted:Z

.field protected mIsScreenOn:Z

.field protected mIsWifiConnected:Z

.field protected mNetStatPollEnabled:Z

.field protected mNetStatPollPeriod:I

.field protected mNoRecvPollCount:I

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mPreferredApn:Lcom/android/internal/telephony/DataProfile;

.field protected mReconnectIntent:Landroid/app/PendingIntent;

.field protected mRequestedApnType:Ljava/lang/String;

.field protected mRxPkts:J

.field protected mSentSinceLastRecv:J

.field protected mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

.field private mTetheredMode:I

.field protected mTxPkts:J

.field protected mUiccManager:Lcom/android/internal/telephony/UiccManager;

.field protected mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected mUserDataEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "com.android.internal.telephony"

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    .line 128
    const-string v0, "EXTRA_MESSENGER"

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->EXTRA_MESSENGER:Ljava/lang/String;

    .line 259
    const-string/jumbo v0, "persist.radio.apn_delay"

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/DataConnectionTracker;->APN_DELAY_MILLIS:I

    .line 274
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    .line 431
    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/DataConnectionTracker$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnPriorities:Ljava/util/LinkedHashMap;

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 11
    .parameter "phone"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 779
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 262
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    .line 266
    iput-boolean v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    .line 271
    iput-boolean v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    .line 278
    const/16 v0, 0xc

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    .line 282
    iput v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 286
    iput v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTetheredMode:I

    .line 289
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 357
    iput v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    .line 359
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 369
    iput-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->imsRegiState:Z

    .line 375
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 376
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 377
    iput-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 383
    iput-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNetStatPollEnabled:Z

    .line 385
    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;JJ)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallTxRxSum:Lcom/android/internal/telephony/DataConnectionTracker$TxRxSum;

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmTag:I

    .line 389
    iput-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataStallAlarmIntent:Landroid/app/PendingIntent;

    .line 393
    iput v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    .line 396
    iput-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    .line 399
    iput-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 405
    iput-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAutoAttachOnCreation:Z

    .line 410
    iput-boolean v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    .line 413
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 416
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    .line 420
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    .line 424
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnToDataConnectionId:Ljava/util/HashMap;

    .line 459
    iput-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    .line 462
    iput-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/DataProfile;

    .line 465
    iput-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsPsRestricted:Z

    .line 468
    iput-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsDisposed:Z

    .line 472
    iput-boolean v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCheckForConnectivity:Z

    .line 473
    iput-boolean v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCheckForSubscription:Z

    .line 480
    iput-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->isAPNDataBlock:Z

    .line 481
    iput-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->datablockbyadmin:Z

    .line 503
    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DataConnectionTracker$2;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 780
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 781
    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    const v1, 0x42021

    invoke-virtual {v0, p0, v1, v10}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42022

    invoke-interface {v0, p0, v1, v10}, Lcom/android/internal/telephony/CommandsInterface;->registerForTetheredModeStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 788
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 789
    .local v6, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getActionIntentReconnectAlarm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 790
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 791
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 792
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 793
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 794
    const-string v0, "com.android.internal.telephony.dataconnectiontracker.intent_set_fail_data_setup_counter"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DataConnectionManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/DataConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    .line 801
    const-string v0, "android.intent.action.IPV6_STATUS"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 805
    const-string v0, "com.skt.CALL_PROTECTION_STATUS_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 806
    const-string v0, "com.skt.CALL_PROTECTION_MENU_OFF"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 807
    const-string v0, "com.skt.CALL_PROTECTION_MENU_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 809
    const-string v0, "com.skt.test_intent"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 810
    const-string v0, "com.lge.GprsAttachedIsTrue"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mobile_data"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_2

    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1, v6, v10, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 826
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const-string/jumbo v1, "net.def_data_on_boot"

    invoke-static {v1, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, v0, v9

    .line 828
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_1

    .line 829
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 832
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 833
    .local v7, sp:Landroid/content/SharedPreferences;
    const-string v0, "disabled_on_boot_key"

    invoke-interface {v7, v0, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAutoAttachOnCreation:Z

    .line 836
    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;

    .line 837
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;->register(Landroid/content/Context;)V

    .line 839
    new-instance v0, Lcom/android/internal/telephony/DataConnectionTracker$ApnChangeObserver;

    invoke-direct {v0, p0, p0}, Lcom/android/internal/telephony/DataConnectionTracker$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/DataConnectionTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnObserver:Lcom/android/internal/telephony/DataConnectionTracker$ApnChangeObserver;

    .line 840
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnObserver:Lcom/android/internal/telephony/DataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v0, v1, v8, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 844
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_ehrpd_internet_ipv6_enabled"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v8, :cond_3

    .line 846
    const-string/jumbo v0, "ril.current.ehrpdipv6enable"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    :goto_1
    return-void

    .end local v7           #sp:Landroid/content/SharedPreferences;
    :cond_2
    move v0, v9

    .line 816
    goto :goto_0

    .line 849
    .restart local v7       #sp:Landroid/content/SharedPreferences;
    :cond_3
    const-string/jumbo v0, "ril.current.ehrpdipv6enable"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->handleDataOnRoamingChange()V

    return-void
.end method

.method private getDataConnectionByQosId(I)Lcom/android/internal/telephony/DataConnection;
    .locals 4
    .parameter "qosId"

    .prologue
    .line 1590
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1591
    .local v1, dcKey:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    .line 1592
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnection;->isValidQos(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1596
    .end local v0           #dc:Lcom/android/internal/telephony/DataConnection;
    .end local v1           #dcKey:Ljava/lang/Integer;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleDataOnRoamingChange()V
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 954
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetAllRetryCounts()V

    .line 957
    :cond_0
    const v0, 0x4200b

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 959
    :cond_1
    return-void
.end method

.method private handleGetPreferredNetworkTypeAPNChangeResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1886
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1888
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1889
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v2, v3, v4

    .line 1891
    .local v2, modemNetworkMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[APNCHANGE] : modemNetworkMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1893
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getPreferredNetworkMode()I

    move-result v1

    .line 1894
    .local v1, curPreferMode:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[APNCHANGE]: curPreferMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1897
    if-eq v2, v1, :cond_0

    .line 1899
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[APNCHANGE] setPreferredNetworkMode set to = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1901
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setPreferredNetworkMode(I)V

    .line 1905
    .end local v1           #curPreferMode:I
    .end local v2           #modemNetworkMode:I
    :cond_0
    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0x9

    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 1911
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1913
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    .line 1914
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v5, 0x0

    aget v3, v4, v5

    .line 1916
    .local v3, modemNetworkMode:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1918
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getPreferredNetworkMode()I

    move-result v1

    .line 1919
    .local v1, curPreferMode:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleGetPreferredNetworkTypeReponse: curPreferMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1924
    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    if-eq v3, v6, :cond_0

    if-eq v3, v7, :cond_0

    if-eq v3, v9, :cond_0

    if-eq v3, v8, :cond_0

    const/16 v4, 0xb

    if-ne v3, v4, :cond_5

    .line 1938
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleGetPreferredNetworkTypeResponse: if 1: modemNetworkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1942
    if-eq v3, v1, :cond_3

    .line 1943
    const-string/jumbo v4, "handleGetPreferredNetworkTypeResponse: if 2: modemNetworkMode != curPreferMode"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1947
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    .line 1948
    .local v2, isRoaming:Z
    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/LGfeature;->SUPPORT_ROAMING_LOCK:Z

    if-eqz v4, :cond_4

    .line 1949
    if-ne v1, v8, :cond_1

    if-eq v3, v7, :cond_2

    :cond_1
    if-ne v1, v9, :cond_4

    if-ne v3, v6, :cond_4

    .line 1951
    :cond_2
    const-string v4, "Roaming Lock - skip mismatch procedure"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1967
    .end local v1           #curPreferMode:I
    .end local v2           #isRoaming:Z
    .end local v3           #modemNetworkMode:I
    :cond_3
    :goto_0
    return-void

    .line 1957
    .restart local v1       #curPreferMode:I
    .restart local v2       #isRoaming:Z
    .restart local v3       #modemNetworkMode:I
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleGetPreferredNetworkTypeResponse: setPreferredNetworkMode set to = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1959
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->setPreferredNetworkMode(I)V

    goto :goto_0

    .line 1963
    .end local v2           #isRoaming:Z
    :cond_5
    const-string/jumbo v4, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1964
    invoke-direct {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetNetworkModeToDefault()V

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1970
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1972
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 1973
    const-string v1, "SetPreferredNetworkType is success"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1978
    :goto_0
    return-void

    .line 1975
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetPreferredNetworkType is failed, exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1976
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const v2, 0x42028

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private isValidNetworkMode(I)Z
    .locals 3
    .parameter "nwMode"

    .prologue
    const/4 v0, 0x1

    .line 1987
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/16 v1, 0xc

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    .line 2000
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGE] isValidNetworkMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2004
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static networkModeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "networkMode"

    .prologue
    .line 2155
    packed-switch p0, :pswitch_data_0

    .line 2199
    const-string v0, "Unexpected"

    .line 2203
    .local v0, ntString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2157
    .end local v0           #ntString:Ljava/lang/String;
    :pswitch_0
    const-string v0, "WCDMA_PREF"

    .line 2158
    .restart local v0       #ntString:Ljava/lang/String;
    goto :goto_0

    .line 2160
    .end local v0           #ntString:Ljava/lang/String;
    :pswitch_1
    const-string v0, "GSM_ONLY"

    .line 2161
    .restart local v0       #ntString:Ljava/lang/String;
    goto :goto_0

    .line 2163
    .end local v0           #ntString:Ljava/lang/String;
    :pswitch_2
    const-string v0, "WCDMA_ONLY"

    .line 2164
    .restart local v0       #ntString:Ljava/lang/String;
    goto :goto_0

    .line 2166
    .end local v0           #ntString:Ljava/lang/String;
    :pswitch_3
    const-string v0, "GSM_UMTS"

    .line 2167
    .restart local v0       #ntString:Ljava/lang/String;
    goto :goto_0

    .line 2169
    .end local v0           #ntString:Ljava/lang/String;
    :pswitch_4
    const-string v0, "CDMA"

    .line 2170
    .restart local v0       #ntString:Ljava/lang/String;
    goto :goto_0

    .line 2172
    .end local v0           #ntString:Ljava/lang/String;
    :pswitch_5
    const-string v0, "CDMA_NO_EVDO"

    .line 2173
    .restart local v0       #ntString:Ljava/lang/String;
    goto :goto_0

    .line 2175
    .end local v0           #ntString:Ljava/lang/String;
    :pswitch_6
    const-string v0, "EVDO_NO_CDMA"

    .line 2176
    .restart local v0       #ntString:Ljava/lang/String;
    goto :goto_0

    .line 2178
    .end local v0           #ntString:Ljava/lang/String;
    :pswitch_7
    const-string v0, "GLOBAL"

    .line 2179
    .restart local v0       #ntString:Ljava/lang/String;
    goto :goto_0

    .line 2181
    .end local v0           #ntString:Ljava/lang/String;
    :pswitch_8
    const-string v0, "LTE_CDMA_EVDO"

    .line 2182
    .restart local v0       #ntString:Ljava/lang/String;
    goto :goto_0

    .line 2184
    .end local v0           #ntString:Ljava/lang/String;
    :pswitch_9
    const-string v0, "LTE_GSM_WCDMA"

    .line 2185
    .restart local v0       #ntString:Ljava/lang/String;
    goto :goto_0

    .line 2187
    .end local v0           #ntString:Ljava/lang/String;
    :pswitch_a
    const-string v0, "LTE_CMDA_EVDO_GSM_WCDMA"

    .line 2188
    .restart local v0       #ntString:Ljava/lang/String;
    goto :goto_0

    .line 2190
    .end local v0           #ntString:Ljava/lang/String;
    :pswitch_b
    const-string v0, "LTE_ONLY"

    .line 2191
    .restart local v0       #ntString:Ljava/lang/String;
    goto :goto_0

    .line 2193
    .end local v0           #ntString:Ljava/lang/String;
    :pswitch_c
    const-string v0, "LTE_WCDMA"

    .line 2194
    .restart local v0       #ntString:Ljava/lang/String;
    goto :goto_0

    .line 2196
    .end local v0           #ntString:Ljava/lang/String;
    :pswitch_d
    const-string v0, "CDMA_WCDMA_GSM"

    .line 2197
    .restart local v0       #ntString:Ljava/lang/String;
    goto :goto_0

    .line 2155
    :pswitch_data_0
    .packed-switch 0x0
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

.method private notifyApnIdDisconnected(Ljava/lang/String;I)V
    .locals 3
    .parameter "reason"
    .parameter "apnId"

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 1325
    return-void
.end method

.method private notifyApnIdUpToCurrent(Ljava/lang/String;I)V
    .locals 3
    .parameter "reason"
    .parameter "apnId"

    .prologue
    .line 1306
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$3;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1320
    :goto_0
    :pswitch_0
    return-void

    .line 1312
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    goto :goto_0

    .line 1316
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    .line 1317
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/Phone$DataState;)V

    goto :goto_0

    .line 1306
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private onTetheredModeStateChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    .line 1816
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 1818
    .local v1, ret:[I
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 1820
    :cond_0
    const-string v2, "Error: Invalid Tethered mode received"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1858
    :goto_0
    return-void

    .line 1824
    :cond_1
    aget v0, v1, v4

    .line 1826
    .local v0, mode:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTetheredModeStateChanged: mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1828
    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTetheredMode:I

    if-ne v2, v0, :cond_2

    .line 1829
    const-string v2, "Ignoring duplicate tethered mode change notification"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1833
    :cond_2
    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mTetheredMode:I

    .line 1835
    packed-switch v0, :pswitch_data_0

    .line 1856
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Invalid Tethered mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1839
    :pswitch_0
    const-string v2, "Unsol Indication: RIL_TETHERED_MODE_ON"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1843
    :pswitch_1
    const-string v2, "Unsol Indication: RIL_TETHERED_MODE_OFF"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetAllRetryCounts()V

    .line 1850
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->clearTetheredStateOnStatus()V

    .line 1851
    const v2, 0x42003

    const-string/jumbo v3, "tetheredModeStateChanged"

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1835
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetNetworkModeToDefault()V
    .locals 3

    .prologue
    .line 1982
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->setPreferredNetworkMode(I)V

    .line 1984
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    const v2, 0x42029

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1985
    return-void
.end method


# virtual methods
.method public DataOnRoamingEnabled_OnlySel(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1881
    return-void

    .line 1880
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected apnIdToType(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 1236
    packed-switch p1, :pswitch_data_0

    .line 1265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown id ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in apnIdToType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1266
    const-string v0, "default"

    :goto_0
    return-object v0

    .line 1238
    :pswitch_0
    const-string v0, "default"

    goto :goto_0

    .line 1240
    :pswitch_1
    const-string/jumbo v0, "mms"

    goto :goto_0

    .line 1242
    :pswitch_2
    const-string/jumbo v0, "supl"

    goto :goto_0

    .line 1244
    :pswitch_3
    const-string v0, "dun"

    goto :goto_0

    .line 1246
    :pswitch_4
    const-string/jumbo v0, "hipri"

    goto :goto_0

    .line 1248
    :pswitch_5
    const-string/jumbo v0, "ims"

    goto :goto_0

    .line 1250
    :pswitch_6
    const-string v0, "fota"

    goto :goto_0

    .line 1252
    :pswitch_7
    const-string v0, "cbs"

    goto :goto_0

    .line 1256
    :pswitch_8
    const-string v0, "admin"

    goto :goto_0

    .line 1258
    :pswitch_9
    const-string/jumbo v0, "vzwapp"

    goto :goto_0

    .line 1260
    :pswitch_a
    const-string/jumbo v0, "vzw800"

    goto :goto_0

    .line 1262
    :pswitch_b
    const-string v0, "entitlement"

    goto :goto_0

    .line 1236
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method protected apnTypeToId(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 1199
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    const/4 v0, 0x0

    .line 1231
    :goto_0
    return v0

    .line 1201
    :cond_0
    const-string/jumbo v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    const/4 v0, 0x1

    goto :goto_0

    .line 1203
    :cond_1
    const-string/jumbo v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1204
    const/4 v0, 0x2

    goto :goto_0

    .line 1205
    :cond_2
    const-string v0, "dun"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1206
    const/4 v0, 0x3

    goto :goto_0

    .line 1207
    :cond_3
    const-string/jumbo v0, "hipri"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1208
    const/4 v0, 0x4

    goto :goto_0

    .line 1209
    :cond_4
    const-string/jumbo v0, "ims"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1210
    const/4 v0, 0x5

    goto :goto_0

    .line 1211
    :cond_5
    const-string v0, "fota"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1212
    const/4 v0, 0x6

    goto :goto_0

    .line 1213
    :cond_6
    const-string v0, "cbs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1214
    const/4 v0, 0x7

    goto :goto_0

    .line 1218
    :cond_7
    const-string v0, "admin"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1219
    const/16 v0, 0x8

    goto :goto_0

    .line 1220
    :cond_8
    const-string/jumbo v0, "vzwapp"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1221
    const/16 v0, 0x9

    goto :goto_0

    .line 1222
    :cond_9
    const-string v0, "entitlement"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1223
    const/16 v0, 0xa

    goto :goto_0

    .line 1225
    :cond_a
    const-string/jumbo v0, "vzw800"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1226
    const/16 v0, 0xb

    goto :goto_0

    .line 1231
    :cond_b
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected broadcastMessenger()V
    .locals 3

    .prologue
    .line 870
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 871
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker;->EXTRA_MESSENGER:Ljava/lang/String;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 872
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 873
    return-void
.end method

.method public changePreferrredNetworkMode(Z)V
    .locals 7
    .parameter "enabled"

    .prologue
    const v6, 0x42029

    .line 2033
    const/4 v3, -0x1

    .line 2034
    .local v3, newPreferMode:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getPreferredNetworkMode()I

    move-result v1

    .line 2035
    .local v1, curPreferMode:I
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v2

    .line 2037
    .local v2, curRadioTech:I
    const/4 v0, 0x0

    .line 2041
    .local v0, Is_LWmode_selected:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[changePreferrredNetworkMode] enabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", curPreferMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->networkModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", curRadioTech:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    invoke-static {v2}, Landroid/telephony/ServiceState;->radioTechnologyToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2043
    if-eqz p1, :cond_5

    .line 2044
    packed-switch v1, :pswitch_data_0

    .line 2133
    :cond_0
    :goto_0
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[changePreferrredNetworkMode] newPreferMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->networkModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / curPreferMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->networkModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2135
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    if-eq v3, v1, :cond_1

    .line 2136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[changePreferrredNetworkMode] change to newPreferMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/internal/telephony/DataConnectionTracker;->networkModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2139
    if-eqz v0, :cond_b

    .line 2141
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2150
    :cond_1
    :goto_1
    return-void

    .line 2048
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/LGfeature;->bypassforuplus:Z

    if-nez v4, :cond_2

    .line 2049
    const/16 v3, 0x9

    .line 2050
    goto :goto_0

    .line 2055
    :cond_2
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/LGfeature;->User_3g_mode_maintain:Z

    if-eqz v4, :cond_3

    .line 2057
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[changePreferrredNetworkMode] User_3g_mode_maintain : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2064
    :cond_3
    :pswitch_3
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/LGfeature;->bypassforuplus:Z

    if-nez v4, :cond_4

    .line 2065
    const/16 v3, 0xc

    .line 2066
    goto/16 :goto_0

    .line 2069
    :cond_4
    :pswitch_4
    const/16 v3, 0xa

    .line 2070
    goto/16 :goto_0

    .line 2078
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/LGfeature;->closeDelayForIms:Z

    if-eqz v4, :cond_6

    .line 2080
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->isCompleteIMSforDelayTime()Z

    .line 2084
    :cond_6
    sparse-switch v1, :sswitch_data_0

    .line 2122
    :cond_7
    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/LGfeature;->bypassforuplus:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    if-eq v1, v4, :cond_0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    const/16 v4, 0xa

    if-ne v1, v4, :cond_0

    .line 2128
    const/16 v3, 0xd

    goto/16 :goto_0

    .line 2088
    :sswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/LGfeature;->bypassforuplus:Z

    if-nez v4, :cond_8

    .line 2089
    const/4 v3, 0x3

    .line 2090
    goto :goto_2

    .line 2095
    :cond_8
    :sswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/LGfeature;->User_3g_mode_maintain:Z

    if-eqz v4, :cond_9

    .line 2097
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[changePreferrredNetworkMode] User_3g_mode_maintain : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2104
    :cond_9
    :sswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/LGfeature;->bypassforuplus:Z

    if-nez v4, :cond_a

    .line 2105
    const/4 v3, 0x2

    .line 2109
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/LGfeature;->CHECK_LW_AND_WONLY_MODE:Z

    if-eqz v4, :cond_7

    .line 2111
    const/4 v0, 0x1

    .line 2112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[changePreferrredNetworkMode] Is_LWmode_selected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2146
    :cond_b
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/PhoneBase;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2147
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->setPreferredNetworkMode(I)V

    goto/16 :goto_1

    .line 2044
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2084
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x9 -> :sswitch_0
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method public checkForConnectivity()Z
    .locals 1

    .prologue
    .line 1867
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCheckForConnectivity:Z

    return v0
.end method

.method public checkForSubscription()Z
    .locals 1

    .prologue
    .line 1871
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCheckForSubscription:Z

    return v0
.end method

.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 2
    .parameter "cause"

    .prologue
    .line 1633
    const v1, 0x4201e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1634
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1635
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1636
    return-void
.end method

.method protected abstract clearTetheredStateOnStatus()V
.end method

.method public declared-synchronized disableApnType(Ljava/lang/String;)I
    .locals 6
    .parameter "type"

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1401
    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableApnType("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1402
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1403
    .local v0, id:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 1418
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1406
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1407
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setEnabled(IZ)V

    .line 1408
    const-string v1, "default"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1409
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v4, 0x0

    aget-boolean v1, v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    move v1, v2

    .line 1410
    goto :goto_0

    :cond_2
    move v1, v3

    .line 1412
    goto :goto_0

    :cond_3
    move v1, v3

    .line 1415
    goto :goto_0

    .line 1401
    .end local v0           #id:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public disableQos(I)I
    .locals 4
    .parameter "qosId"

    .prologue
    .line 1530
    const/4 v1, 0x1

    .line 1531
    .local v1, result:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableQos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1533
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionByQosId(I)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .line 1534
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_0

    .line 1535
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnection;->qosRelease(I)V

    .line 1536
    const/4 v1, 0x0

    .line 1538
    :cond_0
    return v1
.end method

.method protected abstract disable_ehrpd_internet_ipv6()V
.end method

.method protected abstract disconnectOneLowerPriorityCall(Ljava/lang/String;)Z
.end method

.method public disconnectonlyChangedPDN(Ljava/lang/String;)V
    .locals 0
    .parameter "pdntype"

    .prologue
    .line 2213
    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 857
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 858
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->disconnect()V

    goto :goto_0

    .line 860
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 861
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsDisposed:Z

    .line 862
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 863
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataRoamingSettingObserver:Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker$DataRoamingSettingObserver;->unregister(Landroid/content/Context;)V

    .line 864
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/UiccManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 865
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForTetheredModeStateChanged(Landroid/os/Handler;)V

    .line 866
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnObserver:Lcom/android/internal/telephony/DataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 867
    return-void
.end method

.method public dprilmsg(Lcom/android/internal/telephony/DataProfile;I)I
    .locals 20
    .parameter "dp"
    .parameter "nodbID"

    .prologue
    .line 2232
    if-nez p1, :cond_8

    .line 2239
    const-string/jumbo v5, "noneAPN"

    .line 2240
    .local v5, temp:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 2241
    .local v4, templen:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move/from16 v0, p2

    invoke-interface {v2, v3, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->getOrSetDB(ZILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->SendDisableinfotoModem:Z

    if-eqz v2, :cond_0

    .line 2247
    const-string/jumbo v2, "you use vzwsim so send nondb info"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, ""

    const-string v11, ""

    const/4 v12, 0x0

    move/from16 v3, p2

    invoke-interface/range {v2 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->sendPdnTable(IILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2251
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    const/4 v6, 0x0

    move/from16 v0, p2

    invoke-interface {v2, v3, v0, v6}, Lcom/android/internal/telephony/CommandsInterface;->getOrSetDB(ZILjava/lang/String;)Ljava/lang/String;

    .line 2253
    const/16 v17, 0x0

    .line 2255
    .local v17, PDNType:Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 2256
    const-string/jumbo v17, "ims"

    .line 2267
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->DisconnectOnly_ChangePDN:Z

    if-eqz v2, :cond_2

    if-eqz v17, :cond_2

    .line 2269
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->disconnectonlyChangedPDN(Ljava/lang/String;)V

    .line 2343
    .end local v4           #templen:I
    .end local v5           #temp:Ljava/lang/String;
    .end local v17           #PDNType:Ljava/lang/String;
    .end local p2
    :cond_2
    :goto_1
    return p2

    .line 2257
    .restart local v4       #templen:I
    .restart local v5       #temp:Ljava/lang/String;
    .restart local v17       #PDNType:Ljava/lang/String;
    .restart local p2
    :cond_3
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    .line 2258
    const-string v17, "admin"

    goto :goto_0

    .line 2259
    :cond_4
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    .line 2260
    const-string v17, "default"

    goto :goto_0

    .line 2261
    :cond_5
    const/4 v2, 0x4

    move/from16 v0, p2

    if-ne v0, v2, :cond_6

    .line 2262
    const-string/jumbo v17, "vzwapp"

    goto :goto_0

    .line 2263
    :cond_6
    const/4 v2, 0x5

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 2264
    const-string/jumbo v17, "vzw800"

    goto :goto_0

    .line 2281
    .end local v17           #PDNType:Ljava/lang/String;
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending apn is same with old one id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .end local v4           #templen:I
    .end local v5           #temp:Ljava/lang/String;
    :cond_8
    move-object/from16 v18, p1

    .line 2286
    check-cast v18, Lcom/android/internal/telephony/ApnSetting;

    .line 2288
    .local v18, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getPdnIdFromApnType(Lcom/android/internal/telephony/DataProfile;)I

    move-result v7

    .line 2290
    .local v7, pdnId:I
    const/4 v2, -0x1

    if-ne v7, v2, :cond_9

    .line 2291
    const-string v2, "APN_INVALID_ID"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2298
    :cond_9
    const/4 v8, 0x0

    .line 2300
    .local v8, apnLength:I
    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    .line 2301
    .local v9, apn:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2302
    const-string v2, "apn is null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2305
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apn is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2306
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v2, p1

    .line 2309
    check-cast v2, Lcom/android/internal/telephony/ApnSetting;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getIpTypeFromDataProfile(Lcom/android/internal/telephony/ApnSetting;)I

    move-result v10

    .line 2310
    .local v10, ipType:I
    const/4 v2, -0x1

    if-ne v10, v2, :cond_b

    .line 2311
    const-string v2, "IP_VERSION_SUPPORT_TYPE_NOT_AVAILABLE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2315
    :cond_b
    const/4 v11, 0x0

    .line 2317
    .local v11, inactivityTime:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v3, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->getOrSetDB(ZILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/DataProfile;->toHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 2319
    const-string/jumbo v2, "mPhone.mCM.sendPdnTable GOGO~~!!!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v12, 0x1

    move-object/from16 v0, v18

    iget v13, v0, Lcom/android/internal/telephony/DataProfile;->authType:I

    move-object/from16 v0, v18

    iget-object v14, v0, Lcom/android/internal/telephony/DataProfile;->user:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/android/internal/telephony/DataProfile;->password:Ljava/lang/String;

    const/16 v16, 0x0

    invoke-interface/range {v6 .. v16}, Lcom/android/internal/telephony/CommandsInterface;->sendPdnTable(IILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/DataProfile;->toHash()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->getOrSetDB(ZILjava/lang/String;)Ljava/lang/String;

    .line 2330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/LGfeature;->DisconnectOnly_ChangePDN:Z

    if-eqz v2, :cond_c

    .line 2332
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getMainApnType(Lcom/android/internal/telephony/DataProfile;)Ljava/lang/String;

    move-result-object v19

    .line 2333
    .local v19, pdntype:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->disconnectonlyChangedPDN(Ljava/lang/String;)V

    .end local v19           #pdntype:Ljava/lang/String;
    :cond_c
    :goto_2
    move/from16 p2, v7

    .line 2343
    goto/16 :goto_1

    .line 2340
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sending apn is same with old one id= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 4
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 1363
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1364
    .local v0, id:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1365
    const/4 v1, 0x3

    .line 1383
    :goto_0
    monitor-exit p0

    return v1

    .line 1369
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), isApnTypeActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isApnIdEnabled ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1374
    const-string/jumbo v1, "type not available"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1375
    const/4 v1, 0x2

    goto :goto_0

    .line 1378
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1379
    const/4 v1, 0x0

    goto :goto_0

    .line 1381
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->setEnabled(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1363
    .end local v0           #id:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public enableQos(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I
    .locals 4
    .parameter "qosSpec"
    .parameter "type"

    .prologue
    .line 1512
    const/4 v1, 0x1

    .line 1514
    .local v1, result:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableQos: type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->getUserData()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1517
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->getActiveDataConnection(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .line 1519
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_0

    .line 1520
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnection;->qosSetup(Lcom/android/internal/telephony/QosSpec;)V

    .line 1521
    const/4 v1, 0x0

    .line 1526
    :goto_0
    return v1

    .line 1523
    :cond_0
    const-string v2, "enableQos: Did not find a data connection!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract enable_ehrpd_internet_ipv6()V
.end method

.method protected abstract fetchDunApn()Lcom/android/internal/telephony/DataProfile;
.end method

.method protected abstract getActionIntentDataStallAlarm()Ljava/lang/String;
.end method

.method protected abstract getActionIntentReconnectAlarm()Ljava/lang/String;
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "apnType"

    .prologue
    .line 903
    const/4 v0, 0x0

    .line 904
    .local v0, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/DataProfile;

    if-eqz v1, :cond_0

    .line 905
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/DataProfile;

    iget-object v0, v1, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    .line 907
    :cond_0
    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 892
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/DataProfile;

    if-eqz v1, :cond_0

    .line 893
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/DataProfile;

    iget-object v0, v1, Lcom/android/internal/telephony/DataProfile;->types:[Ljava/lang/String;

    .line 898
    .local v0, result:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 895
    .end local v0           #result:[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 896
    .restart local v0       #result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method protected abstract getActiveDataConnection(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnection;
.end method

.method public getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method public getAnyDataEnabled()Z
    .locals 3

    .prologue
    .line 1181
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1182
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 1184
    .local v0, result:Z
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnyDataEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1186
    :cond_0
    return v0

    .line 1182
    .end local v0           #result:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1184
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public abstract getDataConnectionAc_defaultAPN()Lcom/android/internal/telephony/DataConnectionAc;
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 945
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 946
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v3, "data_roaming"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 948
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    return v2

    .line 947
    :catch_0
    move-exception v1

    .line 948
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public getDefaultON_inMMS_blocked()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1739
    const/4 v0, 0x0

    .line 1741
    .local v0, get_ret:Z
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "mms"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1742
    const/4 v0, 0x1

    .line 1745
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGE_DATA] getDefaultON_inMMS_blocked :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1746
    return v0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 1

    .prologue
    .line 1875
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    return-object v0
.end method

.method public getIpTypeFromDataProfile(Lcom/android/internal/telephony/ApnSetting;)I
    .locals 3
    .parameter "apnSetting"

    .prologue
    .line 2503
    const/4 v0, 0x0

    .line 2505
    .local v0, pdp_type:I
    if-eqz p1, :cond_0

    .line 2506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIpTypeFromDataProfile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/DataProfile;->protocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2507
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 2509
    iget-object v1, p1, Lcom/android/internal/telephony/DataProfile;->protocol:Ljava/lang/String;

    const-string v2, "IP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2510
    const/4 v0, 0x0

    .line 2511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The IP type of ATT requirement. This APN\'s IP type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2529
    :cond_0
    :goto_0
    return v0

    .line 2514
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IP type is not IPv4. This APN\'s IP type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2518
    :cond_2
    iget-object v1, p1, Lcom/android/internal/telephony/DataProfile;->protocol:Ljava/lang/String;

    const-string v2, "IP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2519
    const/4 v0, 0x0

    goto :goto_0

    .line 2521
    :cond_3
    iget-object v1, p1, Lcom/android/internal/telephony/DataProfile;->protocol:Ljava/lang/String;

    const-string v2, "IPV6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2522
    const/4 v0, 0x2

    goto :goto_0

    .line 2524
    :cond_4
    iget-object v1, p1, Lcom/android/internal/telephony/DataProfile;->protocol:Ljava/lang/String;

    const-string v2, "IPV4V6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2525
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 1283
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 1284
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1286
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1287
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkCapabilitiesSync()Landroid/net/LinkCapabilities;

    move-result-object v2

    .line 1289
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/net/LinkCapabilities;

    invoke-direct {v2}, Landroid/net/LinkCapabilities;-><init>()V

    goto :goto_0
.end method

.method protected getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 1271
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    .line 1273
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1275
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1276
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v2

    .line 1278
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    goto :goto_0
.end method

.method public abstract getLinkProperties_defaultAPN()Landroid/net/LinkProperties;
.end method

.method public getMainApnType(Lcom/android/internal/telephony/DataProfile;)Ljava/lang/String;
    .locals 1
    .parameter "dp"

    .prologue
    .line 2610
    if-nez p1, :cond_0

    .line 2612
    const-string/jumbo v0, "something woring to get Main Apn type "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2613
    const-string/jumbo v0, "none"

    .line 2631
    :goto_0
    return-object v0

    .line 2616
    :cond_0
    const-string v0, "default"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2617
    const-string v0, "default"

    goto :goto_0

    .line 2618
    :cond_1
    const-string/jumbo v0, "vzwapp"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2619
    const-string/jumbo v0, "vzwapp"

    goto :goto_0

    .line 2620
    :cond_2
    const-string/jumbo v0, "mms"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2621
    const-string/jumbo v0, "mms"

    goto :goto_0

    .line 2622
    :cond_3
    const-string v0, "admin"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2623
    const-string v0, "admin"

    goto :goto_0

    .line 2624
    :cond_4
    const-string/jumbo v0, "ims"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2625
    const-string/jumbo v0, "ims"

    goto :goto_0

    .line 2626
    :cond_5
    const-string v0, "entitlement"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2627
    const-string v0, "entitlement"

    goto :goto_0

    .line 2628
    :cond_6
    const-string/jumbo v0, "vzw800"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2629
    const-string/jumbo v0, "vzw800"

    goto :goto_0

    .line 2631
    :cond_7
    const-string/jumbo v0, "none"

    goto :goto_0
.end method

.method public getPdnIdFromApnType(Lcom/android/internal/telephony/DataProfile;)I
    .locals 3
    .parameter "dp"

    .prologue
    .line 2536
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getMainApnType(Lcom/android/internal/telephony/DataProfile;)Ljava/lang/String;

    move-result-object v1

    .line 2537
    .local v1, maintype:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v0

    .line 2538
    .local v0, AFWID:I
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v2

    iget v2, v2, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->switchingFixedtype(II)I

    move-result v2

    return v2
.end method

.method protected getPreferredApn()Lcom/android/internal/telephony/DataProfile;
    .locals 1

    .prologue
    .line 2224
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPreferredNetworkMode()I
    .locals 4

    .prologue
    .line 2010
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "preferred_network_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2015
    .local v0, nwMode:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isValidNetworkMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2017
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LGE] Not valid isValidNetworkMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2018
    sget v0, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 2022
    :cond_0
    return v0
.end method

.method protected getPrioritySortedApnContextList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/ApnContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1777
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1783
    .local v2, sortedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnContext;>;"
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker;->mApnPriorities:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1784
    .local v1, apnTypes:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1785
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1786
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 1787
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1790
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    return-object v2
.end method

.method public getQosStatus(I)I
    .locals 4
    .parameter "qosId"

    .prologue
    .line 1578
    const/4 v1, 0x1

    .line 1579
    .local v1, result:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getQosStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1581
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionByQosId(I)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .line 1582
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_0

    .line 1583
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnection;->getQosStatus(I)V

    .line 1584
    const/4 v1, 0x0

    .line 1586
    :cond_0
    return v1
.end method

.method protected getReryConfig(Z)Ljava/lang/String;
    .locals 2
    .parameter "forDefault"

    .prologue
    .line 1794
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 1796
    .local v0, rt:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 1804
    :cond_0
    const-string/jumbo v1, "ro.cdma.data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1810
    :goto_0
    return-object v1

    .line 1807
    :cond_1
    if-eqz p1, :cond_2

    .line 1808
    const-string/jumbo v1, "ro.gsm.data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1810
    :cond_2
    const-string/jumbo v1, "ro.gsm.2nd_data_retry_config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;
.end method

.method public getpdnnumpereachoper()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2493
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    if-ne v1, v0, :cond_1

    .line 2494
    const/4 v0, 0x5

    .line 2498
    :cond_0
    :goto_0
    return v0

    .line 2495
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v1

    iget v1, v1, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 2496
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected abstract gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1019
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 1168
    const-string v7, "DATA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unidentified event msg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1021
    :sswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DISCONNECTED_CONNECTED: msg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1022
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1023
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    iget-object v8, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->disconnected()V

    goto :goto_0

    .line 1028
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :sswitch_1
    iget v7, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableApn(II)V

    goto :goto_0

    .line 1032
    :sswitch_2
    const/4 v5, 0x0

    .line 1033
    .local v5, reason:Ljava/lang/String;
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v7, v7, Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 1034
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v5           #reason:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1036
    .restart local v5       #reason:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .line 1040
    .end local v5           #reason:Ljava/lang/String;
    :sswitch_3
    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->onDataStallAlarm(I)V

    goto :goto_0

    .line 1044
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1045
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetAllRetryCounts()V

    .line 1047
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOff()V

    .line 1049
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v7

    invoke-interface {v7}, Lcom/lge/cappuccino/IMdm;->getManualSyncWhenRoaming()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1051
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v7

    invoke-interface {v7, v9}, Lcom/lge/cappuccino/IMdm;->handleManualSync(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 1057
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOn()V

    .line 1059
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v7

    invoke-interface {v7}, Lcom/lge/cappuccino/IMdm;->getManualSyncWhenRoaming()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1061
    invoke-static {}, Lcom/lge/cappuccino/Mdm;->getInstance()Lcom/lge/cappuccino/IMdm;

    move-result-object v7

    invoke-interface {v7, v9}, Lcom/lge/cappuccino/IMdm;->handleManualSync(Landroid/content/ComponentName;)V

    goto/16 :goto_0

    .line 1067
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioAvailable()V

    goto/16 :goto_0

    .line 1071
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioOffOrNotAvailable()V

    goto/16 :goto_0

    .line 1075
    :sswitch_8
    iget v7, p1, Landroid/os/Message;->arg1:I

    iput v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mCidActive:I

    .line 1076
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->onDataSetupComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1080
    :sswitch_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DataConnectoinTracker.handleMessage: EVENT_DISCONNECT_DONE msg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1081
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {p0, v8, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->onDisconnectDone(ILandroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1085
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallStarted()V

    goto/16 :goto_0

    .line 1089
    :sswitch_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallEnded()V

    goto/16 :goto_0

    .line 1093
    :sswitch_c
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpAllConnections(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1097
    :sswitch_d
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_3

    .line 1098
    .local v6, tearDown:Z
    :goto_1
    iget v8, p1, Landroid/os/Message;->arg2:I

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v6, v8, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZILjava/lang/String;)V

    goto/16 :goto_0

    .end local v6           #tearDown:Z
    :cond_3
    move v6, v7

    .line 1097
    goto :goto_1

    .line 1102
    :sswitch_e
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v7, :cond_4

    move v3, v7

    .line 1103
    .local v3, enabled:Z
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onSetInternalDataEnabled(Z)V

    goto/16 :goto_0

    .end local v3           #enabled:Z
    :cond_4
    move v3, v6

    .line 1102
    goto :goto_2

    .line 1107
    :sswitch_f
    const-string v7, "EVENT_RESET_DONE"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1108
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->onResetDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1112
    :sswitch_10
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v7, :cond_5

    move v3, v7

    .line 1113
    .restart local v3       #enabled:Z
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CMD_SET_USER_DATA_ENABLE enabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onSetUserDataEnabled(Z)V

    goto/16 :goto_0

    .end local v3           #enabled:Z
    :cond_5
    move v3, v6

    .line 1112
    goto :goto_3

    .line 1118
    :sswitch_11
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v7, :cond_6

    move v4, v7

    .line 1119
    .local v4, met:Z
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CMD_SET_DEPENDENCY_MET met="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1120
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 1121
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1122
    const-string v7, "apnType"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1123
    .local v0, apnType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1124
    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->onSetDependencyMet(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v0           #apnType:Ljava/lang/String;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v4           #met:Z
    :cond_6
    move v4, v6

    .line 1118
    goto :goto_4

    .line 1130
    :sswitch_12
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v7, :cond_7

    move v3, v7

    .line 1131
    .restart local v3       #enabled:Z
    :goto_5
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onSetPolicyDataEnabled(Z)V

    goto/16 :goto_0

    .end local v3           #enabled:Z
    :cond_7
    move v3, v6

    .line 1130
    goto :goto_5

    .line 1135
    :sswitch_13
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->updateIccAvailability()V

    goto/16 :goto_0

    .line 1138
    :sswitch_14
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->onTetheredModeStateChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1143
    :sswitch_15
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1147
    :sswitch_16
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1153
    :sswitch_17
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleGetPreferredNetworkTypeAPNChangeResponse(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1159
    :sswitch_18
    const-string v7, "[EHRPD_IPV6] Got event EVENT_PPP_RESYNC_TO_BLOCK_EHRPD_INTERNET_IPV6"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->on_PPP_RESYNC_Ehrpd_Internet_Ipv6_block_requested()V

    goto/16 :goto_0

    .line 1165
    :sswitch_19
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onApnChanged()V

    goto/16 :goto_0

    .line 1019
    nop

    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_0
        0x42000 -> :sswitch_8
        0x42001 -> :sswitch_6
        0x42003 -> :sswitch_2
        0x42006 -> :sswitch_7
        0x42007 -> :sswitch_a
        0x42008 -> :sswitch_b
        0x4200b -> :sswitch_5
        0x4200c -> :sswitch_4
        0x4200d -> :sswitch_1
        0x4200f -> :sswitch_9
        0x42011 -> :sswitch_3
        0x42013 -> :sswitch_19
        0x42018 -> :sswitch_d
        0x4201b -> :sswitch_e
        0x4201c -> :sswitch_f
        0x4201d -> :sswitch_10
        0x4201e -> :sswitch_c
        0x4201f -> :sswitch_11
        0x42020 -> :sswitch_12
        0x42021 -> :sswitch_13
        0x42022 -> :sswitch_14
        0x42028 -> :sswitch_15
        0x42029 -> :sswitch_16
        0x42030 -> :sswitch_18
        0x42032 -> :sswitch_17
    .end sparse-switch
.end method

.method protected declared-synchronized isApnIdEnabled(I)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 1346
    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1347
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1349
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1346
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 5
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 881
    const-string v3, "dun"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 882
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->fetchDunApn()Lcom/android/internal/telephony/DataProfile;

    move-result-object v0

    .line 883
    .local v0, dunApn:Lcom/android/internal/telephony/DataProfile;
    if-eqz v0, :cond_2

    .line 884
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/DataProfile;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataProfile;->toHash()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataProfile;->toHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 887
    .end local v0           #dunApn:Lcom/android/internal/telephony/DataProfile;
    :cond_0
    :goto_0
    return v1

    .restart local v0       #dunApn:Lcom/android/internal/telephony/DataProfile;
    :cond_1
    move v1, v2

    .line 884
    goto :goto_0

    .line 887
    .end local v0           #dunApn:Lcom/android/internal/telephony/DataProfile;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/DataProfile;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/DataProfile;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected abstract isApnTypeAvailable(Ljava/lang/String;)Z
.end method

.method public isApnTypeEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 1338
    if-nez p1, :cond_0

    .line 1339
    const/4 v0, 0x0

    .line 1341
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isCompleteIMSforDelayTime()Z
    .locals 7

    .prologue
    .line 1642
    const/4 v2, 0x0

    .line 1644
    .local v2, isOk:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LGE_DATA] setting value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "mobile_data"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1645
    const/4 v0, 0x3

    .line 1647
    .local v0, count:I
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.ims.intent.action.DATA_DISABLED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1648
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1650
    :goto_0
    const-string/jumbo v3, "net.sip_reg_state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v0, :cond_0

    .line 1652
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 1653
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1655
    :cond_0
    const-string/jumbo v3, "net.sip_reg_state"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    const/4 v2, 0x1

    .line 1657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IMS] ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    rsub-int/lit8 v4, v0, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] sec is delayed for SIP de-reg >> isOK :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1659
    return v2
.end method

.method protected abstract isDataAllowed()Z
.end method

.method protected abstract isDataPossible(Ljava/lang/String;)Z
.end method

.method protected isDataSetupCompleteOk(Landroid/os/AsyncResult;)Z
    .locals 3
    .parameter "ar"

    .prologue
    const/4 v0, 0x0

    .line 734
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDataSetupCompleteOk return false, ar.result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 749
    :goto_0
    return v0

    .line 738
    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    if-gtz v1, :cond_1

    .line 739
    const-string/jumbo v0, "isDataSetupCompleteOk return true"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 740
    const/4 v0, 0x1

    goto :goto_0

    .line 742
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDataSetupCompleteOk return false mFailDataSetupCounter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFailDataSetupFailCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 748
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    goto :goto_0
.end method

.method public abstract isDisconnected()Z
.end method

.method protected isEmergency()Z
    .locals 3

    .prologue
    .line 1191
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1192
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isInEcm()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->isInEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1193
    .local v0, result:Z
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEmergency: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1195
    return v0

    .line 1192
    .end local v0           #result:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1193
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method public modifyQos(ILcom/android/internal/telephony/QosSpec;)I
    .locals 4
    .parameter "qosId"
    .parameter "qosSpec"

    .prologue
    .line 1542
    const/4 v1, 0x1

    .line 1543
    .local v1, result:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "modifyQos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1545
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionByQosId(I)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .line 1546
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_0

    .line 1547
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/DataConnection;->qosModify(ILcom/android/internal/telephony/QosSpec;)V

    .line 1548
    const/4 v1, 0x0

    .line 1550
    :cond_0
    return v1
.end method

.method protected notifyDataConnection(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 1295
    const/4 v0, 0x0

    .local v0, id:I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 1296
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 1297
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1300
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 1301
    return-void
.end method

.method protected notifyOffApnsOfAvailability(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 1329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyOffApnsOfAvailability - reason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1330
    const/4 v0, 0x0

    .local v0, id:I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 1331
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnIdEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1332
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyApnIdDisconnected(Ljava/lang/String;I)V

    .line 1330
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1335
    :cond_1
    return-void
.end method

.method protected onActionIntentDataStallAlarm(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActionIntentDataStallAlarm: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 770
    const v1, 0x42011

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 771
    .local v0, msg:Landroid/os/Message;
    const-string v1, "data.stall.alram.tag"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 772
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 773
    return-void
.end method

.method protected onActionIntentReconnectAlarm(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 753
    const-string/jumbo v3, "reason"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 754
    .local v2, reason:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_0

    .line 755
    const v3, 0x42018

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 756
    .local v0, msg:Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 757
    iput v5, v0, Landroid/os/Message;->arg2:I

    .line 758
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 759
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 762
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    .line 763
    .local v1, partialRetry:I
    if-eqz v2, :cond_1

    const-string v3, "DualIpPartialFailureRetry"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 764
    const/4 v1, 0x1

    .line 765
    :cond_1
    const v3, 0x42003

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v5, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 766
    return-void
.end method

.method protected abstract onApnChanged()V
.end method

.method protected abstract onCleanUpAllConnections(Ljava/lang/String;)V
.end method

.method protected abstract onCleanUpConnection(ZILjava/lang/String;)V
.end method

.method protected abstract onDataConnectionAttached()V
.end method

.method protected abstract onDataSetupComplete(Landroid/os/AsyncResult;)V
.end method

.method protected onDataStallAlarm(I)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDataStallAlarm: not impleted tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 1015
    return-void
.end method

.method protected abstract onDisconnectDone(ILandroid/os/AsyncResult;)V
.end method

.method protected onEnableApn(II)V
    .locals 6
    .parameter "apnId"
    .parameter "enabled"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_APN_ENABLE_REQUEST apnId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dataEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabledCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isApnTypeActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1440
    if-ne p2, v4, :cond_3

    .line 1441
    monitor-enter p0

    .line 1442
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_0

    .line 1443
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    .line 1444
    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 1446
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1447
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    .line 1448
    .local v1, type:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1449
    iput-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1450
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableNewApn()V

    .line 1484
    .end local v1           #type:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1446
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1452
    .restart local v1       #type:Ljava/lang/String;
    :cond_2
    const-string v2, "apnSwitched"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyApnIdUpToCurrent(Ljava/lang/String;I)V

    goto :goto_0

    .line 1456
    .end local v1           #type:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .line 1457
    .local v0, didDisable:Z
    monitor-enter p0

    .line 1458
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_4

    .line 1459
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    .line 1460
    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 1461
    const/4 v0, 0x1

    .line 1463
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1464
    if-eqz v0, :cond_1

    .line 1465
    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    if-ne p1, v2, :cond_6

    .line 1466
    :cond_5
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1467
    const-string v2, "dataDisabled"

    invoke-virtual {p0, v4, p1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZILjava/lang/String;)V

    .line 1472
    :cond_6
    const-string v2, "dataDisabled"

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->notifyApnIdDisconnected(Ljava/lang/String;I)V

    .line 1473
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v4, :cond_1

    const-string v2, "default"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1479
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1480
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableNewApn()V

    goto :goto_0

    .line 1463
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method protected onEnableNewApn()V
    .locals 0

    .prologue
    .line 1493
    return-void
.end method

.method protected abstract onRadioAvailable()V
.end method

.method protected abstract onRadioOffOrNotAvailable()V
.end method

.method protected onResetDone(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 1503
    const-string v1, "EVENT_RESET_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1504
    const/4 v0, 0x0

    .line 1505
    .local v0, reason:Ljava/lang/String;
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1506
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #reason:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1508
    .restart local v0       #reason:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 1509
    return-void
.end method

.method protected abstract onRoamingOff()V
.end method

.method protected abstract onRoamingOn()V
.end method

.method protected onSetDependencyMet(Ljava/lang/String;Z)V
    .locals 0
    .parameter "apnType"
    .parameter "met"

    .prologue
    .line 1755
    return-void
.end method

.method protected onSetInternalDataEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1619
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1620
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    .line 1621
    if-eqz p1, :cond_0

    .line 1622
    const-string/jumbo v0, "onSetInternalDataEnabled: changed to enabled, try to setup data call"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1623
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetAllRetryCounts()V

    .line 1624
    const-string v0, "dataEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 1629
    :goto_0
    monitor-exit v1

    .line 1630
    return-void

    .line 1626
    :cond_0
    const-string/jumbo v0, "onSetInternalDataEnabled: changed to disabled, cleanUpAllConnections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1627
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 1629
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onSetPolicyDataEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1758
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1759
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getAnyDataEnabled()Z

    move-result v0

    .line 1760
    .local v0, prevEnabled:Z
    sget-boolean v1, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    if-eq v1, p1, :cond_0

    .line 1761
    sput-boolean p1, Lcom/android/internal/telephony/DataConnectionTracker;->sPolicyDataEnabled:Z

    .line 1762
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getAnyDataEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1763
    if-nez v0, :cond_1

    .line 1764
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetAllRetryCounts()V

    .line 1765
    const-string v1, "dataEnabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 1771
    :cond_0
    :goto_0
    monitor-exit v2

    .line 1772
    return-void

    .line 1767
    :cond_1
    const-string v1, "dataDisabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpAllConnections(Ljava/lang/String;)V

    goto :goto_0

    .line 1771
    .end local v0           #prevEnabled:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onSetUserDataEnabled(Z)V
    .locals 12
    .parameter "enabled"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1667
    iget-object v8, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1668
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getAnyDataEnabled()Z

    move-result v3

    .line 1669
    .local v3, prevEnabled:Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[LGE_DATA] onSetUserDataEnabled "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1672
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/internal/telephony/LGfeature;->MMS_MOBILE_OFF:Z

    if-eqz v9, :cond_0

    .line 1674
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v10, "mms"

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 1676
    .local v1, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v1, :cond_0

    .line 1678
    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "mobile_data"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_0

    .line 1680
    const-string v6, "[LGE_DATA] It is NOT allowed to turn on Mobile Data while MMS is on with mobile off."

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1682
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "lge.intent.action.toast"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1683
    .local v2, intent:Landroid/content/Intent;
    const-string/jumbo v6, "text"

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x1040506

    invoke-virtual {v7, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1684
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1686
    monitor-exit v8

    .line 1735
    .end local v1           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1692
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/internal/telephony/LGfeature;->PAYPOPUP_KO:Z

    if-eqz v9, :cond_3

    .line 1694
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1695
    .local v0, airplaneMode:I
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    .line 1696
    .local v5, voice_call:Z
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    .line 1698
    .local v4, roaming:Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[LGE_DATA] airplaneMode :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "voice_call :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "roaming :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1700
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v9

    iget v9, v9, Lcom/android/internal/telephony/LGfeature;->Current_build_type:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_1

    .line 1701
    const/4 v4, 0x0

    .line 1703
    :cond_1
    if-eq v4, v6, :cond_2

    if-ne v0, v6, :cond_3

    .line 1707
    :cond_2
    const-string v6, "[LGE_DATA] In roaming,,, return mobile settings... :"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1708
    monitor-exit v8

    goto :goto_0

    .line 1734
    .end local v0           #airplaneMode:I
    .end local v3           #prevEnabled:Z
    .end local v4           #roaming:Z
    .end local v5           #voice_call:Z
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1714
    .restart local v3       #prevEnabled:Z
    :cond_3
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/internal/telephony/LGfeature;->SUPPORT_MODE_CHANGE:Z

    if-eqz v9, :cond_4

    .line 1715
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->changePreferrredNetworkMode(Z)V

    .line 1718
    :cond_4
    iget-boolean v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    if-eq v9, p1, :cond_5

    .line 1720
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    .line 1721
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "mobile_data"

    if-eqz p1, :cond_6

    :goto_1
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1723
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LGE_DATA] onSetUserDataEnabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "getAnyDataEnabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getAnyDataEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1725
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getAnyDataEnabled()Z

    move-result v6

    if-eq v3, v6, :cond_5

    .line 1726
    if-nez v3, :cond_7

    .line 1727
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->resetAllRetryCounts()V

    .line 1728
    const-string v6, "dataEnabled"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 1734
    :cond_5
    :goto_2
    monitor-exit v8

    goto/16 :goto_0

    :cond_6
    move v6, v7

    .line 1721
    goto :goto_1

    .line 1730
    :cond_7
    const-string v6, "dataDisabled"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpAllConnections(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method protected abstract onTrySetupData(Ljava/lang/String;)Z
.end method

.method protected abstract onVoiceCallEnded()V
.end method

.method protected abstract onVoiceCallStarted()V
.end method

.method protected abstract on_PPP_RESYNC_Ehrpd_Internet_Ipv6_block_requested()V
.end method

.method protected reAttachDefaultPDN()V
    .locals 0

    .prologue
    .line 2218
    return-void
.end method

.method protected resetAllRetryCounts()V
    .locals 3

    .prologue
    .line 1861
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    .line 1862
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->resetRetryCount()V

    goto :goto_0

    .line 1864
    .end local v0           #dc:Lcom/android/internal/telephony/DataConnection;
    :cond_0
    return-void
.end method

.method protected abstract restartDataStallAlarm()V
.end method

.method protected abstract restartRadio()V
.end method

.method public resumeQos(I)I
    .locals 4
    .parameter "qosId"

    .prologue
    .line 1566
    const/4 v1, 0x1

    .line 1567
    .local v1, result:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resumeQos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1569
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionByQosId(I)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .line 1570
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_0

    .line 1571
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnection;->qosResume(I)V

    .line 1572
    const/4 v1, 0x0

    .line 1574
    :cond_0
    return v1
.end method

.method public sendPdnTable()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 2352
    const/4 v1, 0x0

    .line 2353
    .local v1, defaultcount:I
    const/4 v0, 0x0

    .line 2355
    .local v0, aleadysenddefault:Z
    const/4 v8, 0x0

    .line 2357
    .local v8, pdnId:I
    const/4 v9, 0x6

    new-array v6, v9, [Z

    fill-array-data v6, :array_0

    .line 2359
    .local v6, isDBEx:[Z
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-nez v9, :cond_1

    .line 2360
    const-string/jumbo v9, "sendPdnTable() : mAllApns == null"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/DataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 2452
    :cond_0
    :goto_0
    return-void

    .line 2365
    :cond_1
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DataProfile;

    .line 2367
    .local v3, dp:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-ne v9, v10, :cond_2

    const-string v9, "default"

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2370
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2378
    .end local v3           #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_3
    if-le v1, v11, :cond_4

    .line 2380
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getPreferredApn()Lcom/android/internal/telephony/DataProfile;

    move-result-object v2

    .line 2381
    .local v2, defaultdp:Lcom/android/internal/telephony/DataProfile;
    if-eqz v2, :cond_4

    .line 2383
    invoke-virtual {p0, v2, v12}, Lcom/android/internal/telephony/DataConnectionTracker;->dprilmsg(Lcom/android/internal/telephony/DataProfile;I)I

    move-result v8

    .line 2384
    aput-boolean v11, v6, v8

    .line 2385
    const/4 v0, 0x1

    .line 2390
    .end local v2           #defaultdp:Lcom/android/internal/telephony/DataProfile;
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DataProfile;

    .line 2391
    .restart local v3       #dp:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v3}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-eq v9, v10, :cond_6

    .line 2392
    const-string v9, "SEND PDN TABLE:: Data Profile does not belong to 3GPP APN type..."

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2396
    :cond_6
    const-string v9, "default"

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2398
    if-nez v0, :cond_5

    .line 2400
    invoke-virtual {p0, v3, v12}, Lcom/android/internal/telephony/DataConnectionTracker;->dprilmsg(Lcom/android/internal/telephony/DataProfile;I)I

    move-result v8

    .line 2401
    aput-boolean v11, v6, v8

    .line 2402
    const/4 v0, 0x1

    goto :goto_2

    .line 2407
    :cond_7
    invoke-virtual {p0, v3, v12}, Lcom/android/internal/telephony/DataConnectionTracker;->dprilmsg(Lcom/android/internal/telephony/DataProfile;I)I

    move-result v8

    .line 2408
    aput-boolean v11, v6, v8

    goto :goto_2

    .line 2412
    .end local v3           #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getpdnnumpereachoper()I

    move-result v7

    .line 2416
    .local v7, numofpdn:I
    const/4 v4, 0x1

    .local v4, i:I
    :goto_3
    add-int/lit8 v9, v7, 0x1

    if-ge v4, v9, :cond_a

    .line 2418
    aget-boolean v9, v6, v4

    if-nez v9, :cond_9

    .line 2419
    invoke-virtual {p0, v13, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->dprilmsg(Lcom/android/internal/telephony/DataProfile;I)I

    .line 2416
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2425
    :cond_a
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/internal/telephony/LGfeature;->SendDisableinfotoModem:Z

    if-eqz v9, :cond_b

    .line 2428
    const/4 v9, 0x2

    aget-boolean v9, v6, v9

    if-nez v9, :cond_c

    .line 2430
    iput-boolean v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->isAPNDataBlock:Z

    .line 2431
    iput-boolean v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->datablockbyadmin:Z

    .line 2449
    :cond_b
    :goto_4
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v9

    iget v9, v9, Lcom/android/internal/telephony/LGfeature;->MPDNset:I

    if-eqz v9, :cond_0

    .line 2450
    iget-object v9, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9, v13}, Lcom/android/internal/telephony/CommandsInterface;->sendMPDNTable(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2434
    :cond_c
    aget-boolean v9, v6, v11

    if-nez v9, :cond_d

    .line 2436
    iput-boolean v11, p0, Lcom/android/internal/telephony/DataConnectionTracker;->isAPNDataBlock:Z

    .line 2437
    iput-boolean v12, p0, Lcom/android/internal/telephony/DataConnectionTracker;->datablockbyadmin:Z

    goto :goto_4

    .line 2442
    :cond_d
    iput-boolean v12, p0, Lcom/android/internal/telephony/DataConnectionTracker;->isAPNDataBlock:Z

    .line 2443
    iput-boolean v12, p0, Lcom/android/internal/telephony/DataConnectionTracker;->datablockbyadmin:Z

    goto :goto_4

    .line 2357
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected send_datastatus_report()V
    .locals 2

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionManager;->show_toast_data_msg(I)V

    .line 1751
    return-void
.end method

.method public send_defaultPDN_Table()V
    .locals 14

    .prologue
    .line 2456
    const-string/jumbo v0, "sendINTERNETPdnTable GOGO~~!!!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2457
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/DataProfile;

    .line 2458
    .local v12, dp:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {v12}, Lcom/android/internal/telephony/DataProfile;->getDataProfileType()Lcom/android/internal/telephony/DataProfile$DataProfileType;

    move-result-object v0

    sget-object v6, Lcom/android/internal/telephony/DataProfile$DataProfileType;->PROFILE_TYPE_APN:Lcom/android/internal/telephony/DataProfile$DataProfileType;

    if-eq v0, v6, :cond_1

    .line 2459
    const-string v0, "SEND PDN TABLE:: Data Profile does not belong to 3GPP APN type..."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2463
    :cond_1
    const-string v0, "default"

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/DataProfile;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v11, v12

    .line 2465
    check-cast v11, Lcom/android/internal/telephony/ApnSetting;

    .line 2466
    .local v11, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/DataConnectionTracker;->getPdnIdFromApnType(Lcom/android/internal/telephony/DataProfile;)I

    move-result v1

    .line 2467
    .local v1, pdnId:I
    const/4 v2, 0x0

    .line 2468
    .local v2, apnLength:I
    iget-object v3, v11, Lcom/android/internal/telephony/DataProfile;->apn:Ljava/lang/String;

    .line 2469
    .local v3, apn:Ljava/lang/String;
    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2470
    const-string v0, "apn is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2488
    .end local v1           #pdnId:I
    .end local v2           #apnLength:I
    .end local v3           #apn:Ljava/lang/String;
    .end local v11           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v12           #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_2
    :goto_1
    return-void

    .line 2473
    .restart local v1       #pdnId:I
    .restart local v2       #apnLength:I
    .restart local v3       #apn:Ljava/lang/String;
    .restart local v11       #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .restart local v12       #dp:Lcom/android/internal/telephony/DataProfile;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apn is "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2474
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 2476
    check-cast v12, Lcom/android/internal/telephony/ApnSetting;

    .end local v12           #dp:Lcom/android/internal/telephony/DataProfile;
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/DataConnectionTracker;->getIpTypeFromDataProfile(Lcom/android/internal/telephony/ApnSetting;)I

    move-result v4

    .line 2477
    .local v4, ipType:I
    const/4 v0, -0x1

    if-ne v4, v0, :cond_4

    .line 2478
    const-string v0, "IP_VERSION_SUPPORT_TYPE_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2481
    :cond_4
    const/4 v5, 0x0

    .line 2482
    .local v5, inactivityTime:I
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x1

    iget v7, v11, Lcom/android/internal/telephony/DataProfile;->authType:I

    iget-object v8, v11, Lcom/android/internal/telephony/DataProfile;->user:Ljava/lang/String;

    iget-object v9, v11, Lcom/android/internal/telephony/DataProfile;->password:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface/range {v0 .. v10}, Lcom/android/internal/telephony/CommandsInterface;->sendPdnTable(IILjava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setDataOnRoamingEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 914
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v4

    if-eq v4, p1, :cond_1

    .line 917
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/internal/telephony/LGfeature;->NOTI_GPRS_REJECT:Z

    if-eqz v4, :cond_0

    if-ne p1, v2, :cond_0

    .line 923
    const-string/jumbo v4, "ril.gsm.reject_cause"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 925
    .local v0, data_rejCode:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LGE_DATA] setDataOnRoamingEnabled(), reject_cause= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 927
    if-lez v0, :cond_0

    .line 929
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/DataConnectionManager;->handleNetworkRejection(I)V

    .line 934
    .end local v0           #data_rejCode:I
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 935
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v4, "data_roaming"

    if-eqz p1, :cond_2

    :goto_0
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 938
    .end local v1           #resolver:Landroid/content/ContentResolver;
    :cond_1
    return-void

    .restart local v1       #resolver:Landroid/content/ContentResolver;
    :cond_2
    move v2, v3

    .line 935
    goto :goto_0
.end method

.method protected abstract setDataReadinessChecks(ZZZ)V
.end method

.method protected setEnabled(IZ)V
    .locals 3
    .parameter "id"
    .parameter "enable"

    .prologue
    .line 1424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") with old state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and enabledCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1427
    const v1, 0x4200d

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1428
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1429
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1430
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1431
    return-void

    .line 1429
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInternalDataEnabled(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 1610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInternalDataEnabled("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1612
    const v1, 0x4201b

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1613
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1614
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 1615
    return v2

    .line 1613
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setPreferredNetworkMode(I)V
    .locals 2
    .parameter "nwMode"

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2030
    return-void
.end method

.method protected abstract setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
.end method

.method protected abstract startNetStatPoll()V
.end method

.method protected abstract stopNetStatPoll()V
.end method

.method public suspendQos(I)I
    .locals 4
    .parameter "qosId"

    .prologue
    .line 1554
    const/4 v1, 0x1

    .line 1555
    .local v1, result:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "suspendQos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1557
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataConnectionByQosId(I)Lcom/android/internal/telephony/DataConnection;

    move-result-object v0

    .line 1558
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    if-eqz v0, :cond_0

    .line 1559
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnection;->qosSuspend(I)V

    .line 1560
    const/4 v1, 0x0

    .line 1562
    :cond_0
    return v1
.end method

.method public switchingFixedtype(II)I
    .locals 5
    .parameter "id"
    .parameter "MPDNset"

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v1, 0x2

    const/4 v4, -0x1

    const/4 v0, 0x1

    .line 2545
    packed-switch p2, :pswitch_data_0

    .line 2592
    :pswitch_0
    if-nez p1, :cond_8

    .line 2594
    :cond_0
    :goto_0
    return v0

    .line 2549
    :pswitch_1
    if-eq p1, v3, :cond_0

    .line 2552
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    move v0, v1

    .line 2553
    goto :goto_0

    .line 2554
    :cond_1
    if-nez p1, :cond_2

    move v0, v2

    .line 2555
    goto :goto_0

    .line 2556
    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_3

    .line 2557
    const/4 v0, 0x4

    goto :goto_0

    .line 2558
    :cond_3
    const/16 v0, 0xb

    if-ne p1, v0, :cond_4

    move v0, v3

    .line 2559
    goto :goto_0

    .line 2561
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wrong type for vzwapp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    move v0, v4

    .line 2563
    goto :goto_0

    .line 2567
    :pswitch_2
    if-eqz p1, :cond_0

    .line 2569
    const/16 v0, 0xa

    if-ne p1, v0, :cond_5

    move v0, v1

    .line 2570
    goto :goto_0

    .line 2572
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wrong type for ATANT : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    move v0, v4

    .line 2574
    goto :goto_0

    .line 2579
    :pswitch_3
    if-eq p1, v3, :cond_0

    .line 2581
    if-nez p1, :cond_6

    move v0, v1

    .line 2582
    goto :goto_0

    .line 2583
    :cond_6
    if-ne p1, v0, :cond_7

    move v0, v2

    .line 2584
    goto :goto_0

    .line 2586
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wrong type for vzwapp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    move v0, v4

    .line 2588
    goto :goto_0

    :cond_8
    move v0, v4

    .line 2594
    goto :goto_0

    .line 2545
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract updateIccAvailability()V
.end method
