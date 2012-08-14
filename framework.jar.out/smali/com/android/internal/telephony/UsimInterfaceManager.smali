.class public Lcom/android/internal/telephony/UsimInterfaceManager;
.super Lcom/android/internal/telephony/IUsimInfo$Stub;
.source "UsimInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;
    }
.end annotation


# static fields
.field public static final EVENT_GET_EF_RECORD_SIZE_DONE:I = 0xb

.field public static final EVENT_LGE_PBM_DELETE_DONE:I = 0x3

.field public static final EVENT_LGE_PBM_GET_INFO_DONE:I = 0x0

.field public static final EVENT_LGE_PBM_READ_DONE:I = 0x1

.field public static final EVENT_LGE_PBM_WRITE_DONE:I = 0x2

.field public static final EVENT_LGE_READ_EF_SMSP:I = 0x9

.field public static final EVENT_LGE_WRITE_EF_SMSP:I = 0xa

.field public static final EVENT_PBM_GET_INIT_STATE_DONE:I = 0xd

.field public static final EVENT_PBREADY:I = 0xe

.field public static final EVENT_READ_FROM_SIM:I = 0x7

.field public static final EVENT_WRITE_TO_SIM:I = 0x8

.field public static final LGE_EVENT_GET_USERNAMSET:I = 0x5

.field public static final LGE_GET_USIM_EXCEPION:I = 0x4

.field public static final LGE_GET_USIM_TYPE:I = 0x5

.field public static final LGE_KT_USIM:I = 0x2

.field public static final LGE_LGU_USIM:I = 0x5

.field public static final LGE_NOT_DECIDED:I = 0x0

.field public static final LGE_OUTBOUND_USIM:I = 0x3

.field public static final LGE_SKT_USIM:I = 0x1

.field public static final LGE_TEST_USIM:I = 0x4

.field public static final LGE_USIM_IS_EMPTY:I = 0x2

.field public static final LGE_USIM_IS_NOT_EMPTY:I = 0x1

.field public static final TAG:Ljava/lang/String; = "LGE_USIM"

.field private static mInstance:Lcom/android/internal/telephony/UsimInterfaceManager;

.field public static mInvalidUsimImsi_usim:Z

.field private static pbm_init_intent_already_sent:Z


# instance fields
.field private DataFromSIM:[B

.field public SCaddressLocalTemp:Ljava/lang/String;

.field public SCaddressTemp:Ljava/lang/String;

.field private WriteResultFromSIM:[B

.field csimFH:Lcom/android/internal/telephony/IccFileHandler;

.field iccFH:Lcom/android/internal/telephony/IccFileHandler;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/internal/telephony/IUsimInfoCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCardApp:Lcom/android/internal/telephony/UiccCardApplication;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field mContext:Landroid/content/Context;

.field mEFRecordSize:[I

.field mLGEIccUtils:Lcom/android/internal/telephony/LGEIccUtils;

.field private final mLock:Ljava/lang/Object;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mSMSPType:Lcom/android/internal/telephony/LGEIccUtils$SMSPType;

.field private mUiccManager:Lcom/android/internal/telephony/UiccManager;

.field private mUiccRecords:Lcom/android/internal/telephony/IccRecords;

.field private mUsimHandler:Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;

.field private slotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    sput-boolean v0, Lcom/android/internal/telephony/UsimInterfaceManager;->pbm_init_intent_already_sent:Z

    .line 104
    sput-boolean v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mInvalidUsimImsi_usim:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .parameter "phone"

    .prologue
    const/4 v4, 0x0

    .line 148
    invoke-direct {p0}, Lcom/android/internal/telephony/IUsimInfo$Stub;-><init>()V

    .line 106
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 109
    iput-object v4, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 111
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->slotId:I

    .line 122
    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mEFRecordSize:[I

    .line 123
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;

    .line 126
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->WriteResultFromSIM:[B

    .line 183
    new-instance v1, Lcom/android/internal/telephony/UsimInterfaceManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/UsimInterfaceManager$1;-><init>(Lcom/android/internal/telephony/UsimInterfaceManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    iput-object p1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 151
    check-cast p1, Lcom/android/internal/telephony/PhoneBase;

    .end local p1
    iget-object v1, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 152
    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 153
    const-string v1, "LGE_USIM"

    const-string v2, "[UIM] UsimInterfaceManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v1, Lcom/android/internal/telephony/LGEIccUtils;

    invoke-direct {v1}, Lcom/android/internal/telephony/LGEIccUtils;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mLGEIccUtils:Lcom/android/internal/telephony/LGEIccUtils;

    .line 157
    new-instance v1, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;-><init>(Lcom/android/internal/telephony/UsimInterfaceManager;Lcom/android/internal/telephony/UsimInterfaceManager$1;)V

    iput-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUsimHandler:Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;

    .line 159
    const-string/jumbo v1, "iusiminfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 160
    const-string/jumbo v1, "iusiminfo"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 163
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v1, "android.intent.action.INVALID_USIM_IMSI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mContext:Landroid/content/Context;

    .line 168
    iget-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUsimHandler:Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;

    const/16 v3, 0xe

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForPbReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 169
    sget-boolean v1, Lcom/android/internal/telephony/UsimInterfaceManager;->pbm_init_intent_already_sent:Z

    if-nez v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUsimHandler:Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->PBMGetInitState(Landroid/os/Message;)V

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/UsimInterfaceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/telephony/UsimInterfaceManager;->getIccValue()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/UsimInterfaceManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->DataFromSIM:[B

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/UsimInterfaceManager;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->DataFromSIM:[B

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/UsimInterfaceManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/UsimInterfaceManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->WriteResultFromSIM:[B

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/internal/telephony/UsimInterfaceManager;->pbm_init_intent_already_sent:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    sput-boolean p0, Lcom/android/internal/telephony/UsimInterfaceManager;->pbm_init_intent_already_sent:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/UsimInterfaceManager;)Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUsimHandler:Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;

    return-object v0
.end method

.method private final getIccValue()V
    .locals 5

    .prologue
    .line 205
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget v3, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->slotId:I

    sget-object v4, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/UiccManager;->getUiccCardApplication(ILcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCardApp:Lcom/android/internal/telephony/UiccCardApplication;

    .line 206
    iget-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCardApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUiccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 207
    iget-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCardApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->iccFH:Lcom/android/internal/telephony/IccFileHandler;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LGU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget v3, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->slotId:I

    sget-object v4, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/UiccManager;->getUiccCardApplication(ILcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCardApp:Lcom/android/internal/telephony/UiccCardApplication;

    .line 215
    iget-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCardApp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->csimFH:Lcom/android/internal/telephony/IccFileHandler;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 221
    :cond_0
    :goto_1
    const-string v2, "LGE_USIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UIM] getIccValue - PhoneType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, re:Ljava/lang/RuntimeException;
    const-string v2, "LGE_USIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UIM] error while excute 3gpp Records : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    .end local v0           #re:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 217
    .local v1, re2:Ljava/lang/RuntimeException;
    const-string v2, "LGE_USIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UIM] error while excute get csimFH : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getInstance()Lcom/android/internal/telephony/UsimInterfaceManager;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mInstance:Lcom/android/internal/telephony/UsimInterfaceManager;

    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mInstance:Lcom/android/internal/telephony/UsimInterfaceManager;

    goto :goto_0
.end method

.method public static getInstance(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/UsimInterfaceManager;
    .locals 1
    .parameter "phone"

    .prologue
    .line 139
    sget-object v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mInstance:Lcom/android/internal/telephony/UsimInterfaceManager;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/android/internal/telephony/UsimInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/UsimInterfaceManager;-><init>(Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mInstance:Lcom/android/internal/telephony/UsimInterfaceManager;

    .line 144
    sget-object v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mInstance:Lcom/android/internal/telephony/UsimInterfaceManager;

    :goto_0
    return-object v0

    .line 142
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mInstance:Lcom/android/internal/telephony/UsimInterfaceManager;

    goto :goto_0
.end method


# virtual methods
.method public PBMDeleteRecord(JII)V
    .locals 4
    .parameter "uid"
    .parameter "EFdevice"
    .parameter "rec_index"

    .prologue
    .line 242
    const-string v0, "LGE_USIM"

    const-string v1, "[UIM] PBMDeleteRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUsimHandler:Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;

    const/4 v2, 0x3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p3, p4, v1}, Lcom/android/internal/telephony/CommandsInterface;->PBMDeleteRecord(IILandroid/os/Message;)V

    .line 244
    return-void
.end method

.method public PBMGetInfo(JI)V
    .locals 4
    .parameter "uid"
    .parameter "EFdevice"

    .prologue
    .line 246
    const-string v0, "LGE_USIM"

    const-string v1, "[UIM] PBMGetInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUsimHandler:Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lcom/android/internal/telephony/CommandsInterface;->PBMGetInfo(ILandroid/os/Message;)V

    .line 248
    return-void
.end method

.method public PBMReadRecord(JII)V
    .locals 4
    .parameter "uid"
    .parameter "EFdevice"
    .parameter "rec_index"

    .prologue
    .line 234
    const-string v0, "LGE_USIM"

    const-string v1, "[UIM] PBMReadRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUsimHandler:Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p3, p4, v1}, Lcom/android/internal/telephony/CommandsInterface;->PBMReadRecord(IILandroid/os/Message;)V

    .line 236
    return-void
.end method

.method public PBMWriteRecord(JLcom/android/internal/telephony/gsm/LGE_PBM_Records;)V
    .locals 4
    .parameter "uid"
    .parameter "RecordData"

    .prologue
    .line 238
    const-string v0, "LGE_USIM"

    const-string v1, "[UIM] PBMWriteRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUsimHandler:Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;

    const/4 v2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lcom/android/internal/telephony/CommandsInterface;->PBMWriteRecord(Lcom/android/internal/telephony/gsm/LGE_PBM_Records;Landroid/os/Message;)V

    .line 240
    return-void
.end method

.method public ReadFromSIM(I)[B
    .locals 7
    .parameter "EF_ID"

    .prologue
    .line 365
    const-string v2, "LGE_USIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UsimInterfaceManager] ReadFromSIM : EF_ID => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    sparse-switch p1, :sswitch_data_0

    .line 388
    :try_start_1
    const-string v2, "LGE_USIM"

    const-string v4, "[UsimInterfaceManager] Not supported EF IDs"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v2, 0x0

    monitor-exit v3

    .line 405
    :goto_0
    return-object v2

    .line 382
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->iccFH:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v4, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUsimHandler:Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 394
    const-string v2, "LGE_USIM"

    const-string v4, "[UsimInterfaceManager] ReadFromSIM() processed."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 400
    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 405
    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->DataFromSIM:[B

    goto :goto_0

    .line 385
    :sswitch_1
    :try_start_4
    iget-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->csimFH:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUsimHandler:Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, p1, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto :goto_1

    .line 400
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 402
    :catch_0
    move-exception v1

    .line 403
    .local v1, throwable:Ljava/lang/Throwable;
    const-string v2, "LGE_USIM"

    const-string v3, "[UIM] error while excute ReadFromSIM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 396
    .end local v1           #throwable:Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 398
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_6
    const-string v2, "LGE_USIM"

    const-string/jumbo v4, "interrupted while trying to Read EF file from ICC"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 370
    :sswitch_data_0
    .sparse-switch
        0x2f39 -> :sswitch_0
        0x2f40 -> :sswitch_0
        0x2f41 -> :sswitch_0
        0x2f42 -> :sswitch_0
        0x2f43 -> :sswitch_0
        0x2f50 -> :sswitch_0
        0x4f22 -> :sswitch_0
        0x4f55 -> :sswitch_0
        0x6f07 -> :sswitch_0
        0x6f44 -> :sswitch_1
        0x6f7b -> :sswitch_0
    .end sparse-switch
.end method

.method public WriteToSIM(I[B)[B
    .locals 10
    .parameter "EF_ID"
    .parameter "data_to_be_sent"

    .prologue
    const/4 v0, 0x0

    .line 409
    invoke-static {p2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    .line 410
    .local v8, tmpString:Ljava/lang/String;
    const-string v1, "LGE_USIM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[UsimInterfaceManager] WriteToSIM : EF_ID => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Data to be sent => 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    sparse-switch p1, :sswitch_data_0

    .line 430
    :try_start_1
    const-string v1, "LGE_USIM"

    const-string v2, "[UsimInterfaceManager] Not supported EF IDs"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    monitor-exit v9

    .line 447
    :goto_0
    return-object v0

    .line 424
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->iccFH:Lcom/android/internal/telephony/IccFileHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUsimHandler:Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 436
    const-string v0, "LGE_USIM"

    const-string v1, "[UsimInterfaceManager] ReadFromSIM() processed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 442
    :goto_2
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 447
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->WriteResultFromSIM:[B

    goto :goto_0

    .line 427
    :sswitch_1
    :try_start_4
    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->csimFH:Lcom/android/internal/telephony/IccFileHandler;

    const/4 v2, 0x2

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUsimHandler:Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    move v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 444
    :catch_0
    move-exception v7

    .line 445
    .local v7, throwable:Ljava/lang/Throwable;
    const-string v0, "LGE_USIM"

    const-string v1, "[UIM] error while excute WriteToSIM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 438
    .end local v7           #throwable:Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    .line 440
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_6
    const-string v0, "LGE_USIM"

    const-string/jumbo v1, "interrupted while trying to Read EF file from ICC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 415
    nop

    :sswitch_data_0
    .sparse-switch
        0x2f39 -> :sswitch_0
        0x2f40 -> :sswitch_0
        0x2f41 -> :sswitch_0
        0x2f42 -> :sswitch_0
        0x2f43 -> :sswitch_0
        0x2f50 -> :sswitch_0
        0x6f44 -> :sswitch_1
        0x6f7b -> :sswitch_0
    .end sparse-switch
.end method

.method public getEfRecordsSize(I)I
    .locals 7
    .parameter "efid"

    .prologue
    .line 313
    const-string v4, "LGE_USIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEfRecordsSize: efid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v2, 0x0

    .line 317
    .local v2, size:I
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUsimHandler:Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;

    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 321
    .local v1, response:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->iccFH:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v4, p1, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 324
    iget-object v4, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mEFRecordSize:[I

    const/4 v6, 0x2

    aget v2, v4, v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 328
    :goto_0
    :try_start_3
    monitor-exit v5

    .line 333
    .end local v1           #response:Landroid/os/Message;
    :goto_1
    return v2

    .line 325
    .restart local v1       #response:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "LGE_USIM"

    const-string/jumbo v6, "interrupted while trying to load from the SIM"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #response:Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 330
    :catch_1
    move-exception v3

    .line 331
    .local v3, throwable:Ljava/lang/Throwable;
    const-string v4, "LGE_USIM"

    const-string v5, "[UIM] error while excute getEfRecordsSize"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getIMSI_M()Ljava/lang/String;
    .locals 3

    .prologue
    .line 559
    iget-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UiccManager;->getIccRecords(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 561
    .local v0, tmpUiccRecords:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_0

    .line 563
    iget-object v1, v0, Lcom/android/internal/telephony/IccRecords;->imsi_m:Ljava/lang/String;

    .line 566
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSCAddressFromIcc()Ljava/lang/String;
    .locals 9

    .prologue
    .line 263
    const-string v1, ""

    .line 264
    .local v1, scAddr:Ljava/lang/String;
    const-string v3, "LGE_USIM"

    const-string v4, "[UIM] getSCAddressFromIcc"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 268
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->iccFH:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v5, 0x6f42

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUsimHandler:Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 271
    iget-object v3, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mLGEIccUtils:Lcom/android/internal/telephony/LGEIccUtils;

    iget-object v5, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mSMSPType:Lcom/android/internal/telephony/LGEIccUtils$SMSPType;

    iget-object v5, v5, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/LGEIccUtils;->decodeSCAddr([B)Ljava/lang/String;

    move-result-object v1

    .line 272
    const-string v3, "LGE_USIM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Result -SCaddr:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 276
    :goto_0
    :try_start_3
    monitor-exit v4

    .line 282
    :goto_1
    return-object v1

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "LGE_USIM"

    const-string/jumbo v5, "interrupted while trying to Read SC address"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 278
    :catch_1
    move-exception v2

    .line 279
    .local v2, throwable:Ljava/lang/Throwable;
    const-string v3, "LGE_USIM"

    const-string v4, "[UIM] error while excute getSCAddressFromIcc"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getSCAddressTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->SCaddressTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getUsimIsEmpty()I
    .locals 5

    .prologue
    .line 351
    const/4 v1, 0x0

    .line 353
    .local v1, ret_val:I
    iget-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UiccManager;->getIccRecords(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUiccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 355
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUiccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRecords;->getUsimIsEmpty()I

    move-result v1

    .line 356
    const-string v2, "LGE_USIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UIM] getUsimIsEmpty : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    return v1

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "LGE_USIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UIM] error occur while getUsimIsEmpty :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUsimIsSponIMSI()I
    .locals 5

    .prologue
    .line 337
    const/4 v1, 0x0

    .line 339
    .local v1, isSponIMSI:I
    iget-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/UiccManager;->getIccRecords(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUiccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 341
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUiccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRecords;->getUsimIsSponIMSI()I

    move-result v1

    .line 342
    const-string v2, "LGE_USIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UIM] isSponIMSI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return v1

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "LGE_USIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UIM] error occur while getUsimIsSponIMSI :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected publish()V
    .locals 1

    .prologue
    .line 179
    const-string/jumbo v0, "iusiminfo"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 180
    return-void
.end method

.method public registerCallback(JLcom/android/internal/telephony/IUsimInfoCallback;)V
    .locals 2
    .parameter "uid"
    .parameter "cb"

    .prologue
    .line 226
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 227
    :cond_0
    return-void
.end method

.method public sendChangeToHomeIMSI()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 520
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 523
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd6

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 526
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 529
    const/16 v4, 0x19

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 530
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 531
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 534
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 535
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 536
    const/16 v4, 0x82

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 537
    const/16 v4, 0x81

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 540
    const/16 v4, 0x70

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 541
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 542
    const/16 v4, 0x54

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v4, 0xf0

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v4, 0x60

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 544
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 547
    .local v3, rawData:[B
    array-length v4, v3

    add-int/lit8 v2, v4, -0x2

    .line 548
    .local v2, len:I
    int-to-byte v4, v2

    aput-byte v4, v3, v5

    .line 550
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, hexString:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 553
    return-void
.end method

.method public sendChangeToSponIMSI()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 452
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 455
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd6

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 458
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 461
    const/16 v4, 0x19

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 462
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 463
    const/16 v4, 0x30

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 466
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 467
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 468
    const/16 v4, 0x82

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 469
    const/16 v4, 0x81

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 472
    const/16 v4, 0x70

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 473
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 475
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v4, 0xf4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 477
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 480
    .local v3, rawData:[B
    array-length v4, v3

    add-int/lit8 v2, v4, -0x2

    .line 481
    .local v2, len:I
    int-to-byte v4, v2

    aput-byte v4, v3, v6

    .line 483
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, hexString:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 486
    return-void
.end method

.method public sendUpdatePLMN()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 489
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 492
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd6

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 495
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 498
    const/16 v4, 0x19

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 499
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 500
    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 503
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 504
    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 505
    const/16 v4, 0x82

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 506
    const/16 v4, 0x81

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 508
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 511
    .local v3, rawData:[B
    array-length v4, v3

    add-int/lit8 v2, v4, -0x2

    .line 512
    .local v2, len:I
    int-to-byte v4, v2

    aput-byte v4, v3, v5

    .line 514
    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 516
    .local v1, hexString:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 517
    return-void
.end method

.method public setSCAddressTemp(Ljava/lang/String;)V
    .locals 3
    .parameter "SCA"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->SCaddressTemp:Ljava/lang/String;

    .line 256
    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->SCaddressTemp:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 257
    const-string v0, "LGE_USIM"

    const-string v1, "SCaddressTemp:null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_0
    return-void

    .line 259
    :cond_0
    const-string v0, "LGE_USIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCaddressTemp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSCAddressToIcc(Ljava/lang/String;)V
    .locals 10
    .parameter "scAddr"

    .prologue
    .line 287
    const-string v0, "LGE_USIM"

    const-string v1, "[UIM] setSCAddressToIcc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 292
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mSMSPType:Lcom/android/internal/telephony/LGEIccUtils$SMSPType;

    iget-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mLGEIccUtils:Lcom/android/internal/telephony/LGEIccUtils;

    iget-object v2, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mSMSPType:Lcom/android/internal/telephony/LGEIccUtils$SMSPType;

    iget-object v2, v2, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/LGEIccUtils;->encodeSCAddr(Ljava/lang/String;[B)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    .line 293
    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mLGEIccUtils:Lcom/android/internal/telephony/LGEIccUtils;

    iget-object v1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mSMSPType:Lcom/android/internal/telephony/LGEIccUtils$SMSPType;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LGEIccUtils;->composeSMSP(Lcom/android/internal/telephony/LGEIccUtils$SMSPType;)[B

    move-result-object v3

    .line 294
    .local v3, writeData:[B
    const-string v0, "LGE_USIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EFWrite "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iput-object p1, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->SCaddressLocalTemp:Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->iccFH:Lcom/android/internal/telephony/IccFileHandler;

    const/16 v1, 0x6f42

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mUsimHandler:Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;

    const/16 v9, 0xa

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/UsimInterfaceManager$UsimHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 305
    :goto_0
    :try_start_3
    monitor-exit v8

    .line 310
    .end local v3           #writeData:[B
    :goto_1
    return-void

    .line 302
    .restart local v3       #writeData:[B
    :catch_0
    move-exception v6

    .line 303
    .local v6, e:Ljava/lang/InterruptedException;
    const-string v0, "LGE_USIM"

    const-string/jumbo v1, "interrupted while trying to update SC address"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    .end local v3           #writeData:[B
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 307
    :catch_1
    move-exception v7

    .line 308
    .local v7, throwable:Ljava/lang/Throwable;
    const-string v0, "LGE_USIM"

    const-string v1, "[UIM] error while excute setSCAddressToIcc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public unregisterCallback(JLcom/android/internal/telephony/IUsimInfoCallback;)V
    .locals 1
    .parameter "uid"
    .parameter "cb"

    .prologue
    .line 230
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UsimInterfaceManager;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p3}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 231
    :cond_0
    return-void
.end method
