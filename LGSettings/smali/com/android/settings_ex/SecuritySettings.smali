.class public Lcom/android/settings_ex/SecuritySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mIccLockPreferences:Landroid/preference/PreferenceScreen;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mIccLockPreferences:Landroid/preference/PreferenceScreen;

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .local v4, root:Landroid/preference/PreferenceScreen;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v7, 0x7f060030

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v7, "device_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    new-instance v5, Lcom/android/settings_ex/SDEncryption;

    invoke-direct {v5}, Lcom/android/settings_ex/SDEncryption;-><init>()V

    .local v5, sdencryption:Lcom/android/settings_ex/SDEncryption;
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 172
    :cond_1
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mIccLockPreferences:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mIccLockPreferences:Landroid/preference/PreferenceScreen;

    const v10, 0x7f0802f2

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "com.android.phone"

    const-string v10, "com.android.phone.SelSubSecuritySettings"

    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "PACKAGE"

    const-string v10, "com.android.phone"

    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "TARGET_CLASS"

    const-string v10, "com.android.phone.IccLockSettings"

    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mIccLockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .local v2, iccLockCat:Landroid/preference/PreferenceCategory;
    const v7, 0x7f0802f3

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mIccLockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .end local v2           #iccLockCat:Landroid/preference/PreferenceCategory;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    const v7, 0x7f060035

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMultiSimEnabled()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 200
    .local v0, currentSimStatus:I
    const/4 v7, 0x5

    if-eq v0, v7, :cond_3

    .line 201
    const-string v7, "sim_lock"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 205
    :cond_3
    const-string v7, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "KT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 207
    :cond_4
    const-string v7, "sim_lock"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0806dc

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    const-string v7, "sim_lock_menu"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0806dd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 214
    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 215
    .local v6, tm:Landroid/telephony/TelephonyManager;
    const/4 v7, 0x2

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v9

    if-ne v7, v9, :cond_6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v7

    if-ne v7, v8, :cond_7

    :cond_6
    const-string v7, "MPCS"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "l2s"

    const-string v8, "ro.build.product"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 218
    :cond_7
    const-string v7, "KDDI"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 219
    const-string v7, "sim_lock"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    .end local v0           #currentSimStatus:I
    .end local v6           #tm:Landroid/telephony/TelephonyManager;
    :cond_8
    :goto_1
    const-string v7, "show_password"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 231
    const-string v7, "reset_credentials"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 233
    const-string v7, "toggle_install_applications"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    iget-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 237
    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v12, v8, v9}, Lcom/android/settings_ex/MDMSettingsAdapter;->setUnknownSourceEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    .line 240
    :cond_9
    return-object v4

    .line 124
    :pswitch_1
    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v10, "x3"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "m4"

    const-string v10, "ro.product.device"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "m4ds"

    const-string v10, "ro.product.device"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "KT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5}, Lcom/android/settings_ex/SDEncryption;->getSDEncryptedSupport()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v5}, Lcom/android/settings_ex/SDEncryption;->getSDcardEncryptedMenuId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    const-string v7, "sd_card_encryption"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->checkMDMEAS()Z

    move-result v7

    if-nez v7, :cond_a

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->checkMDMEAS()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "sd_card_encryption"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v7, v12, v10, v11}, Lcom/android/settings_ex/MDMSettingsAdapter;->setStorgeEncryptionSummary(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/Preference;)V

    goto/16 :goto_0

    :cond_a
    move v7, v9

    .line 131
    goto :goto_2

    .line 139
    :cond_b
    const v7, 0x7f060033

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 146
    :pswitch_2
    sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v10, "x3"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "m4"

    const-string v10, "ro.product.device"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "m4ds"

    const-string v10, "ro.product.device"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "KT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v5}, Lcom/android/settings_ex/SDEncryption;->getSDEncryptedSupport()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v5}, Lcom/android/settings_ex/SDEncryption;->getSDcardUnencryptedMenuId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    const-string v7, "sd_card_encryption"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->checkMDMEAS()Z

    move-result v7

    if-nez v7, :cond_c

    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    sget-boolean v7, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->checkMDMEAS()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "sd_card_encryption"

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v7, v12, v10, v11}, Lcom/android/settings_ex/MDMSettingsAdapter;->setStorgeEncryptionSummary(Landroid/content/ComponentName;Landroid/content/Context;Landroid/preference/Preference;)V

    goto/16 :goto_0

    :cond_c
    move v7, v9

    .line 153
    goto :goto_3

    .line 161
    :cond_d
    const v7, 0x7f06003a

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 223
    :cond_e
    const-string v7, "sim_lock"

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 252
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 256
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08094f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08098b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 263
    return-void
.end method


# virtual methods
.method checkMDMEAS()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 282
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v3, :cond_0

    .line 283
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v2

    .line 286
    :cond_1
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/lge/mdm/LGMDMManager;->getEncryptionPolicy(Landroid/content/ComponentName;)I

    move-result v1

    .line 287
    .local v1, mdm_policy:I
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/lge/mdm/LGMDMManager;->getEncryptionPolicyForEas(Landroid/content/ComponentName;)I

    move-result v0

    .line 288
    .local v0, eas_policy:I
    if-eq v1, v4, :cond_2

    if-eq v1, v5, :cond_2

    if-eq v0, v4, :cond_2

    if-ne v0, v5, :cond_0

    .line 289
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    iget-object v4, p0, Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->warnAppInstallation()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "show_password"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 308
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    .line 309
    .local v0, state:Landroid/security/KeyStore$State;
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    sget-object v4, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-eq v0, v4, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 310
    return-void

    .end local v0           #state:Landroid/security/KeyStore$State;
    :cond_0
    move v1, v3

    .line 305
    goto :goto_0

    .restart local v0       #state:Landroid/security/KeyStore$State;
    :cond_1
    move v2, v3

    .line 309
    goto :goto_1
.end method
