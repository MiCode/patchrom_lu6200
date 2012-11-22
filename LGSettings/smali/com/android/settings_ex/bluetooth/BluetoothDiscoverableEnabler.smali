.class final Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDiscoverable:Z

.field private final mDiscoveryPreference:Landroid/preference/Preference;

.field private final mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private final mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

.field private final mMyDevicePreference:Landroid/preference/Preference;

.field private mNumberOfPairedDevices:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private mTimeoutSecs:I

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 3
    .parameter "context"
    .parameter "adapter"
    .parameter "discoveryPreference"
    .parameter "myDevicePreference"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    invoke-virtual {p3}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    iput-object p4, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mMyDevicePreference:Landroid/preference/Preference;

    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    const-string v1, "LGBT_CNDTL_FUNCTION_BLOCK_DISCOVER_INCALL"

    invoke-static {v1}, Lcom/lge/config/BtFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.btui.callState"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    return-void
.end method

.method private static formatTimeRemaining(I)Ljava/lang/String;
    .locals 5
    .parameter "timeout"

    .prologue
    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 249
    .local v1, sb:Ljava/lang/StringBuilder;
    div-int/lit8 v0, p0, 0x3c

    .line 250
    .local v0, min:I
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    mul-int/lit8 v3, v0, 0x3c

    sub-int v2, p0, v3

    .line 252
    .local v2, sec:I
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 253
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getDiscoverableTimeout()I
    .locals 5

    .prologue
    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "bt_discoverable_timeout"

    const-string v4, "twomin"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, timeoutValue:Ljava/lang/String;
    const-string v2, "never"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .local v0, timeout:I
    :goto_1
    iput v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    goto :goto_0

    .end local v0           #timeout:I
    :cond_1
    const-string v2, "onehour"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 305
    const/16 v0, 0xe10

    .restart local v0       #timeout:I
    goto :goto_1

    .line 306
    .end local v0           #timeout:I
    :cond_2
    const-string v2, "fivemin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 307
    const/16 v0, 0x12c

    .restart local v0       #timeout:I
    goto :goto_1

    .line 309
    .end local v0           #timeout:I
    :cond_3
    const/16 v0, 0x78

    .restart local v0       #timeout:I
    goto :goto_1
.end method

.method private setEnabled(Z)V
    .locals 9
    .parameter "enable"

    .prologue
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v2

    .local v2, timeout:I
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setDiscoverableTimeout(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, v2

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long v0, v3, v5

    .local v0, endTimestamp:J
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->persistDiscoverableEndTimestamp(Landroid/content/Context;J)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x17

    invoke-virtual {v3, v4, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setScanMode(II)Z

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    .end local v0           #endTimestamp:J
    .end local v2           #timeout:I
    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    goto :goto_0
.end method

.method private setSummaryNotDiscoverable()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    const v1, 0x7f080c26

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private updateCountdownSummary()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v4

    .local v4, mode:I
    const/16 v6, 0x17

    if-eq v4, v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, currentTimestamp:J
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->getDiscoverableEndTimestamp(Landroid/content/Context;)J

    move-result-wide v2

    .local v2, endTimestamp:J
    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->updateTimerDisplay(I)V

    goto :goto_0

    :cond_1
    sub-long v6, v2, v0

    div-long/2addr v6, v8

    long-to-int v5, v6

    .local v5, timeLeft:I
    invoke-direct {p0, v5}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->updateTimerDisplay(I)V

    monitor-enter p0

    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 397
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private updateTimerDisplay(I)V
    .locals 6
    .parameter "timeout"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    const v2, 0x7f080c2e

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->formatTimeRemaining(I)Ljava/lang/String;

    move-result-object v0

    .local v0, textTimeout:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f080c27

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method getDiscoverableTimeoutIndex()I
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->getDiscoverableTimeout()I

    move-result v0

    .local v0, timeout:I
    sparse-switch v0, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v1, 0x3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x12c -> :sswitch_0
        0xe10 -> :sswitch_1
    .end sparse-switch
.end method

.method handleModeChanged(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mMyDevicePreference:Landroid/preference/Preference;

    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    :goto_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->getInstance()Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->setBluetoothDiscoverableEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;ZLandroid/preference/Preference;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->setSummaryNotDiscoverable()V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mMyDevicePreference:Landroid/preference/Preference;

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 188
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->getInstance()Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->checkBluetoothAudioOnly(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "LGMDM"

    const-string v3, "LGMDM BT POINT #011"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    if-ne p1, v2, :cond_0

    const-string v2, "LGBT_CNDTL_FUNCTION_BLOCK_DISCOVER_INCALL"

    invoke-static {v2}, Lcom/lge/config/BtFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothUIStatus()Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->isVoiceConversation()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f080af3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->BtUiToastMessage(Ljava/lang/String;)V

    :cond_2
    move v1, v0

    .line 205
    goto :goto_0

    .line 210
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    if-nez v2, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoverable:Z

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mUpdateCountdownSummaryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public resume()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "LGBT_CNDTL_FUNCTION_BLOCK_DISCOVER_INCALL"

    invoke-static {v1}, Lcom/lge/config/BtFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    const-string v1, "com.android.btui.callState"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->handleModeChanged(I)V

    goto :goto_0
.end method

.method setDiscoverableTimeout(I)V
    .locals 3
    .parameter "index"

    .prologue
    packed-switch p1, :pswitch_data_0

    const/16 v1, 0x78

    iput v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    const-string v0, "twomin"

    .local v0, timeoutValue:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "bt_discoverable_timeout"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->setEnabled(Z)V

    return-void

    .end local v0           #timeoutValue:Ljava/lang/String;
    :pswitch_0
    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    const-string v0, "fivemin"

    .restart local v0       #timeoutValue:Ljava/lang/String;
    goto :goto_0

    .end local v0           #timeoutValue:Ljava/lang/String;
    :pswitch_1
    const/16 v1, 0xe10

    iput v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    const-string v0, "onehour"

    .restart local v0       #timeoutValue:Ljava/lang/String;
    goto :goto_0

    .end local v0           #timeoutValue:Ljava/lang/String;
    :pswitch_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mTimeoutSecs:I

    const-string v0, "never"

    .restart local v0       #timeoutValue:Ljava/lang/String;
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setNumberOfPairedDevices(I)V
    .locals 1
    .parameter "pairedDevices"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mNumberOfPairedDevices:I

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->handleModeChanged(I)V

    .line 339
    return-void
.end method
