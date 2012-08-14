.class public Lcom/android/internal/telephony/gsm/UsimLibService;
.super Ljava/lang/Object;
.source "UsimLibService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;
    }
.end annotation


# static fields
.field private static final LGE_USIM_NOT_SUPPORT_MULTI_CHANNEL:I = 0x33

.field private static final LGE_USIM_UIM_CMD_TIMEOUT:I = 0xf

.field private static final TAG:Ljava/lang/String; = "UsimLibService"

.field private static final USIM_AUTH_MAC_FAIL:I = 0x102

.field private static final USIM_AUTH_SYNC_FAIL:I = 0x101

.field public static final USIM_EVENT_GET_AUTH_DONE:I = 0x2

.field public static final USIM_EVENT_GET_IMSI_DONE:I = 0x1

.field public static final USIM_EVENT_GET_MASTER_IMSI_DONE:I = 0xa

.field public static final USIM_EVENT_TIMEOUT:I = 0x0

.field public static final USIM_EVENT_Transmit_Command_To_Sim_DONE:I = 0x4d

.field private static final USIM_FAIL_ALLOC_MEM:I = 0x5

.field private static final USIM_GENERIC_FAIL:I = 0x103

.field private static final USIM_NOT_ENOUGH_MEM:I = 0xe

.field private static final USIM_NOT_SUPPORT:I = 0x1

.field private static final USIM_NO_USIM:I = 0x7

.field private static final USIM_NO_WSIM:I = 0x8

.field private static final USIM_PIN_PUK_BLOCK:I = 0xb

.field private static final USIM_SUCCESS:I = 0x0

.field private static final USIM_TIMEOUT:I = 0x9

.field private static final USIM_TIMEOUT_LGU:I = 0x1

.field private static final USIM_UNKNOWN_ERR:I = 0xa

.field private static final USIM_UNKNOWN_ERR_LGU:I = 0x2

.field private static final USIM_WRONG_PARM:I = 0x2


# instance fields
.field private CommandData:[B

.field private CommandRet:I

.field private CommandSuccess:Z

.field private appIndex:I

.field private authData:[B

.field private authRet:I

.field private authSuccess:Z

.field private imsi:[B

.field private imsiSuccess:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCard:Lcom/android/internal/telephony/UiccCard;

.field private mCardApp:Lcom/android/internal/telephony/UiccCardApplication;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;

.field private mIccFh:Lcom/android/internal/telephony/IccFileHandler;

.field private mListener:Lcom/android/internal/telephony/gsm/UsimServiceListener;

.field private final mLock:Ljava/lang/Object;

.field private mPhone:Lcom/android/internal/telephony/PhoneProxy;

.field mTimeoutTimer:Ljava/util/Timer;

.field private mUiccManager:Lcom/android/internal/telephony/UiccManager;

.field private requested:Z

.field private slotId:I

.field private timeout:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mListener:Lcom/android/internal/telephony/gsm/UsimServiceListener;

    .line 87
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 89
    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->slotId:I

    .line 93
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mLock:Ljava/lang/Object;

    .line 97
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->requested:Z

    .line 98
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->timeout:Z

    .line 99
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->imsiSuccess:Z

    .line 100
    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->authRet:I

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->authSuccess:Z

    .line 102
    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandRet:I

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandSuccess:Z

    .line 150
    new-instance v1, Lcom/android/internal/telephony/gsm/UsimLibService$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/UsimLibService$1;-><init>(Lcom/android/internal/telephony/gsm/UsimLibService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mPhone:Lcom/android/internal/telephony/PhoneProxy;

    .line 143
    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mPhone:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mContext:Landroid/content/Context;

    .line 146
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/UsimLibService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimLibService;->startUsimServiceListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/UsimLibService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimLibService;->getIccValue()V

    return-void
.end method

.method static synthetic access$1000([BII)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 80
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/gsm/UsimLibService;->subArray([BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/gsm/UsimLibService;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->authData:[B

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/gsm/UsimLibService;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->authData:[B

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/gsm/UsimLibService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->authRet:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/telephony/gsm/UsimLibService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->authRet:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/internal/telephony/gsm/UsimLibService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->authSuccess:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/internal/telephony/gsm/UsimLibService;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandData:[B

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/internal/telephony/gsm/UsimLibService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->timeout:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/UsimLibService;)Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mHandler:Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/UsimLibService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimLibService;->cancelTimeoutTimer()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/UsimLibService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->requested:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/gsm/UsimLibService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->requested:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/UsimLibService;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->imsi:[B

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/gsm/UsimLibService;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->imsi:[B

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/gsm/UsimLibService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->imsiSuccess:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/gsm/UsimLibService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/gsm/UsimLibService;)Lcom/android/internal/telephony/IccFileHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    return-object v0
.end method

.method private cancelTimeoutTimer()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mTimeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mTimeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 201
    :cond_0
    return-void
.end method

.method private final getIccValue()V
    .locals 3

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UiccManager;->getUiccCardApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mCardApp:Lcom/android/internal/telephony/UiccCardApplication;

    .line 176
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mCardApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    const-string v1, "UsimLibService"

    const-string v2, "[UsimLibService] getIccValue"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, throwable:Ljava/lang/Exception;
    const-string v1, "UsimLibService"

    const-string v2, "[UsimLibService] error occur while execute getting fileHandler"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private registerTimeoutTimer(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 188
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mTimeoutTimer:Ljava/util/Timer;

    .line 189
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mTimeoutTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/internal/telephony/gsm/UsimLibService$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/UsimLibService$2;-><init>(Lcom/android/internal/telephony/gsm/UsimLibService;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->timeout:Z

    .line 196
    return-void
.end method

.method private final startUsimServiceListener()V
    .locals 3

    .prologue
    .line 165
    new-instance v1, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;-><init>(Lcom/android/internal/telephony/gsm/UsimLibService;Lcom/android/internal/telephony/gsm/UsimLibService$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mHandler:Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;

    .line 166
    new-instance v1, Lcom/android/internal/telephony/gsm/UsimServiceListener;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/UsimServiceListener;-><init>(Lcom/android/internal/telephony/gsm/UsimLibService;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mListener:Lcom/android/internal/telephony/gsm/UsimServiceListener;

    .line 168
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mListener:Lcom/android/internal/telephony/gsm/UsimServiceListener;

    const-class v2, Lcom/android/internal/telephony/gsm/UsimServiceListener;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 169
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 171
    return-void
.end method

.method private static subArray([BII)[B
    .locals 4
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 263
    if-eqz p0, :cond_0

    if-gt p1, p2, :cond_0

    array-length v3, p0

    if-gt v3, p2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 270
    :cond_1
    return-object v0

    .line 265
    :cond_2
    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 267
    .local v0, arrayBuf:[B
    move v1, p1

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 268
    aget-byte v3, p0, v1

    aput-byte v3, v0, v2

    .line 267
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method isCorrectAuthResponse(I)Z
    .locals 1
    .parameter "result"

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 253
    const/4 v0, 0x1

    .line 255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeResponseAUTH(Landroid/os/Parcel;)Landroid/os/Parcel;
    .locals 14
    .parameter "p"

    .prologue
    .line 280
    const/4 v9, 0x0

    .line 282
    .local v9, i:I
    const/4 v3, 0x0

    .local v3, rand_length:I
    const/4 v5, 0x0

    .line 285
    .local v5, autn_length:I
    const-string v0, "UsimLibService"

    const-string/jumbo v1, "makeResponseAUTH()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 288
    const-string v0, "UsimLibService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rand length: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-array v10, v3, [B

    .line 290
    .local v10, rand:[B
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v3, :cond_0

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v10, v9

    .line 290
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 295
    const-string v0, "UsimLibService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autn length: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-array v7, v5, [B

    .line 297
    .local v7, autn:[B
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v5, :cond_1

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v7, v9

    .line 297
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 300
    :cond_1
    invoke-static {v10}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, rand_s:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, autn_s:Ljava/lang/String;
    const-string v0, "UsimLibService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "rand: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", rand length: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " autn: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", autn length: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 308
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/UsimLibService;->registerTimeoutTimer(J)V

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->requested:Z

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mPhone:Lcom/android/internal/telephony/PhoneProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mCardApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mHandler:Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;

    const/4 v13, 0x2

    invoke-virtual {v6, v13}, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneProxy;->getUsimAuthentication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    :goto_2
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v11

    .line 322
    .local v11, reply:Landroid/os/Parcel;
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->timeout:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 323
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 325
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    :goto_3
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->timeout:Z

    .line 355
    :goto_4
    return-object v11

    .line 315
    .end local v11           #reply:Landroid/os/Parcel;
    :catch_0
    move-exception v8

    .line 316
    .local v8, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v0, "UsimLibService"

    const-string/jumbo v1, "interrupted while trying to get AUTH"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 318
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 327
    .restart local v11       #reply:Landroid/os/Parcel;
    :cond_2
    const/16 v0, 0x9

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 334
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->authSuccess:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 335
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->authRet:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimLibService;->isCorrectAuthResponse(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 336
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->authData:[B

    array-length v0, v0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->authData:[B

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_4

    .line 341
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 342
    const-string v0, "UsimLibService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not correct SW1 SW2"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->authRet:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->authRet:I

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    :goto_5
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 345
    :cond_5
    const-string v0, "UsimLibService"

    const-string v1, "Not correct SW1 SW2"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v0, 0x2

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 351
    :cond_6
    const/16 v0, 0xa

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4
.end method

.method makeResponseCommandToUsim(Landroid/os/Parcel;)Landroid/os/Parcel;
    .locals 13
    .parameter "p"

    .prologue
    .line 384
    const/4 v3, 0x0

    .line 385
    .local v3, i:I
    const/4 v2, 0x0

    .line 397
    .local v2, command_length:I
    const-string v9, "UsimLibService"

    const-string/jumbo v10, "makeResponseCommandToUsim"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 400
    const-string v9, "UsimLibService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "command_length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-array v0, v2, [B

    .line 403
    .local v0, command_data:[B
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 406
    .local v8, temp:I
    and-int/lit16 v9, v8, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v3

    .line 403
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 408
    .end local v8           #temp:I
    :cond_0
    const-string v9, "UsimLibService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "command_data:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 412
    .local v1, command_data_string:Ljava/lang/String;
    const-string v9, "UsimLibService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "command_data_string:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 416
    .local v4, logical_ch:Ljava/lang/String;
    const/4 v9, 0x2

    const/16 v10, 0x8

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    const-string v11, "a40400"

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 422
    const-string v9, "UsimLibService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "a40400 loggical ch :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v9, "UsimLibService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "a40400 command_data_string"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const-string v9, "UsimLibService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "a40400 command_data"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_1
    const-string v9, "UsimLibService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UsimLibService : CommandRet = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandRet:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string v9, "UsimLibService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UsimLibService : timeout = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->timeout:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  CommandSuccess = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandSuccess:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v9, "UsimLibService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UsimLibService : CommandData.length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandData:[B

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  CommandData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandData:[B

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandData:[B

    invoke-static {v9}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 454
    .local v7, ret_command_data_string:Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    const-string v11, "61"

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-gt v9, v10, :cond_2

    .line 456
    move-object v6, v4

    .line 457
    .local v6, response_command_data_string:Ljava/lang/String;
    const-string v9, "UsimLibService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UsimLibService : make Get_Response logical ch(cla)  ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    const-string v11, "c00000"

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 459
    const-string v9, "UsimLibService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UsimLibService : make Get_Response  logical ch(cla) + ins+p1+p2  ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v9, "UsimLibService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UsimLibService : ret_command_data_string(2,4) = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    const/4 v12, 0x4

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    const/4 v11, 0x4

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 463
    const-string v9, "UsimLibService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UsimLibService : make Get_Response  ogical ch(cla) +ins+p1+p2+p3 = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v9, "UsimLibService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UsimLibService : make Get_Response  length  = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    new-array v0, v9, [B

    .line 466
    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 467
    const-string v9, "UsimLibService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "c00000 command_data_string"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v9, "UsimLibService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "c00000 command_data"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v9, "UsimLibService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UsimLibService : CommandRet = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandRet:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-string v9, "UsimLibService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UsimLibService : timeout = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->timeout:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  CommandSuccess = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandSuccess:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v9, "UsimLibService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UsimLibService : CommandData.length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandData:[B

    array-length v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  CommandData = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandData:[B

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .end local v6           #response_command_data_string:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 490
    .local v5, reply:Landroid/os/Parcel;
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->timeout:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 491
    const-string v9, "UsimLibService"

    const-string/jumbo v10, "timeout"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const-string/jumbo v9, "ro.telephony.service_provider"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "KT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 495
    const/16 v9, 0xf

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    :goto_1
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->timeout:Z

    .line 525
    :goto_2
    return-object v5

    .line 500
    :cond_3
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandRet:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandData:[B

    array-length v9, v9

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandData:[B

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_1

    .line 509
    :cond_4
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandSuccess:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 510
    const-string v9, "UsimLibService"

    const-string v10, "CommandSuccess == true"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandRet:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandData:[B

    array-length v9, v9

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandData:[B

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_2

    .line 517
    :cond_5
    const-string v9, "UsimLibService"

    const-string v10, "CommandSuccess == false"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget v9, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandRet:I

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandData:[B

    array-length v9, v9

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->CommandData:[B

    invoke-virtual {v5, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_2
.end method

.method makeResponseIMSI(Landroid/os/Parcel;)Landroid/os/Parcel;
    .locals 11
    .parameter "p"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 207
    const-string v3, "UsimLibService"

    const-string/jumbo v4, "makeResponseIMSI()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    const-wide/16 v5, 0x3e8

    :try_start_1
    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/gsm/UsimLibService;->registerTimeoutTimer(J)V

    .line 213
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->requested:Z

    .line 214
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v5, "LGU"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v5, 0x2f40

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mHandler:Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 226
    :goto_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 233
    .local v1, reply:Landroid/os/Parcel;
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->imsiSuccess:Z

    if-ne v3, v8, :cond_1

    .line 234
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->imsi:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->imsi:[B

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 246
    :goto_2
    return-object v1

    .line 218
    .end local v1           #reply:Landroid/os/Parcel;
    :cond_0
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mIccFh:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v5, 0x6f07

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimLibService;->mHandler:Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/UsimLibService$UsimLibServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 227
    :catch_0
    move-exception v2

    .line 228
    .local v2, throwable:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3

    .line 223
    .end local v2           #throwable:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_6
    const-string v3, "UsimLibService"

    const-string/jumbo v5, "interrupted while trying to get IMSI"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 238
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #reply:Landroid/os/Parcel;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LGU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 239
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    :goto_3
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 241
    :cond_2
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3
.end method

.method makeResponseTest(Landroid/os/Parcel;)Landroid/os/Parcel;
    .locals 4
    .parameter "p"

    .prologue
    const/4 v3, 0x4

    .line 364
    new-array v0, v3, [B

    .line 366
    .local v0, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 368
    .local v1, reply:Landroid/os/Parcel;
    const/16 v2, 0x4d2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    const/4 v2, 0x0

    const/4 v3, 0x5

    aput-byte v3, v0, v2

    .line 372
    const/4 v2, 0x1

    const/4 v3, 0x6

    aput-byte v3, v0, v2

    .line 373
    const/4 v2, 0x2

    const/4 v3, 0x7

    aput-byte v3, v0, v2

    .line 374
    const/4 v2, 0x3

    const/16 v3, 0x8

    aput-byte v3, v0, v2

    .line 376
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 378
    return-object v1
.end method
