.class public Lcom/android/settings_ex/deviceinfo/UsbSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "UsbSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAutorunEnable:Z

.field private mCdromMode:Z

.field private mCharger:Lcom/android/settings_ex/lge/RadioButtonPreference;

.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentFunction:Ljava/lang/String;

.field private mDefaultFunction:Ljava/lang/String;

.field private mDirectAutorun:Z

.field private mHandler:Landroid/os/Handler;

.field private mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

.field private mInternetConnection:I

.field private mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

.field private mMediasync:Lcom/android/settings_ex/lge/RadioButtonPreference;

.field private mMountSDCard:Z

.field private mMtpAutorun:Z

.field private mNeedSleep:Z

.field private mPcsuite:Lcom/android/settings_ex/lge/RadioButtonPreference;

.field private mProgress:Landroid/app/ProgressDialog;

.field private mPtp:Lcom/android/settings_ex/lge/RadioButtonPreference;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageVolumeNum:I

.field private mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

.field private mUsbLauncher:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbLauncher:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mAutorunEnable:Z

    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMountSDCard:Z

    iput v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStorageVolumeNum:I

    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDirectAutorun:Z

    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCdromMode:Z

    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mNeedSleep:Z

    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtpAutorun:Z

    new-instance v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings$1;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;-><init>(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDirectAutorun:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDirectAutorun:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->cancelProgressPopup()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/deviceinfo/UsbSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->connectUsbTether(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbLauncher:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->autorunUpdateState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->autorunChangeMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Lcom/android/settings_ex/lge/RadioButtonPreference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtpAutorun:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/deviceinfo/UsbSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternetConnection:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/settings_ex/deviceinfo/UsbSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternetConnection:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mAutorunEnable:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/settings_ex/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mNeedSleep:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->changeAutorunMode(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/deviceinfo/UsbSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->callPopup(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->checkEntitlement()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/deviceinfo/UsbSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->startUsbTetherIntroPopup()V

    return-void
.end method

.method private autorunChangeMode(Ljava/lang/String;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 829
    const-wide/16 v1, 0x12c

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    const-string v2, "ecm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->connectUsbTether(Z)V

    :goto_1
    sget-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mDoNotFinish:Z

    if-eqz v1, :cond_1

    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] autorunChangeMode() : Do not finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mDoNotFinish:Z

    :goto_2
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] Exception wait for termination of PC Launcher, so just skip it"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    sput-boolean v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] autorunChangeMode() : finish"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_2
.end method

.method private autorunUpdateState(Ljava/lang/String;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->cancelProgressPopup()V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    const-string v1, "ecm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mX3Bug:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->connectUsbTether(Z)V

    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    :goto_0
    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mDoNotFinish:Z

    if-eqz v0, :cond_2

    const-string v0, "UsbSettings"

    const-string v1, "[AUTORUN] autorunUpdateState() : Do not finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mDoNotFinish:Z

    :goto_1
    return-void

    :cond_0
    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->connectUsbTether(Z)V

    goto :goto_0

    :cond_1
    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "UsbSettings"

    const-string v1, "[AUTORUN] autorunUpdateState() : finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method private callPopup(I)V
    .locals 4
    .parameter "dialogId"

    .prologue
    .line 1139
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AUTORUN] callPopup() : popup id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const/4 v0, 0x0

    .line 1142
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private cancelProgressPopup()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_0
    return-void
.end method

.method private changeAutorunMode(Ljava/lang/String;)Z
    .locals 6
    .parameter "autorunMode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1493
    const-string v4, "use_open_autorun"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1495
    .local v1, use:Ljava/lang/String;
    :try_start_0
    const-string v4, "false"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1523
    :cond_0
    :goto_0
    return v2

    .line 1498
    :catch_0
    move-exception v0

    .line 1499
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v4, "UsbSettings"

    const-string v5, "[AUTORUN] changeAutorunMode() : autorun system property is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_1
    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ATT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1504
    :cond_2
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "p2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DCM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1507
    :cond_3
    iget-boolean v4, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mAutorunEnable:Z

    if-ne v4, v3, :cond_0

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VZW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1508
    new-instance v4, Ljava/io/File;

    const-string v5, "/system/usbautorun.iso"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1509
    const-string v4, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    invoke-static {v4, p1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v5, "cdrom_storage"

    invoke-virtual {v4, v5, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->startAutorunTimer(Landroid/content/Context;)V

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->callPopup(I)V

    move v2, v3

    goto :goto_0
.end method

.method private checkEntitlement()V
    .locals 3

    .prologue
    .line 1557
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1558
    .local v0, send:Landroid/content/Intent;
    const-string v1, "Tether_Type"

    const-string v2, "USB"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings_ex"

    const-string v2, "com.android.settings_ex.EntitlementDialogActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private connectUsbTether(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-ne p1, v3, :cond_2

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1627
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->callPopup(I)V

    const-string v0, "UsbSettings"

    const-string v1, "[AUTORUN] ============ Tethering ERROR !! ============"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    const-string v0, "UsbSettings"

    const-string v1, "[AUTORUN] ============ Tethering OK !!\t=============="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->setTetherStatus(Landroid/content/Context;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 3

    .prologue
    const v1, 0x7f060048

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .local v0, root:Landroid/preference/PreferenceScreen;
    const-string v1, "usb_charger"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/lge/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharger:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharger:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "usb_media_sync"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/lge/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMediasync:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMediasync:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "usb_tether"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/lge/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "usb_pc_suite"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/lge/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ATT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/settings_ex/lge/RadioButtonPreference;

    const v2, 0x7f080372

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setTitle(I)V

    :cond_0
    const-string v1, "usb_ptp"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/lge/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "usb_mass_storage"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/lge/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_skt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_u"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    const v2, 0x7f0807b1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setTitle(I)V

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    const v2, 0x7f0807b2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 434
    :cond_2
    const-string v1, "usb_internet"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/lge/RadioButtonPreference;

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "x3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mX3Bug:Z

    :cond_3
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "p2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMediasync:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    :goto_1
    return-object v0

    :cond_5
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KDDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "x2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMediasync:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 449
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "p2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "batman_dcm"

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 455
    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 453
    :cond_a
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 456
    :cond_b
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPRINT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 469
    :cond_d
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "black"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "blackg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "justin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMediasync:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_f
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_vzw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "lgp930"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_skt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_u"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_dcm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "lgp935"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 476
    :cond_10
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 477
    :cond_11
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "cayman"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "batman_lgu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "batman_skt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KDDI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "x2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 480
    :cond_12
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "u0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "u0_cdma"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "USC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "m4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "m4ds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_15
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private startUsbTetherIntroPopup()V
    .locals 3

    .prologue
    .line 1564
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1565
    .local v0, send:Landroid/content/Intent;
    const-string v1, "com.android.settings_ex"

    const-string v2, "com.android.settings_ex.deviceinfo.UsbTetherIntroUSCActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 12
    .parameter "function"

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharger:Lcom/android/settings_ex/lge/RadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMediasync:Lcom/android/settings_ex/lge/RadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/settings_ex/lge/RadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/lge/RadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    if-nez v0, :cond_1

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v0

    sget-object v2, Lcom/android/settings_ex/MDMSettingsAdapter;->LGMDM_ADAPTER_USB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/MDMSettingsAdapter;->checkDisabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharger:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMediasync:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual/range {v0 .. v9}, Lcom/android/settings_ex/MDMSettingsAdapter;->setUsbMenu(Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharger:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMediasync:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v8, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual/range {v0 .. v9}, Lcom/android/settings_ex/MDMSettingsAdapter;->setUsbMenu(Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;)V

    .line 694
    :cond_3
    const-string v0, "charge_only"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharger:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMediasync:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-static {}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->isMassStorageEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setEnabled(Z)V

    goto :goto_0

    .line 702
    :cond_5
    const-string v0, "mtp_only"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharger:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMediasync:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    :cond_6
    const-string v0, "ptp_only"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharger:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMediasync:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_1

    :cond_7
    const-string v0, "mass_storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharger:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMediasync:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_8
    const-string v0, "ecm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "pc_suite"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 727
    :cond_9
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VZW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharger:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMediasync:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternetConnection:I

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    const v2, 0x7f080654

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setSummary(I)V

    :cond_a
    :goto_2
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v0

    sget-object v2, Lcom/android/settings_ex/MDMSettingsAdapter;->LGMDM_ADAPTER_TETHERING:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/MDMSettingsAdapter;->checkDisabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharger:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v8, v1

    invoke-virtual/range {v0 .. v9}, Lcom/android/settings_ex/MDMSettingsAdapter;->setUsbMenu(Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;)V

    goto/16 :goto_1

    :cond_b
    iget v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternetConnection:I

    if-ne v0, v11, :cond_c

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    const v2, 0x7f0807a1

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setSummary(I)V

    goto :goto_2

    .line 741
    :cond_c
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 744
    :cond_d
    const-string v0, "ecm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharger:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMediasync:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    goto :goto_2

    :cond_e
    const-string v0, "pc_suite"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharger:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMediasync:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_2

    :cond_f
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharger:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMediasync:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharger:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v11}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMediasync:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setChecked(Z)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_2

    if-ne p2, v0, :cond_1

    const-string v0, "Tether_Type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "USB"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->callPopup(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    const-string v0, "Tether_Type"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "USB"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "charge_only"

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->connectUsbTether(Z)V

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_0

    if-ne p2, v0, :cond_3

    const-string v0, "5"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->changeAutorunMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->connectUsbTether(Z)V

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_0

    const-string v0, "charge_only"

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->connectUsbTether(Z)V

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f080787

    invoke-virtual {v2, v5}, Landroid/app/Activity;->setTitle(I)V

    .line 498
    const-string v2, "usb"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 499
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "autorun_switch"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mAutorunEnable:Z

    .line 509
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;

    .line 511
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "u0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "x3"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "m4"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "m4ds"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "p2"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    sput-boolean v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mOldversion:Z

    :goto_1
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "d1la"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "d1lkt"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "d1lsk"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "d1lu"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "d1lv"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "l0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "l1a"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v5, "l_dcm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iput-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtpAutorun:Z

    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    const-string v5, "ecm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput v4, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternetConnection:I

    :goto_2
    const-string v2, "UsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[AUTORUN] onCreate() : mDefaultFunction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_3

    const-string v2, "extra_usb_launcher"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    :cond_3
    iput-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbLauncher:Z

    .line 538
    if-eqz v0, :cond_8

    const-string v2, "extra_direct_autorun"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_3
    iput-boolean v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDirectAutorun:Z

    sput-boolean v4, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mDoNotFinish:Z

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.autorun_timeout"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.autorun_ack"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.autorun_change_mode"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.mass_state_change"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 551
    return-void

    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_4
    move v2, v4

    goto/16 :goto_0

    :cond_5
    sput-boolean v4, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mOldversion:Z

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    const-string v5, "pc_suite"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iput v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternetConnection:I

    goto :goto_2

    :cond_7
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternetConnection:I

    goto :goto_2

    .restart local v0       #args:Landroid/os/Bundle;
    :cond_8
    move v2, v4

    .line 538
    goto :goto_3
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->cancelProgressPopup()V

    const-string v3, "persist.sys.usb.config"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, functions1:Ljava/lang/String;
    const-string v3, "sys.usb.config"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, functions2:Ljava/lang/String;
    const-string v3, "sys.usb.state"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, functions3:Ljava/lang/String;
    const-string v3, "UsbSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AUTORUN] onDestroy() : persist.sys.usb.config="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string v3, "UsbSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AUTORUN] onDestroy() : sys.usb.config="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-string v3, "UsbSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[AUTORUN] onDestroy() : sys.usb.state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbSettingsRun:Z

    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mNeedSleep:Z

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mNeedSleep:Z

    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "UsbSettings"

    const-string v2, "[AUTORUN] waiting exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings_ex/MDMSettingsAdapter;->LGMDM_ADAPTER_USB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/MDMSettingsAdapter;->checkDisabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    if-eq p1, v0, :cond_3

    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->connectUsbTether(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->setMassStorage(Landroid/content/Context;Z)Z

    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCharger:Lcom/android/settings_ex/lge/RadioButtonPreference;

    if-ne p1, v0, :cond_9

    const-string v0, "UsbSettings"

    const-string v1, "[AUTORUN] onPreferenceChange() : USB_FUNCTION_CHARGE_ONLY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "charge_only"

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    const-string v1, "4"

    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    if-eqz v0, :cond_5

    sput-boolean v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mAutorunEnable:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "cdrom_storage"

    invoke-virtual {v0, v1, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    :cond_6
    iput-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mNeedSleep:Z

    goto :goto_1

    :cond_7
    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    if-eqz v0, :cond_8

    sput-boolean v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mNeedSleep:Z

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMediasync:Lcom/android/settings_ex/lge/RadioButtonPreference;

    if-ne p1, v0, :cond_10

    const-string v0, "UsbSettings"

    const-string v1, "[AUTORUN] onPreferenceChange() : USB_FUNCTION_MTP_ONLY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mtp_only"

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    if-eqz v0, :cond_a

    sput-boolean v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mAutorunEnable:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "cdrom_storage"

    invoke-virtual {v0, v1, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    :cond_b
    iput-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mNeedSleep:Z

    goto :goto_3

    :cond_c
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMtpAutorun:Z

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    if-eqz v0, :cond_d

    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->changeAutorunMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-boolean v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mNeedSleep:Z

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    :cond_e
    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    if-eqz v0, :cond_f

    sput-boolean v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mNeedSleep:Z

    goto :goto_4

    :cond_10
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    if-ne p1, v0, :cond_15

    const-string v0, "UsbSettings"

    const-string v1, "[AUTORUN] onPreferenceChange() : USB_FUNCTION_TETHER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ecm"

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->callPopup(I)V

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tether_entitlement_check_state"

    invoke-static {v0, v1, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_12

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->checkEntitlement()V

    goto/16 :goto_0

    :cond_12
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->startUsbTetherIntroPopup()V

    goto/16 :goto_0

    :cond_13
    invoke-direct {p0, v3}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->callPopup(I)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mNeedSleep:Z

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPcsuite:Lcom/android/settings_ex/lge/RadioButtonPreference;

    if-ne p1, v0, :cond_17

    const-string v0, "UsbSettings"

    const-string v1, "[AUTORUN] onPreferenceChange() : USB_FUNCTION_PC_SUITE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "pc_suite"

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    if-eqz v0, :cond_16

    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->changeAutorunMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-boolean v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mNeedSleep:Z

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings_ex/lge/RadioButtonPreference;

    if-ne p1, v0, :cond_1c

    const-string v0, "UsbSettings"

    const-string v1, "[AUTORUN] onPreferenceChange() : USB_FUNCTION_PTP_ONLY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ptp_only"

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    const-string v1, "6"

    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    if-eqz v0, :cond_18

    sput-boolean v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    :goto_5
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    :cond_18
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mAutorunEnable:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "cdrom_storage"

    invoke-virtual {v0, v1, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    :cond_19
    iput-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mNeedSleep:Z

    goto :goto_5

    :cond_1a
    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    if-eqz v0, :cond_1b

    sput-boolean v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    :goto_6
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    :cond_1b
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mNeedSleep:Z

    goto :goto_6

    :cond_1c
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mMassStorage:Lcom/android/settings_ex/lge/RadioButtonPreference;

    if-ne p1, v0, :cond_21

    const-string v0, "UsbSettings"

    const-string v1, "[AUTORUN] onPreferenceChange() : USB_FUNCTION_MASS_STORAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mass_storage"

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "/sys/class/android_usb/android0/f_cdrom_storage/lun/cdrom_usbmode"

    const-string v1, "2"

    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->writeToFile(Ljava/lang/String;Ljava/lang/String;)Z

    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    if-eqz v0, :cond_1d

    sput-boolean v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->setMassStorage(Landroid/content/Context;Z)Z

    :goto_7
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    :cond_1d
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mAutorunEnable:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "cdrom_storage"

    invoke-virtual {v0, v1, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    :cond_1e
    iput-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mNeedSleep:Z

    goto :goto_7

    :cond_1f
    sget-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbConnected:Z

    if-eqz v0, :cond_20

    sput-boolean v3, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->setMassStorage(Landroid/content/Context;Z)Z

    :goto_8
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    goto/16 :goto_0

    :cond_20
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mNeedSleep:Z

    goto :goto_8

    :cond_21
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternet:Lcom/android/settings_ex/lge/RadioButtonPreference;

    if-ne p1, v0, :cond_0

    const-string v0, "ecm"

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    const-string v1, "ecm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iput v4, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternetConnection:I

    :goto_9
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->callPopup(I)V

    goto/16 :goto_0

    .line 1127
    :cond_22
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    const-string v1, "pc_suite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iput v3, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternetConnection:I

    goto :goto_9

    :cond_23
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mInternetConnection:I

    goto :goto_9
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    const-string v2, "UsbSettings"

    const-string v3, "[AUTORUN] onResume()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbSettingsRun:Z

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->checkStorageVolume(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->isAirplaneModeOn()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setEnabled(Z)V

    :cond_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mTether:Lcom/android/settings_ex/lge/RadioButtonPreference;

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v8, v1

    move-object v9, v1

    invoke-virtual/range {v0 .. v9}, Lcom/android/settings_ex/MDMSettingsAdapter;->setUsbMenu(Landroid/content/ComponentName;Landroid/content/Context;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;Lcom/android/settings_ex/lge/RadioButtonPreference;)V

    .line 658
    :cond_1
    return-void

    .line 650
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    invoke-static {}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->isAutorunTimer()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->cancelAutorunTimer()V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    const-string v1, "ecm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->connectUsbTether(Z)V

    :cond_0
    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
