.class public abstract Lcom/android/internal/telephony/SMSDispatcher;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;,
        Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    }
.end annotation


# static fields
.field protected static final ADDRESS_TRANSLATION_FAILURE:I = 0x1

.field protected static final CDMA_SMS_SERVICE_OPTION_14:I = 0xe

.field protected static final CDMA_SMS_SERVICE_OPTION_6:I = 0x6

.field private static final DEFAULT_SEND_DELAY:I = 0x12c

.field private static final DEFAULT_SEND_RETRY_DELAY:I = 0x7d0

.field private static final DEFAULT_SMS_TIMEOUT:I = 0x1770

.field private static final DESTINATION_PORT_COLUMN:I = 0x2

.field public static final EMS_EXPIRATION_TIME:I = 0x493e0

.field private static final EVENT_ALERT_TIMEOUT:I = 0x6

.field protected static final EVENT_DC_ABORTCONNECT:I = 0x1d

.field protected static final EVENT_DC_CONNECT:I = 0x1b

.field protected static final EVENT_DC_CONNECTING:I = 0x1e

.field protected static final EVENT_DC_DISCONNECT:I = 0x1c

.field protected static final EVENT_DC_DISCONNECTING:I = 0x1f

.field protected static final EVENT_GET_ICC_SMS_DONE:I = 0xe

.field protected static final EVENT_ICC_CHANGED:I = 0xc

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0x9

.field protected static final EVENT_IMS_STATE_DONE:I = 0xa

.field protected static final EVENT_NEW_SMS:I = 0x1

.field private static final EVENT_POST_ALERT:I = 0x4

.field protected static final EVENT_PROCESS_SEND_RETRY:I = 0xb

.field protected static final EVENT_RADIO_ON:I = 0x8

.field protected static final EVENT_RETRY_ALERT_TIMEOUT:I = 0xf

.field static final EVENT_SEND_CONFIRMED_SMS:I = 0x5

.field protected static final EVENT_SEND_MESSAGE:I = 0x15

.field protected static final EVENT_SEND_MORE_MESSAGE:I = 0x16

.field private static final EVENT_SEND_RETRY:I = 0x3

.field protected static final EVENT_SEND_RETRY_CONFIRMED_SMS:I = 0x10

.field protected static final EVENT_SEND_RETRY_WITHPOPUP:I = 0x12

.field protected static final EVENT_SEND_SMS_COMPLETE:I = 0x2

.field protected static final EVENT_SMS_ON_ICC:I = 0xd

.field protected static final EVENT_STOP_RETRY_SENDING:I = 0x11

.field static final EVENT_STOP_SENDING:I = 0x7

.field protected static final EVENT_UPDATE_ICC_MWI:I = 0x14

.field protected static final GENERAL_PROBLEMS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MAX_SEND_RETRIES:I = 0x0

.field private static final MO_MSG_QUEUE_LIMIT:I = 0x5

.field protected static final MSG_NOT_SENT:I = 0x5

.field protected static final MSG_TOO_LONG_FORNEWORK:I = 0x4

.field protected static final NETWORK_PROBLEMS:I = 0x1

.field protected static final NUMBER_OF_CAUSE_CODE:I = 0x33

.field private static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String; = null

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String; = null

.field public static final RECEIVE_EMERGENCY_BROADCAST_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_EMERGENCY_BROADCAST"

.field public static final RECEIVE_SMS_PERMISSION:Ljava/lang/String; = "android.permission.RECEIVE_SMS"

.field private static final SEND_NEXT_MSG_EXTRA:Ljava/lang/String; = "SendNextMsg"

#the value of this static final field might be set in the static constructor
.field private static final SEND_RETRY_DELAY:I = 0x0

.field private static final SEQUENCE_COLUMN:I = 0x1

.field protected static final SERVICE_NOT_AVAILABLE:I = 0x2

.field protected static final SERVICE_NOT_SUPPORTED:I = 0x3

.field private static final SINGLE_PART_SMS:I = 0x1

.field private static final SMS_INBOX_CONSTRAINT:Ljava/lang/String; = "(type = 1)"

.field private static final SMS_INBOX_MAX_COUNT:I = 0x32

.field protected static final SMS_NETWORK_FAILURE:I = 0x3

.field protected static final SMS_NOT_SUPPORTED:I = 0x64

.field protected static final SMS_ORIGINATION_DENIED:I = 0x61

.field private static final SMS_RETRY_POPUP_DISP_TIMEOUT:I = 0x2710

.field static final TAG:Ljava/lang/String; = "SMSDispatcher"

.field private static final VZW_PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String; = null

.field private static final WAKE_LOCK_TIMEOUT:I = 0x1388

.field protected static mIms:Z

.field protected static mImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

.field protected static final mRawUri:Landroid/net/Uri;

.field private static mSendRetryDelay:I

.field protected static mSendRetryRegistrant:Landroid/os/Registrant;

.field public static mSubmitPriority:I

.field private static sConcatenatedRef:I

.field public static vp:I


# instance fields
.field public LgeMmsHiddenConfig:Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;

.field private causeCodeArray:[J

.field protected final deliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private errorCodeArray:[J

.field protected final mCm:Lcom/android/internal/telephony/CommandsInterface;

.field protected final mContext:Landroid/content/Context;

.field protected mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPendingMessagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field protected mRemainingMessages:I

.field protected final mResolver:Landroid/content/ContentResolver;

.field private final mResultReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mSTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mSTrackersForRetry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mSmsCapable:Z

.field protected mSmsReceiveDisabled:Z

.field protected mSmsSendDisabled:Z

.field protected final mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field private mSyncronousSending:Z

.field protected mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

.field protected mUiccManager:Lcom/android/internal/telephony/UiccManager;

.field private final mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 117
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "pdu"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    .line 122
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "pdu"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sequence"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    const-string/jumbo v1, "icc_index"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 133
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "pdu"

    aput-object v1, v0, v3

    const-string/jumbo v1, "sequence"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "destination_port"

    aput-object v2, v0, v1

    const-string/jumbo v1, "icc_index"

    aput-object v1, v0, v5

    const-string/jumbo v1, "time"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->VZW_PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 217
    const/4 v0, -0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->vp:I

    .line 283
    sput-boolean v3, Lcom/android/internal/telephony/SMSDispatcher;->mIms:Z

    .line 284
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->RADIO_TECH_UNKNOWN:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    .line 299
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    .line 305
    const-string/jumbo v0, "persist.radio.sms_retry_delay"

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->mSendRetryDelay:I

    .line 312
    const-string v0, "doNotUse_AP_retry"

    invoke-static {v7, v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 313
    sput v3, Lcom/android/internal/telephony/SMSDispatcher;->MAX_SEND_RETRIES:I

    .line 328
    :goto_0
    const-string/jumbo v0, "vzw_sms_retry_scheme"

    invoke-static {v7, v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v4, :cond_2

    .line 329
    const/16 v0, 0x7530

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->SEND_RETRY_DELAY:I

    .line 350
    :goto_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 382
    sput v3, Lcom/android/internal/telephony/SMSDispatcher;->mSubmitPriority:I

    return-void

    .line 315
    :cond_0
    const-string/jumbo v0, "vzw_sms_retry_scheme"

    invoke-static {v7, v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 316
    sput v6, Lcom/android/internal/telephony/SMSDispatcher;->MAX_SEND_RETRIES:I

    goto :goto_0

    .line 319
    :cond_1
    sput v5, Lcom/android/internal/telephony/SMSDispatcher;->MAX_SEND_RETRIES:I

    goto :goto_0

    .line 331
    :cond_2
    const/16 v0, 0x7d0

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->SEND_RETRY_DELAY:I

    goto :goto_1
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 5
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 405
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 256
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->errorCodeArray:[J

    .line 258
    const/16 v0, 0x33

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->causeCodeArray:[J

    .line 293
    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 294
    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 295
    iput-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersForRetry:Ljava/util/ArrayList;

    .line 375
    iput-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 379
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    .line 2998
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$1;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3012
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$2;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    .line 3034
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SMSDispatcher$3;-><init>(Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRetryListener:Landroid/content/DialogInterface$OnClickListener;

    .line 406
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 407
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 408
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    .line 410
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 411
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 412
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    .line 414
    invoke-direct {p0}, Lcom/android/internal/telephony/SMSDispatcher;->createWakelock()V

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110024

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    .line 418
    const-string/jumbo v0, "telephony.sms.receive"

    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    .line 420
    const-string/jumbo v0, "telephony.sms.send"

    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1b

    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsDCConnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1c

    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsDCDisConnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x1d

    invoke-interface {v0, p0, v2, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnSmsDCAbortConnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    .line 429
    const-string/jumbo v0, "persist.radio.sms_sync_sending"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSyncronousSending:Z

    .line 433
    const-string v0, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMSDispatcher: Creator mSmsCapable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsCapable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSmsReceiveDisabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsReceiveDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSmsSendDisabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "MMSHiddenConfig"

    invoke-static {v0, v2}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 438
    new-instance v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->LgeMmsHiddenConfig:Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;

    .line 441
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v4}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 443
    return-void

    :cond_2
    move v0, v2

    .line 418
    goto/16 :goto_0

    .line 256
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 258
    :array_1
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x3t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x4t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x5t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x6t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x7t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x8t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x9t 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xat 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xbt 0x80t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->VZW_PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private createWakelock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 769
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 770
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SMSDispatcher"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 771
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 772
    return-void
.end method

.method private dequeueFailedPendingMessage()V
    .locals 5

    .prologue
    .line 3275
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 3276
    const/4 v0, 0x0

    .line 3277
    .local v0, loopCount:I
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3278
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3279
    const-string v1, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SMS-FRW] Removed Failed message from pending queue. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " left"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    add-int/lit8 v0, v0, 0x1

    .line 3281
    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 3285
    :cond_1
    monitor-exit v2

    .line 3286
    return-void

    .line 3285
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private enqueueMessageForSending(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 4
    .parameter "tracker"

    .prologue
    .line 3094
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3095
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3096
    const-string v0, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added message to the pending queue. Queue size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 3100
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 3102
    :cond_0
    monitor-exit v1

    .line 3103
    return-void

    .line 3102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    .prologue
    .line 394
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    .line 395
    sget v0, Lcom/android/internal/telephony/SMSDispatcher;->sConcatenatedRef:I

    return v0
.end method

.method private getSMSInboxMessageCount()I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 2892
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2893
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "(type = 1)"

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2897
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 2898
    const/4 v7, 0x0

    .line 2903
    :goto_0
    return v7

    .line 2901
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 2902
    .local v7, count:I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method protected static handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 3
    .parameter "ss"
    .parameter "tracker"

    .prologue
    .line 1255
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 1257
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 1258
    :try_start_0
    const-string v1, "SMSDispatcher"

    const-string/jumbo v2, "handleNotInService ServiceState.STATE_POWER_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(I)V

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1261
    :cond_1
    const-string v1, "SMSDispatcher"

    const-string/jumbo v2, "handleNotInService RESULT_ERROR_NO_SERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1264
    :catch_0
    move-exception v0

    .line 1265
    .local v0, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v1, "SMSDispatcher"

    const-string/jumbo v2, "handleNotInService CanceledException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isIms()Z
    .locals 1

    .prologue
    .line 3125
    sget-boolean v0, Lcom/android/internal/telephony/SMSDispatcher;->mIms:Z

    return v0
.end method

.method public static isImsSmsEncodingCdma()Z
    .locals 1

    .prologue
    .line 3129
    sget-object v0, Lcom/android/internal/telephony/SMSDispatcher;->mImsSmsEncoding:Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioTechnologyFamily;->isCdma()Z

    move-result v0

    return v0
.end method

.method private notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 2880
    if-nez p1, :cond_0

    .line 2882
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2883
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2884
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2885
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2887
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 2888
    return-void
.end method

.method private processNextPendingMessage()V
    .locals 4

    .prologue
    .line 3077
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3079
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3080
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3081
    const-string v0, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed message from pending queue. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " left"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3088
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPendingMessagesList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 3090
    :cond_0
    monitor-exit v1

    .line 3091
    return-void

    .line 3083
    :cond_1
    const-string v0, "SMSDispatcher"

    const-string v2, "Pending messages list consistency failure detected!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3090
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 13
    .parameter "tracker"

    .prologue
    const/4 v12, 0x0

    .line 2834
    iget-object v8, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 2836
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v0, "destination"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2837
    .local v1, destinationAddress:Ljava/lang/String;
    const-string/jumbo v0, "scaddress"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2839
    .local v2, scAddress:Ljava/lang/String;
    const-string/jumbo v0, "parts"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2840
    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v0, "sentIntents"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2841
    .local v4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2844
    .local v5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    .line 2846
    .local v11, ss:I
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v11, :cond_1

    .line 2847
    const/4 v7, 0x0

    .local v7, i:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, count:I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 2848
    const/4 v10, 0x0

    .line 2849
    .local v10, sentIntent:Landroid/app/PendingIntent;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 2850
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #sentIntent:Landroid/app/PendingIntent;
    check-cast v10, Landroid/app/PendingIntent;

    .line 2852
    .restart local v10       #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v12, v10, v12, v0}, Lcom/android/internal/telephony/SMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v9

    .line 2854
    .local v9, newTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-static {v11, v9}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 2847
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .end local v6           #count:I
    .end local v7           #i:I
    .end local v9           #newTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v10           #sentIntent:Landroid/app/PendingIntent;
    :cond_1
    move-object v0, p0

    .line 2859
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2860
    :cond_2
    return-void
.end method


# virtual methods
.method protected SendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 17
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "cbAddress"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2391
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    move/from16 v16, v0

    .line 2392
    .local v16, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 2393
    .local v15, msgCount:I
    const/4 v6, 0x0

    .line 2395
    .local v6, encoding:I
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 2397
    new-array v13, v15, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .line 2398
    .local v13, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v15, :cond_2

    .line 2399
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v12

    .line 2400
    .local v12, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v1, v12, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v6, v1, :cond_1

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    if-ne v6, v1, :cond_1

    .line 2403
    :cond_0
    iget v6, v12, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 2405
    :cond_1
    aput-object v12, v13, v14

    .line 2398
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 2408
    .end local v12           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_7

    .line 2409
    new-instance v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 2410
    .local v11, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v16

    iput v0, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 2411
    add-int/lit8 v1, v14, 0x1

    iput v1, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 2412
    iput v15, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 2419
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 2420
    new-instance v5, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 2421
    .local v5, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v11, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 2424
    const/4 v1, 0x1

    if-ne v6, v1, :cond_3

    .line 2425
    aget-object v1, v13, v14

    iget v1, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 2426
    aget-object v1, v13, v14

    iget v1, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 2429
    :cond_3
    const/4 v7, 0x0

    .line 2430
    .local v7, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v14, :cond_4

    .line 2431
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 2434
    .restart local v7       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v8, 0x0

    .line 2435
    .local v8, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v14, :cond_5

    .line 2436
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 2439
    .restart local v8       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v1, v15, -0x1

    if-ne v14, v1, :cond_6

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;)V

    .line 2408
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2439
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 2443
    .end local v5           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v11           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_7
    return-void
.end method

.method protected abstract SendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
.end method

.method protected SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 6
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "format"

    .prologue
    .line 2946
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$1;)V

    return-object v0
.end method

.method protected SmsTrackerMapFactory(Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .parameter "destAddr"
    .parameter "pdu"

    .prologue
    .line 2988
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2990
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2991
    const-string/jumbo v1, "scAddr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2992
    const-string/jumbo v1, "smsc"

    iget-object v2, p2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2993
    const-string/jumbo v1, "pdu"

    iget-object v2, p2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2994
    return-object v0
.end method

.method protected SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;I[BLcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "pdu"

    .prologue
    .line 2976
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2977
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2978
    const-string/jumbo v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2979
    const-string v1, "destPort"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2980
    const-string v1, "data"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2981
    const-string/jumbo v1, "smsc"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2982
    const-string/jumbo v1, "pdu"

    iget-object v2, p5, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2983
    return-object v0
.end method

.method protected SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "pdu"

    .prologue
    .line 2951
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2952
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2953
    const-string/jumbo v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2954
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2955
    const-string/jumbo v1, "smsc"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2956
    const-string/jumbo v1, "pdu"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2957
    return-object v0
.end method

.method protected SmsTrackerMapFactory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "pdu"
    .parameter "cbAddress"

    .prologue
    .line 2963
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2964
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "destAddr"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2965
    const-string/jumbo v1, "scAddr"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2966
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2967
    const-string/jumbo v1, "smsc"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2968
    const-string/jumbo v1, "pdu"

    iget-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2969
    const-string v1, "cbAddress"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2970
    return-object v0
.end method

.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected abstract calculateLGLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
.end method

.method protected abstract calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
.end method

.method dispatch(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 8
    .parameter "intent"
    .parameter "permission"

    .prologue
    const/4 v6, 0x0

    .line 785
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 786
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 788
    return-void
.end method

.method protected dispatch(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .parameter "intent"
    .parameter "permission"
    .parameter "scheduler"
    .parameter "initialCode"
    .parameter "initialData"
    .parameter "initialExtras"

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 815
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mResultReceiver:Landroid/content/BroadcastReceiver;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 817
    return-void
.end method

.method protected dispatchDirectedSms(Ljava/lang/String;)V
    .locals 2
    .parameter "parameters"

    .prologue
    .line 2105
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2106
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "parameters"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2107
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2108
    return-void
.end method

.method public dispatchEx(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 7
    .parameter "intent"
    .parameter "permission"

    .prologue
    const/4 v5, 0x0

    .line 2078
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] dispatchEx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    const-string v0, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2081
    const-string/jumbo v0, "subscription"

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2083
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2085
    return-void
.end method

.method protected abstract dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 19
    .parameter "sms"

    .prologue
    .line 1288
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v18

    .line 1289
    .local v18, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    const-string v2, "SMSDispatcher"

    const-string v3, "dispatchNormalMessage"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v2, :cond_9

    .line 1293
    :cond_0
    const/4 v2, 0x1

    new-array v15, v2, [[B

    .line 1294
    .local v15, pdus:[[B
    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    aput-object v3, v15, v2

    .line 1295
    const-string v2, "SMSDispatcher"

    const-string v3, "Single message Received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    if-eqz v18, :cond_6

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v2, :cond_6

    .line 1297
    const-string v2, "SMSDispatcher"

    const-string v3, "Port Address message Received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "OperatorMessage"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1300
    const/16 v17, 0x5

    .line 1301
    .local v17, result:I
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->processOperatorMessage([[BLcom/android/internal/telephony/SmsMessageBase;ZZ)I

    move-result v17

    .line 1302
    const/4 v2, 0x5

    move/from16 v0, v17

    if-eq v0, v2, :cond_3

    .line 1366
    .end local v15           #pdus:[[B
    .end local v17           #result:I
    :cond_1
    :goto_1
    return v17

    .line 1301
    .restart local v15       #pdus:[[B
    .restart local v17       #result:I
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1307
    .end local v17           #result:I
    :cond_3
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v3, 0xb84

    if-ne v2, v3, :cond_5

    .line 1309
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_WAPSERVICE:Z

    if-eqz v2, :cond_4

    .line 1310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;Ljava/lang/String;)I

    move-result v17

    goto :goto_1

    .line 1314
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v17

    goto :goto_1

    .line 1317
    :cond_5
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 1340
    :goto_2
    const/16 v17, -0x1

    goto :goto_1

    .line 1321
    :cond_6
    const-string v2, "SMSDispatcher"

    const-string v3, " non-port-addressed messag Received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v3, "OperatorMessage"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1324
    const/16 v17, 0x5

    .line 1325
    .restart local v17       #result:I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->processOperatorMessage([[BLcom/android/internal/telephony/SmsMessageBase;ZZ)I

    move-result v17

    .line 1326
    const/4 v2, 0x5

    move/from16 v0, v17

    if-ne v0, v2, :cond_1

    .line 1332
    .end local v17           #result:I
    :cond_7
    const/4 v2, 0x0

    const-string/jumbo v3, "seperate_processing_sms_uicc"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1333
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[BLjava/lang/String;)V

    goto :goto_2

    .line 1337
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_2

    .line 1343
    .end local v15           #pdus:[[B
    :cond_9
    const-string v2, "SMSDispatcher"

    const-string v3, "Multiple message Received"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    move-object/from16 v0, v18

    iget-object v14, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 1345
    .local v14, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v16, v0

    .line 1362
    .local v16, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    const/4 v13, -0x1

    .line 1363
    .local v13, indexOnIcc:I
    const/4 v2, 0x0

    const-string/jumbo v3, "seperate_processing_sms_uicc"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1364
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getIndexOnIcc()I

    move-result v13

    .line 1366
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    iget v5, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v6, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v7, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v8

    if-eqz v16, :cond_b

    move-object/from16 v0, v16

    iget v10, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    :goto_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/SMSDispatcher;->processMessagePart([BLjava/lang/String;IIIJIZLjava/lang/String;I)I

    move-result v17

    goto/16 :goto_1

    :cond_b
    const/4 v10, -0x1

    goto :goto_3
.end method

.method protected dispatchPdus([[B)V
    .locals 4
    .parameter "pdus"

    .prologue

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lmiui/provider/ExtraTelephony;->checkFirewallForSms(Landroid/content/Context;[[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0

    :cond_0
        
    .line 2025
    const-string v1, "SMSDispatcher"

    const-string v2, "dispatchPdus()-parameter: pdus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2027
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2028
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2029
    const-string/jumbo v1, "subscription"

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2031
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    .line 2032
    return-void
.end method

.method protected dispatchPdus([[BLandroid/content/Intent;)V
    .locals 1
    .parameter "pdus"
    .parameter "intent"

    .prologue
    .line 2054
    const-string/jumbo v0, "pdus"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2055
    const-string v0, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2056
    return-void
.end method

.method protected dispatchPdus([[BLjava/lang/String;)V
    .locals 3
    .parameter "pdus"
    .parameter "indexOnIcc"

    .prologue
    .line 2043
    const-string v1, "SMSDispatcher"

    const-string v2, "dispatchPdus()-parameter: pdus and indexOnIcc"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2045
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2046
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "indexOnIcc"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected dispatchPortAddressedPdus([[BI)V
    .locals 5
    .parameter "pdus"
    .parameter "port"

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lmiui/provider/ExtraTelephony;->checkFirewallForSms(Landroid/content/Context;[[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2095
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2096
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2097
    const-string v2, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2098
    const-string/jumbo v2, "subscription"

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected dispatchSncSms([[B)V
    .locals 2
    .parameter "pdus"

    .prologue
    .line 2113
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.snc.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2114
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2115
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2116
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "MMSHiddenConfig"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->LgeMmsHiddenConfig:Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->LgeMmsHiddenConfig:Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->destory(Landroid/content/Context;)V

    .line 463
    :cond_0
    return-void
.end method

.method protected enableAutoDCDisconnect(I)V
    .locals 0
    .parameter "timeOut"

    .prologue
    .line 2677
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 483
    const-string v0, "SMSDispatcher"

    const-string v1, "SMSDispatcher finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void
.end method

.method protected getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 2795
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 2796
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const v1, 0x1040401

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getDefaultSmsEncodingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2452
    const-string v0, "EUC-KR"

    return-object v0
.end method

.method protected getDisplayOfCauseCode(J)I
    .locals 5
    .parameter "causeCode"

    .prologue
    .line 1210
    const/16 v1, 0x33

    .line 1211
    .local v1, displayIndex:I
    const/4 v0, 0x0

    .local v0, arrayIndex:I
    :goto_0
    const/16 v3, 0x33

    if-ge v0, v3, :cond_5

    .line 1213
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->causeCodeArray:[J

    aget-wide v3, v3, v0

    cmp-long v3, p1, v3

    if-nez v3, :cond_4

    .line 1215
    if-ltz v0, :cond_0

    const/4 v3, 0x7

    if-gt v0, v3, :cond_0

    .line 1216
    const/4 v1, 0x1

    :goto_1
    move v2, v1

    .line 1229
    .end local v1           #displayIndex:I
    .local v2, displayIndex:I
    :goto_2
    return v2

    .line 1217
    .end local v2           #displayIndex:I
    .restart local v1       #displayIndex:I
    :cond_0
    const/16 v3, 0x1a

    if-ne v0, v3, :cond_1

    .line 1218
    const/4 v1, 0x2

    goto :goto_1

    .line 1219
    :cond_1
    const/16 v3, 0x1d

    if-ne v0, v3, :cond_2

    .line 1220
    const/4 v1, 0x3

    goto :goto_1

    .line 1221
    :cond_2
    const/16 v3, 0x23

    if-ne v0, v3, :cond_3

    .line 1222
    const/4 v1, 0x4

    goto :goto_1

    .line 1224
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1211
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    move v2, v1

    .line 1229
    .end local v1           #displayIndex:I
    .restart local v2       #displayIndex:I
    goto :goto_2
.end method

.method protected abstract getEncoding()I
.end method

.method protected abstract getFormat()Ljava/lang/String;
.end method

.method getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 3168
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 3169
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 3171
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getIccFileHandler3GPP()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 3176
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 3177
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler3GPP()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 3179
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getIccFileHandler3GPP2()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 3183
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 3184
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 3186
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3194
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleDCAbortconnect()V
    .locals 2

    .prologue
    .line 831
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.message.action.SMS_DC_ABORTCONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 832
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 833
    return-void
.end method

.method protected handleDCConnect()V
    .locals 2

    .prologue
    .line 821
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.message.action.SMS_DC_CONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 822
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 823
    return-void
.end method

.method protected handleDCDisconnect()V
    .locals 2

    .prologue
    .line 826
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.message.action.SMS_DC_DISCONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 827
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 828
    return-void
.end method

.method protected abstract handleGetIccSmsDone(Landroid/os/AsyncResult;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 504
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 766
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 510
    :pswitch_1
    const-string v12, "SMSDispatcher"

    const-string v13, "EVENT_NEW_SMS Received!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 515
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_1

    .line 516
    const-string v12, "SMSDispatcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception processing incoming SMS. Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 520
    :cond_1
    iget-object v8, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v8, Landroid/telephony/SmsMessage;

    .line 523
    .local v8, sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v13, "cdma_sms_cdg2"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 524
    const-string v12, "SMSDispatcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CDMA SMS CDG2 Test mode"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v15, "cdma_sms_cdg2"

    invoke-static {v14, v15}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/SmsStorageMonitor;->setStorageAvailableStatus(Z)V

    .line 526
    iget-object v9, v8, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    check-cast v9, Lcom/android/internal/telephony/cdma/SmsMessage;

    .line 527
    .local v9, smsCdma:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v10

    .line 529
    .local v10, teleService:I
    const/16 v12, 0x1002

    if-ne v10, v12, :cond_2

    .line 530
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getSMSInboxMessageCount()I

    move-result v12

    const/16 v13, 0x32

    if-lt v12, v13, :cond_2

    .line 531
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/SmsStorageMonitor;->setStorageAvailableStatus(Z)V

    .line 538
    .end local v9           #smsCdma:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v10           #teleService:I
    :cond_2
    :try_start_0
    iget-object v12, v8, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v6

    .line 539
    .local v6, result:I
    const/4 v12, -0x1

    if-eq v6, v12, :cond_0

    .line 542
    const/4 v12, 0x1

    if-ne v6, v12, :cond_3

    const/4 v5, 0x1

    .line 543
    .local v5, handled:Z
    :goto_1
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v12}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 545
    .end local v5           #handled:Z
    .end local v6           #result:I
    :catch_0
    move-exception v4

    .line 546
    .local v4, ex:Ljava/lang/RuntimeException;
    const-string v12, "SMSDispatcher"

    const-string v13, "Exception dispatching message"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/internal/telephony/SMSDispatcher;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 542
    .end local v4           #ex:Ljava/lang/RuntimeException;
    .restart local v6       #result:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 554
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v6           #result:I
    .end local v8           #sms:Landroid/telephony/SmsMessage;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 559
    :pswitch_3
    sget-object v12, Lcom/android/internal/telephony/SMSDispatcher;->mSendRetryRegistrant:Landroid/os/Registrant;

    if-eqz v12, :cond_0

    .line 560
    const-string v12, "SMSDispatcher"

    const-string/jumbo v13, "handleMessage EVENT_SEND_RETRY_WITHPOPUP"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->handleRetryByOption(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 568
    :pswitch_4
    const-string v12, "SMSDispatcher"

    const-string v13, "SMS retry.."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 581
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/app/AlertDialog;

    check-cast v12, Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->dismiss()V

    .line 582
    const/4 v12, 0x0

    move-object/from16 v0, p1

    iput-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 583
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 584
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersForRetry:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 585
    .local v11, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    sget v12, Lcom/android/internal/telephony/SMSDispatcher;->MAX_SEND_RETRIES:I

    iput v12, v11, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 587
    new-instance v2, Landroid/os/AsyncResult;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v2, v11, v12, v13}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 588
    .local v2, asyncres:Landroid/os/AsyncResult;
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v12, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v12}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 589
    .local v3, commandExcep:Lcom/android/internal/telephony/CommandException;
    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 593
    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 595
    const-string v12, "SMSDispatcher"

    const-string v13, "[SMS.MO.RETRY] Case EVENT_RETRY_ALERT_TIMEOUT, ok!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 598
    .end local v2           #asyncres:Landroid/os/AsyncResult;
    .end local v3           #commandExcep:Lcom/android/internal/telephony/CommandException;
    .end local v11           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_4
    const-string v12, "SMSDispatcher"

    const-string v13, "[SMS.MO.RETRY] Case EVENT_RETRY_ALERT_TIMEOUT, mSTrackersForRetry empty!!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 605
    :pswitch_6
    const-string v12, "SMSDispatcher"

    const-string v13, "[SMS.MO.RETRY] Case EVENT_SEND_RETRY_CONFIRMED_SMS called..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 607
    const-string v12, "SMSDispatcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " [SMS.MO.RETRY] mSTrackersForRetry.size()=["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersForRetry:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 610
    .local v7, sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v12, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 611
    const-string v12, "SMSDispatcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " [SMS.MO.RETRY] sTracker.mRetryCount=["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    sget-object v12, Lcom/android/internal/telephony/SMSDispatcher;->mSendRetryRegistrant:Landroid/os/Registrant;

    if-eqz v12, :cond_5

    .line 614
    const-string v12, "SMSDispatcher"

    const-string v13, " [SMS.MO.RETRY] SMS retry.."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    sget-object v12, Lcom/android/internal/telephony/SMSDispatcher;->mSendRetryRegistrant:Landroid/os/Registrant;

    new-instance v13, Landroid/os/AsyncResult;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v13, v14, v7, v15}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v12, v13}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 621
    :goto_2
    const/16 v12, 0xf

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 619
    :cond_5
    const-string v12, "SMSDispatcher"

    const-string v13, "[SMS.MO.RETRY] Case EVENT_SEND_RETRY_CONFIRMED_SMS, mSendRetryRegistrant null!!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 628
    .end local v7           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_7
    const-string v12, "SMSDispatcher"

    const-string v13, "[SMS.MO.RETRY] Case EVENT_STOP_RETRY_SENDING called..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 631
    const-string v12, "SMSDispatcher"

    const-string v13, "Case EVENT_STOP_RETRY_SENDING called..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersForRetry:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 634
    .restart local v7       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    sget v12, Lcom/android/internal/telephony/SMSDispatcher;->MAX_SEND_RETRIES:I

    iput v12, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 636
    new-instance v2, Landroid/os/AsyncResult;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v2, v7, v12, v13}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 637
    .restart local v2       #asyncres:Landroid/os/AsyncResult;
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v12, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v12}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 638
    .restart local v3       #commandExcep:Lcom/android/internal/telephony/CommandException;
    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 642
    const/4 v12, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 644
    const/16 v12, 0xf

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 650
    .end local v2           #asyncres:Landroid/os/AsyncResult;
    .end local v3           #commandExcep:Lcom/android/internal/telephony/CommandException;
    .end local v7           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    check-cast v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 654
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/app/AlertDialog;

    check-cast v12, Landroid/app/AlertDialog;

    invoke-virtual {v12}, Landroid/app/AlertDialog;->dismiss()V

    .line 655
    const/4 v12, 0x0

    move-object/from16 v0, p1

    iput-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 656
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 658
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 659
    .restart local v7       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v12, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v12, :cond_0

    .line 660
    iget-object v12, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 661
    .end local v7           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_1
    move-exception v4

    .line 662
    .local v4, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v12, "SMSDispatcher"

    const-string v13, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 671
    .end local v4           #ex:Landroid/app/PendingIntent$CanceledException;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 672
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 673
    .restart local v7       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {v7}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMultipart()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 674
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 678
    :goto_3
    const/4 v12, 0x6

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 676
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_3

    .line 683
    .end local v7           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 686
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 687
    .restart local v7       #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v12, v7, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Landroid/app/PendingIntent;->send(I)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    .line 691
    .end local v7           #sTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_4
    const/4 v12, 0x6

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/telephony/SMSDispatcher;->removeMessages(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 688
    :catch_2
    move-exception v4

    .line 689
    .restart local v4       #ex:Landroid/app/PendingIntent$CanceledException;
    const-string v12, "SMSDispatcher"

    const-string v13, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 696
    .end local v4           #ex:Landroid/app/PendingIntent$CanceledException;
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->updateIccAvailability()V

    goto/16 :goto_0

    .line 704
    :pswitch_d
    const/4 v12, 0x0

    const-string/jumbo v13, "seperate_processing_sms_uicc"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 705
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 706
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_7

    .line 707
    const-string v12, "SMSDispatcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception processing incoming SMS On Icc. Exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 710
    :cond_7
    iget-object v12, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    goto/16 :goto_0

    .line 712
    .end local v1           #ar:Landroid/os/AsyncResult;
    :cond_8
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->handleSmsOnIcc(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 722
    :pswitch_e
    const/4 v12, 0x0

    const-string/jumbo v13, "seperate_processing_sms_uicc"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 723
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->handleGetIccSmsDone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 729
    :pswitch_f
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 730
    .restart local v1       #ar:Landroid/os/AsyncResult;
    if-eqz v1, :cond_0

    .line 732
    iget-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_0

    .line 733
    const-string v12, "SMSDispatcher"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " MWI update on card failed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->storeVoiceMailCount()V

    goto/16 :goto_0

    .line 739
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_10
    const-string v12, "SMSDispatcher"

    const-string/jumbo v13, "receive EVENT_DC_CONNECTING"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 742
    :pswitch_11
    const-string v12, "SMSDispatcher"

    const-string/jumbo v13, "receive EVENT_DC_DISCONNECTING"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 745
    :pswitch_12
    const-string v12, "SMSDispatcher"

    const-string/jumbo v13, "receive EVENT_DC_CONNECT"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleDCConnect()V

    goto/16 :goto_0

    .line 750
    :pswitch_13
    const-string v12, "SMSDispatcher"

    const-string/jumbo v13, "receive EVENT_DC_DISCONNECT"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleDCDisconnect()V

    goto/16 :goto_0

    .line 755
    :pswitch_14
    const-string v12, "SMSDispatcher"

    const-string/jumbo v13, "receive EVENT_DC_ABORTCONNECT"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->handleDCAbortconnect()V

    goto/16 :goto_0

    .line 762
    :pswitch_15
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsMore(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method protected handleReachSentLimit(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .parameter "tracker"

    .prologue
    const/4 v5, 0x5

    .line 2727
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_1

    .line 2730
    :try_start_0
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    .line 2731
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2758
    :cond_0
    :goto_0
    return-void

    .line 2732
    :catch_0
    move-exception v2

    .line 2733
    .local v2, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "SMSDispatcher"

    const-string v5, "failed to send back RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2738
    .end local v2           #ex:Landroid/app/PendingIntent$CanceledException;
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 2740
    .local v3, r:Landroid/content/res/Resources;
    iget-object v4, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 2742
    .local v0, appName:Ljava/lang/String;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x1040402

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x1040403

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040404

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1040405

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SMSDispatcher;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 2752
    .local v1, d:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 2753
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 2755
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2756
    const/4 v4, 0x6

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1770

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method protected handleRetryByOption(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 5
    .parameter "tracker"

    .prologue
    .line 2763
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SMS.MO.RETRY] retry popup mSTrackersForRetry.size()=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_0

    .line 2766
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 2791
    :goto_0
    return-void

    .line 2770
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 2772
    .local v1, r:Landroid/content/res/Resources;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Message delivery failed"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Message failed would you like to retry?"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Yes"

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRetryListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "No"

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mRetryListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2783
    .local v0, d:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 2784
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2786
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSTrackersForRetry:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2787
    const-string v2, "SMSDispatcher"

    const-string v3, "[SMS.MO.RETRY] handleRetryByOption: mSTrackersForRetry add..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    const/16 v2, 0xf

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 25
    .parameter "ar"

    .prologue
    .line 857
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 858
    .local v20, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    .line 860
    .local v18, sentIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    .line 861
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/SmsResponse;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 866
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    if-nez v21, :cond_7

    .line 872
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    :cond_0
    if-eqz v18, :cond_2

    .line 879
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1

    .line 880
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 883
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v21, v0

    if-nez v21, :cond_5

    .line 884
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 885
    .local v17, sendNext:Landroid/content/Intent;
    const-string v21, "SendNextMsg"

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    .end local v17           #sendNext:Landroid/content/Intent;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSyncronousSending:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 896
    const-string v21, "SMSDispatcher"

    const-string/jumbo v22, "handleSendComplete()-mSyncronousSending== true"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->processNextPendingMessage()V

    .line 1205
    :cond_3
    :goto_2
    return-void

    .line 863
    :cond_4
    const-string v21, "SMSDispatcher"

    const-string v22, "SmsResponse was null "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 888
    :cond_5
    const/16 v21, -0x1

    :try_start_1
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 890
    :catch_0
    move-exception v21

    goto :goto_1

    .line 899
    :cond_6
    const-string v21, "SMSDispatcher"

    const-string/jumbo v22, "handleSendComplete()-mSyncronousSending== false"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 904
    :cond_7
    const-string v21, "SMSDispatcher"

    const-string v22, "SMS send complete.failed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/ServiceState;->getState()I

    move-result v19

    .line 910
    .local v19, ss:I
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v9

    .line 911
    .local v9, check_ims:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->isCdmaMo()Z

    move-result v8

    .line 912
    .local v8, check_cdmaMo:Z
    const-string v22, "SMSDispatcher"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "handleSendComplete()-error check : "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/CommandException;

    check-cast v21, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v21

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const-string v21, "SMSDispatcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "handleSendComplete()-IMS regi check : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const-string v21, "SMSDispatcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "handleSendComplete()-CDMA MO : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const-string v21, "SMSDispatcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "handleSendComplete()-retry : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const-string v21, "SMSDispatcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "handleSendComplete()-state : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    move/from16 v21, v0

    if-lez v21, :cond_8

    if-eqz v19, :cond_8

    .line 923
    const-string v21, "SMSDispatcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SMS send failed mImsRetry"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    sget v21, Lcom/android/internal/telephony/SMSDispatcher;->MAX_SEND_RETRIES:I

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 926
    const-string v21, "SMSDispatcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "handleSendComplete: Skipping retry:  isIms()="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " mRetryCount="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " mImsRetry="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " mMessageRef="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " SS= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/ServiceState;->getState()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "cdma_sms_cdg2"

    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_15

    .line 937
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v21

    if-nez v21, :cond_b

    if-eqz v19, :cond_b

    .line 938
    const-string v21, "SMSDispatcher"

    const-string v22, "SMS send failed handleNotInService"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSyncronousSending:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 941
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->dequeueFailedPendingMessage()V

    .line 944
    :cond_9
    invoke-static/range {v19 .. v20}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 1077
    :cond_a
    :goto_3
    const-string v21, "SMSDispatcher"

    const-string v22, "SMS send failed tracker.mSentIntent == null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 945
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/CommandException;

    check-cast v21, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_e

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    move/from16 v21, v0

    sget v22, Lcom/android/internal/telephony/SMSDispatcher;->MAX_SEND_RETRIES:I

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_e

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "vzw_sms_retry_scheme"

    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 958
    if-eqz v20, :cond_c

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->isMultipart()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 960
    const-string v21, "SMSDispatcher"

    const-string v22, "Send ReTry : This is Multipart Message"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 962
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 963
    .local v15, retryMsg:Landroid/os/Message;
    sget v21, Lcom/android/internal/telephony/SMSDispatcher;->mSendRetryDelay:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 964
    const-string v21, "SMSDispatcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Send EVENT_SEND_RETRY mRetryCount: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 967
    .end local v15           #retryMsg:Landroid/os/Message;
    :cond_c
    const-string v21, "SMSDispatcher"

    const-string v22, "Send ReTry : This is Not Multipart Message"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/16 v21, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 969
    .restart local v15       #retryMsg:Landroid/os/Message;
    const-wide/16 v21, 0x64

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 971
    const-string v21, "SMSDispatcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Send EVENT_SEND_RETRY_WITHPOPUP mRetryCount: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 974
    .end local v15           #retryMsg:Landroid/os/Message;
    :cond_d
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 975
    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 976
    .restart local v15       #retryMsg:Landroid/os/Message;
    sget v21, Lcom/android/internal/telephony/SMSDispatcher;->SEND_RETRY_DELAY:I

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3

    .line 979
    .end local v15           #retryMsg:Landroid/os/Message;
    :cond_e
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    .line 980
    const/4 v11, 0x1

    .line 981
    .local v11, error:I
    const-string v21, "SMSDispatcher"

    const-string v22, "SMS send failed RESULT_ERROR_GENERIC_FAILURE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/CommandException;

    check-cast v21, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 984
    const/4 v11, 0x6

    .line 988
    :cond_f
    :try_start_2
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 989
    .local v13, fillIn:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    if-eqz v21, :cond_11

    .line 990
    const-string v22, "errorCode"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/SmsResponse;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    move/from16 v21, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "cdma_cause_code_display"

    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 994
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/SmsResponse;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v4, v0

    .line 995
    .local v4, causeCode:J
    const-string v21, "SMSDispatcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " [SMS.MO.ERROR] causeCode : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const/4 v10, 0x0

    .line 998
    .local v10, displayCauseCode:I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v16

    .line 999
    .local v16, rsrc:Landroid/content/res/Resources;
    const-string v12, ""

    .line 1001
    .local v12, failReasonStr:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "(Cause Code : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1002
    .local v7, causeCodeStr:Ljava/lang/String;
    const v21, 0x1070013

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1004
    .local v6, causeCodeItems:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->getDisplayOfCauseCode(J)I

    move-result v10

    .line 1007
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->informTranslateCauseCode(J)I

    move-result v21

    const/16 v22, 0x33

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 1009
    const-string v21, "[SMS.MO.ERROR] CAUSECODE"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cause Code : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->informTranslateCauseCode(J)I

    move-result v23

    aget-object v23, v6, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_10
    packed-switch v10, :pswitch_data_0

    .line 1050
    const-string v21, "SMSDispatcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SMS.MO.ERROR] Invalid display CauseCode : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    .end local v4           #causeCode:J
    .end local v6           #causeCodeItems:[Ljava/lang/String;
    .end local v7           #causeCodeStr:Ljava/lang/String;
    .end local v10           #displayCauseCode:I
    .end local v12           #failReasonStr:Ljava/lang/String;
    .end local v16           #rsrc:Landroid/content/res/Resources;
    :cond_11
    :goto_4
    const-string v21, "SMSDispatcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SMS.MO.ERROR] handleSendComplete mRemainingMessages=("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_12

    .line 1058
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 1061
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v21, v0

    if-nez v21, :cond_13

    .line 1062
    const-string v21, "SMSDispatcher"

    const-string v22, "[SMS.MO.ERROR] handleSendComplete putExtra(SEND_NEXT_MSG_EXTRA)"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const-string v21, "SendNextMsg"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1066
    :cond_13
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11, v13}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1069
    .end local v13           #fillIn:Landroid/content/Intent;
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSyncronousSending:Z

    move/from16 v21, v0

    if-eqz v21, :cond_14

    .line 1070
    const-string v21, "SMSDispatcher"

    const-string/jumbo v22, "handleSendComplete()-mSyncronousSending== true"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->processNextPendingMessage()V

    goto/16 :goto_3

    .line 1015
    .restart local v4       #causeCode:J
    .restart local v6       #causeCodeItems:[Ljava/lang/String;
    .restart local v7       #causeCodeStr:Ljava/lang/String;
    .restart local v10       #displayCauseCode:I
    .restart local v12       #failReasonStr:Ljava/lang/String;
    .restart local v13       #fillIn:Landroid/content/Intent;
    .restart local v16       #rsrc:Landroid/content/res/Resources;
    :pswitch_0
    :try_start_3
    const-string v12, "General Problems"

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 1067
    .end local v4           #causeCode:J
    .end local v6           #causeCodeItems:[Ljava/lang/String;
    .end local v7           #causeCodeStr:Ljava/lang/String;
    .end local v10           #displayCauseCode:I
    .end local v12           #failReasonStr:Ljava/lang/String;
    .end local v13           #fillIn:Landroid/content/Intent;
    .end local v16           #rsrc:Landroid/content/res/Resources;
    :catch_1
    move-exception v21

    goto :goto_5

    .line 1021
    .restart local v4       #causeCode:J
    .restart local v6       #causeCodeItems:[Ljava/lang/String;
    .restart local v7       #causeCodeStr:Ljava/lang/String;
    .restart local v10       #displayCauseCode:I
    .restart local v12       #failReasonStr:Ljava/lang/String;
    .restart local v13       #fillIn:Landroid/content/Intent;
    .restart local v16       #rsrc:Landroid/content/res/Resources;
    :pswitch_1
    const-string v12, "Network Problems"

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 1027
    :pswitch_2
    const-string v12, "Service not available"

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 1033
    :pswitch_3
    const-string v12, "Service not supported"

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 1039
    :pswitch_4
    const-string v12, "Message too long for Network"

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 1045
    :pswitch_5
    const-string v12, "Message not sent"

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_4

    .line 1073
    .end local v4           #causeCode:J
    .end local v6           #causeCodeItems:[Ljava/lang/String;
    .end local v7           #causeCodeStr:Ljava/lang/String;
    .end local v10           #displayCauseCode:I
    .end local v12           #failReasonStr:Ljava/lang/String;
    .end local v13           #fillIn:Landroid/content/Intent;
    .end local v16           #rsrc:Landroid/content/res/Resources;
    :cond_14
    const-string v21, "SMSDispatcher"

    const-string/jumbo v22, "handleSendComplete()-mSyncronousSending== false"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1079
    .end local v11           #error:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "cdma_sms_cdg2"

    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 1080
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 1081
    const/4 v11, 0x1

    .line 1083
    .restart local v11       #error:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/CommandException;

    check-cast v21, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_16

    .line 1085
    const/4 v11, 0x6

    .line 1090
    :cond_16
    :try_start_4
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1091
    .restart local v13       #fillIn:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    if-eqz v21, :cond_17

    .line 1092
    const-string v22, "errorCode"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/SmsResponse;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    move/from16 v21, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1093
    const-string v21, "SMSDispatcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SMS.MO.CDG2] SMSDispatcher"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "cdma_sms_cdg2"

    invoke-static/range {v23 .. v24}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "cdma_sms_cdg2"

    invoke-static/range {v21 .. v22}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1a

    .line 1096
    const-string v21, "SMSDispatcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SMS.MO.CDG2] SMSDispatcher2"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "cdma_sms_cdg2"

    invoke-static/range {v23 .. v24}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/SmsResponse;

    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    .line 1098
    .local v4, causeCode:I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    .line 1099
    .local v14, r:Landroid/content/res/Resources;
    const-string v12, ""

    .line 1100
    .restart local v12       #failReasonStr:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cause Code : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1101
    .restart local v7       #causeCodeStr:Ljava/lang/String;
    const-string v21, "SMSDispatcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SMS.MO.CDG2] causeCode => "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    sparse-switch v4, :sswitch_data_0

    .line 1185
    .end local v4           #causeCode:I
    .end local v7           #causeCodeStr:Ljava/lang/String;
    .end local v12           #failReasonStr:Ljava/lang/String;
    .end local v14           #r:Landroid/content/res/Resources;
    :cond_17
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_18

    .line 1186
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 1189
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    move/from16 v21, v0

    if-nez v21, :cond_19

    .line 1190
    const-string v21, "SendNextMsg"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1193
    :cond_19
    const-string v21, "SMSDispatcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SMS.MO.CDG2]  CDG final error"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v11, v13}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_4
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1198
    .end local v13           #fillIn:Landroid/content/Intent;
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mSyncronousSending:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    .line 1199
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->processNextPendingMessage()V

    goto/16 :goto_2

    .line 1106
    .restart local v4       #causeCode:I
    .restart local v7       #causeCodeStr:Ljava/lang/String;
    .restart local v12       #failReasonStr:Ljava/lang/String;
    .restart local v13       #fillIn:Landroid/content/Intent;
    .restart local v14       #r:Landroid/content/res/Resources;
    :sswitch_0
    :try_start_5
    const-string v12, "Unknown Destination Address\n"

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 1196
    .end local v4           #causeCode:I
    .end local v7           #causeCodeStr:Ljava/lang/String;
    .end local v12           #failReasonStr:Ljava/lang/String;
    .end local v13           #fillIn:Landroid/content/Intent;
    .end local v14           #r:Landroid/content/res/Resources;
    :catch_2
    move-exception v21

    goto :goto_7

    .line 1110
    .restart local v4       #causeCode:I
    .restart local v7       #causeCodeStr:Ljava/lang/String;
    .restart local v12       #failReasonStr:Ljava/lang/String;
    .restart local v13       #fillIn:Landroid/content/Intent;
    .restart local v14       #r:Landroid/content/res/Resources;
    :sswitch_1
    const-string v12, "Mobile Station Originated SMS Denied\n"

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 1114
    :sswitch_2
    const-string v12, "Service not supported\n"

    .line 1115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 1124
    .end local v4           #causeCode:I
    .end local v7           #causeCodeStr:Ljava/lang/String;
    .end local v12           #failReasonStr:Ljava/lang/String;
    .end local v14           #r:Landroid/content/res/Resources;
    :cond_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/SmsResponse;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v4, v0

    .line 1125
    .local v4, causeCode:J
    const-string v21, "SMSDispatcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SMS.MO.CDG2] causeCode : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const/4 v10, 0x0

    .line 1127
    .restart local v10       #displayCauseCode:I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v16

    .line 1128
    .restart local v16       #rsrc:Landroid/content/res/Resources;
    const-string v12, ""

    .line 1130
    .restart local v12       #failReasonStr:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "(Cause Code : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ")"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1131
    .restart local v7       #causeCodeStr:Ljava/lang/String;
    const v21, 0x1070013

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1132
    .restart local v6       #causeCodeItems:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->getDisplayOfCauseCode(J)I

    move-result v10

    .line 1135
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->informTranslateCauseCode(J)I

    move-result v21

    const/16 v22, 0x33

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1b

    .line 1137
    const-string v21, "[SMS.MO.CDG2]  CAUSECODE"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Cause Code : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->informTranslateCauseCode(J)I

    move-result v23

    aget-object v23, v6, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_1b
    packed-switch v10, :pswitch_data_1

    .line 1178
    const-string v21, "SMSDispatcher"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[SMS.MO.CDG2] Invalid displayCauseCode : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1143
    :pswitch_6
    const-string v12, "General Problems"

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 1149
    :pswitch_7
    const-string v12, "Network Problems"

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 1155
    :pswitch_8
    const-string v12, "Service not available"

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 1161
    :pswitch_9
    const-string v12, "Service not supported"

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 1167
    :pswitch_a
    const-string v12, "Message too long for Network"

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 1173
    :pswitch_b
    const-string v12, "Message not sent"

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_6

    .line 1012
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1103
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x61 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch

    .line 1140
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected abstract handleSmsOnIcc(Landroid/os/AsyncResult;)V
.end method

.method protected informTranslateCauseCode(J)I
    .locals 4
    .parameter "causeCode"

    .prologue
    const/16 v1, 0x33

    .line 1234
    const/4 v0, 0x0

    .local v0, arrayIndex:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1236
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->causeCodeArray:[J

    aget-wide v2, v2, v0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 1241
    .end local v0           #arrayIndex:I
    :goto_1
    return v0

    .line 1234
    .restart local v0       #arrayIndex:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1241
    goto :goto_1
.end method

.method protected isCdmaMo()Z
    .locals 3

    .prologue
    .line 3138
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3140
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 3149
    :goto_0
    return v1

    .line 3140
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3144
    :cond_1
    const/4 v1, 0x0

    const-string v2, "control_uicc_storage"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3145
    const/4 v0, 0x1

    .line 3146
    .local v0, is3GPP2:Z
    invoke-static {}, Lcom/android/internal/telephony/SMS3GPPsmsformat;->is3GPP2()Z

    move-result v0

    move v1, v0

    .line 3147
    goto :goto_0

    .line 3149
    .end local v0           #is3GPP2:Z
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isImsSmsEncodingCdma()Z

    move-result v1

    goto :goto_0
.end method

.method public isEnableAnonymousSpam()Z
    .locals 1

    .prologue
    .line 2589
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->LgeMmsHiddenConfig:Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;

    if-nez v0, :cond_0

    .line 2590
    const/4 v0, 0x0

    .line 2591
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->LgeMmsHiddenConfig:Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->getAnonySpamSetState()Z

    move-result v0

    goto :goto_0
.end method

.method public isEnableSpam()Z
    .locals 1

    .prologue
    .line 2583
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->LgeMmsHiddenConfig:Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;

    if-nez v0, :cond_0

    .line 2584
    const/4 v0, 0x0

    .line 2585
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->LgeMmsHiddenConfig:Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;

    invoke-virtual {v0}, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->getSpamSetState()Z

    move-result v0

    goto :goto_0
.end method

.method protected processMessagePart([BLjava/lang/String;IIIJIZ)I
    .locals 11
    .parameter "pdu"
    .parameter "address"
    .parameter "referenceNumber"
    .parameter "sequenceNumber"
    .parameter "messageCount"
    .parameter "timestamp"
    .parameter "destPort"
    .parameter "isCdmaWapPush"

    .prologue
    .line 2007
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->processMessagePart([BLjava/lang/String;IIIJIZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected processMessagePart([BLjava/lang/String;IIIJIZLjava/lang/String;)I
    .locals 32
    .parameter "pdu"
    .parameter "address"
    .parameter "referenceNumber"
    .parameter "sequenceNumber"
    .parameter "messageCount"
    .parameter "timestamp"
    .parameter "destPort"
    .parameter "isCdmaWapPush"
    .parameter "serviceCenter"

    .prologue
    .line 1398
    const-string v3, "SMSDispatcher"

    const-string/jumbo v4, "processMessagePart() for CDMA WAP PUSH"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()- address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()- referenceNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()- sequenceNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()- messageCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()- destPort: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()- isCdmaWapPush: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()- serviceCenter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1410
    .local v13, firstTime:J
    const/16 v26, 0x0

    check-cast v26, [[B

    .line 1411
    .local v26, pdus:[[B
    const/4 v15, 0x0

    .line 1414
    .local v15, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    .line 1415
    .local v27, refNumber:Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    .line 1418
    .local v29, seqNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v6, "address=? AND reference_number=? AND sequence=?"

    const/4 v8, 0x3

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    aput-object v27, v7, v8

    const/4 v8, 0x2

    aput-object v29, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1423
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1424
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discarding duplicate message segment from address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " refNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seqNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1427
    .local v24, oldPduString:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v23

    .line 1428
    .local v23, oldPdu:[B
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1429
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: dup message segment PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is different from existing PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    :cond_0
    const/16 v28, 0x1

    .line 1513
    if-eqz v15, :cond_1

    .end local v23           #oldPdu:[B
    .end local v24           #oldPduString:Ljava/lang/String;
    .end local v27           #refNumber:Ljava/lang/String;
    .end local v29           #seqNumber:Ljava/lang/String;
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1581
    :cond_1
    :goto_1
    return v28

    .line 1434
    .restart local v27       #refNumber:Ljava/lang/String;
    .restart local v29       #seqNumber:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1437
    const-string v6, "address=? AND reference_number=?"

    .line 1438
    .local v6, where:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v7, v3

    const/4 v3, 0x1

    aput-object v27, v7, v3

    .line 1441
    .local v7, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vzw_ems_segment_timer"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->VZW_PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1448
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 1449
    .local v16, cursorCount:I
    add-int/lit8 v3, p5, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_8

    .line 1451
    new-instance v31, Landroid/content/ContentValues;

    invoke-direct/range {v31 .. v31}, Landroid/content/ContentValues;-><init>()V

    .line 1452
    .local v31, values:Landroid/content/ContentValues;
    const-string v3, "date"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1453
    const-string/jumbo v3, "pdu"

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    const-string v3, "address"

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    const-string/jumbo v3, "reference_number"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1456
    const-string v3, "count"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1457
    const-string/jumbo v3, "sequence"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1458
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_3

    .line 1459
    const-string v3, "destination_port"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1462
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vzw_ems_segment_timer"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1463
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 1464
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1465
    const-string/jumbo v3, "time"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 1466
    .local v30, timeColumn:I
    move/from16 v0, v30

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1469
    .end local v30           #timeColumn:I
    :cond_4
    const-string/jumbo v3, "time"

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v13, v14}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1472
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v31

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vzw_ems_segment_timer"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1475
    new-instance v3, Ljava/lang/Thread;

    new-instance v8, Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p5

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;IIJ)V

    invoke-direct {v3, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1478
    :cond_6
    const/16 v28, 0x1

    .line 1513
    if-eqz v15, :cond_1

    goto/16 :goto_0

    .line 1444
    .end local v16           #cursorCount:I
    .end local v31           #values:Landroid/content/ContentValues;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_2

    .line 1482
    .restart local v16       #cursorCount:I
    :cond_8
    move/from16 v0, p5

    new-array v0, v0, [[B

    move-object/from16 v26, v0

    .line 1483
    const/16 v21, 0x0

    .local v21, i:I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_b

    .line 1484
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 1485
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1487
    .local v17, cursorSequence:I
    if-nez p9, :cond_9

    .line 1488
    add-int/lit8 v17, v17, -0x1

    .line 1490
    :cond_9
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v26, v17

    .line 1495
    if-nez v17, :cond_a

    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1496
    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p8

    .line 1483
    :cond_a
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 1501
    .end local v17           #cursorSequence:I
    :cond_b
    if-eqz p9, :cond_d

    .line 1502
    aput-object p1, v26, p4

    .line 1508
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1513
    if-eqz v15, :cond_c

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1517
    :cond_c
    if-eqz p9, :cond_11

    .line 1519
    new-instance v25, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v25 .. v25}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1520
    .local v25, output:Ljava/io/ByteArrayOutputStream;
    const/16 v21, 0x0

    :goto_5
    move/from16 v0, v21

    move/from16 v1, p5

    if-ge v0, v1, :cond_f

    .line 1522
    aget-object v3, v26, v21

    const/4 v4, 0x0

    aget-object v5, v26, v21

    array-length v5, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1520
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 1504
    .end local v25           #output:Ljava/io/ByteArrayOutputStream;
    :cond_d
    add-int/lit8 v3, p4, -0x1

    :try_start_2
    aput-object p1, v26, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 1509
    .end local v6           #where:Ljava/lang/String;
    .end local v7           #whereArgs:[Ljava/lang/String;
    .end local v16           #cursorCount:I
    .end local v21           #i:I
    .end local v27           #refNumber:Ljava/lang/String;
    .end local v29           #seqNumber:Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 1510
    .local v20, e:Landroid/database/SQLException;
    :try_start_3
    const-string v3, "SMSDispatcher"

    const-string v4, "Can\'t access multipart SMS database"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1511
    const/16 v28, 0x2

    .line 1513
    if-eqz v15, :cond_1

    goto/16 :goto_0

    .end local v20           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_e

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v3

    .line 1524
    .restart local v6       #where:Ljava/lang/String;
    .restart local v7       #whereArgs:[Ljava/lang/String;
    .restart local v16       #cursorCount:I
    .restart local v21       #i:I
    .restart local v25       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v27       #refNumber:Ljava/lang/String;
    .restart local v29       #seqNumber:Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v25 .. v25}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    .line 1527
    .local v19, datagram:[B
    const/16 v3, 0xb84

    move/from16 v0, p8

    if-ne v0, v3, :cond_10

    .line 1529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object/from16 v4, v19
    
    move-object/from16 v0, p10

    move-object/from16 v1, p2

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;Ljava/lang/String;)I

    move-result v28

    goto/16 :goto_1

    .line 1531
    :cond_10
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v26, v0

    .line 1532
    const/4 v3, 0x0

    aput-object v19, v26, v3

    .line 1534
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 1535
    const/16 v28, -0x1

    goto/16 :goto_1

    .line 1540
    .end local v19           #datagram:[B
    .end local v25           #output:Ljava/io/ByteArrayOutputStream;
    :cond_11
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_16

    .line 1542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "OperatorMessage"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    .line 1543
    const/16 v28, 0x5

    .line 1544
    .local v28, result:I
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->processOperatorMessage([[BLcom/android/internal/telephony/SmsMessageBase;ZZ)I

    move-result v28

    .line 1545
    const/4 v3, 0x5

    move/from16 v0, v28

    if-ne v0, v3, :cond_1

    .line 1550
    .end local v28           #result:I
    :cond_12
    const/16 v3, 0xb84

    move/from16 v0, p8

    if-ne v0, v3, :cond_15

    .line 1552
    new-instance v25, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v25 .. v25}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1553
    .restart local v25       #output:Ljava/io/ByteArrayOutputStream;
    const/16 v21, 0x0

    :goto_6
    move/from16 v0, v21

    move/from16 v1, p5

    if-ge v0, v1, :cond_13

    .line 1554
    aget-object v3, v26, v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v22

    .line 1555
    .local v22, msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v18

    .line 1556
    .local v18, data:[B
    const/4 v3, 0x0

    move-object/from16 v0, v18

    array-length v4, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1553
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 1559
    .end local v18           #data:[B
    .end local v22           #msg:Landroid/telephony/SmsMessage;
    :cond_13
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_WAPSERVICE:Z

    if-eqz v3, :cond_14

    .line 1560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v25 .. v25}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, p10

    move-object/from16 v1, p2

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;Ljava/lang/String;)I

    move-result v28

    goto/16 :goto_1

    .line 1563
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v25 .. v25}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v28

    goto/16 :goto_1

    .line 1566
    .end local v25           #output:Ljava/io/ByteArrayOutputStream;
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 1581
    :goto_7
    const/16 v28, -0x1

    goto/16 :goto_1

    .line 1570
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "OperatorMessage"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    .line 1571
    const/16 v28, 0x5

    .line 1572
    .restart local v28       #result:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->processOperatorMessage([[BLcom/android/internal/telephony/SmsMessageBase;ZZ)I

    move-result v28

    .line 1573
    const/4 v3, 0x5

    move/from16 v0, v28

    if-ne v0, v3, :cond_1

    .line 1579
    .end local v28           #result:I
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_7
.end method

.method protected processMessagePart([BLjava/lang/String;IIIJIZLjava/lang/String;I)I
    .locals 37
    .parameter "pdu"
    .parameter "address"
    .parameter "referenceNumber"
    .parameter "sequenceNumber"
    .parameter "messageCount"
    .parameter "timestamp"
    .parameter "destPort"
    .parameter "isCdmaWapPush"
    .parameter "serviceCenter"
    .parameter "iccIndex"

    .prologue
    .line 1589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 1591
    .local v13, firstTime:J
    const/16 v31, 0x0

    check-cast v31, [[B

    .line 1592
    .local v31, pdus:[[B
    const/4 v15, 0x0

    .line 1594
    .local v15, cursor:Landroid/database/Cursor;
    const/16 v23, 0x0

    .line 1595
    .local v23, iccSring:Ljava/lang/String;
    const/16 v25, 0x0

    .line 1596
    .local v25, indexOnIcc:I
    const-string v3, "SMSDispatcher"

    const-string/jumbo v4, "processMessagePart"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()- referenceNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()- sequenceNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()- messageCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()- destPort: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()- isCdmaWapPush: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()- serviceCenter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()- iccIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    const/4 v3, 0x0

    const-string/jumbo v4, "seperate_processing_sms_uicc"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1605
    move/from16 v25, p11

    .line 1610
    :cond_0
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    .line 1611
    .local v32, refNumber:Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    .line 1614
    .local v34, seqNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v6, "address=? AND reference_number=? AND sequence=?"

    const/4 v8, 0x3

    new-array v7, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    aput-object v32, v7, v8

    const/4 v8, 0x2

    aput-object v34, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1619
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1620
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discarding duplicate message segment from address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " refNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seqNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1623
    .local v28, oldPduString:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v27

    .line 1624
    .local v27, oldPdu:[B
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1625
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: dup message segment PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is different from existing PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1628
    :cond_1
    const/16 v33, 0x1

    .line 1742
    if-eqz v15, :cond_2

    .end local v27           #oldPdu:[B
    .end local v28           #oldPduString:Ljava/lang/String;
    .end local v32           #refNumber:Ljava/lang/String;
    .end local v34           #seqNumber:Ljava/lang/String;
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1815
    :cond_2
    :goto_1
    return v33

    .line 1630
    .restart local v32       #refNumber:Ljava/lang/String;
    .restart local v34       #seqNumber:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1633
    const-string v6, "address=? AND reference_number=?"

    .line 1634
    .local v6, where:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v7, v3

    const/4 v3, 0x1

    aput-object v32, v7, v3

    .line 1637
    .local v7, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vzw_ems_segment_timer"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->VZW_PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1644
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 1645
    .local v16, cursorCount:I
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()-cursorCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    add-int/lit8 v3, p5, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_a

    .line 1648
    new-instance v36, Landroid/content/ContentValues;

    invoke-direct/range {v36 .. v36}, Landroid/content/ContentValues;-><init>()V

    .line 1649
    .local v36, values:Landroid/content/ContentValues;
    const-string v3, "date"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1650
    const-string/jumbo v3, "pdu"

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    const-string v3, "address"

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    const-string/jumbo v3, "reference_number"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1653
    const-string v3, "count"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1654
    const-string/jumbo v3, "sequence"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1655
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_4

    .line 1656
    const-string v3, "destination_port"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1658
    :cond_4
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()-timestamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p6

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()-address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()-referenceNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()-messageCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processMessagePart()-sequenceNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vzw_ems_segment_timer"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1665
    const-string v3, "SMSDispatcher"

    const-string/jumbo v4, "processMessagePart()-KEY_VZW_EMS_SEGMENT_TIMER MODE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    .line 1667
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1668
    const-string/jumbo v3, "time"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 1669
    .local v35, timeColumn:I
    move/from16 v0, v35

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1672
    .end local v35           #timeColumn:I
    :cond_5
    const-string/jumbo v3, "time"

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v13, v14}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1675
    :cond_6
    const/4 v3, 0x0

    const-string/jumbo v4, "seperate_processing_sms_uicc"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1676
    if-lez v25, :cond_7

    .line 1677
    const-string/jumbo v3, "icc_index"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1680
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v36

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vzw_ems_segment_timer"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1683
    new-instance v3, Ljava/lang/Thread;

    new-instance v8, Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p5

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;IIJ)V

    invoke-direct {v3, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1686
    :cond_8
    const/16 v33, 0x1

    .line 1742
    if-eqz v15, :cond_2

    goto/16 :goto_0

    .line 1640
    .end local v16           #cursorCount:I
    .end local v36           #values:Landroid/content/ContentValues;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    goto/16 :goto_2

    .line 1689
    .restart local v16       #cursorCount:I
    :cond_a
    const/4 v3, 0x0

    const-string/jumbo v4, "seperate_processing_sms_uicc"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1690
    const-string/jumbo v3, "icc_index"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 1691
    .local v22, iccColumn:I
    const-string/jumbo v3, "pdu"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 1692
    .local v30, pduColumn:I
    new-instance v24, Ljava/lang/String;

    invoke-direct/range {v24 .. v24}, Ljava/lang/String;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1693
    .end local v23           #iccSring:Ljava/lang/String;
    .local v24, iccSring:Ljava/lang/String;
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    if-eqz v3, :cond_1f

    move-object/from16 v23, v24

    .line 1695
    .end local v24           #iccSring:Ljava/lang/String;
    .restart local v23       #iccSring:Ljava/lang/String;
    :cond_b
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v30

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1696
    const/16 v33, 0x1

    .line 1742
    if-eqz v15, :cond_2

    goto/16 :goto_0

    .line 1698
    :cond_c
    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_d

    .line 1699
    move/from16 v0, v22

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1700
    const-string v3, ","

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1702
    :cond_d
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1704
    :goto_3
    const/4 v3, -0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1705
    if-lez v25, :cond_e

    .line 1706
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1711
    .end local v22           #iccColumn:I
    .end local v30           #pduColumn:I
    :cond_e
    move/from16 v0, p5

    new-array v0, v0, [[B

    move-object/from16 v31, v0

    .line 1712
    const/16 v21, 0x0

    .local v21, i:I
    :goto_4
    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_11

    .line 1713
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    .line 1714
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1716
    .local v17, cursorSequence:I
    if-nez p9, :cond_f

    .line 1717
    add-int/lit8 v17, v17, -0x1

    .line 1719
    :cond_f
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v31, v17

    .line 1724
    if-nez v17, :cond_10

    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1725
    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p8

    .line 1712
    :cond_10
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 1730
    .end local v17           #cursorSequence:I
    :cond_11
    if-eqz p9, :cond_13

    .line 1731
    aput-object p1, v31, p4

    .line 1737
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1742
    if-eqz v15, :cond_12

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1746
    :cond_12
    if-eqz p9, :cond_17

    .line 1748
    new-instance v29, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v29 .. v29}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1749
    .local v29, output:Ljava/io/ByteArrayOutputStream;
    const/16 v21, 0x0

    :goto_6
    move/from16 v0, v21

    move/from16 v1, p5

    if-ge v0, v1, :cond_15

    .line 1751
    aget-object v3, v31, v21

    const/4 v4, 0x0

    aget-object v5, v31, v21

    array-length v5, v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1749
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 1733
    .end local v29           #output:Ljava/io/ByteArrayOutputStream;
    :cond_13
    add-int/lit8 v3, p4, -0x1

    :try_start_4
    aput-object p1, v31, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 1738
    .end local v6           #where:Ljava/lang/String;
    .end local v7           #whereArgs:[Ljava/lang/String;
    .end local v16           #cursorCount:I
    .end local v21           #i:I
    .end local v32           #refNumber:Ljava/lang/String;
    .end local v34           #seqNumber:Ljava/lang/String;
    :catch_0
    move-exception v20

    .line 1739
    .local v20, e:Landroid/database/SQLException;
    :goto_7
    :try_start_5
    const-string v3, "SMSDispatcher"

    const-string v4, "Can\'t access multipart SMS database"

    move-object/from16 v0, v20

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1740
    const/16 v33, 0x2

    .line 1742
    if-eqz v15, :cond_2

    goto/16 :goto_0

    .end local v20           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    :goto_8
    if-eqz v15, :cond_14

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_14
    throw v3

    .line 1753
    .restart local v6       #where:Ljava/lang/String;
    .restart local v7       #whereArgs:[Ljava/lang/String;
    .restart local v16       #cursorCount:I
    .restart local v21       #i:I
    .restart local v29       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v32       #refNumber:Ljava/lang/String;
    .restart local v34       #seqNumber:Ljava/lang/String;
    :cond_15
    invoke-virtual/range {v29 .. v29}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    .line 1756
    .local v19, datagram:[B
    const/16 v3, 0xb84

    move/from16 v0, p8

    if-ne v0, v3, :cond_16

    .line 1758
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v33

    goto/16 :goto_1

    .line 1760
    :cond_16
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v31, v0

    .line 1761
    const/4 v3, 0x0

    aput-object v19, v31, v3

    .line 1763
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 1764
    const/16 v33, -0x1

    goto/16 :goto_1

    .line 1769
    .end local v19           #datagram:[B
    .end local v29           #output:Ljava/io/ByteArrayOutputStream;
    :cond_17
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_1c

    .line 1771
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "OperatorMessage"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_18

    .line 1772
    const/16 v33, 0x5

    .line 1773
    .local v33, result:I
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->processOperatorMessage([[BLcom/android/internal/telephony/SmsMessageBase;ZZ)I

    move-result v33

    .line 1774
    const/4 v3, 0x5

    move/from16 v0, v33

    if-ne v0, v3, :cond_2

    .line 1779
    .end local v33           #result:I
    :cond_18
    const/16 v3, 0xb84

    move/from16 v0, p8

    if-ne v0, v3, :cond_1b

    .line 1781
    new-instance v29, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v29 .. v29}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1782
    .restart local v29       #output:Ljava/io/ByteArrayOutputStream;
    const/16 v21, 0x0

    :goto_9
    move/from16 v0, v21

    move/from16 v1, p5

    if-ge v0, v1, :cond_19

    .line 1783
    aget-object v3, v31, v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v26

    .line 1784
    .local v26, msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v26 .. v26}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v18

    .line 1785
    .local v18, data:[B
    const/4 v3, 0x0

    move-object/from16 v0, v18

    array-length v4, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1782
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 1788
    .end local v18           #data:[B
    .end local v26           #msg:Landroid/telephony/SmsMessage;
    :cond_19
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_WAPSERVICE:Z

    if-eqz v3, :cond_1a

    .line 1789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v29 .. v29}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, p10

    move-object/from16 v1, p2

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;Ljava/lang/String;)I

    move-result v33

    goto/16 :goto_1

    .line 1792
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v29 .. v29}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v33

    goto/16 :goto_1

    .line 1795
    .end local v29           #output:Ljava/io/ByteArrayOutputStream;
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 1815
    :goto_a
    const/16 v33, -0x1

    goto/16 :goto_1

    .line 1800
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "OperatorMessage"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    .line 1801
    const/16 v33, 0x5

    .line 1802
    .restart local v33       #result:I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->processOperatorMessage([[BLcom/android/internal/telephony/SmsMessageBase;ZZ)I

    move-result v33

    .line 1803
    const/4 v3, 0x5

    move/from16 v0, v33

    if-ne v0, v3, :cond_2

    .line 1808
    .end local v33           #result:I
    :cond_1d
    const/4 v3, 0x0

    const-string/jumbo v4, "seperate_processing_sms_uicc"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1809
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[BLjava/lang/String;)V

    goto :goto_a

    .line 1812
    :cond_1e
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_a

    .line 1742
    .end local v21           #i:I
    .end local v23           #iccSring:Ljava/lang/String;
    .restart local v22       #iccColumn:I
    .restart local v24       #iccSring:Ljava/lang/String;
    .restart local v30       #pduColumn:I
    :catchall_1
    move-exception v3

    move-object/from16 v23, v24

    .end local v24           #iccSring:Ljava/lang/String;
    .restart local v23       #iccSring:Ljava/lang/String;
    goto/16 :goto_8

    .line 1738
    .end local v23           #iccSring:Ljava/lang/String;
    .restart local v24       #iccSring:Ljava/lang/String;
    :catch_1
    move-exception v20

    move-object/from16 v23, v24

    .end local v24           #iccSring:Ljava/lang/String;
    .restart local v23       #iccSring:Ljava/lang/String;
    goto/16 :goto_7

    .end local v23           #iccSring:Ljava/lang/String;
    .restart local v24       #iccSring:Ljava/lang/String;
    :cond_1f
    move-object/from16 v23, v24

    .end local v24           #iccSring:Ljava/lang/String;
    .restart local v23       #iccSring:Ljava/lang/String;
    goto/16 :goto_3
.end method

.method protected processMessagePartKRTestBed([BLjava/lang/String;IIIJIZLjava/lang/String;)I
    .locals 32
    .parameter "pdu"
    .parameter "address"
    .parameter "referenceNumber"
    .parameter "sequenceNumber"
    .parameter "messageCount"
    .parameter "timestamp"
    .parameter "destPort"
    .parameter "isCdmaWapPush"
    .parameter "serviceCenter"

    .prologue
    .line 1825
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1828
    .local v12, firstTime:J
    const/16 v25, 0x0

    check-cast v25, [[B

    .line 1829
    .local v25, pdus:[[B
    const/4 v14, 0x0

    .line 1832
    .local v14, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    .line 1833
    .local v26, refNumber:Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    .line 1836
    .local v27, seqNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v6, "address=? AND reference_number=? AND sequence=?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    aput-object v26, v7, v8

    const/4 v8, 0x2

    aput-object v27, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1841
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1842
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discarding duplicate message segment from address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " refNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seqNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1845
    .local v23, oldPduString:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v22

    .line 1846
    .local v22, oldPdu:[B
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1847
    const-string v3, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: dup message segment PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is different from existing PDU of length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1850
    :cond_0
    const/4 v3, 0x1

    .line 1949
    if-eqz v14, :cond_1

    .end local v22           #oldPdu:[B
    .end local v23           #oldPduString:Ljava/lang/String;
    .end local v26           #refNumber:Ljava/lang/String;
    .end local v27           #seqNumber:Ljava/lang/String;
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2000
    :cond_1
    :goto_1
    return v3

    .line 1852
    .restart local v26       #refNumber:Ljava/lang/String;
    .restart local v27       #seqNumber:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1856
    const-string v6, ""

    .line 1857
    .local v6, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "cdma_kr_testbed_mms_receive"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p9, :cond_7

    .line 1858
    new-instance v31, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reference_number ="

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1859
    .local v31, whereTemp:Ljava/lang/StringBuilder;
    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1865
    .end local v31           #whereTemp:Ljava/lang/StringBuilder;
    :goto_2
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/4 v3, 0x0

    aput-object p2, v30, v3

    const/4 v3, 0x1

    aput-object v26, v30, v3

    .line 1866
    .local v30, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "cdma_kr_testbed_mms_receive"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz p9, :cond_8

    .line 1867
    const-string v3, "SMSDispatcher"

    const-string/jumbo v4, "processMessagePart() - KEY_CDMA_MMS_RECEIVE and CDMA WAP PUSH - RawUri query"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->VZW_PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1880
    :goto_3
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 1881
    .local v15, cursorCount:I
    add-int/lit8 v3, p5, -0x1

    if-eq v15, v3, :cond_a

    .line 1883
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 1884
    .local v29, values:Landroid/content/ContentValues;
    const-string v3, "date"

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1885
    const-string/jumbo v3, "pdu"

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    const-string v3, "address"

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    const-string/jumbo v3, "reference_number"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1888
    const-string v3, "count"

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1889
    const-string/jumbo v3, "sequence"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1890
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_3

    .line 1891
    const-string v3, "destination_port"

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1894
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vzw_ems_segment_timer"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1895
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4

    .line 1896
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1897
    const-string/jumbo v3, "time"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1898
    .local v28, timeColumn:I
    move/from16 v0, v28

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1901
    .end local v28           #timeColumn:I
    :cond_4
    const-string/jumbo v3, "time"

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v12, v13}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1904
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v29

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1906
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vzw_ems_segment_timer"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1907
    new-instance v3, Ljava/lang/Thread;

    new-instance v7, Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p5

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/telephony/SMSDispatcher$EMSSegmentExpirationRunnable;-><init>(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;IIJ)V

    invoke-direct {v3, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1910
    :cond_6
    const/4 v3, 0x1

    .line 1949
    if-eqz v14, :cond_1

    goto/16 :goto_0

    .line 1862
    .end local v15           #cursorCount:I
    .end local v29           #values:Landroid/content/ContentValues;
    .end local v30           #whereArgs:[Ljava/lang/String;
    :cond_7
    const-string v6, "address=? AND reference_number=?"

    goto/16 :goto_2

    .line 1871
    .restart local v30       #whereArgs:[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vzw_ems_segment_timer"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1872
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->VZW_PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v7, v30

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto/16 :goto_3

    .line 1874
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v7, v30

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    goto/16 :goto_3

    .line 1914
    .restart local v15       #cursorCount:I
    :cond_a
    move/from16 v0, p5

    new-array v0, v0, [[B

    move-object/from16 v25, v0

    .line 1915
    const/16 v20, 0x0

    .local v20, i:I
    :goto_4
    move/from16 v0, v20

    if-ge v0, v15, :cond_d

    .line 1916
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 1917
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1919
    .local v16, cursorSequence:I
    if-nez p9, :cond_b

    .line 1920
    add-int/lit8 v16, v16, -0x1

    .line 1922
    :cond_b
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v25, v16

    .line 1927
    if-nez v16, :cond_c

    const/4 v3, 0x2

    invoke-interface {v14, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1928
    const/4 v3, 0x2

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p8

    .line 1915
    :cond_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 1933
    .end local v16           #cursorSequence:I
    :cond_d
    if-eqz p9, :cond_f

    .line 1934
    aput-object p1, v25, p4

    .line 1940
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const-string v4, "cdma_kr_testbed_mms_receive"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    if-eqz p9, :cond_10

    .line 1941
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1949
    :goto_6
    if-eqz v14, :cond_e

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1953
    :cond_e
    if-eqz p9, :cond_14

    .line 1955
    new-instance v24, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1956
    .local v24, output:Ljava/io/ByteArrayOutputStream;
    const/16 v20, 0x0

    :goto_7
    move/from16 v0, v20

    move/from16 v1, p5

    if-ge v0, v1, :cond_12

    .line 1958
    aget-object v3, v25, v20

    const/4 v4, 0x0

    aget-object v5, v25, v20

    array-length v5, v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1956
    add-int/lit8 v20, v20, 0x1

    goto :goto_7

    .line 1936
    .end local v24           #output:Ljava/io/ByteArrayOutputStream;
    :cond_f
    add-int/lit8 v3, p4, -0x1

    :try_start_2
    aput-object p1, v25, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 1945
    .end local v6           #where:Ljava/lang/String;
    .end local v15           #cursorCount:I
    .end local v20           #i:I
    .end local v26           #refNumber:Ljava/lang/String;
    .end local v27           #seqNumber:Ljava/lang/String;
    .end local v30           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v19

    .line 1946
    .local v19, e:Landroid/database/SQLException;
    :try_start_3
    const-string v3, "SMSDispatcher"

    const-string v4, "Can\'t access multipart SMS database"

    move-object/from16 v0, v19

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1947
    const/4 v3, 0x2

    .line 1949
    if-eqz v14, :cond_1

    goto/16 :goto_0

    .line 1943
    .end local v19           #e:Landroid/database/SQLException;
    .restart local v6       #where:Ljava/lang/String;
    .restart local v15       #cursorCount:I
    .restart local v20       #i:I
    .restart local v26       #refNumber:Ljava/lang/String;
    .restart local v27       #seqNumber:Ljava/lang/String;
    .restart local v30       #whereArgs:[Ljava/lang/String;
    :cond_10
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v30

    invoke-virtual {v3, v4, v6, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6

    .line 1949
    .end local v6           #where:Ljava/lang/String;
    .end local v15           #cursorCount:I
    .end local v20           #i:I
    .end local v26           #refNumber:Ljava/lang/String;
    .end local v27           #seqNumber:Ljava/lang/String;
    .end local v30           #whereArgs:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v14, :cond_11

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v3

    .line 1960
    .restart local v6       #where:Ljava/lang/String;
    .restart local v15       #cursorCount:I
    .restart local v20       #i:I
    .restart local v24       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v26       #refNumber:Ljava/lang/String;
    .restart local v27       #seqNumber:Ljava/lang/String;
    .restart local v30       #whereArgs:[Ljava/lang/String;
    :cond_12
    invoke-virtual/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v18

    .line 1963
    .local v18, datagram:[B
    const/16 v3, 0xb84

    move/from16 v0, p8

    if-ne v0, v3, :cond_13

    .line 1965
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v3

    goto/16 :goto_1

    .line 1967
    :cond_13
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v25, v0

    .line 1968
    const/4 v3, 0x0

    aput-object v18, v25, v3

    .line 1970
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 1971
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 1976
    .end local v18           #datagram:[B
    .end local v24           #output:Ljava/io/ByteArrayOutputStream;
    :cond_14
    const/4 v3, -0x1

    move/from16 v0, p8

    if-eq v0, v3, :cond_18

    .line 1977
    const/16 v3, 0xb84

    move/from16 v0, p8

    if-ne v0, v3, :cond_17

    .line 1979
    new-instance v24, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1980
    .restart local v24       #output:Ljava/io/ByteArrayOutputStream;
    const/16 v20, 0x0

    :goto_8
    move/from16 v0, v20

    move/from16 v1, p5

    if-ge v0, v1, :cond_15

    .line 1981
    aget-object v3, v25, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/SMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v21

    .line 1982
    .local v21, msg:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v17

    .line 1983
    .local v17, data:[B
    const/4 v3, 0x0

    move-object/from16 v0, v17

    array-length v4, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1980
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 1986
    .end local v17           #data:[B
    .end local v21           #msg:Landroid/telephony/SmsMessage;
    :cond_15
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_WAPSERVICE:Z

    if-eqz v3, :cond_16

    .line 1987
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, p10

    move-object/from16 v1, p2

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    .line 1990
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v3

    goto/16 :goto_1

    .line 1993
    .end local v24           #output:Ljava/io/ByteArrayOutputStream;
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 2000
    :goto_9
    const/4 v3, -0x1

    goto/16 :goto_1

    .line 1998
    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatchPdus([[B)V

    goto :goto_9
.end method

.method protected abstract processOperatorMessage([[BLcom/android/internal/telephony/SmsMessageBase;ZZ)I
.end method

.method protected abstract sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected sendEmailoverMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 16
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2501
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v1

    and-int/lit16 v15, v1, 0xff

    .line 2502
    .local v15, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2503
    .local v14, msgCount:I
    const/4 v6, 0x0

    .line 2505
    .local v6, encoding:I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 2507
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMSDispatcher : sendEmailoverMultipartText() : msgCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    new-array v12, v14, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .line 2509
    .local v12, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v14, :cond_2

    .line 2510
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v11

    .line 2511
    .local v11, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendEmailoverMultipartText() : i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "details = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    iget v1, v11, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v6, v1, :cond_1

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    if-ne v6, v1, :cond_1

    .line 2515
    :cond_0
    iget v6, v11, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 2517
    :cond_1
    aput-object v11, v12, v13

    .line 2509
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2520
    .end local v11           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_7

    .line 2521
    new-instance v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v10}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 2522
    .local v10, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v15, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 2523
    add-int/lit8 v1, v13, 0x1

    iput v1, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 2524
    iput v14, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 2531
    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 2532
    new-instance v5, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 2533
    .local v5, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v10, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 2536
    const/4 v1, 0x1

    if-ne v6, v1, :cond_3

    .line 2537
    aget-object v1, v12, v13

    iget v1, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 2538
    aget-object v1, v12, v13

    iget v1, v1, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 2541
    :cond_3
    const/4 v7, 0x0

    .line 2542
    .local v7, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v13, :cond_4

    .line 2543
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 2546
    .restart local v7       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v8, 0x0

    .line 2547
    .local v8, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v13, :cond_5

    .line 2548
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 2551
    .restart local v8       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v1, v14, -0x1

    if-ne v13, v1, :cond_6

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/SMSDispatcher;->sendNewSubmitPduforEmailoverSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 2520
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 2551
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 2555
    .end local v5           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v10           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_7
    return-void
.end method

.method protected abstract sendEmailoverText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2250
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->getNextConcatenatedRef()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v19, v0

    .line 2251
    .local v19, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 2252
    .local v18, msgCount:I
    const/4 v7, 0x0

    .line 2254
    .local v7, encoding:I
    const/4 v15, 0x0

    .line 2257
    .local v15, hasTurkishSplChar:I
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher;->mRemainingMessages:I

    .line 2261
    const/16 v17, 0x0

    .line 2263
    .local v17, isConvertToGsmAlphabet:Z
    const-string/jumbo v2, "persist.radio.sms.forcegsm7"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2264
    .local v14, encodingType:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 2269
    const/4 v2, 0x0

    const-string/jumbo v3, "turkishEncoding"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2270
    const/4 v15, 0x1

    .line 2274
    :cond_0
    move/from16 v0, v18

    new-array v13, v0, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    .line 2275
    .local v13, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 2280
    const/4 v2, 0x0

    const-string v3, "KREncodingScheme"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 2281
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v12

    .line 2288
    .local v12, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_1
    iget v2, v12, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v7, v2, :cond_2

    if-eqz v7, :cond_1

    const/4 v2, 0x1

    if-ne v7, v2, :cond_2

    .line 2291
    :cond_1
    iget v7, v12, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 2295
    :cond_2
    const/4 v2, 0x1

    if-ne v15, v2, :cond_3

    .line 2296
    aput-object v12, v13, v16

    .line 2275
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 2283
    .end local v12           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_4
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    move/from16 v0, v17

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLGLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v12

    .restart local v12       #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    goto :goto_1

    .line 2302
    .end local v12           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_5
    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    .line 2303
    new-instance v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 2304
    .local v11, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v19

    iput v0, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 2305
    add-int/lit8 v2, v16, 0x1

    iput v2, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 2306
    move/from16 v0, v18

    iput v0, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 2313
    const/4 v2, 0x1

    iput-boolean v2, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 2314
    new-instance v6, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 2315
    .local v6, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v11, v6, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 2319
    const/4 v2, 0x1

    if-ne v7, v2, :cond_6

    .line 2320
    const-string v2, "GsmSMSDispather"

    const-string/jumbo v3, "sendMultipartText() encoding ENCODING_7BIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    const/4 v2, 0x1

    if-ne v15, v2, :cond_6

    .line 2324
    aget-object v2, v13, v16

    iget v2, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iput v2, v6, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 2325
    aget-object v2, v13, v16

    iget v2, v2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    iput v2, v6, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 2331
    :cond_6
    const/4 v8, 0x0

    .line 2332
    .local v8, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-le v2, v0, :cond_7

    .line 2333
    move-object/from16 v0, p4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #sentIntent:Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 2336
    .restart local v8       #sentIntent:Landroid/app/PendingIntent;
    :cond_7
    const/4 v9, 0x0

    .line 2337
    .local v9, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_8

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v16

    if-le v2, v0, :cond_8

    .line 2338
    move-object/from16 v0, p5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v9, Landroid/app/PendingIntent;

    .line 2342
    .restart local v9       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_8
    const-string v2, "SMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[sendMultipartText] vp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/telephony/SMSDispatcher;->vp:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2343
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->vp:I

    if-lez v2, :cond_9

    .line 2344
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->vp:I

    invoke-static {v2}, Landroid/telephony/SmsMessage;->setValidityPeriod(I)V

    .line 2348
    :cond_9
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->vp:I

    if-nez v2, :cond_a

    const/4 v2, 0x0

    const-string v3, "dcm_validity_period_value"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2349
    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->vp:I

    invoke-static {v2}, Landroid/telephony/SmsMessage;->setValidityPeriod(I)V

    .line 2353
    :cond_a
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int/lit8 v2, v18, -0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_b

    const/4 v10, 0x1

    :goto_3
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/SMSDispatcher;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V

    .line 2302
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 2353
    :cond_b
    const/4 v10, 0x0

    goto :goto_3

    .line 2357
    .end local v6           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v8           #sentIntent:Landroid/app/PendingIntent;
    .end local v9           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v11           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_c
    return-void
.end method

.method protected abstract sendMultipartTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation
.end method

.method protected abstract sendMultipartTextMoreLge(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation
.end method

.method protected abstract sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
.end method

.method protected abstract sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;)V
.end method

.method protected abstract sendNewSubmitPduforEmailoverSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
.end method

.method protected sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .parameter "tracker"

    .prologue
    const/4 v7, 0x4

    .line 2629
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 2630
    .local v1, map:Ljava/util/HashMap;
    const-string/jumbo v5, "pdu"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v2, v5

    check-cast v2, [B

    .line 2632
    .local v2, pdu:[B
    iget-object v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 2633
    .local v3, sentIntent:Landroid/app/PendingIntent;
    const-string v5, "SMSDispatcher"

    const-string/jumbo v6, "sendRawPdu()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    iget-boolean v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSmsSendDisabled:Z

    if-eqz v5, :cond_2

    .line 2635
    if-eqz v3, :cond_0

    .line 2637
    const/4 v5, 0x4

    :try_start_0
    invoke-virtual {v3, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2640
    :cond_0
    :goto_0
    const-string v5, "SMSDispatcher"

    const-string v6, "Device does not support sending sms."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    :cond_1
    :goto_1
    return-void

    .line 2644
    :cond_2
    if-nez v2, :cond_3

    .line 2645
    if-eqz v3, :cond_1

    .line 2647
    const/4 v5, 0x3

    :try_start_1
    invoke-virtual {v3, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2648
    :catch_0
    move-exception v5

    goto :goto_1

    .line 2653
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    .line 2656
    .local v4, ss:I
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->isIms()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v4, :cond_4

    .line 2657
    invoke-static {v4, p1}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 2659
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0

    .line 2660
    .local v0, appName:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2662
    iget-boolean v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mSyncronousSending:Z

    if-eqz v5, :cond_5

    .line 2663
    const-string v5, "SMSDispatcher"

    const-string/jumbo v6, "sendRawPdu()- mSyncronousSending==true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->enqueueMessageForSending(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 2666
    :cond_5
    const-string v5, "SMSDispatcher"

    const-string/jumbo v6, "sendRawPdu()- mSyncronousSending==false"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_1

    .line 2671
    :cond_6
    invoke-virtual {p0, v7, p1}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 2638
    .end local v0           #appName:Ljava/lang/String;
    .end local v4           #ss:I
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method protected sendRawPduMore([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 10
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 2683
    if-nez p2, :cond_1

    .line 2684
    if-eqz p3, :cond_0

    .line 2686
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p3, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2718
    :cond_0
    :goto_0
    return-void

    .line 2692
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2693
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "smsc"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2694
    const-string/jumbo v2, "pdu"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2696
    new-instance v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object v2, p3

    move-object v3, p4

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;Lcom/android/internal/telephony/SMSDispatcher$1;)V

    .line 2700
    .local v0, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    .line 2702
    .local v8, ss:I
    if-eqz v8, :cond_2

    .line 2703
    invoke-static {v8, v0}, Lcom/android/internal/telephony/SMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 2705
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/SMSDispatcher;->getAppNameByIntent(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v6

    .line 2706
    .local v6, appName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    invoke-virtual {v2, v6, v9}, Lcom/android/internal/telephony/SmsUsageMonitor;->check(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2708
    const-string/jumbo v2, "sendMoreDelay"

    invoke-static {v4, v2, v9}, Lcom/android/internal/telephony/lgeAutoProfiling;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v9, :cond_3

    .line 2709
    const/16 v2, 0x16

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2710
    .local v7, moreMsg:Landroid/os/Message;
    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v7, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2712
    .end local v7           #moreMsg:Landroid/os/Message;
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSmsMore(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 2715
    :cond_4
    const/4 v2, 0x4

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2687
    .end local v0           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v1           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #appName:Ljava/lang/String;
    .end local v8           #ss:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected abstract sendRetrySms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendSCPTResult(Ljava/lang/String;[I[I)V
.end method

.method protected abstract sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendSmsMore(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
.end method

.method protected abstract sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end method

.method protected abstract sendTextLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;III)V
.end method

.method protected abstract sendTextMoreLge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;III)V
.end method

.method protected setMultipartTextValidityPeriod(I)V
    .locals 3
    .parameter "validityperiod"

    .prologue
    .line 2602
    sput p1, Lcom/android/internal/telephony/SMSDispatcher;->vp:I

    .line 2603
    const-string v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RIAN] setMultipartTextValidityPeriod() = vp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/internal/telephony/SMSDispatcher;->vp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    return-void
.end method

.method public setSmsPriority(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 3072
    sput p1, Lcom/android/internal/telephony/SMSDispatcher;->mSubmitPriority:I

    .line 3073
    return-void
.end method

.method protected storeVoiceMailCount()V
    .locals 7

    .prologue
    .line 3107
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 3108
    .local v1, imsi:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v2

    .line 3110
    .local v2, mwi:I
    const-string v5, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Storing Voice Mail Count = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for imsi = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for mVmCountKey = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mVmCountKey:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " vmId = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mVmId:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in preferences."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3117
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3118
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mVmCountKey:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3119
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mVmId:Ljava/lang/String;

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3122
    return-void
.end method

.method protected abstract updateIccAvailability()V
.end method

.method protected updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 447
    instance-of v1, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v1, :cond_0

    const-string v0, "CDMA"

    .line 450
    .local v0, phoneType:Ljava/lang/String;
    :goto_0
    const-string v1, "SMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active phone changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void

    .line 447
    .end local v0           #phoneType:Ljava/lang/String;
    :cond_0
    const-string v0, "GSM"

    goto :goto_0
.end method
