.class public Lcom/android/settings_ex/IccLockSettings;
.super Landroid/preference/PreferenceActivity;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;,
        Lcom/android/settings_ex/IccLockSettings$PinDialog;,
        Lcom/android/settings_ex/IccLockSettings$PinDialogSession;
    }
.end annotation


# static fields
.field private static final ENABLE_LOCK_MENU_CAN_BE_DISABLED:Z

.field private static final MAX_SIM_PERSO_CONTROLKEY_LEN:I

.field private static final TAG:Ljava/lang/String;

.field private static final USE_MISMATCH_DIALOG:Z


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLockMenu:Landroid/preference/CheckBoxPreference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

.field private mPinDialogSession:Lcom/android/settings_ex/IccLockSettings$PinDialogSession;

.field private mReceiver:Lcom/android/settings_ex/UsimStateReceiverHelper;

.field private mRes:Landroid/content/res/Resources;

.field private mSimLock:Landroid/preference/CheckBoxPreference;

.field private mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

.field private mSimPersoLock:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    const-class v0, Lcom/android/settings_ex/IccLockSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    .line 81
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/android/settings_ex/IccLockSettings;->MAX_SIM_PERSO_CONTROLKEY_LEN:I

    .line 85
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/IccLockSettings;->ENABLE_LOCK_MENU_CAN_BE_DISABLED:Z

    .line 86
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/IccLockSettings;->USE_MISMATCH_DIALOG:Z

    return-void

    .line 81
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 128
    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    .line 131
    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    .line 154
    new-instance v0, Lcom/android/settings_ex/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/IccLockSettings$1;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mReceiver:Lcom/android/settings_ex/UsimStateReceiverHelper;

    .line 278
    new-instance v0, Lcom/android/settings_ex/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/IccLockSettings$2;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 1206
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->doBlockAccessMenu()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/IccLockSettings;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ex/IccLockSettings;->onSimLockChanging(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/IccLockSettings;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ex/IccLockSettings;->onPinCheck(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/IccLockSettings;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ex/IccLockSettings;->onPinChanging(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->updateLockMenuPref()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/IccLockSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ex/IccLockSettings;->onChangeLockMenu(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/IccLockSettings;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ex/IccLockSettings;->getResString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/IccLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimLock:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/IccLockSettings;ZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/IccLockSettings;->triggerSimLockChanging(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/IccLockSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ex/IccLockSettings;->triggerPinCheck(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/IccLockSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/IccLockSettings;->triggerPinChanging(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->onPostSimTrigger()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/IccLockSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/IccLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoLock:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/IccLockSettings;ZLjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/IccLockSettings;->changeSimPersoLock(ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/settings_ex/IccLockSettings;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ex/IccLockSettings;->changeSimPersoControlKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/IccLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->onUpdatePreferencesState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/settings_ex/IccLockSettings$PinDialogSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialogSession:Lcom/android/settings_ex/IccLockSettings$PinDialogSession;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/IccLockSettings;Lcom/android/settings_ex/IccLockSettings$PinDialogSession;)Lcom/android/settings_ex/IccLockSettings$PinDialogSession;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialogSession:Lcom/android/settings_ex/IccLockSettings$PinDialogSession;

    return-object p1
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/settings_ex/IccLockSettings;->USE_MISMATCH_DIALOG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/settings_ex/IccLockSettings$PinDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/IccLockSettings;Lcom/android/settings_ex/EditPinPreferenceBehavior;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ex/IccLockSettings;->registerPinDialogSession(Lcom/android/settings_ex/EditPinPreferenceBehavior;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/IccLockSettings;)Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    return-object v0
.end method

.method private changeSimPersoControlKey(Ljava/lang/String;)Z
    .locals 3
    .parameter "aNewKey"

    .prologue
    .line 828
    sget-object v0, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Put ControlKey=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usim_perso_control_key"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    const v0, 0x7f080049

    invoke-direct {p0, v0}, Lcom/android/settings_ex/IccLockSettings;->showToast(I)V

    .line 831
    const/4 v0, 0x1

    .line 834
    :goto_0
    return v0

    .line 833
    :cond_0
    const v0, 0x7f08004a

    invoke-direct {p0, v0}, Lcom/android/settings_ex/IccLockSettings;->showToast(I)V

    .line 834
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeSimPersoLock(ZLjava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 987
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "usim_perso_control_key"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 988
    sget-object v0, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    const-string v1, "NOT Matched!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    const/4 v3, 0x4

    invoke-virtual {v1, v0, v3}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->showNotifyAndReturnStage(II)V

    .line 1009
    :goto_1
    return v2

    .line 989
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 993
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 996
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usim_perso_locked"

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 998
    if-eqz p1, :cond_3

    .line 999
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "usim_perso_imsi"

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1000
    const v0, 0x7f080038

    invoke-direct {p0, v0}, Lcom/android/settings_ex/IccLockSettings;->showToast(I)V

    :goto_3
    move v2, v1

    .line 1009
    goto :goto_1

    :cond_2
    move v0, v2

    .line 996
    goto :goto_2

    .line 1003
    :cond_3
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SKT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1004
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "usim_perso_imsi"

    const-string v3, "0000"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1007
    :cond_4
    :goto_4
    const v0, 0x7f080039

    invoke-direct {p0, v0}, Lcom/android/settings_ex/IccLockSettings;->showToast(I)V

    goto :goto_3

    .line 1005
    :cond_5
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "KT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1006
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "usim_perso_imsi"

    const-string v3, "00000000"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4
.end method

.method private doBlockAccessMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1454
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 1456
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1457
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->setEnabled(Z)V

    .line 1458
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->dismiss()V

    .line 1459
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mLockMenu:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mLockMenu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1461
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoLock:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 1462
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1463
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    if-eqz v0, :cond_2

    .line 1464
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->setEnabled(Z)V

    .line 1465
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->dismiss()V

    .line 1467
    :cond_2
    return-void
.end method

.method private getResString(I)Ljava/lang/String;
    .locals 8
    .parameter "aId"

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 766
    sparse-switch p1, :sswitch_data_0

    .line 813
    const-string v1, ""

    :goto_0
    return-object v1

    .line 773
    :sswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v0

    .line 788
    .local v0, retryCount:I
    if-lez v0, :cond_0

    .line 789
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/IccLockSettings;->stringResourceFormat(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 791
    :cond_0
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/IccLockSettings;->stringResourceFormat(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 809
    .end local v0           #retryCount:I
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f080003

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/IccLockSettings;->stringResourceFormat(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 766
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080014 -> :sswitch_1
        0x7f080016 -> :sswitch_1
        0x7f08001a -> :sswitch_0
        0x7f08001e -> :sswitch_0
        0x7f080026 -> :sswitch_1
        0x7f080030 -> :sswitch_0
        0x7f080031 -> :sswitch_0
    .end sparse-switch
.end method

.method private onChangeLockMenu(Z)V
    .locals 5
    .parameter "aLock"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 632
    if-eqz p1, :cond_1

    .line 633
    const v3, 0x7f080023

    invoke-direct {p0, v3}, Lcom/android/settings_ex/IccLockSettings;->showToast(I)V

    .line 638
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_menu_without_usim"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 639
    .local v0, oldLock:Z
    :goto_1
    if-eq p1, v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_menu_without_usim"

    if-eqz p1, :cond_3

    :goto_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mLockMenu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 644
    return-void

    .line 635
    .end local v0           #oldLock:Z
    :cond_1
    const v3, 0x7f080024

    invoke-direct {p0, v3}, Lcom/android/settings_ex/IccLockSettings;->showToast(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 638
    goto :goto_1

    .restart local v0       #oldLock:Z
    :cond_3
    move v1, v2

    .line 640
    goto :goto_2
.end method

.method private onPinChanging(Landroid/os/Message;)V
    .locals 5
    .parameter "aMsg"

    .prologue
    .line 957
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 958
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 959
    const v2, 0x7f08002f

    invoke-direct {p0, v2}, Lcom/android/settings_ex/IccLockSettings;->showToast(I)V

    .line 982
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->onPostSimTrigger()V

    .line 983
    return-void

    .line 961
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 962
    .local v1, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_1

    .line 964
    const v2, 0x7f080031

    invoke-direct {p0, v2}, Lcom/android/settings_ex/IccLockSettings;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/IccLockSettings;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 966
    :cond_1
    sget-object v2, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 973
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    const/4 v3, 0x4

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->showNotifyAndReturnStage(II)V

    goto :goto_0

    .line 975
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->onSetDBSimErrPopUpMsg()V

    goto :goto_0
.end method

.method private onPinCheck(Landroid/os/Message;)V
    .locals 6
    .parameter "aMsg"

    .prologue
    .line 911
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 912
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 914
    sget-object v2, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    const-string v3, "SUCCESS!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    sget-object v2, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOldText=>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "oldPin"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "oldPin"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->setOldText(Ljava/lang/String;)V

    .line 917
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->showPinDialog(I)V

    .line 940
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->onPostSimTrigger()V

    .line 941
    return-void

    .line 919
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 920
    .local v1, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_1

    .line 922
    const v2, 0x7f080031

    invoke-direct {p0, v2}, Lcom/android/settings_ex/IccLockSettings;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/IccLockSettings;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 924
    :cond_1
    sget-object v2, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 931
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    const/4 v3, 0x4

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->showNotifyAndReturnStage(II)V

    goto :goto_0

    .line 933
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->onSetDBSimErrPopUpMsg()V

    goto :goto_0
.end method

.method private onPostSimTrigger()V
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/IccLockSettings;->updatePreferencesState(Z)V

    .line 846
    return-void
.end method

.method private onPreSimTrigger()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 840
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 841
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->setEnabled(Z)V

    .line 842
    return-void
.end method

.method private onSetDBSimErrPopUpMsg()V
    .locals 3

    .prologue
    .line 1014
    sget-object v0, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    const-string v1, "===Settings (1) PIN RETRY is 0==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    sget-object v0, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    const-string v1, "DB Set 1 -SIM_ERR_POPUP_MSG"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sim_err_popup_msg"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1020
    return-void
.end method

.method private onSimLockChanging(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "aAr"

    .prologue
    .line 855
    sget-object v2, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    const-string v3, "onSimLockChanging"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 858
    .local v0, locked:Z
    :goto_0
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    .line 859
    if-eqz v0, :cond_1

    const v2, 0x7f08001b

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/IccLockSettings;->showToast(I)V

    .line 883
    :goto_2
    sget-object v2, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    const-string v3, "onSimLock_delay_1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 885
    .local v1, mSimLock:Landroid/os/Handler;
    new-instance v2, Lcom/android/settings_ex/IccLockSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/IccLockSettings$9;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 893
    return-void

    .line 856
    .end local v0           #locked:Z
    .end local v1           #mSimLock:Landroid/os/Handler;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 859
    .restart local v0       #locked:Z
    :cond_1
    const v2, 0x7f08001c

    goto :goto_1

    .line 864
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 866
    sget-object v2, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    const-string v3, "show lock change fail dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    :goto_3
    const/4 v4, 0x7

    invoke-virtual {v3, v2, v4}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->showNotifyAndReturnStage(II)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x3

    goto :goto_3

    .line 869
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->onSetDBSimErrPopUpMsg()V

    goto :goto_2
.end method

.method private onUpdatePreferencesState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 717
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/IccLockSettings;->updatePreferencesState(Z)V

    .line 719
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->onResume()V

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    if-eqz v0, :cond_1

    .line 724
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 725
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->onResume()V

    .line 727
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/IccLockSettings;->dismissDialog(I)V

    .line 728
    return-void
.end method

.method private registerPinDialogSession(Lcom/android/settings_ex/EditPinPreferenceBehavior;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "aPinDialog"
    .parameter "aStage"
    .parameter "aOldText"
    .parameter "aNewText"
    .parameter "aReenterText"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialogSession:Lcom/android/settings_ex/IccLockSettings$PinDialogSession;

    if-eqz v0, :cond_0

    .line 264
    sget-object v0, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    const-string v1, "pin dialog session leak!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialogSession:Lcom/android/settings_ex/IccLockSettings$PinDialogSession;

    if-nez v0, :cond_1

    .line 267
    new-instance v0, Lcom/android/settings_ex/IccLockSettings$PinDialogSession;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/IccLockSettings$PinDialogSession;-><init>(Lcom/android/settings_ex/IccLockSettings;Lcom/android/settings_ex/IccLockSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialogSession:Lcom/android/settings_ex/IccLockSettings$PinDialogSession;

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialogSession:Lcom/android/settings_ex/IccLockSettings$PinDialogSession;

    iput-object p1, v0, Lcom/android/settings_ex/IccLockSettings$PinDialogSession;->mTargetPinDialog:Lcom/android/settings_ex/EditPinPreferenceBehavior;

    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialogSession:Lcom/android/settings_ex/IccLockSettings$PinDialogSession;

    iput p2, v0, Lcom/android/settings_ex/IccLockSettings$PinDialogSession;->mReturnStage:I

    .line 271
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialogSession:Lcom/android/settings_ex/IccLockSettings$PinDialogSession;

    iput-object p3, v0, Lcom/android/settings_ex/IccLockSettings$PinDialogSession;->mOldText:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialogSession:Lcom/android/settings_ex/IccLockSettings$PinDialogSession;

    iput-object p4, v0, Lcom/android/settings_ex/IccLockSettings$PinDialogSession;->mNewText:Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialogSession:Lcom/android/settings_ex/IccLockSettings$PinDialogSession;

    iput-object p5, v0, Lcom/android/settings_ex/IccLockSettings$PinDialogSession;->mReenterText:Ljava/lang/String;

    .line 274
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .parameter "aResId"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 759
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .parameter "aText"

    .prologue
    .line 762
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 763
    return-void
.end method

.method private varargs stringResourceFormat(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "aResource"
    .parameter "aArgs"

    .prologue
    .line 823
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, format:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private triggerPinChanging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "aOldPin"
    .parameter "aNewPin"

    .prologue
    .line 945
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->onPreSimTrigger()V

    .line 947
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 948
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "oldPin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 951
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 953
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2, p1, p2, v1}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 954
    return-void
.end method

.method private triggerPinCheck(Ljava/lang/String;)V
    .locals 4
    .parameter "aPin"

    .prologue
    .line 896
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->onPreSimTrigger()V

    .line 898
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 899
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "oldPin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x69

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 902
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 907
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2, p1, p1, v1}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 908
    return-void
.end method

.method private triggerSimLockChanging(ZLjava/lang/String;)V
    .locals 3
    .parameter "aLock"
    .parameter "aPin"

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/android/settings_ex/IccLockSettings;->onPreSimTrigger()V

    .line 851
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 852
    return-void
.end method

.method private updateLockMenuPref()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 647
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_menu_without_usim"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 648
    .local v0, value:I
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mLockMenu:Landroid/preference/CheckBoxPreference;

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 649
    return-void

    .line 648
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 331
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 333
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->finish()V

    .line 396
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 346
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 348
    const v2, 0x7f06001e

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/IccLockSettings;->addPreferencesFromResource(I)V

    .line 351
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 354
    const-string v2, "sim_toggle"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimLock:Landroid/preference/CheckBoxPreference;

    .line 355
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 357
    const-string v2, "sim_pin"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/EditPinPreference;

    .line 359
    .local v0, editPin:Lcom/android/settings_ex/EditPinPreference;
    const-string v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SKT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 360
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v4}, Lcom/android/settings_ex/EditPinPreference;->setStyle(IZ)V

    .line 362
    :cond_1
    new-instance v2, Lcom/android/settings_ex/IccLockSettings$PinDialog;

    invoke-direct {v2, p0, v0}, Lcom/android/settings_ex/IccLockSettings$PinDialog;-><init>(Lcom/android/settings_ex/IccLockSettings;Lcom/android/settings_ex/EditPinPreference;)V

    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    .line 363
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    invoke-virtual {v2, p1}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->onCreate(Landroid/os/Bundle;)V

    .line 367
    const-string v2, "sim_perso_pin"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #editPin:Lcom/android/settings_ex/EditPinPreference;
    check-cast v0, Lcom/android/settings_ex/EditPinPreference;

    .line 368
    .restart local v0       #editPin:Lcom/android/settings_ex/EditPinPreference;
    const-string v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SKT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 369
    invoke-virtual {v0, v5, v5}, Lcom/android/settings_ex/EditPinPreference;->setStyle(IZ)V

    .line 372
    :cond_2
    const-string v2, "sim_perso_toggle"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoLock:Landroid/preference/CheckBoxPreference;

    .line 373
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 375
    const-string v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "LGU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 376
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 377
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 379
    iput-object v6, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoLock:Landroid/preference/CheckBoxPreference;

    .line 387
    :goto_1
    const-string v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SKT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 388
    const-string v2, "sim_lockmenu"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mLockMenu:Landroid/preference/CheckBoxPreference;

    .line 393
    :goto_2
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mReceiver:Lcom/android/settings_ex/UsimStateReceiverHelper;

    invoke-virtual {v2, p0, p1}, Lcom/android/settings_ex/UsimStateReceiverHelper;->onCreate(Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 381
    :cond_3
    new-instance v2, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    invoke-direct {v2, p0, v0}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;-><init>(Lcom/android/settings_ex/IccLockSettings;Lcom/android/settings_ex/EditPinPreference;)V

    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    .line 382
    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    sget v3, Lcom/android/settings_ex/IccLockSettings;->MAX_SIM_PERSO_CONTROLKEY_LEN:I

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    .line 383
    .local v1, filter:[Landroid/text/InputFilter;
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    invoke-virtual {v2}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->getEditPinPreference()Lcom/android/settings_ex/EditPinPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/EditPinPreference;->setMaxLenInputFilter([Landroid/text/InputFilter;)V

    .line 384
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    invoke-virtual {v2, p1}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->onCreate(Landroid/os/Bundle;)V

    goto :goto_1

    .line 390
    .end local v1           #filter:[Landroid/text/InputFilter;
    :cond_4
    iput-object v6, p0, Lcom/android/settings_ex/IccLockSettings;->mLockMenu:Landroid/preference/CheckBoxPreference;

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "aId"

    .prologue
    const v4, 0x7f080033

    const v3, 0x1010355

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/high16 v5, 0x7f08

    .line 443
    const/4 v0, 0x0

    .line 445
    .local v0, dialog:Landroid/app/Dialog;
    const/16 v2, 0x12

    if-ne p1, v2, :cond_1

    .line 446
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080009

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 450
    new-instance v2, Lcom/android/settings_ex/IccLockSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/IccLockSettings$3;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 627
    :cond_0
    :goto_0
    return-object v0

    .line 457
    :cond_1
    const/16 v2, 0x9

    if-ne p1, v2, :cond_2

    .line 458
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 459
    .local v1, progress:Landroid/app/ProgressDialog;
    if-eqz v1, :cond_0

    .line 461
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 462
    new-instance v2, Lcom/android/settings_ex/IccLockSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/IccLockSettings$4;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 469
    move-object v0, v1

    goto :goto_0

    .line 472
    .end local v1           #progress:Landroid/app/ProgressDialog;
    :cond_2
    if-nez p1, :cond_3

    .line 473
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 474
    .restart local v1       #progress:Landroid/app/ProgressDialog;
    if-eqz v1, :cond_0

    .line 476
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f080002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 477
    new-instance v2, Lcom/android/settings_ex/IccLockSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/IccLockSettings$5;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 484
    move-object v0, v1

    goto :goto_0

    .line 487
    .end local v1           #progress:Landroid/app/ProgressDialog;
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 488
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080032

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 494
    :cond_4
    const/16 v2, 0x8

    if-ne p1, v2, :cond_5

    .line 495
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080017

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 500
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 502
    :cond_5
    const/4 v2, 0x1

    if-ne p1, v2, :cond_6

    .line 503
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08002e

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 508
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 510
    :cond_6
    const/16 v2, 0xa

    if-ne p1, v2, :cond_7

    .line 511
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08002c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 516
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialogSession:Lcom/android/settings_ex/IccLockSettings$PinDialogSession;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 518
    :cond_7
    const/16 v2, 0x11

    if-ne p1, v2, :cond_8

    .line 519
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080046

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 524
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialogSession:Lcom/android/settings_ex/IccLockSettings$PinDialogSession;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 526
    :cond_8
    const/4 v2, 0x2

    if-ne p1, v2, :cond_9

    .line 527
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f080019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08001a

    invoke-direct {p0, v3}, Lcom/android/settings_ex/IccLockSettings;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 535
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 537
    :cond_9
    const/4 v2, 0x5

    if-ne p1, v2, :cond_a

    .line 538
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f08002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080030

    invoke-direct {p0, v3}, Lcom/android/settings_ex/IccLockSettings;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 546
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 548
    :cond_a
    const/16 v2, 0x10

    if-ne p1, v2, :cond_b

    .line 549
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08004c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 554
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 556
    :cond_b
    const/16 v2, 0xc

    if-ne p1, v2, :cond_c

    .line 557
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08003a

    invoke-direct {p0, v3}, Lcom/android/settings_ex/IccLockSettings;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 563
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 565
    :cond_c
    const/16 v2, 0xe

    if-ne p1, v2, :cond_d

    .line 566
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08004b

    invoke-direct {p0, v3}, Lcom/android/settings_ex/IccLockSettings;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 572
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 574
    :cond_d
    const/16 v2, 0xb

    if-ne p1, v2, :cond_e

    .line 575
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f080048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 580
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 583
    :cond_e
    const/16 v2, 0xf

    if-ne p1, v2, :cond_f

    .line 584
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f08003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080040

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 591
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 592
    :cond_f
    const/16 v2, 0xd

    if-ne p1, v2, :cond_10

    .line 593
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 598
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 599
    :cond_10
    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    .line 600
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f08001f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080020

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080021

    new-instance v4, Lcom/android/settings_ex/IccLockSettings$8;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/IccLockSettings$8;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080022

    new-instance v4, Lcom/android/settings_ex/IccLockSettings$7;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/IccLockSettings$7;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/IccLockSettings$6;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/IccLockSettings$6;-><init>(Lcom/android/settings_ex/IccLockSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mReceiver:Lcom/android/settings_ex/UsimStateReceiverHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->onPause()V

    .line 409
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 410
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 731
    sget-object v4, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    const-string v5, "onPreferenceTreeClick()"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    iget-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mSimLock:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_3

    .line 734
    sget-object v4, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    const-string v5, "->mSimLock"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mSimLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-ne v4, v2, :cond_1

    .line 738
    .local v0, stage:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mSimLock:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mSimLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 739
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->showPinDialog(I)V

    .line 754
    .end local v0           #stage:I
    :cond_0
    :goto_2
    return v2

    :cond_1
    move v0, v1

    .line 736
    goto :goto_0

    .restart local v0       #stage:I
    :cond_2
    move v1, v3

    .line 738
    goto :goto_1

    .line 740
    .end local v0           #stage:I
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoLock:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_6

    .line 741
    sget-object v4, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    const-string v5, "->mSimPersoLock"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-ne v4, v2, :cond_5

    .line 745
    .restart local v0       #stage:I
    :goto_3
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoLock:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_4

    move v3, v2

    :cond_4
    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 746
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->showPinDialog(I)V

    goto :goto_2

    .end local v0           #stage:I
    :cond_5
    move v0, v1

    .line 743
    goto :goto_3

    .line 748
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mLockMenu:Landroid/preference/CheckBoxPreference;

    if-ne v1, p2, :cond_0

    .line 749
    iget-object v1, p0, Lcom/android/settings_ex/IccLockSettings;->mLockMenu:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings_ex/IccLockSettings;->mLockMenu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_7

    move v3, v2

    :cond_7
    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 750
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/IccLockSettings;->showDialog(I)V

    goto :goto_2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 653
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 654
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    const v0, 0x7f08001a

    invoke-direct {p0, v0}, Lcom/android/settings_ex/IccLockSettings;->getResString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 659
    :goto_0
    return-void

    .line 655
    .restart local p2
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 656
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    const v0, 0x7f080030

    invoke-direct {p0, v0}, Lcom/android/settings_ex/IccLockSettings;->getResString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 658
    .restart local p2
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 400
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 403
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mReceiver:Lcom/android/settings_ex/UsimStateReceiverHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/UsimStateReceiverHelper;->onResume()V

    .line 404
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 435
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 438
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 414
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 415
    sget-object v0, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialogSession:Lcom/android/settings_ex/IccLockSettings$PinDialogSession;

    if-eqz v0, :cond_0

    .line 418
    sget-object v0, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    const-string v1, "onStop mPinDialogSession == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iput-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialogSession:Lcom/android/settings_ex/IccLockSettings$PinDialogSession;

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    if-eqz v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->onDismiss(Landroid/content/DialogInterface;)V

    .line 428
    :cond_2
    return-void
.end method

.method public updatePreferencesState(Z)V
    .locals 7
    .parameter "aRequery"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 662
    if-eqz p1, :cond_3

    .line 663
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/IccLockSettings;->showDialog(I)V

    .line 664
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 665
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    invoke-virtual {v2}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->getEditPinPreference()Lcom/android/settings_ex/EditPinPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/EditPinPreference;->setEnabled(Z)V

    .line 666
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->setEnabled(Z)V

    .line 668
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mLockMenu:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/settings_ex/IccLockSettings;->ENABLE_LOCK_MENU_CAN_BE_DISABLED:Z

    if-eqz v2, :cond_0

    .line 669
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mLockMenu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 671
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoLock:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 672
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 675
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    if-eqz v2, :cond_2

    .line 676
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    invoke-virtual {v2}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->getEditPinPreference()Lcom/android/settings_ex/EditPinPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/EditPinPreference;->setEnabled(Z)V

    .line 677
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->setEnabled(Z)V

    .line 714
    :cond_2
    :goto_0
    return-void

    .line 687
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/IccLockSettings;->mSimLock:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result v2

    if-lez v2, :cond_7

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 689
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimLock:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings_ex/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 691
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mPinDialog:Lcom/android/settings_ex/IccLockSettings$PinDialog;

    iget-object v5, p0, Lcom/android/settings_ex/IccLockSettings;->mSimLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/IccLockSettings$PinDialog;->setEnabled(Z)V

    .line 693
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mLockMenu:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_5

    .line 694
    sget-boolean v2, Lcom/android/settings_ex/IccLockSettings;->ENABLE_LOCK_MENU_CAN_BE_DISABLED:Z

    if-eqz v2, :cond_4

    .line 695
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mLockMenu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 696
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/IccLockSettings;->mLockMenu:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "enable_menu_without_usim"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_8

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 699
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/IccLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "usim_perso_locked"

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_9

    move v1, v3

    .line 700
    .local v1, locked:Z
    :goto_3
    sget-object v2, Lcom/android/settings_ex/IccLockSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "locked : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoLock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 702
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoLock:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    .end local v1           #locked:Z
    :cond_6
    :goto_4
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    if-eqz v2, :cond_2

    .line 711
    iget-object v2, p0, Lcom/android/settings_ex/IccLockSettings;->mSimPersoDialog:Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/IccLockSettings$SimPersoDialog;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_7
    move v2, v4

    .line 687
    goto :goto_1

    :cond_8
    move v2, v4

    .line 696
    goto :goto_2

    :cond_9
    move v1, v4

    .line 699
    goto :goto_3

    .line 703
    :catch_0
    move-exception v0

    .line 704
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "SKT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "ro.build.target_operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "KT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 706
    :cond_a
    const v2, 0x7f08003c

    invoke-direct {p0, v2}, Lcom/android/settings_ex/IccLockSettings;->showToast(I)V

    goto :goto_4
.end method
