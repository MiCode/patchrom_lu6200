.class public Lcom/android/internal/telephony/IccCardProxy;
.super Landroid/os/Handler;
.source "IccCardProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/IccCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccCardProxy$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_APP_READY:I = 0x6

.field private static final EVENT_BIP_PROATIVE_COMMAND:I = 0x32

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0xb

.field private static final EVENT_ICC_ABSENT:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_ICC_LOCKED:I = 0x5

.field protected static final EVENT_ICC_RECORD_EVENTS:I = 0x33

.field private static final EVENT_IMSI_READY:I = 0x8

.field private static final EVENT_PERSO_LOCKED:I = 0x9

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x2

.field protected static final EVENT_RECORDS_LOADED:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_IccCardProxy"


# instance fields
.field protected mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mCdmaSubscriptionFromNv:Z

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field protected mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

.field protected mExternalState:Lcom/android/internal/telephony/IccCard$State;

.field protected mIccRecords:Lcom/android/internal/telephony/IccRecords;

.field private mInitialized:Z

.field private mIsMultimodeCdmaPhone:Z

.field private mPersoLockedRegistrants:Landroid/os/RegistrantList;

.field private mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field private mProCmdRegistrants:Landroid/os/RegistrantList;

.field protected mQuietMode:Z

.field private mRadioOn:Z

.field private mReadyRegistrants:Landroid/os/RegistrantList;

.field protected mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

.field protected mUiccCard:Lcom/android/internal/telephony/UiccCard;

.field protected mUiccManager:Lcom/android/internal/telephony/UiccManager;

.field private mUsimInterfaceMgr:Lcom/android/internal/telephony/UsimInterfaceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .parameter "context"
    .parameter "ci"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 107
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 83
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mReadyRegistrants:Landroid/os/RegistrantList;

    .line 84
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 85
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 86
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    .line 88
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mProCmdRegistrants:Landroid/os/RegistrantList;

    .line 91
    sget-object v0, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    .line 92
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 93
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 94
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 95
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 96
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 97
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    .line 99
    const-string/jumbo v0, "ro.config.multimode_cdma"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIsMultimodeCdmaPhone:Z

    .line 101
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    .line 104
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    .line 105
    sget-object v0, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 108
    const-string v0, "Creating"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/android/internal/telephony/IccCardProxy;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/android/internal/telephony/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 111
    const/16 v0, 0xb

    invoke-static {p1, p2, p0, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 113
    invoke-static {}, Lcom/android/internal/telephony/UiccManager;->getInstance()Lcom/android/internal/telephony/UiccManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 115
    const/4 v0, 0x2

    invoke-interface {p2, p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 116
    const/4 v0, 0x1

    invoke-interface {p2, p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 117
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    .line 119
    const/16 v0, 0x32

    invoke-interface {p2, p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForBipProCmdStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 121
    return-void
.end method

.method private broadcastPersoSubState(Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 828
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplicationStatus$PersoSubState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 917
    const-string v0, "RIL_IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This Personalization substate is not handled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :goto_0
    :pswitch_0
    return-void

    .line 834
    :pswitch_1
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "Notify SIM network locked."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const-string v0, "LOCKED"

    const-string v1, "SIM NETWORK"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v0, "SIM NETWORK"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastPersoStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 842
    :pswitch_2
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "Notify SIM network Subset locked."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const-string v0, "LOCKED"

    const-string v1, "SIM NETWORK SUBSET"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v0, "SIM NETWORK SUBSET"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastPersoStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 850
    :pswitch_3
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "Notify SIM Corporate locked."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const-string v0, "LOCKED"

    const-string v1, "SIM CORPORATE"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v0, "SIM CORPORATE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastPersoStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 858
    :pswitch_4
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "Notify SIM Service Provider locked."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const-string v0, "LOCKED"

    const-string v1, "SIM SERVICE PROVIDER"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v0, "SIM SERVICE PROVIDER"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastPersoStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 866
    :pswitch_5
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "Notify SIM SIM locked."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const-string v0, "LOCKED"

    const-string v1, "SIM SIM"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v0, "SIM SIM"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->broadcastPersoStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 878
    :pswitch_6
    const-string v0, "RIL_IccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This Personalization substate is not handled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 881
    :pswitch_7
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "Notify RUIM network1 locked."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const-string v0, "LOCKED"

    const-string v1, "RUIM NETWORK1"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 886
    :pswitch_8
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "Notify RUIM network2 locked."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const-string v0, "LOCKED"

    const-string v1, "RUIM NETWORK2"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 891
    :pswitch_9
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "Notify RUIM hrpd locked."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const-string v0, "LOCKED"

    const-string v1, "RUIM HRPD"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 896
    :pswitch_a
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "Notify RUIM Corporate locked."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-string v0, "LOCKED"

    const-string v1, "RUIM CORPORATE"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 901
    :pswitch_b
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "Notify RUIM Service Provider locked."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const-string v0, "LOCKED"

    const-string v1, "RUIM SERVICE PROVIDER"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 906
    :pswitch_c
    const-string v0, "RIL_IccCardProxy"

    const-string v1, "Notify RUIM RUIM locked."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const-string v0, "LOCKED"

    const-string v1, "RUIM RUIM"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 828
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private processLockedState()V
    .locals 4

    .prologue
    .line 551
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-nez v2, :cond_0

    .line 571
    :goto_0
    return-void

    .line 555
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v1

    .line 556
    .local v1, pin1State:Lcom/android/internal/telephony/IccCardStatus$PinState;
    sget-object v2, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v1, v2, :cond_1

    .line 557
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 561
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-result-object v0

    .line 562
    .local v0, appState:Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;
    sget-object v2, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplicationStatus$AppState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 564
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 565
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 568
    :pswitch_1
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 950
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;Z)V

    .line 951
    return-void
.end method

.method private updateQuietMode()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 154
    const-string v3, "Updating quiet mode"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 155
    iget-boolean v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 157
    .local v2, oldQuietMode:Z
    iget-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v6, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v3, v6, :cond_1

    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, newQuietMode:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "3GPP subscription -> QuietMode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 177
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    if-nez v3, :cond_5

    if-ne v0, v4, :cond_5

    .line 180
    const-string v3, "Switching to QuietMode."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 181
    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    .line 182
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 188
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuietMode is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (app_type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " nv: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " multimode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mIsMultimodeCdmaPhone:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 190
    iput-boolean v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    .line 191
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->sendMessage(Landroid/os/Message;)Z

    .line 192
    return-void

    .line 166
    .end local v0           #newQuietMode:Z
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v1

    .line 167
    .local v1, newSubscriptionSource:I
    if-ne v1, v4, :cond_3

    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    .line 169
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mIsMultimodeCdmaPhone:Z

    if-eqz v3, :cond_2

    .line 170
    const-string v3, "Cdma multimode phone detected. Forcing IccCardProxy into 3gpp mode"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 171
    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    .line 173
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSubscriptionFromNv:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v6, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v3, v6, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mIsMultimodeCdmaPhone:Z

    if-nez v3, :cond_4

    move v0, v4

    .restart local v0       #newQuietMode:Z
    :goto_3
    goto/16 :goto_0

    .end local v0           #newQuietMode:Z
    :cond_3
    move v3, v5

    .line 167
    goto :goto_2

    :cond_4
    move v0, v5

    .line 173
    goto :goto_3

    .line 183
    .end local v1           #newSubscriptionSource:I
    .restart local v0       #newQuietMode:Z
    :cond_5
    iget-boolean v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    if-ne v3, v4, :cond_0

    if-nez v0, :cond_0

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switching out from QuietMode. Force broadcast of current state:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 185
    iput-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    .line 186
    iget-object v3, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;Z)V

    goto/16 :goto_1
.end method


# virtual methods
.method public broadcastIccEventIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "value"
    .parameter "param1"
    .parameter "param2"

    .prologue
    .line 509
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    if-eqz v1, :cond_0

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuietMode: NOT Broadcasting intent ICC_EVENT_SEND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 525
    :goto_0
    return-void

    .line 515
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ICC_EVENT_SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 517
    const-string/jumbo v1, "phoneName"

    const-string v2, "Phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const-string v1, "ICC_EVENT_NOTI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    const-string/jumbo v1, "param1"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const-string/jumbo v1, "param2"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ICC_EVENT_SEND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " param2 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 524
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 490
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    if-eqz v1, :cond_0

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuietMode: NOT Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 505
    :goto_0
    return-void

    .line 496
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 497
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 498
    const-string/jumbo v1, "phoneName"

    const-string v2, "Phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    const-string/jumbo v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 504
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public broadcastPersoStatus(Ljava/lang/String;)V
    .locals 4
    .parameter "reason"

    .prologue
    .line 925
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PersoStatus"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 926
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    const-string v1, "RIL_IccCardProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastPersoStatus intent PersoStatus  reason - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 930
    return-void
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 529
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 530
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    if-eqz p3, :cond_0

    .line 532
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 533
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 534
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onComplete"

    .prologue
    .line 540
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 541
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    if-eqz p3, :cond_0

    .line 543
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 545
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 124
    const-string v0, "Disposing"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    .line 128
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForBipProCmdStatus(Landroid/os/Handler;)V

    .line 134
    return-void
.end method

.method public getIccCardState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method public getIccFdnAvailable()Z
    .locals 2

    .prologue
    .line 583
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFdnAvailable()Z

    move-result v0

    .line 584
    .local v0, retValue:Z
    :goto_0
    return v0

    .line 583
    .end local v0           #retValue:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccFdnEnabled()Z
    .locals 2

    .prologue
    .line 578
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFdnEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 579
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 578
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    .line 961
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccLockEnabled()Z
    .locals 2

    .prologue
    .line 589
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccLockEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 590
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 589
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getIccPin1RetryCount()I
    .locals 2

    .prologue
    .line 594
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPin1RetryCount()I

    move-result v0

    .line 595
    .local v0, retValue:I
    :goto_0
    return v0

    .line 594
    .end local v0           #retValue:I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIccPin2Blocked()Z
    .locals 2

    .prologue
    .line 605
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPin2Blocked()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 606
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 605
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccPin2RetryCount()I
    .locals 2

    .prologue
    .line 599
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPin2RetryCount()I

    move-result v0

    .line 600
    .local v0, retValue:I
    :goto_0
    return v0

    .line 599
    .end local v0           #retValue:I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIccPuk1RetryCount()I
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPuk1RetryCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccPuk2Blocked()Z
    .locals 2

    .prologue
    .line 611
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPuk2Blocked()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 612
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 611
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccPuk2RetryCount()I
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccPuk2RetryCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/IccRecords;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v0

    .line 972
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 651
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LGU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    const-string v1, "[lge_uicc] LGU reference USIM EF SPN"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UiccManager;->getIccRecords(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 654
    .local v0, simRecords:Lcom/android/internal/telephony/IccRecords;
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    .line 659
    .end local v0           #simRecords:Lcom/android/internal/telephony/IccRecords;
    :goto_0
    return-object v1

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_1

    .line 657
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 659
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/IccCard$State;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 195
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 282
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled message with number: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 197
    :sswitch_0
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 198
    sget-object v6, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 199
    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 203
    :sswitch_1
    iput-boolean v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    .line 204
    iget-boolean v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    if-nez v6, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuietMode()V

    goto :goto_0

    .line 209
    :sswitch_2
    iget-boolean v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mInitialized:Z

    if-eqz v6, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateIccAvailability()V

    .line 213
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "KR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 214
    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_REMOVED:Lcom/android/internal/telephony/IccCardStatus$CardState;

    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v7}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v7

    if-ne v6, v7, :cond_0

    .line 215
    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->SIM_REMOVED:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    .line 216
    iput-boolean v9, p0, Lcom/android/internal/telephony/IccCardProxy;->mQuietMode:Z

    goto :goto_0

    .line 222
    :sswitch_3
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->processLockedState()V

    goto :goto_0

    .line 225
    :sswitch_4
    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 228
    :sswitch_5
    const-string v6, "LOADED"

    invoke-virtual {p0, v6, v8}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :sswitch_6
    const-string v6, "IMSI"

    invoke-virtual {p0, v6, v8}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :sswitch_7
    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 236
    iget-object v6, p0, Lcom/android/internal/telephony/IccCardProxy;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccCardProxy;->broadcastPersoSubState(Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;)V

    .line 238
    iget-object v7, p0, Lcom/android/internal/telephony/IccCardProxy;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    invoke-virtual {v7, v6}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 239
    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 242
    :sswitch_8
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuietMode()V

    goto :goto_0

    .line 246
    :sswitch_9
    const/4 v3, 0x0

    .line 249
    .local v3, mProCmd:[I
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 250
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 251
    .local v0, ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_0

    .line 252
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v3, v6

    check-cast v3, [I

    .line 253
    const-string v6, "RIL_IccCardProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proactive Command Type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Proactive Command Status : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v3, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v6, 0x1

    :try_start_0
    aget v6, v3, v6

    invoke-static {v6}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->getType(I)Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandType;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, cmdType:Ljava/lang/String;
    const/4 v6, 0x2

    aget v6, v3, v6

    invoke-static {v6}, Lcom/android/internal/telephony/ProactiveCommandInterface$ProactiveCommandResult;->getResult(I)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, status:Ljava/lang/String;
    const-string v6, "ICC_EVENT_NOTI"

    invoke-virtual {p0, v6, v1, v4}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccEventIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v6, "CLOSE_CH"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "fail"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_2
    const-string v6, "ICC_EVENT_NOTI"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccEventIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 259
    .end local v1           #cmdType:Ljava/lang/String;
    .end local v4           #status:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 260
    .local v5, tr:Ljava/lang/Throwable;
    const-string v6, "RIL_IccCardProxy"

    const-string v7, "There is none like this Command Type "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 266
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #mProCmd:[I
    .end local v5           #tr:Ljava/lang/Throwable;
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 267
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 268
    .local v2, eventCode:I
    const/16 v6, 0xa

    if-ne v2, v6, :cond_3

    .line 269
    const-string v6, "RIL_IccCardProxy"

    const-string v7, "EVENT_IMSI_M_READY received in IccCardProxy"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v6, "IMSI_M"

    invoke-virtual {p0, v6, v8}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :cond_3
    const/16 v6, 0xb

    if-ne v2, v6, :cond_0

    .line 274
    const-string v6, "RIL_IccCardProxy"

    const-string v7, "EVENT_HPLMNWACT received in IccCardProxy"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v6, "HPLMN_SIMTYPE"

    invoke-virtual {p0, v6, v8}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xb -> :sswitch_8
        0x32 -> :sswitch_9
        0x33 -> :sswitch_a
    .end sparse-switch
.end method

.method public hasIccCard()Z
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_0

    .line 664
    const/4 v0, 0x1

    .line 666
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is2GSIM()Z
    .locals 3

    .prologue
    .line 637
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 639
    .local v0, retValue:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_0

    .line 641
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 645
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 670
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 671
    .local v0, retValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 670
    .end local v0           #retValue:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 976
    const-string v0, "RIL_IccCardProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 980
    const-string v0, "RIL_IccCardProxy"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    return-void
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 692
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 694
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 696
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_1

    .line 697
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 700
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->SIM_REMOVED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    .line 701
    const-string v1, "RIL_IccCardProxy"

    const-string v2, "State.SIM_REMOVED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    goto :goto_0
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 731
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 733
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 735
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 738
    :cond_0
    return-void
.end method

.method public registerForPersoLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 715
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 716
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 718
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    .line 719
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 721
    :cond_0
    return-void
.end method

.method public registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 675
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 677
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 679
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_0

    .line 680
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 682
    :cond_0
    return-void
.end method

.method protected registerUiccCardEvents()V
    .locals 5

    .prologue
    const/16 v4, 0x33

    const/4 v3, 0x0

    .line 417
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/UiccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 418
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v2, 0x6

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 419
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v2, 0x5

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 420
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    const/16 v2, 0x9

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/UiccCardApplication;->registerForPersoLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 421
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v2, 0x8

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 422
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/4 v2, 0x7

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 424
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1, p0, v4, v3}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 428
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 430
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_8

    .line 435
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    if-eqz v1, :cond_8

    .line 437
    const/4 v0, 0x0

    .line 439
    .local v0, tmpRecords:Lcom/android/internal/telephony/IccRecords;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UiccManager;->getIccRecords(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_8

    .line 443
    invoke-virtual {v0, p0, v4, v3}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 450
    .end local v0           #tmpRecords:Lcom/android/internal/telephony/IccRecords;
    :cond_8
    return-void
.end method

.method protected setExternalState(Lcom/android/internal/telephony/IccCard$State;Z)V
    .locals 2
    .parameter "newState"
    .parameter "override"

    .prologue
    .line 937
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v0, :cond_1

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    .line 941
    const-string/jumbo v0, "gsm.sim.state"

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$State;->getIntentString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard$State;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_0

    .line 946
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_0
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 745
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 746
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 747
    :cond_1
    if-eqz p3, :cond_0

    .line 748
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 749
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 750
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "enabled"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 756
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 757
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    if-eqz p3, :cond_0

    .line 759
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 760
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 761
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setPhoneType(I)V
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting Phone Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 143
    sget-object v0, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    .line 147
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateQuietMode()V

    .line 148
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 145
    sget-object v0, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    goto :goto_0
.end method

.method public supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .parameter "pin"
    .parameter "type"
    .parameter "onComplete"

    .prologue
    .line 770
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 771
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    if-eqz p3, :cond_0

    .line 773
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CommandsInterface is not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 774
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 775
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin"
    .parameter "onComplete"

    .prologue
    .line 781
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 782
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    if-eqz p2, :cond_0

    .line 784
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 785
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 786
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "pin2"
    .parameter "onComplete"

    .prologue
    .line 792
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 793
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    if-eqz p2, :cond_0

    .line 795
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 796
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 797
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "puk"
    .parameter "newPin"
    .parameter "onComplete"

    .prologue
    .line 803
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 804
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    if-eqz p3, :cond_0

    .line 806
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 807
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 808
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "puk2"
    .parameter "newPin2"
    .parameter "onComplete"

    .prologue
    .line 814
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 815
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 816
    :cond_1
    if-eqz p3, :cond_0

    .line 817
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 818
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 819
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 709
    return-void
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 742
    return-void
.end method

.method public unregisterForPersoLocked(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 725
    return-void
.end method

.method public unregisterForReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 686
    return-void
.end method

.method protected unregisterUiccCardEvents()V
    .locals 3

    .prologue
    .line 453
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UiccCard;->unregisterForAbsent(Landroid/os/Handler;)V

    .line 454
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 455
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 456
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UiccCardApplication;->unregisterForPersoLocked(Landroid/os/Handler;)V

    .line 457
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    .line 458
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 460
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 464
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 466
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getType()Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/IccCardApplicationStatus$AppType;

    if-ne v1, v2, :cond_8

    .line 471
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    if-eqz v1, :cond_8

    .line 473
    const/4 v0, 0x0

    .line 475
    .local v0, tmpRecords:Lcom/android/internal/telephony/IccRecords;
    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UiccManager;->getIccRecords(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_8

    .line 479
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 486
    .end local v0           #tmpRecords:Lcom/android/internal/telephony/IccRecords;
    :cond_8
    return-void
.end method

.method protected updateExternalState()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-ne v0, v1, :cond_4

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-nez v0, :cond_1

    .line 347
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    .line 348
    const-string v0, "RIL_IccCardProxy"

    const-string/jumbo v1, "mUiccCard is null. So, send not-ready intent."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :goto_0
    return-void

    .line 353
    :cond_1
    const-string/jumbo v0, "persist.radio.apm_sim_not_pwdn"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    .line 354
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mRadioOn:Z

    if-eqz v0, :cond_2

    .line 355
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 357
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 360
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 365
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/IccCardStatus$CardState;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-nez v0, :cond_7

    .line 367
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUsimInterfaceMgr:Lcom/android/internal/telephony/UsimInterfaceManager;

    sget-boolean v0, Lcom/android/internal/telephony/UsimInterfaceManager;->mInvalidUsimImsi_usim:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 369
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    .line 370
    const-string v0, "RIL_IccCardProxy"

    const-string/jumbo v1, "updateExternalState  :   SKT, KT SIM > absent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    :cond_6
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 380
    :cond_7
    sget-object v0, Lcom/android/internal/telephony/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardApplicationStatus$AppState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCardApplication;->getState()Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 383
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 386
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto :goto_0

    .line 393
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/IccCardStatus$PinState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/IccCardStatus$PinState;

    if-ne v0, v1, :cond_8

    .line 394
    const-string v0, "RIL_IccCardProxy"

    const-string/jumbo v1, "updateExternalState : State.PERM_DISABLED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto/16 :goto_0

    .line 397
    :cond_8
    const-string v0, "RIL_IccCardProxy"

    const-string/jumbo v1, "updateExternalState : State.PUK_REQUIRED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto/16 :goto_0

    .line 403
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->isPersoLocked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mPersoSubState:Lcom/android/internal/telephony/IccCardApplicationStatus$PersoSubState;

    .line 405
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto/16 :goto_0

    .line 407
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto/16 :goto_0

    .line 411
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    goto/16 :goto_0

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method updateIccAvailability()V
    .locals 7

    .prologue
    .line 288
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UiccManager;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    .line 289
    .local v1, newCard:Lcom/android/internal/telephony/UiccCard;
    sget-object v3, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 290
    .local v3, state:Lcom/android/internal/telephony/IccCardStatus$CardState;
    const/4 v0, 0x0

    .line 291
    .local v0, newApp:Lcom/android/internal/telephony/UiccCardApplication;
    const/4 v2, 0x0

    .line 292
    .local v2, newRecords:Lcom/android/internal/telephony/IccRecords;
    if-eqz v1, :cond_4

    .line 293
    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    .line 294
    const-string v4, "RIL_IccCardProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Card State = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/UiccCard;->getApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    .line 301
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VZW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 303
    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v5, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v4, v5, :cond_1

    .line 305
    const-string v4, "RIL_IccCardProxy"

    const-string/jumbo v5, "newApp is null, and mCurrentAppType is 3GPP2. 3GPP application should be created to do.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    sget-object v4, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/UiccCard;->getApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    .line 322
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-ne v4, v2, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-ne v4, v0, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eq v4, v1, :cond_3

    .line 323
    :cond_2
    const-string v4, "Icc changed. Reregestering."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccCardProxy;->log(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterUiccCardEvents()V

    .line 325
    iput-object v1, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 326
    iput-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 327
    iput-object v2, p0, Lcom/android/internal/telephony/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 328
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->registerUiccCardEvents()V

    .line 331
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCardProxy;->updateExternalState()V

    .line 332
    return-void

    .line 319
    :cond_4
    const-string v4, "RIL_IccCardProxy"

    const-string v5, "No card available"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateSimPinStatus()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->updateSimPinStatus()V

    .line 632
    :cond_0
    return-void
.end method
