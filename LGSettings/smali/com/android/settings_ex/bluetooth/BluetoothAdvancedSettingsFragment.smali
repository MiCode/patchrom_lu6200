.class public Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "BluetoothAdvancedSettingsFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final mSvcNames:[Ljava/lang/String;


# instance fields
.field private mFtpCheckBox:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mHelpPref:Landroid/preference/Preference;

.field private mPbapCheckBox:Landroid/preference/CheckBoxPreference;

.field private mProfileContainer:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bluetooth_ftp"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bluetooth_pbap"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mSvcNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->initPreference(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->initPreference()V

    return-void
.end method

.method private initPreference()V
    .locals 4

    .prologue
    .line 264
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mSvcNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mSvcNames:[Ljava/lang/String;

    aget-object v2, v3, v0

    .local v2, svcName:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->isServiceSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mProfileContainer:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .local v1, pref:Landroid/preference/CheckBoxPreference;
    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->updatePreference(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    .end local v1           #pref:Landroid/preference/CheckBoxPreference;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #svcName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private initPreference(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const v7, 0x7f080a77

    const/4 v3, 0x1

    .line 216
    const-string v4, "bt_svc_state"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 217
    .local v1, state:I
    const-string v4, "bt_svc_name"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, svcName:Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v0, v3

    .line 221
    .local v0, result:Z
    :goto_0
    const-string v4, "BluetoothAdvancedSettingsFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[BTUI] initPreference , service name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-eqz v2, :cond_3

    const-string v4, "bluetooth_ftp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mFtpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mFtpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mFtpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_0
    :goto_2
    return-void

    .end local v0           #result:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0       #result:Z
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mFtpCheckBox:Landroid/preference/CheckBoxPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 236
    :cond_3
    if-eqz v2, :cond_0

    const-string v4, "bluetooth_pbap"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v0, :cond_4

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mPbapCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    :goto_3
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mPbapCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mPbapCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mPbapCheckBox:Landroid/preference/CheckBoxPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private isServiceSupported(Ljava/lang/String;)Z
    .locals 6
    .parameter "svcName"

    .prologue
    const/4 v2, 0x0

    .line 205
    const/4 v1, 0x0

    .line 207
    .local v1, isSupported:Z
    const/4 v3, -0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-interface {v4, p1}, Lcom/broadcom/bt/service/framework/IServiceManager;->getServiceState(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eq v3, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v2, v1

    .line 212
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 207
    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "BluetoothAdvancedSettingsFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get service state for service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private declared-synchronized setSvcState(Landroid/preference/Preference;Ljava/lang/String;Z)Z
    .locals 4
    .parameter "pref"
    .parameter "serviceName"
    .parameter "enable"

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-interface {v1, p2}, Lcom/broadcom/bt/service/framework/IServiceManager;->enableService(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :cond_0
    :goto_0
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 195
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-interface {v1, p2}, Lcom/broadcom/bt/service/framework/IServiceManager;->disableService(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "BluetoothAdvancedSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting service "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to state "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_2

    const-string v1, "enabled"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 191
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 199
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_2
    :try_start_3
    const-string v1, "disabled"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private updatePreference(Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V
    .locals 4
    .parameter "pref"
    .parameter "svcName"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    invoke-interface {v1, p2}, Lcom/broadcom/bt/service/framework/IServiceManager;->getServiceState(Ljava/lang/String;)I

    move-result v0

    .line 276
    .local v0, serviceState:I
    if-ne v3, v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 277
    if-ne v0, v2, :cond_2

    .line 278
    const v1, 0x7f080a77

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 284
    .end local v0           #serviceState:I
    :cond_0
    :goto_1
    return-void

    .line 276
    .restart local v0       #serviceState:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 279
    :cond_2
    if-ne v0, v3, :cond_0

    .line 280
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 282
    .end local v0           #serviceState:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f060008

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 95
    const-string v0, "profile_container"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mProfileContainer:Landroid/preference/PreferenceGroup;

    .line 96
    const-string v0, "bt_ftp_svc"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mFtpCheckBox:Landroid/preference/CheckBoxPreference;

    .line 97
    const-string v0, "bt_pbap_svc"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mPbapCheckBox:Landroid/preference/CheckBoxPreference;

    .line 100
    const-string v0, "bt_svc_help"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mHelpPref:Landroid/preference/Preference;

    .line 102
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 108
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mFtpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mPbapCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 154
    const-string v2, "BluetoothAdvancedSettingsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] Check Advance preference : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " value : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bt_ftp_svc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mFtpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .local v0, enable:Z
    const-string v1, "bluetooth_ftp"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->setSvcState(Landroid/preference/Preference;Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mFtpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .end local v0           #enable:Z
    :cond_0
    :goto_0
    return v4

    .restart local p2
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bt_pbap_svc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mPbapCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .restart local v0       #enable:Z
    const-string v1, "bluetooth_pbap"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->setSvcState(Landroid/preference/Preference;Ljava/lang/String;Z)Z

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mPbapCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 144
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bt_svc_help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothHelpFragment;

    invoke-direct {v0}, Lcom/android/settings_ex/bluetooth/BluetoothHelpFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "bluetooth help"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/bluetooth/BluetoothHelpFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 125
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 127
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v1, svcMgrIntent:Landroid/content/Intent;
    const-string v2, "com.broadcom.bt.app.system"

    const-string v3, "com.broadcom.bt.app.system.ServiceManager"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, p0, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "broadcom.bt.intent.action.BT_SVC_STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mFtpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mPbapCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    invoke-static {p2}, Lcom/broadcom/bt/service/framework/IServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/framework/IServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mSvcMgr:Lcom/broadcom/bt/service/framework/IServiceManager;

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 187
    return-void
.end method
