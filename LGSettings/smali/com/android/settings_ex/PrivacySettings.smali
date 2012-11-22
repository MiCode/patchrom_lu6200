.class public Lcom/android/settings_ex/PrivacySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static default_func:Ljava/lang/String;


# instance fields
.field private mAutoRestore:Landroid/preference/CheckBoxPreference;

.field private mBackup:Landroid/preference/CheckBoxPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBackupReset:Landroid/preference/PreferenceScreen;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDataTransfer:Landroid/preference/CheckBoxPreference;

.field private mDialogType:I

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private isWifiEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 344
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/PrivacySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 345
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 346
    .local v1, wifiState:I
    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 352
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setBackupEnabled(Z)V
    .locals 10
    .parameter "enable"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v6, :cond_0

    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v6, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    const/4 v0, 0x0

    .local v0, backupEnabled:Z
    const/4 v1, 0x0

    .local v1, configIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .local v2, configSummary:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v6, :cond_1

    :try_start_1
    iget-object v6, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v6}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    iget-object v6, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v6}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v5

    .local v5, transport:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v6, v5}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v6, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v6, v5}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 336
    .end local v5           #transport:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    move v3, v7

    .local v3, configureEnabled:Z
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, v2}, Lcom/android/settings_ex/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .end local v0           #backupEnabled:Z
    .end local v1           #configIntent:Landroid/content/Intent;
    .end local v2           #configSummary:Ljava/lang/String;
    .end local v3           #configureEnabled:Z
    :goto_2
    return-void

    .line 311
    :catch_0
    move-exception v4

    .line 312
    .local v4, e:Landroid/os/RemoteException;
    iget-object v9, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_2

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_3

    :goto_4
    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    move v6, v8

    .line 312
    goto :goto_3

    :cond_3
    move v7, v8

    .line 313
    goto :goto_4

    .line 330
    .end local v4           #e:Landroid/os/RemoteException;
    .restart local v0       #backupEnabled:Z
    .restart local v1       #configIntent:Landroid/content/Intent;
    .restart local v2       #configSummary:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 332
    .restart local v4       #e:Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v4           #e:Landroid/os/RemoteException;
    :cond_4
    move v3, v8

    .line 336
    goto :goto_1
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .parameter "summary"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0805c9

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private showEraseBackupDialog()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/PrivacySettings;->mDialogType:I

    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0805d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 215
    .local v0, msg:Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0805cf

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mConfirmDialog:Landroid/app/Dialog;

    .line 221
    return-void
.end method

.method private updateConfigureSummary()V
    .locals 3

    .prologue
    .line 283
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, transport:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, summary:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #summary:Ljava/lang/String;
    .end local v1           #transport:Ljava/lang/String;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .local v5, res:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .local v0, backupEnabled:Z
    const/4 v1, 0x0

    .local v1, configIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .local v2, configSummary:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v6

    .local v6, transport:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 243
    .end local v6           #transport:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    const-string v7, "backup_auto_restore"

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_3

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v10, "DCM"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 251
    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v10, "i_dcm"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 261
    :cond_1
    :goto_2
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    move v3, v8

    .local v3, configureEnabled:Z
    :goto_3
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, v2}, Lcom/android/settings_ex/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupReset:Landroid/preference/PreferenceScreen;

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupReset:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/settings_ex/MDMSettingsAdapter;->setFactoryResetMenu(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 271
    :cond_2
    return-void

    .line 239
    .end local v3           #configureEnabled:Z
    :catch_0
    move-exception v4

    .line 241
    .local v4, e:Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v4           #e:Landroid/os/RemoteException;
    :cond_3
    move v7, v9

    .line 245
    goto :goto_1

    .line 252
    :cond_4
    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v10, "p2"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 254
    const-string v7, "usb"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/PrivacySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/usb/UsbManager;

    iput-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mDataTransfer:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/android/settings_ex/PrivacySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v11, "dtf"

    invoke-virtual {v10, v11}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_5
    move v3, v9

    .line 261
    goto :goto_3
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/PrivacySettings;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lcom/android/settings_ex/PrivacySettings;->setBackupEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->updateConfigureSummary()V

    :cond_0
    iput v2, p0, Lcom/android/settings_ex/PrivacySettings;->mDialogType:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f06002b

    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 89
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_dcm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "p2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/PrivacySettings;->addPreferencesFromResource(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .local v0, screen:Landroid/preference/PreferenceScreen;
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 103
    const-string v1, "backup_data"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    .line 104
    const-string v1, "auto_restore"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    .line 105
    const-string v1, "configure_account"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    .line 107
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v1, :cond_1

    .line 108
    const-string v1, "backup_reset"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupReset:Landroid/preference/PreferenceScreen;

    .line 116
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "i_dcm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 125
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_3

    .line 127
    const-string v1, "backup_category"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/PrivacySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->updateToggles()V

    return-void

    .end local v0           #screen:Landroid/preference/PreferenceScreen;
    :cond_4
    const v1, 0x7f06002c

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/PrivacySettings;->addPreferencesFromResource(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/PrivacySettings;->addPreferencesFromResource(I)V

    goto :goto_0

    .restart local v0       #screen:Landroid/preference/PreferenceScreen;
    :cond_6
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "p2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 119
    const-string v1, "data_transfer"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings_ex/PrivacySettings;->mDataTransfer:Landroid/preference/CheckBoxPreference;

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v9, 0x7f0809f3

    const v8, 0x104000a

    const v7, 0x1010355

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->showEraseBackupDialog()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/settings_ex/PrivacySettings;->setBackupEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .local v0, curState:Z
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, v0}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v2

    .line 165
    .local v2, e:Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1

    .line 169
    .end local v0           #curState:Z
    .end local v2           #e:Landroid/os/RemoteException;
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mDataTransfer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_0

    .line 170
    const-string v3, "usb"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/PrivacySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    iput-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mDataTransfer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    sget-object v4, Lcom/android/settings_ex/PrivacySettings;->default_func:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.nttdmse.android.felicaDT.FeliCaDTService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 175
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "adb_enabled"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v6, "charge_only"

    invoke-virtual {v3, v6}, Landroid/hardware/usb/UsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mDataTransfer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f0809f6

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 187
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 189
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_7
    const-string v3, "usb"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/PrivacySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbManager;

    iput-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings_ex/PrivacySettings;->default_func:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/PrivacySettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v6, "dtf"

    invoke-virtual {v3, v6, v5}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.nttdmse.android.felicaDT.FeliCaDTService"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 194
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f0809f7

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 201
    .restart local v1       #dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->updateToggles()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    return-void
.end method
