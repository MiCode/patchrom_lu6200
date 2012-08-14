.class public Lcom/android/internal/telephony/IMSPhone;
.super Lcom/android/internal/telephony/IIMSPhone$Stub;
.source "IMSPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IMSPhone$1;,
        Lcom/android/internal/telephony/IMSPhone$MyHandler;
    }
.end annotation


# static fields
.field private static final BAL_ITEM_DATA_SIP_REG_STATE:I = 0x0

.field private static final BAL_ITEM_DATA_VT_STATE:I = 0x1

.field private static final BAL_ITEM_RADIO_SIP_REG_SENDING:I = 0xa

.field private static final DEBUG_LOG:Z = true

.field private static final EVENT_REQUEST_VSS_LTE_VT_INFO:I = 0x2

.field private static final EVENT_REQUEST_VSS_VT_CTR:I = 0x1

.field private static final OPERATOR:Ljava/lang/String; = null

.field private static final OPERATOR_LGU:Ljava/lang/String; = "LGU"

.field private static final OPERATOR_SKT:Ljava/lang/String; = "SKT"

.field private static final PHONE_STATE_1X_REGISTRATION:I = 0x2

.field private static final PHONE_STATE_CDMA_LOCK_INFO:I = 0x1

.field private static final RIL_RESPONSE:I = 0x64

.field private static final SYS_INFO_ACCESS_NETWORK_INFO:I = 0x3

.field private static final SYS_INFO_CLOSE_DATA_CONNECTION:I = 0x5

.field private static final SYS_INFO_CS_CALL_PROTECTION:I = 0x6

.field private static final SYS_INFO_IMS_REGISTRATION_STATE:I = 0x4

.field private static final SYS_INFO_MODEM_INFO:I = 0x1

.field private static final SYS_INFO_PCSCF_ADDRESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "IMS/IMSPhone"

.field private static mContext:Landroid/content/Context;

.field private static mIMSPhone:Lcom/android/internal/telephony/IMSPhone;

.field private static mSysMonitor:Lcom/android/internal/telephony/ISysMonitor;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CommandsInterface;

.field private mDataConnMngr:Lcom/android/internal/telephony/DataConnectionManager;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    const-string/jumbo v0, "ro.build.target_operator"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    .line 78
    sput-object v2, Lcom/android/internal/telephony/IMSPhone;->mIMSPhone:Lcom/android/internal/telephony/IMSPhone;

    .line 79
    sput-object v2, Lcom/android/internal/telephony/IMSPhone;->mContext:Landroid/content/Context;

    .line 80
    sput-object v2, Lcom/android/internal/telephony/IMSPhone;->mSysMonitor:Lcom/android/internal/telephony/ISysMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Lcom/android/internal/telephony/IIMSPhone$Stub;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 83
    iput-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    .line 84
    iput-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 85
    iput-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mDataConnMngr:Lcom/android/internal/telephony/DataConnectionManager;

    .line 113
    const-string v0, "IMS/IMSPhone"

    const-string v1, "IMSPhone is created..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method private closeDataConnection(Ljava/lang/String;I)V
    .locals 0
    .parameter "apnType"
    .parameter "reason"

    .prologue
    .line 354
    return-void
.end method

.method private getAccessNetworkInfo(I)[Ljava/lang/String;
    .locals 1
    .parameter "radioType"

    .prologue
    .line 365
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/IMSPhone;
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->mIMSPhone:Lcom/android/internal/telephony/IMSPhone;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/android/internal/telephony/IMSPhone;

    invoke-direct {v0}, Lcom/android/internal/telephony/IMSPhone;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/IMSPhone;->mIMSPhone:Lcom/android/internal/telephony/IMSPhone;

    .line 93
    const-string v0, "com.lge.ims.phone"

    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->mIMSPhone:Lcom/android/internal/telephony/IMSPhone;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 96
    const-string v0, "IMS/IMSPhone"

    const-string v1, "IMS phone sevice is Added to service manager"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->mIMSPhone:Lcom/android/internal/telephony/IMSPhone;

    return-object v0
.end method

.method private getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "ipv"

    .prologue
    .line 446
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSysMonitor()Lcom/android/internal/telephony/ISysMonitor;
    .locals 3

    .prologue
    .line 165
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->mSysMonitor:Lcom/android/internal/telephony/ISysMonitor;

    if-nez v0, :cond_0

    .line 167
    const-string v0, "IMS/IMSPhone"

    const-string v1, "ISysMonitor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.ims.action.IMS_PHONE_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->mSysMonitor:Lcom/android/internal/telephony/ISysMonitor;

    return-object v0
.end method

.method public static isPhoneRequired()Z
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v1, "LGU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    const/4 v0, 0x1

    .line 107
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBalItem(II)V
    .locals 5
    .parameter "item"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 452
    const-string v1, "IMS/IMSPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBalItem :: item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), data ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 457
    const-string v1, "IMS/IMSPhone"

    const-string/jumbo v2, "mHandler is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 462
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v1, :cond_2

    .line 464
    const-string v1, "IMS/IMSPhone"

    const-string/jumbo v2, "mCM is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 469
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v2, "LGU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 471
    sparse-switch p1, :sswitch_data_0

    .line 492
    const-string v1, "IMS/IMSPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 496
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    sparse-switch p1, :sswitch_data_1

    .line 523
    const-string v1, "IMS/IMSPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown item ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 504
    :sswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 507
    .local v0, result:Landroid/os/Message;
    const-string v1, "IMS/IMSPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BAL_ITEM_VT_IS_ACTIVE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    if-ne p2, v4, :cond_4

    .line 511
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->SetVtActivation(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 513
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/CommandsInterface;->SetVtDeactivation(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 471
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch

    .line 498
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getSysInfo(IILjava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "item"
    .parameter "param"
    .parameter "paramEx"

    .prologue
    .line 294
    packed-switch p1, :pswitch_data_0

    .line 305
    const-string v0, "IMS/IMSPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handleRemoteException()V
    .locals 3

    .prologue
    .line 178
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/IMSPhone;->mSysMonitor:Lcom/android/internal/telephony/ISysMonitor;

    .line 180
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.ims.action.IMS_PHONE_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 183
    const-string v0, "IMS/IMSPhone"

    const-string/jumbo v1, "handling remote exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public setDefaultPhone(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .parameter "context"
    .parameter "phone"
    .parameter "cm"

    .prologue
    const/4 v2, 0x0

    .line 120
    const-string v0, "IMS/IMSPhone"

    const-string/jumbo v1, "setDefaultPhone is called..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 125
    :cond_0
    const-string v0, "IMS/IMSPhone"

    const-string v1, "context or phone or cm is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    return-void

    .line 130
    :cond_1
    sput-object p1, Lcom/android/internal/telephony/IMSPhone;->mContext:Landroid/content/Context;

    .line 131
    iput-object p3, p0, Lcom/android/internal/telephony/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 132
    iput-object p2, p0, Lcom/android/internal/telephony/IMSPhone;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 134
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v1, "LGU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 137
    new-instance v0, Lcom/android/internal/telephony/IMSPhone$MyHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/IMSPhone$MyHandler;-><init>(Lcom/android/internal/telephony/IMSPhone;Lcom/android/internal/telephony/IMSPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_3

    .line 160
    :cond_3
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.ims.action.IMS_PHONE_STARTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->OPERATOR:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_5

    .line 146
    new-instance v0, Lcom/android/internal/telephony/IMSPhone$MyHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/internal/telephony/IMSPhone$MyHandler;-><init>(Lcom/android/internal/telephony/IMSPhone;Lcom/android/internal/telephony/IMSPhone$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mHandler:Landroid/os/Handler;

    .line 149
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mDataConnMngr:Lcom/android/internal/telephony/DataConnectionManager;

    if-nez v0, :cond_3

    .line 151
    sget-object v0, Lcom/android/internal/telephony/IMSPhone;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/DataConnectionManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/telephony/DataConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mDataConnMngr:Lcom/android/internal/telephony/DataConnectionManager;

    goto :goto_1
.end method

.method public setListener(Lcom/android/internal/telephony/ISysMonitor;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 347
    const-string v0, "IMS/IMSPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setListener listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    sput-object p1, Lcom/android/internal/telephony/IMSPhone;->mSysMonitor:Lcom/android/internal/telephony/ISysMonitor;

    .line 350
    return-void
.end method

.method public setSysInfo(IIILjava/lang/String;)V
    .locals 3
    .parameter "item"
    .parameter "param1"
    .parameter "param2"
    .parameter "paramEx"

    .prologue
    .line 315
    packed-switch p1, :pswitch_data_0

    .line 339
    :pswitch_0
    const-string v0, "IMS/IMSPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 318
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/IMSPhone;->setBalItem(II)V

    goto :goto_0

    .line 327
    :pswitch_3
    invoke-direct {p0, p4, p2}, Lcom/android/internal/telephony/IMSPhone;->closeDataConnection(Ljava/lang/String;I)V

    goto :goto_0

    .line 332
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mDataConnMngr:Lcom/android/internal/telephony/DataConnectionManager;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/IMSPhone;->mDataConnMngr:Lcom/android/internal/telephony/DataConnectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
