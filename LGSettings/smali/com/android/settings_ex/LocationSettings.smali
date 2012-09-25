.class public Lcom/android/settings_ex/LocationSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/LocationSettings$SettingsObserver;
    }
.end annotation


# instance fields
.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field mAssistedService:Landroid/content/DialogInterface;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mE911:Landroid/preference/Preference;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field mGpsService:Landroid/content/DialogInterface;

.field private mGpsVzw:Landroid/preference/CheckBoxPreference;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mUseLocation:Landroid/preference/CheckBoxPreference;

.field private mVzwLbs:Landroid/preference/CheckBoxPreference;

.field private returnValue:I

.field settingsCursor:Landroid/database/Cursor;

.field private visible:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/LocationSettings;->returnValue:I

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/LocationSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/LocationSettings;->updateLocationToggles()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/LocationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/LocationSettings;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->visible:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/LocationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 136
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 139
    :cond_0
    const v3, 0x7f060022

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/LocationSettings;->addPreferencesFromResource(I)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 142
    const-string v3, "location_network"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 143
    const-string v3, "location_gps"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 144
    const-string v3, "assisted_gps"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 145
    const-string v3, "e911_only"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/LocationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mE911:Landroid/preference/Preference;

    .line 146
    const-string v3, "location_vzw_lbs"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mVzwLbs:Landroid/preference/CheckBoxPreference;

    .line 147
    const-string v3, "location_gps_vzw"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mGpsVzw:Landroid/preference/CheckBoxPreference;

    .line 149
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 150
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mGpsVzw:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mVzwLbs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 152
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mE911:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    :goto_0
    const-string v3, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "KT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 161
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v3

    if-eq v3, v4, :cond_8

    .line 162
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f08090b

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f08090d

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 174
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f08090e

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f08090f

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f080910

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f080911

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 182
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :cond_2
    const-string v3, "MPCS"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "KDDI"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 184
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 192
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v6, "CN"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 193
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 197
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/GoogleLocationSettingHelper;->isAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 199
    new-instance v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 200
    .local v2, useLocation:Landroid/preference/CheckBoxPreference;
    const-string v3, "location_use_for_services"

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 201
    const v3, 0x7f0803d9

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 202
    const v3, 0x7f0803da

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/GoogleLocationSettingHelper;->getUseLocationForServices(Landroid/content/Context;)I

    move-result v3

    if-ne v3, v4, :cond_b

    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 206
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 207
    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 209
    iput-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    .line 213
    .end local v2           #useLocation:Landroid/preference/CheckBoxPreference;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 214
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0803d3

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 217
    :cond_6
    return-object v0

    .line 154
    :cond_7
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 165
    .restart local v1       #tm:Landroid/telephony/TelephonyManager;
    :cond_8
    const-string v3, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 166
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f0809e3

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f0809e4

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 169
    :cond_9
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f08090c

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f0809e5

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 185
    .end local v1           #tm:Landroid/telephony/TelephonyManager;
    :cond_a
    const-string v3, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    .line 187
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f0809e7

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/LocationSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .restart local v2       #useLocation:Landroid/preference/CheckBoxPreference;
    :cond_b
    move v3, v5

    .line 203
    goto/16 :goto_3
.end method

.method private updateLocationToggles()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 398
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 399
    .local v1, res:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v4, "network"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 401
    const-string v3, "gps"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 403
    .local v0, gpsEnabled:Z
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 404
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 406
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v4, "assisted_gps_enabled"

    const/4 v5, 0x2

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3

    :goto_0
    invoke-virtual {v3, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 409
    iget-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 412
    :cond_0
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v2, :cond_2

    .line 413
    iget-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 414
    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mGps"

    iget-object v5, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/settings_ex/MDMSettingsAdapter;->setLocationEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/preference/CheckBoxPreference;)Z

    .line 415
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 416
    invoke-static {}, Lcom/android/settings_ex/MDMSettingsAdapter;->getInstance()Lcom/android/settings_ex/MDMSettingsAdapter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mNetwork"

    iget-object v5, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/settings_ex/MDMSettingsAdapter;->setLocationEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/preference/CheckBoxPreference;)Z

    .line 419
    :cond_2
    return-void

    .line 406
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 425
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 426
    invoke-direct {p0}, Lcom/android/settings_ex/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 427
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "button"
    .parameter "checked"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->visible:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 445
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "location_providers_allowed"

    aput-object v6, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/LocationSettings;->settingsCursor:Landroid/database/Cursor;

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->settingsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings_ex/LocationSettings;->settingsCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-direct {v0, v1, v3, v7, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 118
    new-instance v0, Lcom/android/settings_ex/LocationSettings$SettingsObserver;

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ex/LocationSettings$SettingsObserver;-><init>(Lcom/android/settings_ex/LocationSettings;Lcom/android/settings_ex/LocationSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    .line 119
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings_ex/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings_ex/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->settingsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mUseLocation:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_1

    .line 431
    if-nez p2, :cond_0

    move v0, v1

    .line 432
    .end local p2
    .local v0, newValue:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings_ex/GoogleLocationSettingHelper;->setUseLocationForServices(Landroid/content/Context;Z)V

    .line 439
    .end local v0           #newValue:Z
    :goto_1
    return v1

    .line 431
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 439
    .restart local p2
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v8, 0x7f080134

    const/4 v5, 0x1

    const v11, 0x1010355

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 242
    iget-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_1

    .line 243
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "network"

    iget-object v7, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 391
    :cond_0
    :goto_0
    return v5

    .line 245
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_7

    .line 247
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "usc_gps_enabled"

    const-wide/16 v8, 0x0

    invoke-static {v4, v7, v8, v9}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 250
    .local v0, currentValue:J
    const-string v4, "USC"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-wide/16 v7, 0x1

    cmp-long v4, v0, v7

    if-eqz v4, :cond_3

    .line 251
    iget-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 253
    .local v2, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f0400b2

    invoke-virtual {v2, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 254
    .local v3, inputView:Landroid/view/View;
    const v4, 0x7f0b01cd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settings_ex/LocationSettings;->visible:Landroid/widget/CheckBox;

    .line 255
    iget-object v4, p0, Lcom/android/settings_ex/LocationSettings;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 256
    iget-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 257
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f080991

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080992

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings_ex/LocationSettings$1;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/LocationSettings$1;-><init>(Lcom/android/settings_ex/LocationSettings;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080993

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mGpsService:Landroid/content/DialogInterface;

    .line 322
    .end local v2           #factory:Landroid/view/LayoutInflater;
    .end local v3           #inputView:Landroid/view/View;
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    .line 323
    iget-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 282
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "gps"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_1

    .line 290
    :cond_3
    const-string v4, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "KDDI"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 291
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 292
    iget-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 293
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f08094f

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08094e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08085b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings_ex/LocationSettings$2;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/LocationSettings$2;-><init>(Lcom/android/settings_ex/LocationSettings;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08085c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mGpsService:Landroid/content/DialogInterface;

    goto/16 :goto_1

    .line 312
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 313
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "gps"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 318
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "gps"

    iget-object v7, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 327
    .end local v0           #currentValue:J
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_d

    .line 329
    const-string v4, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 330
    iget-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 331
    iget-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 332
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0803d6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0806c2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08044e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings_ex/LocationSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/LocationSettings$3;-><init>(Lcom/android/settings_ex/LocationSettings;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedService:Landroid/content/DialogInterface;

    goto/16 :goto_0

    .line 351
    :cond_8
    iget-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 352
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "assisted_gps_enabled"

    iget-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v5

    :goto_2
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_9
    move v4, v6

    goto :goto_2

    .line 357
    :cond_a
    const-string v4, "KDDI"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    iget-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 359
    iget-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 360
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0803d6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0809e6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08044e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/android/settings_ex/LocationSettings$4;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/LocationSettings$4;-><init>(Lcom/android/settings_ex/LocationSettings;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedService:Landroid/content/DialogInterface;

    goto/16 :goto_0

    .line 378
    :cond_b
    iget-object v4, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 379
    invoke-virtual {p0}, Lcom/android/settings_ex/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "assisted_gps_enabled"

    iget-object v8, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_c

    move v6, v5

    :cond_c
    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 388
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 226
    invoke-direct {p0}, Lcom/android/settings_ex/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 227
    invoke-direct {p0}, Lcom/android/settings_ex/LocationSettings;->updateLocationToggles()V

    .line 237
    return-void
.end method
