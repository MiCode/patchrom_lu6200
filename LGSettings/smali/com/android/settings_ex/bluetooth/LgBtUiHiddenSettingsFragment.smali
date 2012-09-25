.class public Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LgBtUiHiddenSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final BTUI_HIDDEN_MENU:[Z

.field private static final SDCARD_PATH:Ljava/lang/String;

.field private static final SNOOP_FILE_PATH:Ljava/lang/String;

.field private static mLogServicetIntent:Landroid/content/Intent;


# instance fields
.field private ONOFF_INTERVAL:I

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothTestMode:Lcom/broadcom/bt/service/test/BluetoothTestMode;

.field private mCallback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

.field private mDispMsg:Ljava/lang/String;

.field private mDoTurnOn:Z

.field private mInterval:Ljava/lang/String;

.field private mIsBTSnoopEnabled:Z

.field private mIsHciLogEnabled:Z

.field private mIsSigFeatureEnabled:Z

.field private mIsSspDebug:Z

.field private mOnOffDialog:Landroid/app/AlertDialog;

.field private mOnOffTest:Z

.field private mOnOffTestCount:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private prefHidden1:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

.field private prefHidden2:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

.field private prefHidden3:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

.field private prefHidden4:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

.field private prefHidden5:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

.field private prefHidden6:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

.field private prefHidden7:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

.field private prefHidden8:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    .line 78
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->SDCARD_PATH:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/bluetooth/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->SNOOP_FILE_PATH:Ljava/lang/String;

    return-void

    .line 43
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffTest:Z

    .line 67
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mInterval:Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 545
    new-instance v0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$5;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mCallback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    return-void
.end method

.method private BtUiLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 590
    const-string v0, "LgBtUiHiddenSettingsFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffTest:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffTest:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->ONOFF_INTERVAL:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mDoTurnOn:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mDoTurnOn:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->ONOFF_INTERVAL:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsSspDebug:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)Lcom/broadcom/bt/service/test/BluetoothTestMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mBluetoothTestMode:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Lcom/broadcom/bt/service/test/BluetoothTestMode;)Lcom/broadcom/bt/service/test/BluetoothTestMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mBluetoothTestMode:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mCallback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mInterval:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffTestCount:I

    return v0
.end method

.method static synthetic access$508(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffTestCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffTestCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->closeOnOffTestDialog()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mDispMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->onOnOffTestDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private closeOnOffTestDialog()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffDialog:Landroid/app/AlertDialog;

    .line 502
    :cond_0
    return-void
.end method

.method private enterSSPDebugMode()V
    .locals 3

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mBluetoothTestMode:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    if-nez v0, :cond_0

    .line 507
    const-string v0, "bluetooth_test"

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$4;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)V

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/framework/BluetoothProxyManager;->getProxy(Ljava/lang/String;Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    .line 526
    :cond_0
    return-void
.end method

.method private exitSSPDebugMode()V
    .locals 4

    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mBluetoothTestMode:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    if-eqz v1, :cond_0

    .line 532
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 533
    .local v0, payload:[B
    const/4 v1, 0x0

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    .line 534
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mBluetoothTestMode:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    const v2, 0x1011804

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->SendBtldApiCmd(II[B)I

    .line 542
    .end local v0           #payload:[B
    :goto_0
    return-void

    .line 540
    :cond_0
    const-string v1, "[BTUI] ### mBluetoothTestMode <null> ###"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onOnOffTestDialog()V
    .locals 4

    .prologue
    .line 474
    new-instance v1, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$2;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)V

    .line 480
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$3;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)V

    .line 487
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mDispMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffDialog:Landroid/app/AlertDialog;

    .line 493
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 494
    return-void
.end method

.method private updatePrefence()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 225
    .local v0, prefScreen:Landroid/preference/PreferenceScreen;
    sget-object v2, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_0

    .line 229
    new-instance v2, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v5, "btui_dut"

    invoke-direct {v2, p0, v5, v4, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden1:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    .line 230
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden1:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v5, "DUT Mode"

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden1:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v5, "Bluetooth DUT test"

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden1:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v5, "btui_dut"

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden1:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 236
    :cond_0
    sget-object v2, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    .line 240
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 241
    new-instance v2, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v5, "btui_onoff_test"

    invoke-direct {v2, p0, v5, v4, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden2:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    .line 242
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden2:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v5, "On/Off Test"

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden2:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v5, "Bluetooth on/off test"

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden2:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v5, "btui_onoff_test"

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden2:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 248
    :cond_1
    sget-object v2, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    const/4 v5, 0x2

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_2

    .line 252
    new-instance v2, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v5, "btui_hci"

    invoke-direct {v2, p0, v5, v3, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden3:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    .line 253
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden3:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v5, "HCI Log"

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden3:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v5, "btui_hci"

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden3:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 257
    const-string v2, "persist.service.btui.hci"

    const-string v5, "0"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsHciLogEnabled:Z

    .line 258
    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsHciLogEnabled:Z

    if-eqz v2, :cond_8

    .line 259
    const-string v1, "HCI log is enabled"

    .line 263
    .local v1, sum_toast:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden3:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden3:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    iget-boolean v5, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsHciLogEnabled:Z

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setChecked(Z)V

    .line 267
    .end local v1           #sum_toast:Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    const/4 v5, 0x3

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_3

    .line 271
    new-instance v2, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v5, "btui_snoop"

    invoke-direct {v2, p0, v5, v3, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden4:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    .line 272
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden4:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v5, "BTSnoop"

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden4:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v5, "btui_snoop"

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden4:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 276
    const-string v2, "service.brcm.bt.btsnoop"

    const-string v5, "0"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsBTSnoopEnabled:Z

    .line 277
    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsBTSnoopEnabled:Z

    if-eqz v2, :cond_a

    .line 278
    const-string v1, "BTSnoop is enabled"

    .line 282
    .restart local v1       #sum_toast:Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden4:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden4:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    iget-boolean v5, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsBTSnoopEnabled:Z

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setChecked(Z)V

    .line 286
    .end local v1           #sum_toast:Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    const/4 v5, 0x4

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_4

    .line 290
    new-instance v2, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v5, "btui_ssp_debug"

    invoke-direct {v2, p0, v5, v3, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden5:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    .line 291
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden5:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v5, "SSP Debug"

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden5:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v5, "btui_ssp_debug"

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden5:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 295
    const-string v2, "service.btui.ssp_debug"

    const-string v5, "0"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsSspDebug:Z

    .line 296
    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsSspDebug:Z

    if-eqz v2, :cond_b

    .line 297
    const-string v1, "SSP debug mode is enabled"

    .line 301
    .restart local v1       #sum_toast:Ljava/lang/String;
    :goto_3
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden5:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden5:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    iget-boolean v5, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsSspDebug:Z

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setChecked(Z)V

    .line 305
    .end local v1           #sum_toast:Ljava/lang/String;
    :cond_4
    sget-object v2, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    const/4 v5, 0x5

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_5

    .line 309
    new-instance v2, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v5, "btui_sig"

    invoke-direct {v2, p0, v5, v3, v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden6:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    .line 310
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden6:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v3, "Bluetooth SIG"

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden6:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v3, "btui_sig"

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 312
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden6:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 314
    const-string v2, "persist.service.btui.sig"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsSigFeatureEnabled:Z

    .line 315
    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsSigFeatureEnabled:Z

    if-eqz v2, :cond_c

    .line 316
    const-string v1, "SIG feature is enabled"

    .line 320
    .restart local v1       #sum_toast:Ljava/lang/String;
    :goto_4
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden6:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden6:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    iget-boolean v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsSigFeatureEnabled:Z

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setChecked(Z)V

    .line 324
    .end local v1           #sum_toast:Ljava/lang/String;
    :cond_5
    sget-object v2, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    const/4 v3, 0x6

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_6

    .line 328
    new-instance v2, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v3, "btui_log_viewer"

    invoke-direct {v2, p0, v3, v4, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden7:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    .line 329
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden7:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v3, "Log Viewer"

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden7:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v3, "btui_log_viewer"

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden7:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 334
    :cond_6
    sget-object v2, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BTUI_HIDDEN_MENU:[Z

    const/4 v3, 0x7

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_7

    .line 338
    new-instance v2, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v3, "btui_log_service"

    invoke-direct {v2, p0, v3, v4, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;ZZ)V

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden8:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    .line 339
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden8:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v3, "Log Service"

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden8:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    const-string v3, "btui_log_service"

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setKey(Ljava/lang/String;)V

    .line 341
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden8:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 344
    :cond_7
    return-void

    .line 261
    :cond_8
    const-string v1, "HCI log is disabled"

    .restart local v1       #sum_toast:Ljava/lang/String;
    goto/16 :goto_0

    .end local v1           #sum_toast:Ljava/lang/String;
    :cond_9
    move v2, v4

    .line 276
    goto/16 :goto_1

    .line 280
    :cond_a
    const-string v1, "BTSnoop is disabled"

    .restart local v1       #sum_toast:Ljava/lang/String;
    goto/16 :goto_2

    .line 299
    .end local v1           #sum_toast:Ljava/lang/String;
    :cond_b
    const-string v1, "SSP debug mode is disabled"

    .restart local v1       #sum_toast:Ljava/lang/String;
    goto/16 :goto_3

    .line 318
    .end local v1           #sum_toast:Ljava/lang/String;
    :cond_c
    const-string v1, "SIG feature is disabled"

    .restart local v1       #sum_toast:Ljava/lang/String;
    goto :goto_4
.end method

.method private updateScreen()V
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 218
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->updatePrefence()V

    .line 219
    return-void
.end method


# virtual methods
.method BtUiDisplayToast(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 580
    return-void
.end method

.method BtUiSleep(I)V
    .locals 2
    .parameter "ms"

    .prologue
    .line 584
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_0
    return-void

    .line 585
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCheckboxResult(Ljava/lang/String;)V
    .locals 10
    .parameter "key"

    .prologue
    const/high16 v9, 0x1080

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 352
    const-string v8, "btui_dut"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 354
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.btui.action_btui_dut_test"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mLogServicetIntent:Landroid/content/Intent;

    .line 355
    sget-object v6, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mLogServicetIntent:Landroid/content/Intent;

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 356
    sget-object v6, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mLogServicetIntent:Landroid/content/Intent;

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    const-string v8, "btui_onoff_test"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 360
    iput-boolean v7, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffTest:Z

    .line 361
    iput v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffTestCount:I

    .line 362
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 363
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 367
    :goto_1
    const-string v6, "Bluetooth On/Off Test"

    iput-object v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mDispMsg:Ljava/lang/String;

    .line 368
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->onOnOffTestDialog()V

    goto :goto_0

    .line 365
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_1

    .line 370
    :cond_3
    const-string v8, "btui_hci"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 372
    iget-boolean v8, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsHciLogEnabled:Z

    if-eqz v8, :cond_5

    :goto_2
    iput-boolean v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsHciLogEnabled:Z

    .line 373
    const-string v8, "persist.service.btui.hci"

    iget-boolean v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsHciLogEnabled:Z

    if-eqz v6, :cond_6

    const-string v6, "1"

    :goto_3
    invoke-static {v8, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-boolean v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsHciLogEnabled:Z

    if-eqz v6, :cond_7

    .line 376
    const-string v6, "service.brcm.bt.TRC_BTAPP"

    const-string v8, "05"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v6, "service.brcm.bt.TRC_HCI"

    const-string v8, "05"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v6, "service.brcm.bt.TRC_PROTOCOL"

    const-string v8, "01"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v5, "HCI log is enabled"

    .line 386
    .local v5, sum_toast:Ljava/lang/String;
    :goto_4
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 387
    iput-boolean v7, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mDoTurnOn:Z

    .line 388
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 390
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden3:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    invoke-virtual {v6, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 391
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden3:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    iget-boolean v7, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsHciLogEnabled:Z

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setChecked(Z)V

    .line 392
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BtUiDisplayToast(Ljava/lang/String;)V

    goto :goto_0

    .end local v5           #sum_toast:Ljava/lang/String;
    :cond_5
    move v6, v7

    .line 372
    goto :goto_2

    .line 373
    :cond_6
    const-string v6, "0"

    goto :goto_3

    .line 381
    :cond_7
    const-string v6, "service.brcm.bt.TRC_BTAPP"

    const-string v8, "00"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v6, "service.brcm.bt.TRC_HCI"

    const-string v8, "00"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v6, "service.brcm.bt.TRC_PROTOCOL"

    const-string v8, "00"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v5, "HCI log is disabled"

    .restart local v5       #sum_toast:Ljava/lang/String;
    goto :goto_4

    .line 394
    .end local v5           #sum_toast:Ljava/lang/String;
    :cond_8
    const-string v8, "btui_snoop"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 396
    iget-boolean v8, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsBTSnoopEnabled:Z

    if-eqz v8, :cond_a

    :goto_5
    iput-boolean v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsBTSnoopEnabled:Z

    .line 397
    const/4 v3, 0x0

    .line 399
    .local v3, logFileName:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsBTSnoopEnabled:Z

    if-eqz v6, :cond_b

    .line 400
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMddHHmmss"

    sget-object v8, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v2, v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 401
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 402
    .local v0, currentTime:Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, dTime:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->SNOOP_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "btsnoop_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".cfa"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 404
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BTUI] BTSnoop enabled... logFileName ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V

    .line 405
    const-string v5, "BTSnoop is enabled"

    .line 409
    .end local v0           #currentTime:Ljava/util/Date;
    .end local v1           #dTime:Ljava/lang/String;
    .end local v2           #formatter:Ljava/text/SimpleDateFormat;
    .restart local v5       #sum_toast:Ljava/lang/String;
    :goto_6
    const-string v6, "service.brcm.bt.btsnoop"

    iget-boolean v8, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsBTSnoopEnabled:Z

    if-eqz v8, :cond_c

    .end local v3           #logFileName:Ljava/lang/String;
    :goto_7
    invoke-static {v6, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 411
    iput-boolean v7, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mDoTurnOn:Z

    .line 412
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 414
    :cond_9
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden4:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    invoke-virtual {v6, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden4:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    iget-boolean v7, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsBTSnoopEnabled:Z

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setChecked(Z)V

    .line 416
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BtUiDisplayToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5           #sum_toast:Ljava/lang/String;
    :cond_a
    move v6, v7

    .line 396
    goto :goto_5

    .line 407
    .restart local v3       #logFileName:Ljava/lang/String;
    :cond_b
    const-string v5, "BTSnoop is disabled"

    .restart local v5       #sum_toast:Ljava/lang/String;
    goto :goto_6

    .line 409
    :cond_c
    const-string v3, "0"

    goto :goto_7

    .line 418
    .end local v3           #logFileName:Ljava/lang/String;
    .end local v5           #sum_toast:Ljava/lang/String;
    :cond_d
    const-string v8, "btui_ssp_debug"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 420
    iget-boolean v8, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsSspDebug:Z

    if-eqz v8, :cond_e

    :goto_8
    iput-boolean v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsSspDebug:Z

    .line 421
    const-string v7, "service.btui.ssp_debug"

    iget-boolean v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsSspDebug:Z

    if-eqz v6, :cond_f

    const-string v6, "1"

    :goto_9
    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-boolean v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsSspDebug:Z

    if-eqz v6, :cond_10

    .line 424
    const-string v5, "SSP debug mode is enabled"

    .line 425
    .restart local v5       #sum_toast:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->enterSSPDebugMode()V

    .line 430
    :goto_a
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden5:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    invoke-virtual {v6, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden5:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    iget-boolean v7, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsSspDebug:Z

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setChecked(Z)V

    .line 432
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BtUiDisplayToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5           #sum_toast:Ljava/lang/String;
    :cond_e
    move v6, v7

    .line 420
    goto :goto_8

    .line 421
    :cond_f
    const-string v6, "0"

    goto :goto_9

    .line 427
    :cond_10
    const-string v5, "SSP debug mode is disabled"

    .line 428
    .restart local v5       #sum_toast:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->exitSSPDebugMode()V

    goto :goto_a

    .line 434
    .end local v5           #sum_toast:Ljava/lang/String;
    :cond_11
    const-string v8, "btui_sig"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 436
    iget-boolean v8, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsSigFeatureEnabled:Z

    if-eqz v8, :cond_12

    :goto_b
    iput-boolean v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsSigFeatureEnabled:Z

    .line 437
    const-string v7, "persist.service.btui.sig"

    iget-boolean v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsSigFeatureEnabled:Z

    if-eqz v6, :cond_13

    const-string v6, "1"

    :goto_c
    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-boolean v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsSigFeatureEnabled:Z

    if-eqz v6, :cond_14

    .line 440
    const-string v5, "SIG feature is enabled"

    .line 444
    .restart local v5       #sum_toast:Ljava/lang/String;
    :goto_d
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden6:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    invoke-virtual {v6, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 445
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->prefHidden6:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;

    iget-boolean v7, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsSigFeatureEnabled:Z

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setChecked(Z)V

    .line 446
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". It will be applied after reboot."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BtUiDisplayToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v5           #sum_toast:Ljava/lang/String;
    :cond_12
    move v6, v7

    .line 436
    goto :goto_b

    .line 437
    :cond_13
    const-string v6, "0"

    goto :goto_c

    .line 442
    :cond_14
    const-string v5, "SIG feature is disabled"

    .restart local v5       #sum_toast:Ljava/lang/String;
    goto :goto_d

    .line 448
    .end local v5           #sum_toast:Ljava/lang/String;
    :cond_15
    const-string v6, "btui_log_viewer"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 450
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.btui.action_btui_log_viewer"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    .local v4, logViewerIntent:Landroid/content/Intent;
    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 452
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 454
    .end local v4           #logViewerIntent:Landroid/content/Intent;
    :cond_16
    const-string v6, "btui_log_service"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 456
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.lge.hiddenmenu.log_service.MainActivity"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v6, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mLogServicetIntent:Landroid/content/Intent;

    .line 457
    sget-object v6, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mLogServicetIntent:Landroid/content/Intent;

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 458
    sget-object v6, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mLogServicetIntent:Landroid/content/Intent;

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 181
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->addPreferencesFromResource(I)V

    .line 182
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mBluetoothTestMode:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mBluetoothTestMode:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->finish()V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mBluetoothTestMode:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    .line 214
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 196
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 197
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 575
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 186
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 187
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->updateScreen()V

    .line 189
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 190
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    return-void
.end method

.method public onSettingsButtonResult(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 463
    const-string v0, "btui_sig"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.btui.action_btui_sig"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mLogServicetIntent:Landroid/content/Intent;

    .line 465
    sget-object v0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mLogServicetIntent:Landroid/content/Intent;

    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 466
    sget-object v0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mLogServicetIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 468
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    return-void
.end method
