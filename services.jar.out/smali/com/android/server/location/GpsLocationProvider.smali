.class public Lcom/android/server/location/GpsLocationProvider;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;,
        Lcom/android/server/location/GpsLocationProvider$XtraHandlerThread;,
        Lcom/android/server/location/GpsLocationProvider$XtraHandler;,
        Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;,
        Lcom/android/server/location/GpsLocationProvider$DownloadHandler;,
        Lcom/android/server/location/GpsLocationProvider$GpsLocationDownloadThread;,
        Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;,
        Lcom/android/server/location/GpsLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GpsLocationProvider$ToastHandler;,
        Lcom/android/server/location/GpsLocationProvider$Listener;,
        Lcom/android/server/location/GpsLocationProvider$DownloadStates;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final CHECK_LOCATION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final ENABLE:I = 0x2

.field private static final ENABLE_TRACKING:I = 0x3

.field private static final EPHEMERIS_MASK:I = 0x0

.field private static final FIX_INTERVAL_FOR_TEST:I = 0x270f

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_CMD_WAIT_TIME_MS:J = 0x1388L

.field private static final GPS_DELETE_ALL:I = -0x1

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_ALMANAC_CORR:I = 0x1000

.field private static final GPS_DELETE_ALMANAC_CORR_GLO:I = 0x40000

.field private static final GPS_DELETE_ALMANAC_GLO:I = 0x8000

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x800

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_EPHEMERIS_GLO:I = 0x4000

.field private static final GPS_DELETE_FREQ_BIAS_EST:I = 0x2000

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVDIR_GLO:I = 0x10000

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_SVSTEER_GLO:I = 0x20000

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_TIME_GLO:I = 0x100000

.field private static final GPS_DELETE_TIME_GPS:I = 0x80000

.field private static final GPS_DELETE_UTC:I = 0x20

.field public static final GPS_ENGINE_STATUS:Ljava/lang/String; = "android.location.GPS_ENGINE_STATUS"

.field public static final GPS_ENGINE_STATUS_CHANGE:Ljava/lang/String; = "android.location.GPS_ENGINE_STATUS_CHANGE"

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_PROVIDER_MESSAGE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_SETTINGS_FILE:Ljava/lang/String; = "/data/ext_gps.conf"

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field public static final GPS_XTRA_DATA_DOWNLOAD:Ljava/lang/String; = "com.lge.gps.GPS_XTRA_DATA_DOWNLOAD"

.field private static final HYBRID_PROVIDER_MESSAGE:I = 0x2

.field private static final INDICATOR_GPS:Ljava/lang/String; = "com.lge.gps.INDICATOR_GPS"

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static INTENT_XTRA_SETTING_CHANGED:Ljava/lang/String; = null

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_FLOOR_NUMBER:I = 0x80

.field private static final LOCATION_HAS_IS_INDOOR:I = 0x40

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_MAP_INDEX:I = 0x200

.field private static final LOCATION_HAS_MAP_URL:I = 0x100

.field private static final LOCATION_HAS_SOURCE_INFO:I = 0x20

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MAX_SVS:I = 0x20

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field private static final PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final REQUEST_NETWORK_LOCATION:I = 0xd

.field private static final REQUEST_PHONE_CONTEXT_SETTINGS:I = 0xb

.field private static final REQUEST_SINGLE_SHOT:I = 0xa

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider"

.field private static final TOAST_NOTI:I = 0xb

.field private static final ULP_LOCATION_IS_FROM_GNSS:I = 0x2

.field private static final ULP_LOCATION_IS_FROM_HYBRID:I = 0x1

.field private static final ULP_NETWORK_POSITION_SRC_CELL:I = 0x2

.field private static final ULP_NETWORK_POSITION_SRC_UNKNOWN:I = 0xff

.field private static final ULP_NETWORK_POSITION_SRC_WIFI:I = 0x1

.field private static final ULP_NETWORK_POS_GET_LAST_KNOWN_LOCATION_REQUEST:I = 0x3

.field private static final ULP_NETWORK_POS_START_PERIODIC_REQUEST:I = 0x2

.field private static final ULP_NETWORK_POS_STATUS_REQUEST:I = 0x1

.field private static final ULP_NETWORK_POS_STOP_REQUEST:I = 0x4

.field private static final ULP_PHONE_CONTEXT_AGPS_OFF:I = 0x8

.field private static final ULP_PHONE_CONTEXT_AGPS_ON:I = 0x4

.field private static final ULP_PHONE_CONTEXT_AGPS_SETTING:I = 0x10

.field private static final ULP_PHONE_CONTEXT_BATTERY_CHARGING_OFF:I = 0x200

.field private static final ULP_PHONE_CONTEXT_BATTERY_CHARGING_ON:I = 0x100

.field private static final ULP_PHONE_CONTEXT_BATTERY_CHARGING_STATE:I = 0x8

.field private static final ULP_PHONE_CONTEXT_CELL_BASED_POSITION_OFF:I = 0x20

.field private static final ULP_PHONE_CONTEXT_CELL_BASED_POSITION_ON:I = 0x10

.field private static final ULP_PHONE_CONTEXT_GPS_OFF:I = 0x2

.field private static final ULP_PHONE_CONTEXT_GPS_ON:I = 0x1

.field private static final ULP_PHONE_CONTEXT_GPS_SETTING:I = 0x1

.field private static final ULP_PHONE_CONTEXT_NETWORK_POSITION_SETTING:I = 0x2

.field private static final ULP_PHONE_CONTEXT_REQUEST_TYPE_ONCHANGE:I = 0x2

.field private static final ULP_PHONE_CONTEXT_REQUEST_TYPE_SINGLE:I = 0x1

.field private static final ULP_PHONE_CONTEXT_UPDATE_TYPE_ONCHANGE:I = 0x2

.field private static final ULP_PHONE_CONTEXT_UPDATE_TYPE_SINGLE:I = 0x1

.field private static final ULP_PHONE_CONTEXT_WIFI_OFF:I = 0x80

.field private static final ULP_PHONE_CONTEXT_WIFI_ON:I = 0x40

.field private static final ULP_PHONE_CONTEXT_WIFI_SETTING:I = 0x4

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NATIVE_PHONE_CONTEXT_SETTINGS:I = 0xc

.field private static final UPDATE_NETWORK_LOCATION:I = 0xe

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final VERBOSE:Z = false

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"

.field static final XTRA_SHOW_MESSAGE:I = 0x1

.field private static mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

.field public static mXtraDownloadDate:J

.field public static mXtraDownloadFrequency:I


# instance fields
.field private GPS_airtest_result:Landroid/os/Bundle;

.field private GPS_field_SV_result:Landroid/os/Bundle;

.field private GPS_field_position_result:Landroid/os/Bundle;

.field private volatile mAgpsSetting:Z

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private volatile mBatteryCharging:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private final mClientUids:Landroid/util/SparseIntArray;

.field private final mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDownloadHandler:Landroid/os/Handler;

.field private final mDownloadLock:Ljava/lang/Object;

.field private final mDownloadThread:Ljava/lang/Thread;

.field private final mDownloadThreadInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private mG1Command:Z

.field private volatile mGpsEnabled:Z

.field private volatile mGpsSetting:Z

.field private mGpsStarted:Z

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private volatile mHybridEnabled:Z

.field private mHybridStarted:Z

.field private volatile mInitialized:Z

.field private final mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

.field private mLGGpsCmdRet:Z

.field private mLastFixTime:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/GpsLocationProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private mModem:Ljava/lang/String;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNetworkAvailable:Z

.field private mNetworkLocationListener:Landroid/location/LocationListener;

.field private volatile mNetworkProvSetting:Z

.field private mNmeaBuffer:[B

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private mPendingListenerMessages:I

.field private mPendingMessageBits:I

.field private mPeriodicTimeInjection:Z

.field private mPositionMode:I

.field private mPrePositionMode:I

.field private mProperties:Ljava/util/Properties;

.field private volatile mRequestContextType:I

.field private volatile mRequestType:I

.field private mSingleShotGps:Z

.field private mSingleShotHybrid:Z

.field private mSlpMode:I

.field private mSnrs:[F

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private mTTFF:I

.field private final mThread:Ljava/lang/Thread;

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private mTlsMode:I

.field mToast:Landroid/widget/Toast;

.field private mToastHandler:Landroid/os/Handler;

.field mToastText:Ljava/lang/CharSequence;

.field private mVendor:Ljava/lang/String;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private volatile mWifiSetting:Z

.field private mXtraHandler:Lcom/android/server/location/GpsLocationProvider$XtraHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 427
    const-string v0, "android.location.xtra_setting_changed"

    sput-object v0, Lcom/android/server/location/GpsLocationProvider;->INTENT_XTRA_SETTING_CHANGED:Ljava/lang/String;

    .line 435
    const/16 v0, 0x5a0

    sput v0, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadFrequency:I

    .line 436
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadDate:J

    .line 3029
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->class_init_native()V

    .line 3419
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    sput-object v0, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 15
    .parameter "context"
    .parameter "locationManager"

    .prologue
    .line 533
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 221
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryCharging:Z

    .line 222
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsSetting:Z

    .line 223
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mAgpsSetting:Z

    .line 224
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkProvSetting:Z

    .line 225
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mWifiSetting:Z

    .line 261
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestType:I

    .line 262
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    .line 269
    const/4 v11, 0x1

    iput v11, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 281
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    .line 282
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    .line 285
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    .line 295
    sget-object v11, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 296
    sget-object v11, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Idle:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 308
    const/16 v11, 0x3e8

    iput v11, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 311
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    .line 314
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    .line 317
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotGps:Z

    .line 320
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotHybrid:Z

    .line 329
    const-wide/16 v11, 0x0

    iput-wide v11, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 331
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 347
    new-instance v11, Landroid/location/Location;

    const-string v12, "gps"

    invoke-direct {v11, v12}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    .line 348
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 349
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    .line 356
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 379
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    .line 388
    const-string v11, " "

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mModem:Ljava/lang/String;

    .line 389
    const-string v11, " "

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    .line 394
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/location/GpsLocationProvider;->mSlpMode:I

    .line 395
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/location/GpsLocationProvider;->mTlsMode:I

    .line 409
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->GPS_airtest_result:Landroid/os/Bundle;

    .line 410
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->GPS_field_SV_result:Landroid/os/Bundle;

    .line 411
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->GPS_field_position_result:Landroid/os/Bundle;

    .line 415
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLGGpsCmdRet:Z

    .line 421
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mG1Command:Z

    .line 428
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadThread:Ljava/lang/Thread;

    .line 429
    new-instance v11, Ljava/util/concurrent/CountDownLatch;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadThreadInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 441
    new-instance v11, Ljava/lang/Object;

    invoke-direct/range {v11 .. v11}, Ljava/lang/Object;-><init>()V

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadLock:Ljava/lang/Object;

    .line 445
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    .line 447
    new-instance v11, Lcom/android/server/location/GpsLocationProvider$1;

    invoke-direct {v11, p0}, Lcom/android/server/location/GpsLocationProvider$1;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 498
    new-instance v11, Lcom/android/server/location/GpsLocationProvider$2;

    invoke-direct {v11, p0}, Lcom/android/server/location/GpsLocationProvider$2;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 2532
    new-instance v11, Lcom/android/server/location/GpsLocationProvider$4;

    invoke-direct {v11, p0}, Lcom/android/server/location/GpsLocationProvider$4;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2665
    new-instance v11, Lcom/android/server/location/GpsLocationProvider$5;

    invoke-direct {v11, p0}, Lcom/android/server/location/GpsLocationProvider$5;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationListener:Landroid/location/LocationListener;

    .line 3020
    const/16 v11, 0x20

    new-array v11, v11, [I

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    .line 3021
    const/16 v11, 0x20

    new-array v11, v11, [F

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    .line 3022
    const/16 v11, 0x20

    new-array v11, v11, [F

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    .line 3023
    const/16 v11, 0x20

    new-array v11, v11, [F

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    .line 3024
    const/4 v11, 0x3

    new-array v11, v11, [I

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    .line 3027
    const/16 v11, 0x78

    new-array v11, v11, [B

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    .line 534
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    .line 535
    invoke-static/range {p1 .. p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 536
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 537
    new-instance v11, Lcom/android/internal/location/GpsNetInitiatedHandler;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 539
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v12, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v11, v12}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 542
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v12, "power"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 543
    .local v8, powerManager:Landroid/os/PowerManager;
    const/4 v11, 0x1

    const-string v12, "GpsLocationProvider"

    invoke-virtual {v8, v11, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 544
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 546
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v12, "alarm"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager;

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 547
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    invoke-static {v11, v12, v13, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 548
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    invoke-static {v11, v12, v13, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 550
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 551
    .local v6, intentFilter:Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v6, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    const-string v11, "sms"

    invoke-virtual {v6, v11}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 553
    const-string v11, "localhost"

    const-string v12, "7275"

    invoke-virtual {v6, v11, v12}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 556
    new-instance v6, Landroid/content/IntentFilter;

    .end local v6           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 557
    .restart local v6       #intentFilter:Landroid/content/IntentFilter;
    const-string v11, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v6, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    :try_start_0
    const-string v11, "application/vnd.omaloc-supl-init"

    invoke-virtual {v6, v11}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :goto_0
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 565
    const-string v11, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 568
    const-string v11, "batteryinfo"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 570
    new-instance v11, Ljava/util/Properties;

    invoke-direct {v11}, Ljava/util/Properties;-><init>()V

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    .line 572
    :try_start_1
    new-instance v5, Ljava/io/File;

    const-string v11, "/etc/gps.conf"

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    .local v5, file:Ljava/io/File;
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 574
    .local v10, stream:Ljava/io/FileInputStream;
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-virtual {v11, v10}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 575
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 578
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v12, "MODEM"

    invoke-virtual {v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 579
    .local v1, Modem:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v12, "VENDOR"

    invoke-virtual {v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, Vendor:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 582
    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mModem:Ljava/lang/String;

    .line 584
    :cond_0
    if-eqz v3, :cond_1

    .line 585
    iput-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    .line 590
    :cond_1
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v12, "LGU"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 592
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 593
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    .line 594
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 595
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 646
    .end local v1           #Modem:Ljava/lang/String;
    .end local v3           #Vendor:Ljava/lang/String;
    .end local v5           #file:Ljava/io/File;
    .end local v10           #stream:Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v12, "LGU"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 647
    sget-object v11, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Idle:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 648
    sget-object v11, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Idle:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 651
    new-instance v11, Lcom/android/server/location/GpsLocationProvider$XtraHandlerThread;

    invoke-direct {v11, p0}, Lcom/android/server/location/GpsLocationProvider$XtraHandlerThread;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-virtual {v11}, Lcom/android/server/location/GpsLocationProvider$XtraHandlerThread;->start()V

    .line 656
    :cond_3
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v12, "VZW"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 658
    sget-object v11, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Idle:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 659
    sget-object v11, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Idle:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 665
    :cond_4
    new-instance v11, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;

    invoke-direct {v11, p0}, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    .line 666
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    .line 669
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v12, "VZW"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 671
    const/4 v9, 0x0

    .line 673
    .local v9, result:Z
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    move-result v9

    .line 675
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 681
    .end local v9           #result:Z
    :cond_5
    :goto_2
    :try_start_2
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5

    .line 687
    return-void

    .line 560
    :catch_0
    move-exception v4

    .line 561
    .local v4, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v11, "GpsLocationProvider"

    const-string v12, "Malformed SUPL init mime type"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 601
    .end local v4           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .restart local v1       #Modem:Ljava/lang/String;
    .restart local v3       #Vendor:Ljava/lang/String;
    .restart local v5       #file:Ljava/io/File;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    :cond_6
    :try_start_3
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v12, "SUPL_HOST"

    invoke-virtual {v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 602
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v12, "SUPL_PORT"

    invoke-virtual {v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 604
    .local v7, portString:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mModem:Ljava/lang/String;

    const-string v12, "CSFB"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 605
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v12, "POSITION_MODE"

    invoke-virtual {v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v2

    .line 607
    .local v2, PositionMode:Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 609
    :try_start_4
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 614
    :cond_7
    :goto_3
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->loadUserSettingsFromFile()V

    .line 619
    .end local v2           #PositionMode:Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v11, :cond_9

    if-eqz v7, :cond_9

    .line 621
    :try_start_6
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 627
    :cond_9
    :goto_4
    :try_start_7
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v12, "C2K_HOST"

    invoke-virtual {v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 628
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v12, "C2K_PORT"

    invoke-virtual {v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 629
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    if-eqz v11, :cond_2

    if-eqz v7, :cond_2

    .line 631
    :try_start_8
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_1

    .line 632
    :catch_1
    move-exception v4

    .line 633
    .local v4, e:Ljava/lang/NumberFormatException;
    :try_start_9
    const-string v11, "GpsLocationProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unable to parse C2K_PORT: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 641
    .end local v1           #Modem:Ljava/lang/String;
    .end local v3           #Vendor:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .end local v5           #file:Ljava/io/File;
    .end local v7           #portString:Ljava/lang/String;
    .end local v10           #stream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    .line 642
    .local v4, e:Ljava/io/IOException;
    const-string v11, "GpsLocationProvider"

    const-string v12, "Could not open GPS configuration file /etc/gps.conf"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 610
    .end local v4           #e:Ljava/io/IOException;
    .restart local v1       #Modem:Ljava/lang/String;
    .restart local v2       #PositionMode:Ljava/lang/String;
    .restart local v3       #Vendor:Ljava/lang/String;
    .restart local v5       #file:Ljava/io/File;
    .restart local v7       #portString:Ljava/lang/String;
    .restart local v10       #stream:Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    .line 611
    .local v4, e:Ljava/lang/NumberFormatException;
    :try_start_a
    const-string v11, "GpsLocationProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unable to parse POSITION_MODE : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 622
    .end local v2           #PositionMode:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/NumberFormatException;
    :catch_4
    move-exception v4

    .line 623
    .restart local v4       #e:Ljava/lang/NumberFormatException;
    const-string v11, "GpsLocationProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unable to parse SUPL_PORT: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_4

    .line 683
    .end local v1           #Modem:Ljava/lang/String;
    .end local v3           #Vendor:Ljava/lang/String;
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .end local v5           #file:Ljava/io/File;
    .end local v7           #portString:Ljava/lang/String;
    .end local v10           #stream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    .line 684
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/GpsLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mLGGpsCmdRet:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->run_LG_command(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleEnable(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleDisable(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/location/GpsLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTrackingGps(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/location/GpsLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTrackingHybrid(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleRequestSingleShotGps()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleRequestSingleShotHybrid()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$DownloadStates;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$DownloadStates;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleAddListener(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleRemoveListener(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleNativePhoneContextRequest(II)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/location/GpsLocationProvider;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleNativePhoneContextUpdate(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleNativeNetworkLocationRequest(II)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleNetworkLocationUpdate(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$3672(Lcom/android/server/location/GpsLocationProvider;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$3708(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$3710(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->initialize()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadThreadInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/server/location/GpsLocationProvider;Lcom/android/server/location/GpsLocationProvider$XtraHandler;)Lcom/android/server/location/GpsLocationProvider$XtraHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraHandler:Lcom/android/server/location/GpsLocationProvider$XtraHandler;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/location/GpsLocationProvider;IJFZII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p7}, Lcom/android/server/location/GpsLocationProvider;->native_update_criteria(IJFZII)Z

    move-result v0

    return v0
.end method

.method private addLGUGPSONClientList(I)V
    .locals 3
    .parameter "nUid"

    .prologue
    .line 3486
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    if-nez v1, :cond_1

    .line 3503
    :cond_0
    :goto_0
    return-void

    .line 3490
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 3497
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3499
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->getListenerPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 3503
    .local v0, packageName:Ljava/lang/String;
    goto :goto_0
.end method

.method private agpsSKTSetting(Landroid/os/Bundle;)Z
    .locals 25
    .parameter "extras"

    .prologue
    .line 3169
    if-eqz p1, :cond_1

    .line 3170
    const-string v22, "opType"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3171
    .local v16, str_opType:Ljava/lang/String;
    const-string v22, "GpsLocationProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "opType: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    const-string v22, "cmdType"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3173
    .local v15, str_cmdType:Ljava/lang/String;
    const-string v22, "GpsLocationProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "cmdType: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    const-string v22, "msBased"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 3175
    const-string v22, "on"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 3177
    const-string v22, "wpde.nate.com"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 3178
    const/16 v22, 0x1c6b

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    .line 3179
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 3181
    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 3184
    const-string v22, "ephemeris"

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3186
    const-string v22, "position"

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3187
    const-string v22, "time"

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3188
    const-string v22, "iono"

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3189
    const-string v22, "utc"

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3190
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 3191
    invoke-direct/range {p0 .. p1}, Lcom/android/server/location/GpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    .line 3221
    :cond_0
    :goto_0
    const-string v22, "wMask"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result v21

    .line 3222
    .local v21, wMask:I
    const-string v22, "GpsLocationProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "wMask: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    const-string v22, "nSessionType"

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v13

    .line 3224
    .local v13, nSessionType:I
    const-string v22, "GpsLocationProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "nSessionType: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    const-string v22, "nOperatingType"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v9

    .line 3226
    .local v9, nOperatingType:I
    const-string v22, "GpsLocationProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "nOperatingType: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    const-string v22, "nGPSColdStart"

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v6

    .line 3228
    .local v6, nGPSColdStart:I
    const-string v22, "GpsLocationProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "nGPSColdStart: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    const-string v22, "szHSLPURL"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3230
    .local v20, szHSLPURL:Ljava/lang/String;
    const-string v22, "GpsLocationProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "szHSLPURL: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    const-string v22, "szGPRSAPN"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3232
    .local v17, szGPRSAPN:Ljava/lang/String;
    const-string v22, "GpsLocationProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "szGPRSAPN: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    const-string v22, "szGPRSUserName"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 3234
    .local v19, szGPRSUserName:Ljava/lang/String;
    const-string v22, "GpsLocationProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "szGPRSUserName: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    const-string v22, "szGPRSPassword"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3236
    .local v18, szGPRSPassword:Ljava/lang/String;
    const-string v22, "GpsLocationProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "szGPRSPassword: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    const-string v22, "nGPRSAuthType"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v5

    .line 3238
    .local v5, nGPRSAuthType:I
    const-string v22, "GpsLocationProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "nGPRSAuthType: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    const-string v22, "nQOSPerformance"

    const/16 v23, 0x2d

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v11

    .line 3240
    .local v11, nQOSPerformance:I
    const-string v22, "GpsLocationProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "nQOSPerformance: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    const-string v22, "nQOSHorizontalAccuracy"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v10

    .line 3242
    .local v10, nQOSHorizontalAccuracy:I
    const-string v22, "GpsLocationProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "nQOSHorizontalAccuracy: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    const-string v22, "nQOSVerticalAccuracy"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v12

    .line 3244
    .local v12, nQOSVerticalAccuracy:I
    const-string v22, "GpsLocationProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "nQOSVerticalAccuracy: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    const-string v22, "nTimeBetweenFix"

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v14

    .line 3246
    .local v14, nTimeBetweenFix:I
    const-string v22, "GpsLocationProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "nTimeBetweenFix: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    const-string v22, "nEPHTimeOutInt"

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v4

    .line 3248
    .local v4, nEPHTimeOutInt:I
    const-string v22, "GpsLocationProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "nEPHTimeOutInt: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    const-string v22, "nMaxLocationAge"

    const/16 v23, 0x2710

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result v8

    .line 3250
    .local v8, nMaxLocationAge:I
    const-string v22, "GpsLocationProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "nMaxLocationAge: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3251
    const-string v22, "nGPSQOPDelay"

    const/16 v23, 0x20

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v7

    .line 3252
    .local v7, nGPSQOPDelay:I
    const-string v22, "GpsLocationProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "nGPSQOPDelay: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    .end local v4           #nEPHTimeOutInt:I
    .end local v5           #nGPRSAuthType:I
    .end local v6           #nGPSColdStart:I
    .end local v7           #nGPSQOPDelay:I
    .end local v8           #nMaxLocationAge:I
    .end local v9           #nOperatingType:I
    .end local v10           #nQOSHorizontalAccuracy:I
    .end local v11           #nQOSPerformance:I
    .end local v12           #nQOSVerticalAccuracy:I
    .end local v13           #nSessionType:I
    .end local v14           #nTimeBetweenFix:I
    .end local v15           #str_cmdType:Ljava/lang/String;
    .end local v16           #str_opType:Ljava/lang/String;
    .end local v17           #szGPRSAPN:Ljava/lang/String;
    .end local v18           #szGPRSPassword:Ljava/lang/String;
    .end local v19           #szGPRSUserName:Ljava/lang/String;
    .end local v20           #szHSLPURL:Ljava/lang/String;
    .end local v21           #wMask:I
    :cond_1
    const/16 v22, 0x1

    return v22

    .line 3195
    .restart local v15       #str_cmdType:Ljava/lang/String;
    .restart local v16       #str_opType:Ljava/lang/String;
    :cond_2
    const-string v22, "off"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 3197
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto/16 :goto_0

    .line 3201
    :cond_3
    const-string v22, "msAssisted"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 3202
    const-string v22, "on"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 3203
    const-string v22, "wpde.nate.com"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 3204
    const/16 v22, 0x1c6b

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    .line 3205
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 3207
    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 3210
    :cond_4
    const-string v22, "off"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 3212
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto/16 :goto_0
.end method

.method private checkExceptionHandling()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 3527
    const/4 v0, 0x0

    .line 3531
    .local v0, bInvisible:Z
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    if-nez v6, :cond_1

    .line 3598
    :cond_0
    :goto_0
    return v5

    .line 3536
    :cond_1
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 3563
    :cond_2
    :goto_1
    if-ne v0, v8, :cond_5

    .line 3565
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3566
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "enabled"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3567
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_2
    move v5, v0

    .line 3598
    goto :goto_0

    .line 3540
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-lt v6, v7, :cond_2

    .line 3544
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    .line 3545
    .local v4, nMaxSize:I
    const/4 v0, 0x1

    .line 3547
    const/4 v3, 0x0

    .local v3, mUidIndex:I
    :goto_3
    if-ge v3, v4, :cond_2

    .line 3549
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_4

    .line 3552
    const/4 v0, 0x0

    .line 3553
    goto :goto_1

    .line 3547
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 3574
    .end local v3           #mUidIndex:I
    .end local v4           #nMaxSize:I
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3575
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v5, "enabled"

    iget-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3576
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3581
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadLock:Ljava/lang/Object;

    monitor-enter v6

    .line 3582
    :try_start_0
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 3584
    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    if-eqz v5, :cond_6

    .line 3587
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3588
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :try_start_1
    const-string v5, "enabled"

    const/4 v7, 0x1

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3589
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 3595
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_6
    :try_start_2
    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception v5

    :goto_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_4
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 517
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 518
    .local v1, messages:[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 519
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v2

    .line 520
    .local v2, supl_init:[B
    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 522
    .end local v2           #supl_init:[B
    :cond_0
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 525
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    .line 526
    .local v0, supl_init:[B
    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 527
    return-void
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .locals 3
    .parameter "extras"

    .prologue
    .line 1887
    if-nez p1, :cond_2

    .line 1888
    const/4 v0, -0x1

    .line 1915
    .local v0, flags:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_18

    .line 1916
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->native_delete_aiding_data(I)V

    .line 1918
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v2, "LGU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1919
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadDate:J

    .line 1921
    :cond_1
    const/4 v1, 0x1

    .line 1924
    :goto_1
    return v1

    .line 1890
    .end local v0           #flags:I
    :cond_2
    const/4 v0, 0x0

    .line 1891
    .restart local v0       #flags:I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x1

    .line 1892
    :cond_3
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x2

    .line 1893
    :cond_4
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x4

    .line 1894
    :cond_5
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x8

    .line 1895
    :cond_6
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x10

    .line 1896
    :cond_7
    const-string v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x20

    .line 1897
    :cond_8
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit8 v0, v0, 0x40

    .line 1898
    :cond_9
    const-string v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x80

    .line 1899
    :cond_a
    const-string v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x100

    .line 1900
    :cond_b
    const-string v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x200

    .line 1901
    :cond_c
    const-string v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    or-int/lit16 v0, v0, 0x400

    .line 1902
    :cond_d
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    or-int/lit16 v0, v0, 0x800

    .line 1903
    :cond_e
    const-string v1, "almanac-corr"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    or-int/lit16 v0, v0, 0x1000

    .line 1904
    :cond_f
    const-string v1, "freq-bias-est"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    or-int/lit16 v0, v0, 0x2000

    .line 1905
    :cond_10
    const-string v1, "ephemeris-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    or-int/lit16 v0, v0, 0x4000

    .line 1906
    :cond_11
    const-string v1, "almanac-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1907
    :cond_12
    const-string v1, "svdir-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 1908
    :cond_13
    const-string v1, "svsteer-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    .line 1909
    :cond_14
    const-string v1, "almanac-corr-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/high16 v1, 0x4

    or-int/2addr v0, v1

    .line 1910
    :cond_15
    const-string v1, "time-gps"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    .line 1911
    :cond_16
    const-string v1, "time-GLO"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/high16 v1, 0x10

    or-int/2addr v0, v1

    .line 1912
    :cond_17
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 1924
    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private disableAutoAllTestMode()Z
    .locals 1

    .prologue
    .line 3274
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPrePositionMode:I

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 3275
    const/4 v0, 0x1

    return v0
.end method

.method private enableAutoAllTestMode()Z
    .locals 1

    .prologue
    .line 3263
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPrePositionMode:I

    .line 3264
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 3266
    const/4 v0, 0x1

    return v0
.end method

.method private getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .locals 5
    .parameter "connType"

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3422
    packed-switch p1, :pswitch_data_0

    .line 3434
    :goto_0
    return-object v0

    .line 3426
    :pswitch_0
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v1, v1, v3

    if-nez v1, :cond_0

    .line 3427
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    new-instance v2, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;-><init>(Lcom/android/server/location/GpsLocationProvider;IILcom/android/server/location/GpsLocationProvider$1;)V

    aput-object v2, v1, v3

    .line 3428
    :cond_0
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v0, v0, v3

    goto :goto_0

    .line 3430
    :pswitch_1
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v1, v1, v4

    if-nez v1, :cond_1

    .line 3431
    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    new-instance v2, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;-><init>(Lcom/android/server/location/GpsLocationProvider;IILcom/android/server/location/GpsLocationProvider$1;)V

    aput-object v2, v1, v4

    .line 3432
    :cond_1
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->mAGpsConnections:[Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    aget-object v0, v0, v4

    goto :goto_0

    .line 3422
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getListenerPackageName(I)Ljava/lang/String;
    .locals 6
    .parameter "uid"

    .prologue
    .line 1592
    const/4 v1, 0x0

    .line 1594
    .local v1, packagesName:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1595
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1602
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-object v1

    .line 1598
    :catch_0
    move-exception v0

    .line 1599
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getListenerPackageName() packages e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getSelectedApn()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2907
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2908
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2910
    .local v6, apn:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "apn"

    aput-object v4, v2, v5

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2913
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 2915
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2916
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 2919
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2922
    :cond_1
    return-object v6

    .line 2919
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private handleAddListener(I)V
    .locals 5
    .parameter "uid"

    .prologue
    .line 1607
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1608
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1610
    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate add listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    monitor-exit v2

    .line 1632
    :goto_0
    return-void

    .line 1613
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1614
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1616
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1624
    :cond_1
    :goto_1
    :try_start_2
    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAddListener : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->getListenerPackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1617
    :catch_0
    move-exception v0

    .line 1618
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in addListener"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleDisable(I)V
    .locals 4
    .parameter "provider_message_type"

    .prologue
    const/4 v3, 0x0

    .line 1133
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    if-nez v1, :cond_1

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1137
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    goto :goto_0

    .line 1141
    :cond_2
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    .line 1144
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1145
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.gps.INDICATOR_GPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1150
    .local v0, gpsintent:Landroid/content/Intent;
    const-string v1, "Enable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1151
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1152
    const-string v1, "GpsLocationProvider"

    const-string v2, "Send Intent Disable "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_cleanup()V

    .line 1158
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    goto :goto_0
.end method

.method private handleDownloadXtraData()V
    .locals 6

    .prologue
    const/4 v4, 0x6

    .line 889
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v2, :cond_1

    .line 891
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v3, "LGU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 893
    const-string v2, "start"

    invoke-virtual {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->broadcastXtraDownload(Ljava/lang/String;)V

    .line 894
    const-string v2, "fail"

    invoke-virtual {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->broadcastXtraDownload(Ljava/lang/String;)V

    .line 944
    :goto_0
    return-void

    .line 899
    :cond_0
    sget-object v2, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    goto :goto_0

    .line 902
    :cond_1
    sget-object v2, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Downloading:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 905
    new-instance v1, Lcom/android/server/location/GpsXtraDownloader;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/GpsXtraDownloader;-><init>(Landroid/content/Context;Ljava/util/Properties;)V

    .line 906
    .local v1, xtraDownloader:Lcom/android/server/location/GpsXtraDownloader;
    invoke-virtual {v1}, Lcom/android/server/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v0

    .line 907
    .local v0, data:[B
    if-eqz v0, :cond_3

    .line 911
    array-length v2, v0

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GpsLocationProvider;->native_inject_xtra_data([BI)V

    .line 913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadDate:J

    .line 916
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v3, "LGU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 917
    const-string v2, "end"

    invoke-virtual {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->broadcastXtraDownload(Ljava/lang/String;)V

    .line 943
    :cond_2
    :goto_1
    sget-object v2, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Idle:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    goto :goto_0

    .line 922
    :cond_3
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 925
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v3, "LGU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 927
    const-string v2, "fail"

    invoke-virtual {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->broadcastXtraDownload(Ljava/lang/String;)V

    goto :goto_1

    .line 933
    :cond_4
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v3, "VZW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 941
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private handleEnable(I)V
    .locals 5
    .parameter "provider_message_type"

    .prologue
    const/4 v4, 0x1

    .line 1066
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    if-ne v1, v4, :cond_1

    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    if-ne v1, v4, :cond_1

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    if-nez v1, :cond_5

    .line 1071
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    .line 1073
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    if-eqz v1, :cond_4

    .line 1074
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    .line 1076
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v2, "LGU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1079
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1080
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v4, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1082
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1083
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1091
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.gps.INDICATOR_GPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1092
    .local v0, gpsintent:Landroid/content/Intent;
    const-string v1, "Enable"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1093
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1094
    const-string v1, "GpsLocationProvider"

    const-string v2, "Send Intent Enable "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    .end local v0           #gpsintent:Landroid/content/Intent;
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mInitialized:Z

    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    .line 1105
    :goto_2
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    if-ne v1, v4, :cond_0

    if-ne p1, v4, :cond_0

    .line 1107
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    goto :goto_0

    .line 1098
    :cond_4
    const-string v1, "GpsLocationProvider"

    const-string v2, "Failed to enable location provider"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1102
    :cond_5
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridEnabled:Z

    goto :goto_2
.end method

.method private handleEnableLocationTrackingGps(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, 0x0

    .line 1204
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In handleEnableLocationTrackingGps. enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    if-eqz p1, :cond_0

    .line 1206
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1207
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1208
    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    .line 1220
    :goto_0
    return-void

    .line 1210
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1211
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1212
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1214
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1217
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1218
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleEnableLocationTrackingHybrid(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1229
    if-ne p1, v2, :cond_1

    .line 1230
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-nez v0, :cond_0

    .line 1231
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1232
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    .line 1233
    const-string v0, "GpsLocationProvider"

    const-string v1, "native_start failed in handleEnableLocationTrackingHybrid()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    :goto_0
    return-void

    .line 1237
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    .line 1247
    :goto_1
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In handleEnableLocationTrackingHybrid.End. enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mHybridStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mGpsStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1240
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-nez v0, :cond_2

    .line 1241
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1242
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotHybrid:Z

    .line 1243
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    .line 1245
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    goto :goto_1
.end method

.method private handleInjectNtpTime()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    .line 840
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v5, "LGU"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    :goto_0
    return-void

    .line 847
    :cond_0
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    goto :goto_0

    .line 850
    :cond_1
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Downloading:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 855
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v5, "LGU"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 856
    const-string v0, "start"

    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->broadcastXtraDownload(Ljava/lang/String;)V

    .line 859
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 860
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedNtpTime()J

    move-result-wide v1

    .line 861
    .local v1, time:J
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedNtpTimeReference()J

    move-result-wide v3

    .line 862
    .local v3, timeReference:J
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    move-result-wide v6

    .line 863
    .local v6, certainty:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 865
    .local v10, now:J
    const-string v0, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NTP server returned: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " ("

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ") reference: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " certainty: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " system time offset: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v12, v1, v10

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    long-to-int v5, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_time(JJI)V

    .line 872
    const-wide/32 v8, 0x5265c00

    .line 878
    .end local v1           #time:J
    .end local v3           #timeReference:J
    .end local v6           #certainty:J
    .end local v10           #now:J
    .local v8, delay:J
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    if-eqz v0, :cond_3

    .line 881
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 882
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 885
    :cond_3
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Idle:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    goto/16 :goto_0

    .line 875
    .end local v8           #delay:J
    :cond_4
    const-wide/32 v8, 0x493e0

    .restart local v8       #delay:J
    goto :goto_1
.end method

.method private handleNativeNetworkLocationRequest(II)V
    .locals 8
    .parameter "type"
    .parameter "interval"

    .prologue
    .line 1337
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 1338
    .local v0, lm:Landroid/location/LocationManager;
    packed-switch p1, :pswitch_data_0

    .line 1358
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNativeNetworkLocationRequest. Inccorect request sent in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :goto_0
    return-void

    .line 1340
    :pswitch_0
    const-string v1, "GpsLocationProvider"

    const-string v2, "handleNativeNetworkLocationRequest NLP start from GP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    const-string v1, "network"

    int-to-long v2, p2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 1344
    :pswitch_1
    const-string v1, "LocationManager.NETWORK_PROVIDER"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v6

    .line 1345
    .local v6, location:Landroid/location/Location;
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 1346
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1347
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 1348
    .local v7, m:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v7, Landroid/os/Message;->arg1:I

    .line 1349
    iput-object v6, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1350
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1351
    monitor-exit v2

    goto :goto_0

    .end local v7           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1354
    .end local v6           #location:Landroid/location/Location;
    :pswitch_2
    const-string v1, "GpsLocationProvider"

    const-string v2, "handleNativeNetworkLocationRequest NLP stop from GP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0

    .line 1338
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleNativePhoneContextRequest(II)V
    .locals 3
    .parameter "contextType"
    .parameter "requestType"

    .prologue
    .line 1328
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    .line 1329
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestType:I

    .line 1330
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNativePhoneContextRequest invoked from native layer with mRequestContextType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mRequestType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mRequestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->handleNativePhoneContextUpdate(ILandroid/os/Bundle;)V

    .line 1333
    return-void
.end method

.method private handleNativePhoneContextUpdate(ILandroid/os/Bundle;)V
    .locals 21
    .parameter "updateType"
    .parameter "settingsValues"

    .prologue
    .line 1365
    const/4 v3, 0x0

    .line 1367
    .local v3, currentContextType:I
    const/4 v5, 0x0

    .local v5, currentAgpsSetting:Z
    const/4 v7, 0x0

    .line 1368
    .local v7, currentWifiSetting:Z
    const/4 v4, 0x0

    .local v4, currentGpsSetting:Z
    const/4 v6, 0x0

    .line 1369
    .local v6, currentNetworkProvSetting:Z
    const/4 v8, 0x0

    .line 1370
    .local v8, currentBatteryCharging:Z
    const/4 v14, 0x0

    .local v14, wasAgpsSettingAvailable:Z
    const/16 v18, 0x0

    .line 1371
    .local v18, wasWifiSettingAvailable:Z
    const/16 v16, 0x0

    .local v16, wasGpsSettingAvailable:Z
    const/16 v17, 0x0

    .line 1372
    .local v17, wasNetworkProviderSettingAvailable:Z
    const/4 v15, 0x0

    .line 1374
    .local v15, wasBatteryChargingAvailable:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 1375
    .local v13, resolver:Landroid/content/ContentResolver;
    const-string v2, "GpsLocationProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handleNativePhoneContextUpdate called. updateType: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mRequestContextType: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mRequestType: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestType:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    if-nez v2, :cond_0

    .line 1379
    const-string v2, "GpsLocationProvider"

    const-string v19, "handleNativePhoneContextUpdate. Update obtained before request. Ignoring"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :goto_0
    return-void

    .line 1384
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x1

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_1

    .line 1386
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    .line 1387
    const-string v2, "gps"

    invoke-static {v13, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    .line 1389
    const/16 v16, 0x1

    .line 1400
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x10

    const/16 v19, 0x10

    move/from16 v0, v19

    if-ne v2, v0, :cond_2

    .line 1402
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_9

    .line 1403
    const-string v2, "assisted_gps_enabled"

    invoke-static {v13, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_8

    const/4 v5, 0x1

    .line 1405
    :goto_2
    const/4 v14, 0x1

    .line 1416
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x2

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v2, v0, :cond_3

    .line 1419
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_a

    .line 1420
    const-string v2, "network"

    invoke-static {v13, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    .line 1422
    const/16 v17, 0x1

    .line 1434
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x4

    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v2, v0, :cond_4

    .line 1437
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_c

    .line 1438
    const-string v2, "wifi_on"

    invoke-static {v13, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v2, v0, :cond_b

    const/4 v7, 0x1

    .line 1440
    :goto_5
    const/16 v18, 0x1

    .line 1452
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    and-int/lit8 v2, v2, 0x8

    const/16 v19, 0x8

    move/from16 v0, v19

    if-ne v2, v0, :cond_6

    .line 1455
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_e

    .line 1459
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 1460
    .local v11, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v9

    .line 1463
    .local v9, batteryIntent:Landroid/content/Intent;
    const/4 v12, -0x1

    .line 1464
    .local v12, plugged:I
    const-string v2, "plugged"

    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v9, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 1465
    const/4 v2, 0x1

    if-eq v12, v2, :cond_5

    const/4 v2, 0x2

    if-ne v12, v2, :cond_d

    :cond_5
    const/4 v8, 0x1

    .line 1467
    :goto_7
    const/4 v15, 0x1

    .line 1482
    .end local v9           #batteryIntent:Landroid/content/Intent;
    .end local v11           #intentFilter:Landroid/content/IntentFilter;
    .end local v12           #plugged:I
    :cond_6
    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider;->mRequestContextType:I

    .line 1486
    if-nez v16, :cond_f

    .line 1487
    and-int/lit8 v3, v3, -0x2

    .line 1496
    :goto_9
    if-nez v14, :cond_11

    .line 1497
    and-int/lit8 v3, v3, -0x11

    .line 1506
    :goto_a
    if-nez v17, :cond_13

    .line 1507
    and-int/lit8 v3, v3, -0x3

    .line 1516
    :goto_b
    if-nez v18, :cond_15

    .line 1517
    and-int/lit8 v3, v3, -0x5

    .line 1526
    :goto_c
    if-nez v15, :cond_17

    .line 1527
    and-int/lit8 v3, v3, -0x9

    :goto_d
    move-object/from16 v2, p0

    .line 1537
    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/GpsLocationProvider;->native_update_settings(IZZZZZ)Z

    .line 1539
    const-string v2, "GpsLocationProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "After calling native_update_settings. currentContextType: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " sGpsSetting: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/location/GpsLocationProvider;->mGpsSetting:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "currentAgpsSetting: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " currentNetworkProvSetting: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " currentWifiSetting: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " currentBatteryCharging: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1392
    :cond_7
    :try_start_1
    const-string v2, "gpsSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1394
    const/16 v16, 0x1

    .line 1395
    const-string v2, "gpsSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_1

    .line 1403
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 1408
    :cond_9
    const-string v2, "agpsSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1410
    const/4 v14, 0x1

    .line 1411
    const-string v2, "agpsSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    goto/16 :goto_3

    .line 1425
    :cond_a
    const-string v2, "networkProvSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1427
    const/16 v17, 0x1

    .line 1428
    const-string v2, "networkProvSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    goto/16 :goto_4

    .line 1438
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 1443
    :cond_c
    const-string v2, "wifiSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1445
    const/16 v18, 0x1

    .line 1446
    const-string v2, "wifiSetting"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    goto/16 :goto_6

    .line 1465
    .restart local v9       #batteryIntent:Landroid/content/Intent;
    .restart local v11       #intentFilter:Landroid/content/IntentFilter;
    .restart local v12       #plugged:I
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 1470
    .end local v9           #batteryIntent:Landroid/content/Intent;
    .end local v11           #intentFilter:Landroid/content/IntentFilter;
    .end local v12           #plugged:I
    :cond_e
    const-string v2, "batteryCharging"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1472
    const/4 v15, 0x1

    .line 1473
    const-string v2, "batteryCharging"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    goto/16 :goto_8

    .line 1477
    :catch_0
    move-exception v10

    .line 1478
    .local v10, e:Ljava/lang/Exception;
    const-string v2, "GpsLocationProvider"

    const-string v19, "Exception in handleNativePhoneContextUpdate:"

    move-object/from16 v0, v19

    invoke-static {v2, v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 1490
    .end local v10           #e:Ljava/lang/Exception;
    :cond_f
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGpsSetting:Z

    if-ne v4, v2, :cond_10

    .line 1492
    and-int/lit8 v3, v3, -0x2

    .line 1494
    :cond_10
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/location/GpsLocationProvider;->mGpsSetting:Z

    goto/16 :goto_9

    .line 1500
    :cond_11
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mAgpsSetting:Z

    if-ne v5, v2, :cond_12

    .line 1502
    and-int/lit8 v3, v3, -0x11

    .line 1504
    :cond_12
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/location/GpsLocationProvider;->mAgpsSetting:Z

    goto/16 :goto_a

    .line 1510
    :cond_13
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkProvSetting:Z

    if-ne v6, v2, :cond_14

    .line 1512
    and-int/lit8 v3, v3, -0x3

    .line 1514
    :cond_14
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/server/location/GpsLocationProvider;->mNetworkProvSetting:Z

    goto/16 :goto_b

    .line 1520
    :cond_15
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_16

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mWifiSetting:Z

    if-ne v7, v2, :cond_16

    .line 1522
    and-int/lit8 v3, v3, -0x5

    .line 1524
    :cond_16
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/server/location/GpsLocationProvider;->mWifiSetting:Z

    goto/16 :goto_c

    .line 1530
    :cond_17
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_18

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mBatteryCharging:Z

    if-ne v8, v2, :cond_18

    .line 1532
    and-int/lit8 v3, v3, -0x9

    .line 1534
    :cond_18
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/server/location/GpsLocationProvider;->mBatteryCharging:Z

    goto/16 :goto_d
.end method

.method private handleNetworkLocationUpdate(Landroid/location/Location;)V
    .locals 6
    .parameter "location"

    .prologue
    .line 2653
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNetworkLocationUpdate. lat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "accurancy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2656
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_send_network_location(DDF)V

    .line 2659
    :cond_0
    return-void
.end method

.method private handleRemoveListener(I)V
    .locals 5
    .parameter "uid"

    .prologue
    .line 1645
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1646
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 1648
    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unneeded remove listener for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    monitor-exit v2

    .line 1670
    :goto_0
    return-void

    .line 1651
    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1652
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1654
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1662
    :cond_1
    :goto_1
    :try_start_2
    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRemoveListener : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->getListenerPackageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1655
    :catch_0
    move-exception v0

    .line 1656
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in removeListener"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleRequestSingleShotGps()V
    .locals 2

    .prologue
    .line 1266
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1267
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1268
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    .line 1269
    return-void
.end method

.method private handleRequestSingleShotHybrid()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1272
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotHybrid:Z

    .line 1273
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTrackingHybrid(Z)V

    .line 1274
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .locals 6
    .parameter "location"

    .prologue
    .line 955
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_location(DDF)V

    .line 959
    :cond_0
    return-void
.end method

.method private handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 12
    .parameter "state"
    .parameter "info"

    .prologue
    .line 766
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    .line 773
    if-eqz p2, :cond_3

    .line 774
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 v10, 0x1

    .line 776
    .local v10, dataEnabled:Z
    :goto_1
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v10, :cond_8

    const/4 v4, 0x1

    .line 777
    .local v4, networkAvailable:Z
    :goto_2
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->getSelectedApn()Ljava/lang/String;

    move-result-object v6

    .line 778
    .local v6, defaultApn:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 779
    const-string v6, "dummy-apn"

    .line 782
    :cond_0
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 786
    const/4 v0, 0x3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v0, v1, :cond_9

    const/4 v9, 0x1

    .line 788
    .local v9, connType:I
    :goto_3
    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider;->getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    move-result-object v7

    .line 789
    .local v7, agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    if-eqz v7, :cond_3

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$500(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 791
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_a

    .line 792
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v8

    .line 793
    .local v8, apnName:Ljava/lang/String;
    if-nez v8, :cond_1

    .line 796
    move-object v8, v6

    .line 798
    :cond_1
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$602(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 802
    const/4 v0, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I
    invoke-static {v7, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$702(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 809
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 811
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agpsConnInfo.mIPv4Addr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$900(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v1

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v11

    .line 814
    .local v11, route_result:Z
    if-nez v11, :cond_2

    .line 815
    const-string v0, "GpsLocationProvider"

    const-string v1, "call requestRouteToHostAddress failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .end local v11           #route_result:Z
    :cond_2
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v0

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$700(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v1

    invoke-direct {p0, v0, v8, v1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(ILjava/lang/String;I)V

    .line 819
    const/4 v0, 0x2

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v7, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 829
    .end local v4           #networkAvailable:Z
    .end local v6           #defaultApn:Ljava/lang/String;
    .end local v7           #agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .end local v8           #apnName:Ljava/lang/String;
    .end local v9           #connType:I
    .end local v10           #dataEnabled:Z
    :cond_3
    :goto_4
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_5

    .line 830
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    if-ne v0, v1, :cond_4

    .line 831
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 833
    :cond_4
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    sget-object v1, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->PendingNetwork:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    if-ne v0, v1, :cond_5

    .line 834
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 837
    :cond_5
    return-void

    .line 766
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 774
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 776
    .restart local v10       #dataEnabled:Z
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 786
    .restart local v4       #networkAvailable:Z
    .restart local v6       #defaultApn:Ljava/lang/String;
    :cond_9
    const/4 v9, 0x3

    goto/16 :goto_3

    .line 822
    .restart local v7       #agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    .restart local v9       #connType:I
    :cond_a
    const/4 v0, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$602(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 823
    const/4 v0, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v7, v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 824
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v7}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V

    goto :goto_4
.end method

.method private hasCapability(I)Z
    .locals 1
    .parameter "capability"

    .prologue
    .line 2102
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hibernate()V
    .locals 8

    .prologue
    .line 2093
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 2094
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2095
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2096
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2097
    .local v0, now:J
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2099
    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 740
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 741
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 742
    const-string v1, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 743
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 744
    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 530
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private loadUserSettingsFromFile()V
    .locals 9

    .prologue
    .line 693
    const-string v2, ""

    .line 694
    .local v2, positionMode:Ljava/lang/String;
    const-string v3, ""

    .line 697
    .local v3, slpMode:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/ext_gps.conf"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 698
    .local v1, file2:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 699
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 700
    .local v4, stream2:Ljava/io/FileInputStream;
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-virtual {v6, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 701
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 703
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "SUPL_HOST"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 704
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "SUPL_PORT"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 705
    .local v5, suplPortString:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "POSITION_MODE"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 706
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "SLP_MODE"

    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 708
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    .line 710
    :try_start_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 717
    :cond_0
    :goto_0
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 720
    :goto_1
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSlpMode:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 723
    :goto_2
    const/4 v6, 0x1

    :try_start_4
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 725
    const-string v6, "GpsLocationProvider"

    const-string v7, "Read from file: /data/ext_gps.conf"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSuplServerHost: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSuplServerPort: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPositionMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSlpMode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSlpMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .end local v1           #file2:Ljava/io/File;
    .end local v4           #stream2:Ljava/io/FileInputStream;
    .end local v5           #suplPortString:Ljava/lang/String;
    :cond_1
    :goto_3
    return-void

    .line 711
    .restart local v1       #file2:Ljava/io/File;
    .restart local v4       #stream2:Ljava/io/FileInputStream;
    .restart local v5       #suplPortString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 712
    .local v0, e:Ljava/lang/NumberFormatException;
    const/16 v6, 0x1c6b

    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 731
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #file2:Ljava/io/File;
    .end local v4           #stream2:Ljava/io/FileInputStream;
    .end local v5           #suplPortString:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 732
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "GpsLocationProvider"

    const-string v7, "Could not open GPS configuration file /data/ext_gps.conf"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 721
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #file2:Ljava/io/File;
    .restart local v4       #stream2:Ljava/io/FileInputStream;
    .restart local v5       #suplPortString:Ljava/lang/String;
    :catch_2
    move-exception v6

    goto/16 :goto_2

    .line 718
    :catch_3
    move-exception v6

    goto/16 :goto_1
.end method

.method private native native_LG_gps_command(III)I
.end method

.method private native native_agps_data_conn_closed(I)V
.end method

.method private native native_agps_data_conn_failed(I)V
.end method

.method private native native_agps_data_conn_open(ILjava/lang/String;I)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private static native native_has_ulp_capability()I
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_raw_command([BI)Z
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_read_sv_status([I[F[F[F[I)I
.end method

.method private native native_send_network_location(DDF)V
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_criteria(IJFZII)Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native native_update_settings(IZZZZZ)Z
.end method

.method private removeLGUGPSONClientList(I)V
    .locals 2
    .parameter "nUid"

    .prologue
    .line 3507
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    if-nez v1, :cond_1

    .line 3524
    :cond_0
    :goto_0
    return-void

    .line 3511
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 3518
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUidsForLGUGPSOn:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 3520
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->getListenerPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 3524
    .local v0, packageName:Ljava/lang/String;
    goto :goto_0
.end method

.method private reportAGpsStatus(III[B)V
    .locals 7
    .parameter "type"
    .parameter "status"
    .parameter "ipv4_addr"
    .parameter "ipv6_addr"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2404
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->getAGpsConnectionInfo(I)Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;

    move-result-object v0

    .line 2405
    .local v0, agpsConnInfo:Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;
    if-nez v0, :cond_1

    .line 2473
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2411
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 2416
    :pswitch_1
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v6}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 2417
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1300(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v1

    .line 2419
    .local v1, result:I
    const/4 v3, -0x1

    if-eq p3, v3, :cond_3

    .line 2420
    invoke-static {p3}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v3

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v0, v3}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$802(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    .line 2426
    :goto_1
    if-nez v1, :cond_5

    .line 2428
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$600(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2429
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2433
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mCMConnType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$900(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v4

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$800(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v2

    .line 2436
    .local v2, route_result:Z
    if-nez v2, :cond_2

    const-string v3, "GpsLocationProvider"

    const-string v4, "call requestRouteToHostAddress failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    .end local v2           #route_result:Z
    :cond_2
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v3

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAPN:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$600(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v4

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mBearerType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$700(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(ILjava/lang/String;I)V

    .line 2439
    const/4 v3, 0x2

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v3}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    goto :goto_0

    .line 2423
    :cond_3
    const/4 v3, 0x0

    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mIPv4Addr:Ljava/net/InetAddress;
    invoke-static {v0, v3}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$802(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;Ljava/net/InetAddress;)Ljava/net/InetAddress;

    goto :goto_1

    .line 2441
    :cond_4
    const-string v3, "GpsLocationProvider"

    const-string v4, "agpsConnInfo.mAPN not set when receiving Phone.APN_ALREADY_ACTIVE"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v5}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 2443
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V

    goto :goto_0

    .line 2445
    :cond_5
    if-eq v1, v6, :cond_0

    .line 2450
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v5}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    .line 2451
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed(I)V

    goto :goto_0

    .line 2456
    .end local v1           #result:I
    :pswitch_2
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$500(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 2457
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mPHConnFeatureStr:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1300(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 2459
    #getter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mAgpsType:I
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$1000(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_closed(I)V

    .line 2460
    #setter for: Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->mState:I
    invoke-static {v0, v5}, Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;->access$502(Lcom/android/server/location/GpsLocationProvider$AGpsConnectionInfo;I)I

    goto/16 :goto_0

    .line 2411
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private reportAirtestResult(BBBII)V
    .locals 3
    .parameter "test_num"
    .parameter "req"
    .parameter "success"
    .parameter "cn0_avr"
    .parameter "cn0_sigma"

    .prologue
    .line 3285
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportAirtestResult CN0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3287
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->GPS_airtest_result:Landroid/os/Bundle;

    const-string v1, "test num"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 3288
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->GPS_airtest_result:Landroid/os/Bundle;

    const-string v1, "req num"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 3289
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->GPS_airtest_result:Landroid/os/Bundle;

    const-string v1, "success"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 3290
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->GPS_airtest_result:Landroid/os/Bundle;

    const-string v1, "cn0"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3291
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->GPS_airtest_result:Landroid/os/Bundle;

    const-string v1, "sigma"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3292
    return-void
.end method

.method private reportLocation(IDDDFFFJI[BZFLjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"
    .parameter "positionSource"
    .parameter "rawData"
    .parameter "isIndoor"
    .parameter "floorNumber"
    .parameter "mapUrl"
    .parameter "mapIndex"

    .prologue
    .line 2111
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "reportLocation lat: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " long: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p4

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " timestamp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p11

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " positionSource: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p13

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v9

    .line 2115
    :try_start_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 2116
    and-int/lit8 v8, p1, 0x1

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    .line 2117
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v8, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 2118
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p4

    invoke-virtual {v8, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 2119
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p11

    invoke-virtual {v8, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 2121
    :cond_0
    and-int/lit8 v8, p1, 0x2

    const/4 v10, 0x2

    if-ne v8, v10, :cond_1

    .line 2122
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p6

    invoke-virtual {v8, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    .line 2126
    :goto_0
    and-int/lit8 v8, p1, 0x4

    const/4 v10, 0x4

    if-ne v8, v10, :cond_2

    .line 2127
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 2131
    :goto_1
    and-int/lit8 v8, p1, 0x8

    const/16 v10, 0x8

    if-ne v8, v10, :cond_3

    .line 2132
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Landroid/location/Location;->setBearing(F)V

    .line 2136
    :goto_2
    and-int/lit8 v8, p1, 0x10

    const/16 v10, 0x10

    if-ne v8, v10, :cond_4

    .line 2137
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p10

    invoke-virtual {v8, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 2141
    :goto_3
    const-string v8, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reportLocation.flag:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    and-int/lit8 v8, p1, 0x20

    const/16 v10, 0x20

    if-ne v8, v10, :cond_5

    const/4 v8, 0x1

    move/from16 v0, p13

    if-ne v0, v8, :cond_5

    .line 2146
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    const-string v10, "hybrid"

    invoke-virtual {v8, v10}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 2147
    const-string v8, "GpsLocationProvider"

    const-string v10, "reportLocation. Location has source information. src -hybrid"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    :goto_4
    move-object/from16 v0, p14

    array-length v8, v0

    if-lez v8, :cond_6

    .line 2155
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "RawData"

    move-object/from16 v0, p14

    invoke-virtual {v8, v10, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2160
    :goto_5
    and-int/lit8 v8, p1, 0x40

    const/16 v10, 0x40

    if-ne v8, v10, :cond_7

    .line 2161
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "isIndoor"

    move/from16 v0, p15

    invoke-virtual {v8, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2166
    :goto_6
    and-int/lit16 v8, p1, 0x80

    const/16 v10, 0x80

    if-ne v8, v10, :cond_8

    .line 2167
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "floorNumber"

    move/from16 v0, p16

    invoke-virtual {v8, v10, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2172
    :goto_7
    and-int/lit16 v8, p1, 0x100

    const/16 v10, 0x100

    if-ne v8, v10, :cond_9

    .line 2173
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "mapUrl"

    move-object/from16 v0, p17

    invoke-virtual {v8, v10, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2178
    :goto_8
    and-int/lit16 v8, p1, 0x200

    const/16 v10, 0x200

    if-ne v8, v10, :cond_a

    .line 2179
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "mapIndex"

    move-object/from16 v0, p18

    invoke-virtual {v8, v10, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2184
    :goto_9
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v8, v10}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 2187
    new-instance v6, Landroid/location/Location;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-direct {v6, v8}, Landroid/location/Location;-><init>(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2189
    .local v6, locationCopy:Landroid/location/Location;
    :try_start_1
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    const/4 v10, 0x0

    invoke-interface {v8, v6, v10}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2193
    :goto_a
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 2197
    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    if-nez v8, :cond_c

    and-int/lit8 v8, p1, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 2198
    iget-wide v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    iget-wide v10, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    sub-long/2addr v8, v10

    long-to-int v8, v8

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 2202
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v9

    .line 2203
    :try_start_3
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2204
    .local v7, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    if-ge v3, v7, :cond_b

    .line 2205
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2207
    .local v5, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_4
    iget-object v8, v5, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    invoke-interface {v8, v10}, Landroid/location/IGpsStatusListener;->onFirstFix(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2204
    :goto_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2124
    .end local v3           #i:I
    .end local v5           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v6           #locationCopy:Landroid/location/Location;
    .end local v7           #size:I
    :cond_1
    :try_start_5
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->removeAltitude()V

    goto/16 :goto_0

    .line 2193
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v8

    .line 2129
    :cond_2
    :try_start_6
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->removeSpeed()V

    goto/16 :goto_1

    .line 2134
    :cond_3
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->removeBearing()V

    goto/16 :goto_2

    .line 2139
    :cond_4
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v8}, Landroid/location/Location;->removeAccuracy()V

    goto/16 :goto_3

    .line 2150
    :cond_5
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    const-string v10, "gps"

    invoke-virtual {v8, v10}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 2151
    const-string v8, "GpsLocationProvider"

    const-string v10, "reportLocation. Location has source information. src -gnss"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2157
    :cond_6
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "RawData"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2163
    :cond_7
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "isIndoor"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2169
    :cond_8
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "floorNumber"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2175
    :cond_9
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "mapUrl"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2181
    :cond_a
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v10, "mapIndex"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2190
    .restart local v6       #locationCopy:Landroid/location/Location;
    :catch_0
    move-exception v2

    .line 2191
    .local v2, e:Landroid/os/RemoteException;
    const-string v8, "GpsLocationProvider"

    const-string v10, "RemoteException calling reportLocation"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_a

    .line 2208
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v3       #i:I
    .restart local v5       #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v7       #size:I
    :catch_1
    move-exception v2

    .line 2209
    .restart local v2       #e:Landroid/os/RemoteException;
    :try_start_7
    const-string v8, "GpsLocationProvider"

    const-string v10, "RemoteException in stopNavigating"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2212
    add-int/lit8 v7, v7, -0x1

    goto :goto_c

    .line 2215
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v5           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_b
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2218
    .end local v3           #i:I
    .end local v7           #size:I
    :cond_c
    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotGps:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    .line 2219
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 2221
    :cond_d
    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotHybrid:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    .line 2222
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTrackingHybrid(Z)V

    .line 2224
    :cond_e
    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-eqz v8, :cond_10

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_10

    .line 2227
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v8

    if-nez v8, :cond_f

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v9, 0xea60

    if-ge v8, v9, :cond_f

    .line 2228
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2236
    :cond_f
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2237
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "enabled"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2238
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2242
    const/4 v8, 0x2

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v8, v9}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2245
    .end local v4           #intent:Landroid/content/Intent;
    :cond_10
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v8

    if-nez v8, :cond_11

    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-eqz v8, :cond_11

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const/16 v9, 0x3e8

    if-le v8, v9, :cond_11

    .line 2247
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    .line 2249
    :cond_11
    return-void

    .line 2215
    :catchall_1
    move-exception v8

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v8
.end method

.method private reportNmea(J)V
    .locals 9
    .parameter "timestamp"

    .prologue
    .line 2479
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2480
    :try_start_0
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2481
    .local v5, size:I
    if-lez v5, :cond_0

    .line 2483
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    array-length v8, v8

    invoke-direct {p0, v6, v8}, Lcom/android/server/location/GpsLocationProvider;->native_read_nmea([BI)I

    move-result v2

    .line 2484
    .local v2, length:I
    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    const/4 v8, 0x0

    invoke-direct {v4, v6, v8, v2}, Ljava/lang/String;-><init>([BII)V

    .line 2486
    .local v4, nmea:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 2487
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2489
    .local v3, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_1
    iget-object v6, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v6, p1, p2, v4}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2486
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2490
    :catch_0
    move-exception v0

    .line 2491
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "GpsLocationProvider"

    const-string v8, "RemoteException in reportNmea"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2494
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 2498
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v4           #nmea:Ljava/lang/String;
    :cond_0
    monitor-exit v7

    .line 2499
    return-void

    .line 2498
    .end local v5           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method private reportPositionResult([I)V
    .locals 2
    .parameter "position_result"

    .prologue
    .line 3306
    const-string v0, "GpsLocationProvider"

    const-string v1, "reportPositionResult"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->GPS_field_position_result:Landroid/os/Bundle;

    const-string v1, "position_result"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 3309
    return-void
.end method

.method private reportSVResult(BB[I[I)V
    .locals 2
    .parameter "num_ps_ranges_p"
    .parameter "num_pilots_p"
    .parameter "ppm_result"
    .parameter "prm_result"

    .prologue
    .line 3296
    const-string v0, "GpsLocationProvider"

    const-string v1, "reportSVResult "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->GPS_field_SV_result:Landroid/os/Bundle;

    const-string v1, "num_ps_ranges_p"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 3299
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->GPS_field_SV_result:Landroid/os/Bundle;

    const-string v1, "num_pilots_p"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 3300
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->GPS_field_SV_result:Landroid/os/Bundle;

    const-string v1, "ppm_result"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 3301
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->GPS_field_SV_result:Landroid/os/Bundle;

    const-string v1, "prm_result"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 3302
    return-void
.end method

.method private reportStatus(I)V
    .locals 11
    .parameter "status"

    .prologue
    .line 2257
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v9

    .line 2258
    :try_start_0
    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 2260
    .local v7, wasNavigating:Z
    iget-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    .line 2262
    .local v6, wasEngineOn:Z
    packed-switch p1, :pswitch_data_0

    .line 2279
    :goto_0
    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eq v7, v8, :cond_4

    .line 2280
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2281
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 2282
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2284
    .local v3, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_1
    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v8, :cond_0

    .line 2285
    iget-object v8, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v8}, Landroid/location/IGpsStatusListener;->onGpsStarted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2281
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2264
    .end local v1           #i:I
    .end local v3           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v4           #size:I
    :pswitch_0
    const/4 v8, 0x1

    :try_start_2
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 2265
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_0

    .line 2338
    .end local v6           #wasEngineOn:Z
    .end local v7           #wasNavigating:Z
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 2268
    .restart local v6       #wasEngineOn:Z
    .restart local v7       #wasNavigating:Z
    :pswitch_1
    const/4 v8, 0x0

    :try_start_3
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    goto :goto_0

    .line 2271
    :pswitch_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_0

    .line 2274
    :pswitch_3
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    .line 2275
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2287
    .restart local v1       #i:I
    .restart local v3       #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v4       #size:I
    :cond_0
    :try_start_4
    iget-object v8, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v8}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 2289
    :catch_0
    move-exception v0

    .line 2290
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v8, "GpsLocationProvider"

    const-string v10, "RemoteException in reportStatus"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2293
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 2299
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v3           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_1
    :try_start_6
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    :goto_3
    if-ltz v1, :cond_3

    .line 2300
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 2301
    .local v5, uid:I
    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v8, :cond_2

    .line 2302
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v8, v5}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V

    .line 2299
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 2304
    :cond_2
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v8, v5}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 2307
    .end local v5           #uid:I
    :catch_1
    move-exception v0

    .line 2308
    .restart local v0       #e:Landroid/os/RemoteException;
    :try_start_7
    const-string v8, "GpsLocationProvider"

    const-string v10, "RemoteException in reportStatus"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2317
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "enabled"

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2318
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2325
    .end local v1           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #size:I
    :cond_4
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v10, "LGU"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2327
    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    if-eq v8, v6, :cond_5

    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    if-nez v8, :cond_5

    .line 2329
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.location.GPS_ENGINE_STATUS_CHANGE"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2330
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v8, "android.location.GPS_ENGINE_STATUS"

    iget-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    invoke-virtual {v2, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2331
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2338
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2339
    return-void

    .line 2262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reportSvStatus()V
    .locals 17

    .prologue
    .line 2346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_read_sv_status([I[F[F[F[I)I

    move-result v2

    .line 2348
    .local v2, svCount:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v15

    .line 2349
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2350
    .local v14, size:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v14, :cond_0

    .line 2351
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2353
    .local v13, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_1
    iget-object v1, v13, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/16 v16, 0x2

    aget v9, v9, v16

    invoke-interface/range {v1 .. v9}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2350
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 2356
    :catch_0
    move-exception v10

    .line 2357
    .local v10, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in reportSvInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2360
    add-int/lit8 v14, v14, -0x1

    goto :goto_1

    .line 2363
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v13           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_0
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2381
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2383
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 2390
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2391
    .local v12, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    const/4 v3, 0x0

    invoke-virtual {v12, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2396
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2398
    .end local v12           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 2363
    .end local v11           #i:I
    .end local v14           #size:I
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private requestNetworkLocation(III)V
    .locals 4
    .parameter "type"
    .parameter "interval"
    .parameter "source"

    .prologue
    .line 2718
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2719
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2720
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2721
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xd

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2722
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2723
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2724
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2725
    monitor-exit v2

    .line 2726
    return-void

    .line 2725
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestPhoneContext(II)V
    .locals 4
    .parameter "context_type"
    .parameter "request_type"

    .prologue
    .line 2703
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2704
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2705
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2706
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2707
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 2708
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 2709
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2710
    monitor-exit v2

    .line 2711
    return-void

    .line 2710
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private requestRefLocation(I)V
    .locals 10
    .parameter "flags"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x3

    .line 2732
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 2734
    .local v8, phone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_3

    .line 2735
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 2736
    .local v6, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v6, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_2

    .line 2740
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2741
    .local v2, mcc:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2742
    .local v3, mnc:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    .line 2743
    .local v7, networkType:I
    if-eq v7, v5, :cond_0

    const/16 v0, 0x8

    if-eq v7, v0, :cond_0

    const/16 v0, 0x9

    if-eq v7, v0, :cond_0

    const/16 v0, 0xa

    if-ne v7, v0, :cond_1

    .line 2747
    :cond_0
    const/4 v1, 0x2

    .line 2751
    .local v1, type:I
    :goto_0
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 2760
    .end local v1           #type:I
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    .end local v6           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #networkType:I
    :goto_1
    return-void

    .line 2749
    .restart local v2       #mcc:I
    .restart local v3       #mnc:I
    .restart local v6       #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #networkType:I
    :cond_1
    const/4 v1, 0x1

    .restart local v1       #type:I
    goto :goto_0

    .line 2754
    .end local v1           #type:I
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    .end local v7           #networkType:I
    :cond_2
    const-string v0, "GpsLocationProvider"

    const-string v4, "Error getting cell location info."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2758
    .end local v6           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    const-string v0, "GpsLocationProvider"

    const-string v4, "CDMA not supported."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private requestSetID(I)V
    .locals 6
    .parameter "flags"

    .prologue
    .line 2624
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2626
    .local v2, phone:Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 2627
    .local v3, type:I
    const-string v0, ""

    .line 2629
    .local v0, data:Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2630
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 2631
    .local v1, data_temp:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2649
    .end local v1           #data_temp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 2650
    return-void

    .line 2635
    .restart local v1       #data_temp:Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 2636
    const/4 v3, 0x1

    goto :goto_0

    .line 2639
    .end local v1           #data_temp:Ljava/lang/String;
    :cond_2
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2640
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 2641
    .restart local v1       #data_temp:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2645
    move-object v0, v1

    .line 2646
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private requestUtcTime()V
    .locals 3

    .prologue
    .line 2692
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2693
    return-void
.end method

.method private run_LG_command(Landroid/os/Bundle;)Z
    .locals 10
    .parameter "extras"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3331
    const-string v7, "GpsLocationProvider"

    const-string v8, "LG GPS extra command process"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mModem:Ljava/lang/String;

    const-string v8, "SVLTE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3414
    :cond_0
    :goto_0
    return v5

    .line 3336
    :cond_1
    if-eqz p1, :cond_0

    .line 3342
    const/4 v4, 0x0

    .line 3344
    .local v4, response:I
    const-string v7, "cmd"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 3345
    .local v0, cmd:I
    const-string v7, "mode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 3346
    .local v3, mode:I
    const-string v7, "data"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 3349
    .local v1, data:I
    sparse-switch v0, :sswitch_data_0

    .line 3364
    :goto_1
    invoke-direct {p0, v0, v3, v1}, Lcom/android/server/location/GpsLocationProvider;->native_LG_gps_command(III)I

    move-result v4

    .line 3367
    packed-switch v0, :pswitch_data_0

    :goto_2
    :pswitch_0
    move v5, v6

    .line 3414
    goto :goto_0

    .line 3351
    :sswitch_0
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->GPS_airtest_result:Landroid/os/Bundle;

    goto :goto_1

    .line 3354
    :sswitch_1
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->GPS_field_SV_result:Landroid/os/Bundle;

    goto :goto_1

    .line 3357
    :sswitch_2
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->GPS_field_position_result:Landroid/os/Bundle;

    goto :goto_1

    .line 3369
    :pswitch_1
    const-string v5, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3370
    const-string v5, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CN0 is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "cn0"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3371
    iput-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->GPS_airtest_result:Landroid/os/Bundle;

    goto :goto_2

    .line 3375
    :pswitch_2
    iget-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mG1Command:Z

    if-ne v7, v6, :cond_3

    .line 3377
    const/4 v2, 0x0

    .line 3379
    .local v2, lock_mode:Z
    if-ne v4, v6, :cond_2

    .line 3381
    const/4 v2, 0x1

    .line 3384
    :cond_2
    const-string v7, "lock_mode"

    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3386
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mG1Command:Z

    .line 3397
    .end local v2           #lock_mode:Z
    :cond_3
    :pswitch_3
    const-string v5, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    const-string v5, "response"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 3401
    :pswitch_4
    const-string v5, "GpsLocationProvider"

    const-string v7, "SV result received "

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    iput-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->GPS_field_SV_result:Landroid/os/Bundle;

    .line 3403
    const-string v5, "response"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 3406
    :pswitch_5
    const-string v5, "GpsLocationProvider"

    const-string v7, "position result received"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3407
    iput-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->GPS_field_position_result:Landroid/os/Bundle;

    .line 3408
    const-string v5, "response"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 3349
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xf -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    .line 3367
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 4
    .parameter "message"
    .parameter "arg"
    .parameter "obj"

    .prologue
    .line 2764
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2765
    :try_start_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    .line 2766
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2767
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2768
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2769
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2770
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2771
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2772
    monitor-exit v2

    .line 2773
    return-void

    .line 2772
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setEngineCapabilities(I)V
    .locals 2
    .parameter "capabilities"

    .prologue
    .line 2506
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    .line 2509
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2519
    :cond_0
    :goto_0
    return-void

    .line 2515
    :cond_1
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    if-nez v0, :cond_0

    .line 2516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    .line 2517
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->requestUtcTime()V

    goto :goto_0
.end method

.method private startNavigating(Z)V
    .locals 13
    .parameter "singleShot"

    .prologue
    const/4 v12, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1929
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v1, "LGU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1931
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 1937
    sget-wide v0, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadDate:J

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v5, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadDate:J

    sub-long/2addr v0, v5

    sget v5, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadFrequency:I

    mul-int/lit8 v5, v5, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    cmp-long v0, v0, v5

    if-ltz v0, :cond_1

    .line 1942
    :cond_0
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1945
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v4, v1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1946
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->xtraDownloadRequest()V

    .line 1965
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-nez v0, :cond_5

    .line 1968
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    .line 1969
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotGps:Z

    .line 1972
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mModem:Ljava/lang/String;

    const-string v1, "CSFB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1974
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1976
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1978
    if-eqz p1, :cond_6

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1979
    iput v12, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1988
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1989
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->requestUtcTime()V

    .line 2004
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v1, "LGU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2006
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 2010
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 2012
    .local v3, interval:I
    :goto_2
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2021
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotGps:Z

    if-eqz v0, :cond_9

    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating : SingleShot"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2024
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    .line 2025
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    .end local v3           #interval:I
    :cond_5
    :goto_3
    return-void

    .line 1980
    :cond_6
    invoke-direct {p0, v12}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1981
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto :goto_0

    .line 1991
    :cond_7
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1992
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v11

    .line 1993
    .local v11, ni:Landroid/net/NetworkInfo;
    if-eqz v11, :cond_3

    .line 1994
    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1996
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->requestUtcTime()V

    goto :goto_1

    .line 2010
    .end local v11           #ni:Landroid/net/NetworkInfo;
    :cond_8
    const/16 v3, 0x3e8

    goto :goto_2

    .line 2029
    .restart local v3       #interval:I
    :cond_9
    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating : Tracking"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    move-object v5, p0

    move v7, v4

    move v8, v3

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2032
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    .line 2033
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2040
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    if-nez v0, :cond_b

    .line 2041
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2042
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    .line 2043
    const-string v0, "GpsLocationProvider"

    const-string v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2049
    :cond_b
    invoke-direct {p0, v2, v4}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2050
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 2051
    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2054
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_5

    .line 2055
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v4, 0xea60

    add-long/2addr v1, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v12, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_3
.end method

.method private stopNavigating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2068
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-eqz v0, :cond_2

    .line 2069
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    .line 2070
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotGps:Z

    .line 2072
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHybridStarted:Z

    if-nez v0, :cond_0

    .line 2073
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    .line 2075
    :cond_0
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 2076
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 2077
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 2080
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 2083
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2084
    :cond_1
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2085
    sget-object v0, Lcom/android/server/location/GpsLocationProvider$DownloadStates;->Idle:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Lcom/android/server/location/GpsLocationProvider$DownloadStates;

    .line 2089
    :cond_2
    return-void
.end method

.method private updateStatus(II)V
    .locals 2
    .parameter "status"
    .parameter "svCount"

    .prologue
    .line 1179
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1

    .line 1180
    :cond_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 1181
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    .line 1182
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 1185
    :cond_1
    return-void
.end method

.method private xtraDownloadRequest()V
    .locals 3

    .prologue
    .line 2526
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2527
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 1581
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1582
    :try_start_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    .line 1583
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1584
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1585
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1586
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1587
    monitor-exit v2

    .line 1588
    return-void

    .line 1587
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public agpsTestSetting(Landroid/os/Bundle;)Z
    .locals 14
    .parameter "extras"

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x1

    const/4 v11, 0x1

    .line 3091
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agpsTestSetting() : extras = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3092
    if-eqz p1, :cond_0

    .line 3093
    const-string v8, "call"

    invoke-virtual {p1, v8, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3094
    .local v0, call:I
    if-ne v0, v11, :cond_1

    .line 3095
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.lge.extraCommand.AGPS"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3096
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "position_mode"

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3097
    const-string v8, "slp_mode"

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSlpMode:I

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3098
    const-string v8, "supl_address"

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3099
    const-string v8, "supl_port"

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3101
    const-string v8, "fix_interval"

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3103
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3104
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "broadcast agps settings.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    .end local v0           #call:I
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v11

    .line 3108
    .restart local v0       #call:I
    :cond_1
    const-string v8, "load_setting"

    invoke-virtual {p1, v8, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v11, :cond_2

    .line 3109
    const-string v8, "position_mode"

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3110
    const-string v8, "supl_address"

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3111
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "load settings for GpsTS (mPositionMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,mSuplServerHost : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3116
    :cond_2
    const-string v8, "supl_address"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3117
    .local v5, str_supl_address:Ljava/lang/String;
    const-string v8, "supl_port"

    invoke-virtual {p1, v8, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 3118
    .local v6, supl_port:I
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_3

    if-eqz v6, :cond_3

    .line 3119
    iput-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 3120
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    .line 3122
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v11, v8, v9}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 3123
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set supl address = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3127
    :cond_3
    const-string v8, "tls_mode"

    invoke-virtual {p1, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 3128
    .local v7, tls_mode:I
    if-ltz v7, :cond_4

    .line 3129
    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mTlsMode:I

    .line 3130
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set tls mode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mTlsMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    :cond_4
    const-string v8, "slp_mode"

    invoke-virtual {p1, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3135
    .local v4, slp_mode:I
    if-ltz v4, :cond_5

    .line 3136
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSlpMode:I

    .line 3137
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set slp mode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mSlpMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3141
    :cond_5
    const-string v8, "position_mode"

    invoke-virtual {p1, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 3142
    .local v3, position_mode:I
    if-ltz v3, :cond_6

    .line 3143
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 3144
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set position_mode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    :cond_6
    const-string v8, "fix_interval"

    invoke-virtual {p1, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3150
    .local v1, fixInterval:I
    if-lez v1, :cond_7

    .line 3151
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 3152
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set fix_interval = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ,GPS Scheduling capa = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, v11}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    :cond_7
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agpsTestSetting() : HostName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agpsTestSetting() : Host Port = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3159
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agpsTestSetting() : Position Mode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public broadcastXtraDownload(Ljava/lang/String;)V
    .locals 5
    .parameter "str"

    .prologue
    .line 2944
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.gps.GPS_XTRA_DATA_DOWNLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2945
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "xtra_download"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2946
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2955
    const-string v1, "start"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2957
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040512

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mToastText:Ljava/lang/CharSequence;

    .line 2958
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mXtraHandler:Lcom/android/server/location/GpsLocationProvider$XtraHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mToastText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/location/GpsLocationProvider$XtraHandler;->sendMessage(IILjava/lang/Object;)V

    .line 2968
    :cond_0
    :goto_0
    return-void

    .line 2960
    :cond_1
    const-string v1, "end"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public broadcastXtraSettings()V
    .locals 4

    .prologue
    .line 2928
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/server/location/GpsLocationProvider;->INTENT_XTRA_SETTING_CHANGED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2929
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "xtra_download_date"

    sget-wide v2, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadDate:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2930
    const-string v1, "xtra_download_frequency"

    sget v2, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadFrequency:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2931
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2932
    return-void
.end method

.method public disable()V
    .locals 4

    .prologue
    .line 1120
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1121
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1122
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1123
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1124
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1125
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1126
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1127
    monitor-exit v2

    .line 1128
    return-void

    .line 1127
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 1053
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1054
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1055
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1056
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1057
    .local v0, m:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1058
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1059
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1060
    monitor-exit v2

    .line 1061
    return-void

    .line 1060
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enableLocationTracking(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    .line 1193
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1194
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1195
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1196
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1197
    .local v0, m:Landroid/os/Message;
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1198
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1199
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1200
    monitor-exit v2

    .line 1201
    return-void

    .line 1197
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1200
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    .line 1043
    const/4 v0, 0x1

    return v0
.end method

.method public getCapability()I
    .locals 1

    .prologue
    .line 1175
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    return v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getHybridProvider()Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;
    .locals 2

    .prologue
    .line 1875
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_has_ulp_capability()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1878
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$HybridLocationProvider;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    .line 1880
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInternalState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1556
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 750
    const-string v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .locals 1

    .prologue
    .line 2548
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 1025
    const/4 v0, 0x3

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 2
    .parameter "extras"

    .prologue
    .line 1169
    if-eqz p1, :cond_0

    .line 1170
    const-string v0, "satellites"

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1172
    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 1188
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public handleToastNoti()V
    .locals 3

    .prologue
    .line 2937
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2938
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2939
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mToastText:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mToast:Landroid/widget/Toast;

    .line 2940
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2941
    return-void
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 985
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1165
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsEnabled:Z

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 2
    .parameter "criteria"

    .prologue
    const/4 v0, 0x1

    .line 1033
    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 1635
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1636
    :try_start_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    .line 1637
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1638
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1639
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1640
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1641
    monitor-exit v2

    .line 1642
    return-void

    .line 1641
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10
    .parameter "notificationId"
    .parameter "niType"
    .parameter "notifyFlags"
    .parameter "timeout"
    .parameter "defaultResponse"
    .parameter "requestorId"
    .parameter "text"
    .parameter "requestorIdEncoding"
    .parameter "textEncoding"
    .parameter "extras"

    .prologue
    .line 2565
    const-string v7, "GpsLocationProvider"

    const-string v8, "reportNiNotification: entered"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notificationId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", niType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", notifyFlags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", timeout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", defaultResponse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestorId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", text: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", requestorIdEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", textEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v6}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 2580
    .local v6, notification:Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 2581
    iput p2, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 2582
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 2583
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 2584
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 2585
    iput p4, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 2586
    iput p5, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 2587
    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2588
    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2589
    move/from16 v0, p8

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2590
    move/from16 v0, p9

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2594
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2596
    .local v1, bundle:Landroid/os/Bundle;
    if-nez p10, :cond_0

    const-string p10, ""

    .line 2597
    :cond_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 2600
    .local v4, extraProp:Ljava/util/Properties;
    :try_start_0
    new-instance v7, Ljava/io/StringReader;

    move-object/from16 v0, p10

    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2607
    :goto_3
    invoke-virtual {v4}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2609
    .local v3, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2582
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4           #extraProp:Ljava/util/Properties;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 2583
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 2584
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 2602
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #extraProp:Ljava/util/Properties;
    :catch_0
    move-exception v2

    .line 2604
    .local v2, e:Ljava/io/IOException;
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2612
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_4
    iput-object v1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 2614
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v7, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 2615
    return-void
.end method

.method public requestSingleShotFix()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1252
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-eqz v2, :cond_0

    .line 1254
    const/4 v1, 0x0

    .line 1262
    :goto_0
    return v1

    .line 1256
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 1257
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1258
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1259
    .local v0, m:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 1260
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1261
    monitor-exit v2

    goto :goto_0

    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 976
    const/4 v0, 0x0

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 758
    const/4 v0, 0x1

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 967
    const/4 v0, 0x1

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 12
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 1673
    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendExtraCommand : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v10, "SKT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "com.skt.intent.action.AGPS"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1677
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->agpsSKTSetting(Landroid/os/Bundle;)Z

    move-result v8

    .line 1871
    :goto_0
    return v8

    .line 1683
    :cond_0
    const-string v9, "com.lge.extraCommand.AGPS"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1684
    invoke-virtual {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->agpsTestSetting(Landroid/os/Bundle;)Z

    move-result v8

    goto :goto_0

    .line 1689
    :cond_1
    const-string v9, "lge.gps.extracmd.raw.aat.enable"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1690
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mModem:Ljava/lang/String;

    const-string v10, "CSFB"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1691
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->enableAutoAllTestMode()Z

    move-result v8

    goto :goto_0

    .line 1694
    :cond_2
    const-string v9, "lge.gps.extracmd.raw.aat.disable"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1695
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mModem:Ljava/lang/String;

    const-string v10, "CSFB"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1696
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->disableAutoAllTestMode()Z

    move-result v8

    goto :goto_0

    .line 1703
    :cond_3
    const-string v9, "LG_gps_cmd"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "vzw.gps.extracmd.fmw.setgnss_lock"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "vzw.gps.extracmd.fmw.getgnss_lock"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "lge.gps.extracmd.fmw.setgnss_lock"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "lge.gps.extracmd.fmw.getgnss_lock"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    :cond_4
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mModem:Ljava/lang/String;

    const-string v10, "SVLTE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1711
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    const/4 v9, 0x1

    invoke-direct {v6, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1712
    .local v6, latch:Ljava/util/concurrent/CountDownLatch;
    move-object v0, p2

    .line 1715
    .local v0, _extras:Landroid/os/Bundle;
    const-string v9, "vzw.gps.extracmd.fmw.setgnss_lock"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "lge.gps.extracmd.fmw.setgnss_lock"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1719
    :cond_5
    const/4 v7, 0x0

    .line 1722
    .local v7, lock_mode:Z
    const-string v9, "lock_mode"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 1724
    const/4 v9, 0x1

    if-ne v7, v9, :cond_b

    .line 1726
    const-string v9, "cmd"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1727
    const-string v9, "mode"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1728
    const-string v9, "data"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1737
    .end local v7           #lock_mode:Z
    :cond_6
    :goto_1
    const-string v9, "vzw.gps.extracmd.fmw.getgnss_lock"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "lge.gps.extracmd.fmw.getgnss_lock"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1741
    :cond_7
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mG1Command:Z

    .line 1743
    const-string v9, "cmd"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1744
    const-string v9, "mode"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1745
    const-string v9, "data"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1749
    :cond_8
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mLGGpsCmdRet:Z

    .line 1750
    new-instance v2, Lcom/android/server/location/GpsLocationProvider$3;

    invoke-direct {v2, p0, v0, v6}, Lcom/android/server/location/GpsLocationProvider$3;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Bundle;Ljava/util/concurrent/CountDownLatch;)V

    .line 1756
    .local v2, doGpsCmdCallback:Ljava/lang/Runnable;
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1759
    const-wide/16 v9, 0x1388

    :try_start_0
    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v9, v10, v11}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 1760
    const-string v9, "GpsLocationProvider"

    const-string v10, "no response from run_LG_command "

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    if-eqz v2, :cond_9

    .line 1762
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1763
    const/4 v2, 0x0

    .line 1766
    :cond_9
    const-string v9, "GpsLocationProvider"

    const-string v10, "ok,keep going!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1771
    if-eqz v2, :cond_a

    .line 1772
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    :goto_2
    invoke-virtual {v9, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1774
    :cond_a
    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLGGpsCmdRet:Z

    goto/16 :goto_0

    .line 1731
    .end local v2           #doGpsCmdCallback:Ljava/lang/Runnable;
    .restart local v7       #lock_mode:Z
    :cond_b
    const-string v9, "cmd"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1732
    const-string v9, "mode"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1733
    const-string v9, "data"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1767
    .end local v7           #lock_mode:Z
    .restart local v2       #doGpsCmdCallback:Ljava/lang/Runnable;
    :catch_0
    move-exception v3

    .line 1768
    .local v3, e:Ljava/lang/InterruptedException;
    :try_start_1
    const-string v9, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InterruptedException:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1771
    if-eqz v2, :cond_a

    .line 1772
    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    goto :goto_2

    .line 1771
    .end local v3           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v9

    if-eqz v2, :cond_c

    .line 1772
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1771
    :cond_c
    throw v9

    .line 1781
    .end local v0           #_extras:Landroid/os/Bundle;
    .end local v2           #doGpsCmdCallback:Ljava/lang/Runnable;
    .end local v6           #latch:Ljava/util/concurrent/CountDownLatch;
    :cond_d
    const-string v9, "Invisible_Indi"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1782
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1785
    .local v1, callingUid:I
    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->addLGUGPSONClientList(I)V

    .line 1786
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1788
    .end local v1           #callingUid:I
    :cond_e
    const-string v9, "visible_Indi"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1789
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1792
    .restart local v1       #callingUid:I
    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->removeLGUGPSONClientList(I)V

    .line 1793
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1798
    .end local v1           #callingUid:I
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1799
    .local v4, identity:J
    const/4 v8, 0x0

    .line 1801
    .local v8, result:Z
    const-string v9, "delete_aiding_data"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1802
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v8

    .line 1870
    :cond_10
    :goto_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1803
    :cond_11
    const-string v9, "force_time_injection"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1804
    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1805
    const/4 v8, 0x1

    goto :goto_3

    .line 1806
    :cond_12
    const-string v9, "force_xtra_injection"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1807
    iget-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    if-eqz v9, :cond_10

    .line 1808
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->xtraDownloadRequest()V

    .line 1809
    const/4 v8, 0x1

    goto :goto_3

    .line 1812
    :cond_13
    const-string v9, "request_xtra_download"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1813
    iget-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    if-eqz v9, :cond_10

    .line 1814
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->xtraDownloadRequest()V

    .line 1815
    const/4 v8, 0x1

    goto :goto_3

    .line 1817
    :cond_14
    const-string v9, "call_xtra_setting"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1818
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->broadcastXtraSettings()V

    .line 1819
    const/4 v8, 0x1

    goto :goto_3

    .line 1821
    :cond_15
    const-string v9, "set_xtra_download_frequency"

    invoke-virtual {p1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 1823
    const/4 v8, 0x1

    .line 1825
    const-string v9, "set_xtra_download_frequency_024"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_16

    .line 1827
    const/16 v9, 0x5a0

    sput v9, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadFrequency:I

    goto :goto_3

    .line 1829
    :cond_16
    const-string v9, "set_xtra_download_frequency_048"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_17

    .line 1831
    const/16 v9, 0xb40

    sput v9, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadFrequency:I

    goto :goto_3

    .line 1833
    :cond_17
    const-string v9, "set_xtra_download_frequency_072"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_18

    .line 1835
    const/16 v9, 0x10e0

    sput v9, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadFrequency:I

    goto :goto_3

    .line 1837
    :cond_18
    const-string v9, "set_xtra_download_frequency_096"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_19

    .line 1839
    const/16 v9, 0x1680

    sput v9, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadFrequency:I

    goto/16 :goto_3

    .line 1841
    :cond_19
    const-string v9, "set_xtra_download_frequency_120"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1a

    .line 1843
    const/16 v9, 0x1c20

    sput v9, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadFrequency:I

    goto/16 :goto_3

    .line 1845
    :cond_1a
    const-string v9, "set_xtra_download_frequency_144"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1b

    .line 1847
    const/16 v9, 0x21c0

    sput v9, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadFrequency:I

    goto/16 :goto_3

    .line 1849
    :cond_1b
    const-string v9, "set_xtra_download_frequency_168"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1c

    .line 1851
    const/16 v9, 0x2760

    sput v9, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadFrequency:I

    goto/16 :goto_3

    .line 1855
    :cond_1c
    if-eqz p2, :cond_1d

    .line 1857
    const-string v9, "xtra_download_frequency"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    sput v9, Lcom/android/server/location/GpsLocationProvider;->mXtraDownloadFrequency:I

    goto/16 :goto_3

    .line 1860
    :cond_1d
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 1866
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {p0, v9, v10}, Lcom/android/server/location/GpsLocationProvider;->native_inject_raw_command([BI)Z

    move-result v9

    if-nez v9, :cond_10

    .line 1867
    const/4 v8, 0x1

    goto/16 :goto_3
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .locals 8
    .parameter "minTime"
    .parameter "ws"

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1279
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mVendor:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1280
    const-wide/16 v0, 0x270f

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 1311
    :cond_0
    :goto_0
    return-void

    .line 1287
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1288
    long-to-int v0, p1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1290
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStarted:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShotGps:Z

    if-eqz v0, :cond_2

    const-string v0, "GpsLocationProvider"

    const-string v1, "setMinTime : SingleShot"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1299
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in setMinTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1302
    :cond_2
    const-string v0, "GpsLocationProvider"

    const-string v1, "setMinTime : Tracking"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    move-object v2, p0

    move v6, v4

    move v7, v4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1305
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in setMinTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 995
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 1015
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 1005
    const/4 v0, 0x1

    return v0
.end method

.method public updateBatteryStatus(Z)Z
    .locals 1
    .parameter "isBatteryCharging"

    .prologue
    .line 1552
    const/4 v0, 0x1

    return v0
.end method

.method public updateCriteria(IJFZLandroid/location/Criteria;)Z
    .locals 9
    .parameter "action"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "criteria"

    .prologue
    const/4 v6, 0x0

    .line 1315
    const/4 v8, 0x0

    .local v8, return_value:Z
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v7, v6

    .line 1320
    invoke-direct/range {v0 .. v7}, Lcom/android/server/location/GpsLocationProvider;->native_update_criteria(IJFZII)Z

    move-result v8

    .line 1322
    return v8
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 951
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 952
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 1
    .parameter "state"
    .parameter "info"

    .prologue
    .line 762
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 763
    return-void
.end method

.method public updateSettings(ZZZZ)Z
    .locals 1
    .parameter "gpsSetting"
    .parameter "networkProvSetting"
    .parameter "wifiSetting"
    .parameter "agpsSetting"

    .prologue
    .line 1547
    const/4 v0, 0x1

    return v0
.end method
