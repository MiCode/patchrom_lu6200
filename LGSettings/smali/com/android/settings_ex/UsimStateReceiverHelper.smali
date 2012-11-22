.class public abstract Lcom/android/settings_ex/UsimStateReceiverHelper;
.super Landroid/content/BroadcastReceiver;
.source "UsimStateReceiverHelper.java"


# static fields
.field private static final SIM_STATE_TABLE:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static isSKT:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDownloadState:I

.field private mInitialStateNotified:Z

.field private mLastMessage:I

.field private mLock:Ljava/lang/Object;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mReceiveFlag:I

.field private mServiceState:I

.field private mSimState:I

.field private mUsimService:Lcom/android/internal/telephony/UsimService;

.field private sContactsLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-class v0, Lcom/android/settings_ex/UsimStateReceiverHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LOADED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ABSENT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CARD_IO_ERROR"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "READY"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IMSI"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->SIM_STATE_TABLE:[Ljava/lang/String;

    .line 119
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->isSKT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->sContactsLoaded:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mReceiveFlag:I

    iput v1, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mSimState:I

    iput v1, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mDownloadState:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mServiceState:I

    iput-boolean v1, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mInitialStateNotified:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mUsimService:Lcom/android/internal/telephony/UsimService;

    iput v1, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mLastMessage:I

    return-void
.end method

.method private isGlobalUSIMDownloadRequires()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    sget-boolean v5, Lcom/android/settings_ex/UsimStateReceiverHelper;->isSKT:Z

    if-nez v5, :cond_0

    :goto_0
    return v4

    :cond_0
    sget-object v5, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v6, "| Is Global USIM Download Requireed?"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 575
    .local v0, configuration:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->mcc:I

    .line 576
    .local v2, mcc:I
    iget v3, v0, Landroid/content/res/Configuration;->mnc:I

    .line 577
    .local v3, mnc:I
    sget-object v5, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "> mcc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mnc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const/16 v5, 0x1c2

    if-ne v2, v5, :cond_1

    const/4 v5, 0x5

    if-ne v3, v5, :cond_1

    .line 579
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, line1Number:Ljava/lang/String;
    sget-object v5, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "> lineNumber="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    sget-object v4, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v5, ">> Global USIM Download Requires!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    goto :goto_0

    .end local v1           #line1Number:Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v6, ">> Not required"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isNoIMSIUSIMDownloadRequires()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v4, Lcom/android/settings_ex/UsimStateReceiverHelper;->isSKT:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->getUsimType()I

    move-result v1

    .local v1, usimtype:I
    invoke-virtual {p0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->getUsimIsEmpty()I

    move-result v0

    .local v0, usimIsEmpty:I
    if-ne v1, v3, :cond_0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    move v2, v3

    .line 606
    goto :goto_0
.end method

.method private isStateReceived(I)Z
    .locals 1
    .parameter "aMask"

    .prologue
    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mReceiveFlag:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyStateChanged(I)V
    .locals 5
    .parameter "aMessage"

    .prologue
    const/high16 v4, 0x1

    const/4 v3, 0x1

    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStateChanged mLastMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mLastMessage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mLastMessage:I

    if-ne v0, p1, :cond_1

    if-ne p1, v3, :cond_0

    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mSimState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/settings_ex/UsimStateReceiverHelper;->toMessageString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mInitialStateNotified:Z

    if-eqz v0, :cond_2

    if-lt p1, v4, :cond_2

    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v1, "> consume..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-lt p1, v4, :cond_3

    iput-boolean v3, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mInitialStateNotified:Z

    :cond_3
    iput p1, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mLastMessage:I

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/UsimStateReceiverHelper;->onStateChanged(I)V

    goto :goto_0
.end method

.method private onContactsLoadingStateChangedReceive(Landroid/content/Intent;)V
    .locals 5
    .parameter "aIntent"

    .prologue
    const/4 v4, 0x1

    iget-boolean v1, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->sContactsLoaded:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "* Contacts Loading State Changed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.phone.ACTION_REFRESH_SIMSEARCH_STATUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mInitialized"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->sContactsLoaded:Z

    invoke-direct {p0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->onStateChangeReceive()V

    goto :goto_0
.end method

.method private onServiceStateChangedReceive(Landroid/content/Intent;)V
    .locals 5
    .parameter "aIntent"

    .prologue
    const/4 v4, 0x0

    sget-object v1, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "* Service State Changed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "state"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, state:I
    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->setServiceState(I)V

    invoke-direct {p0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->onStateChangeReceive()V

    return-void
.end method

.method private onSimStateChangedReceive(Landroid/content/Intent;)V
    .locals 6
    .parameter "aIntent"

    .prologue
    const/4 v5, 0x1

    sget-object v2, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "* Sim State Changed("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, icc_state:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->parseSimState(Ljava/lang/String;)I

    move-result v1

    .local v1, state:I
    sget-object v2, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v1, :pswitch_data_0

    sget-object v2, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v3, "|ignore..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings_ex/UsimStateReceiverHelper;->setSimState(I)V

    invoke-direct {p0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->onStateChangeReceive()V

    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->isNoIMSIUSIMDownloadRequires()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v5}, Lcom/android/settings_ex/UsimStateReceiverHelper;->setDownloadState(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/UsimStateReceiverHelper;->setDownloadState(I)V

    goto :goto_0

    .line 533
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->isNoIMSIUSIMDownloadRequires()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v5}, Lcom/android/settings_ex/UsimStateReceiverHelper;->setDownloadState(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->isNoIMSIUSIMDownloadRequires()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v5}, Lcom/android/settings_ex/UsimStateReceiverHelper;->setDownloadState(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->isGlobalUSIMDownloadRequires()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->isNoIMSIUSIMDownloadRequires()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v5}, Lcom/android/settings_ex/UsimStateReceiverHelper;->setDownloadState(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized onStateChangeReceive()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->printState()V

    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChangeReceive > mSimState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mSimState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mInitialStateNotified:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->isNoIMSIUSIMDownloadRequires()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->sContactsLoaded:Z

    if-eqz v0, :cond_1

    const v0, 0x10001

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x2

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 308
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->isStateReceived(I)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v1, "> sim state is not yet confirmed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mSimState:I

    if-ne v0, v3, :cond_4

    const v0, 0x10005

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mSimState:I

    if-ne v0, v5, :cond_6

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->isStateReceived(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 324
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->isStateReceived(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mServiceState:I

    if-eqz v0, :cond_5

    const v0, 0x10003

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto :goto_0

    :cond_5
    const v0, 0x10006

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto :goto_0

    .line 335
    :cond_6
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->isStateReceived(I)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v1, "> download state is not yet confirmed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mDownloadState:I

    if-ne v0, v4, :cond_8

    const v0, 0x10002

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto :goto_0

    :cond_8
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->isStateReceived(I)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v1, "> service state is not yet confirmed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mServiceState:I

    if-ne v0, v3, :cond_b

    iget-boolean v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->sContactsLoaded:Z

    if-eqz v0, :cond_a

    const v0, 0x10001

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto :goto_0

    :cond_a
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mSimState:I

    if-ne v0, v4, :cond_11

    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mServiceState:I

    if-ne v0, v3, :cond_e

    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mDownloadState:I

    if-ne v0, v3, :cond_d

    iget-boolean v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->sContactsLoaded:Z

    if-eqz v0, :cond_c

    const v0, 0x10001

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto/16 :goto_0

    .line 388
    :cond_d
    const v0, 0x10002

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto/16 :goto_0

    :cond_e
    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mDownloadState:I

    if-ne v0, v3, :cond_10

    iget-boolean v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->sContactsLoaded:Z

    if-eqz v0, :cond_f

    const v0, 0x10001

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto/16 :goto_0

    .line 403
    :cond_10
    const v0, 0x10002

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto/16 :goto_0

    :cond_11
    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mSimState:I

    if-ne v0, v3, :cond_15

    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mServiceState:I

    if-ne v0, v3, :cond_13

    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mDownloadState:I

    if-ne v0, v3, :cond_12

    const v0, 0x10004

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto/16 :goto_0

    :cond_12
    const v0, 0x10002

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto/16 :goto_0

    :cond_13
    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mDownloadState:I

    if-ne v0, v3, :cond_14

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto/16 :goto_0

    :cond_14
    const v0, 0x10002

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto/16 :goto_0

    :cond_15
    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mSimState:I

    if-ne v0, v5, :cond_19

    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mServiceState:I

    if-ne v0, v3, :cond_17

    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mDownloadState:I

    if-ne v0, v3, :cond_16

    const v0, 0x10004

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto/16 :goto_0

    :cond_16
    const v0, 0x10002

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto/16 :goto_0

    :cond_17
    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mDownloadState:I

    if-ne v0, v3, :cond_18

    const v0, 0x10004

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto/16 :goto_0

    :cond_18
    const v0, 0x10002

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto/16 :goto_0

    .line 459
    :cond_19
    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mSimState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v1, "IGNORE ready state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 461
    :cond_1a
    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mSimState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1b

    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v1, "IMSI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x10001

    invoke-direct {p0, v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->notifyStateChanged(I)V

    goto/16 :goto_0

    :cond_1b
    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v1, "IGNORE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private parseSimState(Ljava/lang/String;)I
    .locals 2
    .parameter "aState"

    .prologue
    .line 561
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    sget-object v1, Lcom/android/settings_ex/UsimStateReceiverHelper;->SIM_STATE_TABLE:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/settings_ex/UsimStateReceiverHelper;->SIM_STATE_TABLE:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    add-int/lit8 v1, v0, 0x1

    .line 566
    :goto_1
    return v1

    .line 561
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private printState()V
    .locals 4

    .prologue
    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v1, "<STATE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " |State=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mReceiveFlag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    :goto_0
    const/4 v0, 0x1

    :try_start_1
    iget v1, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mSimState:I

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " |SimState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/UsimStateReceiverHelper;->SIM_STATE_TABLE:[Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mSimState:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mDownloadState:I

    packed-switch v0, :pswitch_data_0

    :goto_2
    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mServiceState:I

    packed-switch v0, :pswitch_data_1

    :goto_3
    return-void

    :cond_0
    :try_start_2
    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v1, " |SimState=Undefined"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 199
    :catch_0
    move-exception v0

    goto :goto_1

    .line 203
    :pswitch_0
    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v1, " |DownloadState=DownloadRequired"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 206
    :pswitch_1
    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v1, " |DownloadState=Donwloaded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 209
    :pswitch_2
    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v1, " |DownloadState=Undefined"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 215
    :pswitch_3
    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v1, " |ServiceState=Emergency Only>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 218
    :pswitch_4
    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v1, " |ServiceState=InService>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 221
    :pswitch_5
    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v1, " |ServiceState=OutOfService>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 224
    :pswitch_6
    sget-object v0, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v1, " |ServiceState=PowerOff>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 193
    :catch_1
    move-exception v0

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 213
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method private setDownloadState(I)V
    .locals 1
    .parameter "aState"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mDownloadState:I

    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mReceiveFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mReceiveFlag:I

    return-void
.end method

.method private setServiceState(I)V
    .locals 1
    .parameter "aState"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mServiceState:I

    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mReceiveFlag:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mReceiveFlag:I

    return-void
.end method

.method private setSimState(I)V
    .locals 1
    .parameter "aState"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mSimState:I

    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mReceiveFlag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mReceiveFlag:I

    return-void
.end method

.method private toMessageString(I)Ljava/lang/String;
    .locals 1
    .parameter "aMessage"

    .prologue
    .line 230
    sparse-switch p1, :sswitch_data_0

    .line 250
    const-string v0, "Undefined"

    :goto_0
    return-object v0

    .line 232
    :sswitch_0
    const-string v0, "Init"

    goto :goto_0

    .line 234
    :sswitch_1
    const-string v0, "StateChanged"

    goto :goto_0

    .line 236
    :sswitch_2
    const-string v0, "ContacstsLoadingStart"

    goto :goto_0

    .line 238
    :sswitch_3
    const-string v0, "Ok"

    goto :goto_0

    .line 240
    :sswitch_4
    const-string v0, "NOKDownloadRequired"

    goto :goto_0

    .line 242
    :sswitch_5
    const-string v0, "NOKLimited"

    goto :goto_0

    .line 244
    :sswitch_6
    const-string v0, "NOKException"

    goto :goto_0

    .line 246
    :sswitch_7
    const-string v0, "Absent"

    goto :goto_0

    .line 248
    :sswitch_8
    const-string v0, "IOError"

    goto :goto_0

    .line 230
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x10001 -> :sswitch_3
        0x10002 -> :sswitch_4
        0x10003 -> :sswitch_5
        0x10004 -> :sswitch_6
        0x10005 -> :sswitch_7
        0x10006 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public getSimState()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mSimState:I

    return v0
.end method

.method public getUsimIsEmpty()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, isUsimEmpty:I
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mUsimService:Lcom/android/internal/telephony/UsimService;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/internal/telephony/UsimService;

    invoke-direct {v2}, Lcom/android/internal/telephony/UsimService;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mUsimService:Lcom/android/internal/telephony/UsimService;

    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mUsimService:Lcom/android/internal/telephony/UsimService;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UsimService;->getUsimIsEmpty()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 641
    :goto_0
    return v1

    .line 637
    :catch_0
    move-exception v0

    .line 638
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v2, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v3, "[UsimService] exception occurred while processing ReadFromSIM method - getUsimIsEmpty()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUsimType()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, usimType:I
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mUsimService:Lcom/android/internal/telephony/UsimService;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/internal/telephony/UsimService;

    invoke-direct {v2}, Lcom/android/internal/telephony/UsimService;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mUsimService:Lcom/android/internal/telephony/UsimService;

    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mUsimService:Lcom/android/internal/telephony/UsimService;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UsimService;->getUsimType()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 626
    :goto_0
    return v1

    .line 622
    :catch_0
    move-exception v0

    .line 623
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v2, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    const-string v3, "[UsimService] exception occurred while processing ReadFromSIM method - getUsimType()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1
    .parameter "aContext"
    .parameter "savedInstanceState"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "aContext"
    .parameter "aIntent"

    .prologue
    .line 478
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/settings_ex/UsimStateReceiverHelper;->onServiceStateChangedReceive(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p2}, Lcom/android/settings_ex/UsimStateReceiverHelper;->onSimStateChangedReceive(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.android.phone.ACTION_REFRESH_SIMSEARCH_STATUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mInitialized"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/settings_ex/UsimStateReceiverHelper;->onContactsLoadingStateChangedReceive(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.phone.ACTION_REFRESH_SIMSEARCH_STATUS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v2, Lcom/android/settings_ex/UsimStateReceiverHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume sContactsLoaded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->sContactsLoaded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->sContactsLoaded:Z

    if-nez v2, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.ACTION_REFRESH_SIMSEARCH_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, myIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v1           #myIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/UsimStateReceiverHelper;->onStateChanged(I)V

    .line 157
    return-void

    .line 145
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings_ex/UsimStateReceiverHelper;->sContactsLoaded:Z

    goto :goto_0
.end method

.method public abstract onStateChanged(I)V
.end method
