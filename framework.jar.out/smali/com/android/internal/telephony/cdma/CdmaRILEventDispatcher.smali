.class public final Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;
.super Landroid/os/Handler;
.source "CdmaRILEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$LockOrderIntentReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_LG_NVITEM_RESET:Ljava/lang/String; = "android.intent.action.LG_NVITEM_RESET"

.field public static final CDMA_LOCK_ORDER:Ljava/lang/String; = "android.intent.action.CDMA_LOCK_ORDER"

.field public static final CDMA_MAINT_REQ:Ljava/lang/String; = "android.intent.action.CDMA_MAINT_REQ"

.field private static final EHRPD_LOCK_ORDER:Ljava/lang/String; = "android.intent.action.EHRPD_LOCK_ORDER"

.field private static final EVENT_EMM_REJECT:I = 0x16

.field private static final EVENT_HDR_LOCK:I = 0x14

.field private static final EVENT_LGT_FACTORY_RESET:I = 0x13

.field private static final EVENT_LGT_OTA_SESSION_FAIL:I = 0x1

.field private static final EVENT_LGT_OTA_SESSION_SUCCESS:I = 0x2

.field private static final EVENT_LGT_ROAMING_UI_TEST_SET_DONE:I = 0xc

.field private static final EVENT_LGT_SID_CHANGED:I = 0x4

.field private static final EVENT_LGT_WPBX_CHANGED:I = 0x5

.field private static final EVENT_LOCK_STATE_CHANGED:I = 0x3

.field private static final EVENT_LTE_LOCK:I = 0x15

.field private static final EVENT_NET_ERR_DISP:I = 0xf

.field private static final EVENT_RIL_EVENT_DISPATCHER_BASE:I = 0x0

.field public static final LGT_AUTH_LOCK:Ljava/lang/String; = "android.intent.action.LGT_AUTH_LOCK"

.field public static final LGT_HDR_NETWORK_ERROR:Ljava/lang/String; = "android.intent.action.LGT_HDR_NETWORK_ERROR"

.field public static final LGT_OTA_RES_NOTIF_FAIL:Ljava/lang/String; = "android.intent.action.LGT_OTA_RES_NOTIF_FAIL"

.field public static final LGT_OTA_RES_NOTIF_SAME:Ljava/lang/String; = "android.intent.action.LGT_OTA_RES_NOTIF_SAME"

.field public static final LGT_OTA_RES_NOTIF_UPDATE:Ljava/lang/String; = "android.intent.action.LGT_OTA_RES_NOTIF_UPDATE"

.field public static final LGT_SID_CHANGED:Ljava/lang/String; = "android.intent.action.LGT_SID_CHANGED"

.field public static final LGT_WPBX_MATCH:Ljava/lang/String; = "android.intent.action.LGT_WPBX_MATCH"

.field public static final LGT_WPBX_NOMATCH:Ljava/lang/String; = "android.intent.action.LGT_WPBX_NOMATCH"

.field private static final LTE_EMM_REJECT:Ljava/lang/String; = "android.intent.action.LTE_EMM_REJECT"

.field private static final LTE_LOCK_ORDER:Ljava/lang/String; = "android.intent.action.LTE_LOCK_ORDER"

.field private static final PROPERTY_SERVICE_PROVIDER:Ljava/lang/String; = "ro.telephony.service_provider"

.field private static final SERVICE_PROVIDER_LGT:Ljava/lang/String; = "LGT"

.field private static final SERVICE_PROVIDER_NONE:Ljava/lang/String; = "None"

.field private static final TAG:Ljava/lang/String; = "CdmaRILEventDispatcher"

.field private static rilEventDispatcher:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;


# instance fields
.field private curMessageRes:Ljava/lang/String;

.field private debugFilter:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCm:Lcom/android/internal/telephony/CommandsInterface;

.field private final mContext:Landroid/content/Context;

.field private mIsLGTHDRNetworkError:Z

.field private mIsLGTUnauthenticated:Z

.field private mIsLGTUnregister:Z

.field private mIsLTEAuthError:Z

.field private mIsLTEEMMReject:Z

.field private mLockOrderPopup:Landroid/app/AlertDialog;

.field private mLockOrderReceiver:Landroid/content/BroadcastReceiver;

.field private mRejectNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->rilEventDispatcher:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .parameter "ctx"
    .parameter "commandsInterface"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 138
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 108
    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->debugFilter:Z

    .line 111
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mLockOrderReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;

    .line 119
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->curMessageRes:Ljava/lang/String;

    .line 122
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTUnregister:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTUnauthenticated:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTHDRNetworkError:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLTEAuthError:Z

    .line 132
    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLTEEMMReject:Z

    .line 133
    iput v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mRejectNum:I

    .line 441
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$1;-><init>(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    const-string v1, "CdmaRILEventDispatcher"

    const-string v2, "CdmaRILEventDispatcher created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_LGT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_KT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_JCDMA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v1, "android.intent.action.LGT_ROAMING_UI_TEST_DCN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v1, "android.intent.action.LG_NVITEM_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v4, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOtaSessionFail(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 154
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForOtaSessionSuccess(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLockStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 156
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaSidChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x5

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForWpbxStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 160
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xf

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkErrorDisp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 163
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x14

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForHdrLock(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 164
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x15

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLteLock(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x16

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForLteEmmReject(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 170
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->registerIntentReceivers()V

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->handleLGTRoamingUITest(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->handleNVItemReset()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTUnregister:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTUnregister:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTUnauthenticated:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTUnauthenticated:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTHDRNetworkError:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTHDRNetworkError:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLTEAuthError:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLTEAuthError:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLTEEMMReject:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLTEEMMReject:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mRejectNum:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mRejectNum:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->setPopUp()V

    return-void
.end method

.method public static getCdmaRILEventDispatcher(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;
    .locals 3
    .parameter "ctx"
    .parameter "commandsInterface"

    .prologue
    .line 180
    const-string v0, "CdmaRILEventDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCdmaRILEventDispatcher : rilEventDispatcher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->rilEventDispatcher:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ctx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "commandsInterface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 190
    :goto_0
    return-object v0

    .line 186
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->rilEventDispatcher:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    if-nez v0, :cond_2

    .line 187
    new-instance v0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->rilEventDispatcher:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    .line 190
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->rilEventDispatcher:Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;

    goto :goto_0
.end method

.method private handleHdrLock(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 389
    const-string v2, "CdmaRILEventDispatcher"

    const-string v3, "eHRPD Lock Order Received!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 392
    const-string v2, "CdmaRILEventDispatcher"

    const-string v3, "Err! eHRPD Lock order"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 397
    .local v1, ints:[I
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 398
    const-string v2, "CdmaRILEventDispatcher"

    const-string/jumbo v3, "send intent EHRPD_LOCK_ORDER!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EHRPD_LOCK_ORDER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 400
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleLGTNetworkError(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 368
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 369
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_0

    const-string v1, "CdmaRILEventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_NET_ERR_DISP Err"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 371
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.LGT_HDR_NETWORK_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 374
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_0

    const-string v1, "CdmaRILEventDispatcher"

    const-string/jumbo v2, "intent LGT_HDR_NETWORK_ERROR send "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 376
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_0

    const-string v1, "CdmaRILEventDispatcher"

    const-string v2, "DO NOT send intent LGT_HDR_NETWORK_ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleLGTRoamingUITest(I)V
    .locals 3
    .parameter "Value"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x20030

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setModemIntegerItem(IILandroid/os/Message;)V

    .line 363
    return-void
.end method

.method private handleLgtOtaSessionFail()V
    .locals 3

    .prologue
    .line 271
    const-string v1, "CdmaRILEventDispatcher"

    const-string v2, "LGT OTA SESSION FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.LGT_OTA_RES_NOTIF_FAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 276
    return-void
.end method

.method private handleLgtOtaSessionSuccess(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    .line 279
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->debugFilter:Z

    if-eqz v2, :cond_0

    const-string v2, "CdmaRILEventDispatcher"

    const-string v3, "LGT OTA SESSION SUCCESS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 282
    const-string v2, "CdmaRILEventDispatcher"

    const-string v3, "Err! CDMA Lock order"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_1
    :goto_0
    return-void

    .line 284
    :cond_2
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 287
    .local v1, ints:[I
    aget v2, v1, v4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 288
    const-string v2, "CdmaRILEventDispatcher"

    const-string/jumbo v3, "send intent LGT_OTA_RES_NOTIF_UPDATE!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.LGT_OTA_RES_NOTIF_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 292
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    aget v2, v1, v4

    if-nez v2, :cond_1

    .line 293
    const-string v2, "CdmaRILEventDispatcher"

    const-string/jumbo v3, "send intent LGT_OTA_RES_NOTIF_SAME!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.LGT_OTA_RES_NOTIF_SAME"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleLgtSidChanged(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    const/4 v5, 0x0

    .line 327
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->debugFilter:Z

    if-eqz v2, :cond_0

    const-string v2, "CdmaRILEventDispatcher"

    const-string v3, "LGT ROAMING SID Changed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 330
    const-string v2, "CdmaRILEventDispatcher"

    const-string v3, "Err! LGT SID Changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 334
    .local v1, ints:[I
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->debugFilter:Z

    if-eqz v2, :cond_2

    const-string v2, "CdmaRILEventDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send SID info : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.LGT_SID_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v2, "sid"

    aget v3, v1, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleLgtWpbxChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v4, 0x0

    .line 343
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->debugFilter:Z

    if-eqz v2, :cond_0

    const-string v2, "CdmaRILEventDispatcher"

    const-string v3, "LGT WPBX Match Changed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 346
    const-string v2, "CdmaRILEventDispatcher"

    const-string v3, "Err! LGT WPBX Match"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_1
    :goto_0
    return-void

    .line 348
    :cond_2
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 351
    .local v1, ints:[I
    aget v2, v1, v4

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 352
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.LGT_WPBX_MATCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 354
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    aget v2, v1, v4

    if-nez v2, :cond_1

    .line 355
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.LGT_WPBX_NOMATCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleLockStateChanged(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 301
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->debugFilter:Z

    if-eqz v2, :cond_0

    const-string v2, "CdmaRILEventDispatcher"

    const-string v3, "CDMA Lock Order Received!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 304
    const-string v2, "CdmaRILEventDispatcher"

    const-string v3, "Err! CDMA Lock order"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_1
    :goto_0
    return-void

    .line 306
    :cond_2
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 309
    .local v1, ints:[I
    aget v2, v1, v5

    if-ne v2, v4, :cond_3

    aget v2, v1, v4

    if-ne v2, v4, :cond_3

    .line 310
    const-string v2, "CdmaRILEventDispatcher"

    const-string/jumbo v3, "send intent CDMA_LOCK_ORDER!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CDMA_LOCK_ORDER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 313
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    aget v2, v1, v5

    if-ne v2, v4, :cond_4

    .line 314
    const-string v2, "CdmaRILEventDispatcher"

    const-string/jumbo v3, "send intent CDMA_MAINT_REQ!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CDMA_MAINT_REQ"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 318
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    aget v2, v1, v4

    if-ne v2, v4, :cond_1

    .line 319
    const-string v2, "CdmaRILEventDispatcher"

    const-string/jumbo v3, "send intent LGT_AUTH_LOCK!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.LGT_AUTH_LOCK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleLteEmmReject(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    .line 424
    const-string v2, "CdmaRILEventDispatcher"

    const-string v3, "LTE EMM REJECT Received!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 427
    const-string v2, "CdmaRILEventDispatcher"

    const-string v3, "Err! LTE EMM REJECT order"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_0
    return-void

    .line 429
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 433
    .local v1, ints:[I
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.LTE_EMM_REJECT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v2, "rejectCode"

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleLteLock(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "ar"

    .prologue
    .line 406
    const-string v1, "CdmaRILEventDispatcher"

    const-string v2, "LTE Lock Order Received!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 409
    const-string v1, "CdmaRILEventDispatcher"

    const-string v2, "Err! LTE Lock order"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 414
    .local v0, ints:[I
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 415
    const-string v1, "CdmaRILEventDispatcher"

    const-string/jumbo v2, "send intent LTE_LOCK_ORDER!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleNVItemReset()V
    .locals 4

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x20036

    const/4 v2, 0x0

    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setModemIntegerItem(IILandroid/os/Message;)V

    .line 384
    return-void
.end method

.method private isOtaActivity()Z
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x0

    return v0
.end method

.method private registerIntentReceivers()V
    .locals 3

    .prologue
    .line 519
    const-string v1, "CdmaRILEventDispatcher"

    const-string/jumbo v2, "registerIntentReceivers"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mLockOrderReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 524
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 525
    .local v0, lockOrderfilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CDMA_LOCK_ORDER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    const-string v1, "android.intent.action.CDMA_MAINT_REQ"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    const-string v1, "android.intent.action.LGT_AUTH_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    const-string v1, "android.intent.action.LGT_HDR_NETWORK_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    const-string v1, "android.intent.action.EHRPD_LOCK_ORDER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    const-string v1, "android.intent.action.LTE_LOCK_ORDER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 533
    const-string v1, "android.intent.action.EHRPD_AN_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 536
    const-string v1, "android.intent.action.LTE_EMM_REJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 539
    new-instance v1, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$LockOrderIntentReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$LockOrderIntentReceiver;-><init>(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mLockOrderReceiver:Landroid/content/BroadcastReceiver;

    .line 540
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mLockOrderReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 542
    .end local v0           #lockOrderfilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private setPopUp()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 565
    const-string v3, "CdmaRILEventDispatcher"

    const-string/jumbo v4, "setPopUp"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string v1, ""

    .line 568
    .local v1, message:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTUnregister:Z

    if-eqz v3, :cond_2

    .line 569
    const-string/jumbo v3, "lgt_unregister"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 608
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->isOtaActivity()Z

    move-result v3

    if-nez v3, :cond_1

    .line 609
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->showPopUp(Ljava/lang/String;)V

    .line 611
    :cond_1
    return-void

    .line 570
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTUnauthenticated:Z

    if-eqz v3, :cond_3

    .line 571
    const-string/jumbo v3, "lgt_unauthenticated"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 572
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTHDRNetworkError:Z

    if-eqz v3, :cond_4

    .line 573
    const-string/jumbo v3, "lgt_hdr_network_error"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 576
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLTEAuthError:Z

    if-eqz v3, :cond_5

    .line 577
    const-string/jumbo v3, "lgt_hdr_network_error"

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 581
    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLTEEMMReject:Z

    if-eqz v3, :cond_0

    .line 583
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lgt_lteemmreject"

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mRejectNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "lgt_lteemmreject_sub"

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 585
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mRejectNum:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_6

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mRejectNum:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    .line 587
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 588
    .local v2, toast:Landroid/widget/Toast;
    const/16 v3, 0x50

    invoke-virtual {v2, v3, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 589
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 591
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 592
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v3, "rejectCode"

    iget v4, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mRejectNum:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 594
    if-eqz v0, :cond_7

    .line 595
    const/high16 v3, 0x1080

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 596
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 598
    :cond_7
    const-string v1, ""

    .line 599
    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLTEEMMReject:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLTEAuthError:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTHDRNetworkError:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTUnauthenticated:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mIsLGTUnregister:Z

    .line 600
    iput v5, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mRejectNum:I

    goto/16 :goto_0
.end method

.method private showPopUp(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 617
    invoke-static {}, Lcom/android/internal/telephony/TelephonyUtils;->isFactoryMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    const-string v1, "CdmaRILEventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showPopUp / message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mLockOrderPopup:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRejectNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mRejectNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 625
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_2

    const-string v1, "CdmaRILEventDispatcher"

    const-string v2, "New messageRes close previous popup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 627
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;

    .line 633
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 634
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 636
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const-string v1, "CdmaRILEventDispatcher"

    const-string/jumbo v2, "showPopUp / new AlertDialog.Builder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 642
    const-string v1, "CdmaRILEventDispatcher"

    const-string/jumbo v2, "showPopUp / setMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string/jumbo v1, "telephony_dialog_ok_button"

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyUtils;->getTelephonyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher$2;-><init>(Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 655
    const-string v1, "CdmaRILEventDispatcher"

    const-string/jumbo v2, "showPopUp / setNeutralButton"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;

    .line 658
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 660
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mLockOrderPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 662
    const-string v1, "CdmaRILEventDispatcher"

    const-string/jumbo v2, "showPopUp / show"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 545
    const-string v0, "CdmaRILEventDispatcher"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 696
    const-string v0, "CdmaRILEventDispatcher"

    const-string v1, "CdmaRILEventDispatcher finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mLockOrderReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 701
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOtaSessionFail(Landroid/os/Handler;)V

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOtaSessionSuccess(Landroid/os/Handler;)V

    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLockStateChanged(Landroid/os/Handler;)V

    .line 704
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaSidChanged(Landroid/os/Handler;)V

    .line 705
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForWpbxStateChanged(Landroid/os/Handler;)V

    .line 706
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNetworkErrorDisp(Landroid/os/Handler;)V

    .line 707
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForHdrLock(Landroid/os/Handler;)V

    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLteLock(Landroid/os/Handler;)V

    .line 709
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForLteEmmReject(Landroid/os/Handler;)V

    .line 710
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 198
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_0

    .line 199
    const-string v1, "CdmaRILEventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New RIL Event Message Received : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 268
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 204
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_2

    .line 205
    const-string v1, "CdmaRILEventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_LGT_OTA_SESSION_FAIL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->handleLgtOtaSessionFail()V

    goto :goto_0

    .line 210
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_3

    .line 211
    const-string v1, "CdmaRILEventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_LGT_OTA_SESSION_SUCCESS : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 213
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->handleLgtOtaSessionSuccess(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 217
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_4

    .line 218
    const-string v1, "CdmaRILEventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_LOCK_STATE_CHANGED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 220
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->handleLockStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 224
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_5

    const-string v1, "CdmaRILEventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_LGT_SID_CHANGED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 226
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->handleLgtSidChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 230
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_6

    const-string v1, "CdmaRILEventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_LGT_WPBX_CHANGED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 232
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->handleLgtWpbxChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 236
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_1

    const-string v1, "CdmaRILEventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_LGT_ROAMING_UI_TEST_SET_DONE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 241
    :pswitch_7
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->debugFilter:Z

    if-eqz v1, :cond_7

    const-string v1, "CdmaRILEventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_NET_ERR_DISP : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 243
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->handleLGTNetworkError(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 246
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    const-string v1, "CdmaRILEventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_LGT_FACTORY_RESET : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 251
    :pswitch_9
    const-string v1, "CdmaRILEventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_HDR_LOCK : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 253
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->handleHdrLock(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 256
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_a
    const-string v1, "CdmaRILEventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_LTE_LOCK : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->handleLteLock(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 261
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_b
    const-string v1, "CdmaRILEventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_EMM_REJECT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 263
    .restart local v0       #ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaRILEventDispatcher;->handleLteEmmReject(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
