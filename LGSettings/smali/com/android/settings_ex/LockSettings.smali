.class public Lcom/android/settings_ex/LockSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LockSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfo:Lcom/android/settings_ex/inputmethod/ScreenCheckersPreference;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 6

    .prologue
    const v5, 0x7f08092c

    const v2, 0x7f060031

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/LockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 101
    :cond_0
    const v0, 0x7f06001d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LockSettings;->addPreferencesFromResource(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ex/LockSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 108
    const/4 v0, 0x0

    .line 109
    iget-object v1, p0, Lcom/android/settings_ex/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    if-nez v1, :cond_e

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 111
    const v0, 0x7f060034

    move v1, v0

    .line 133
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/LockSettings;->addPreferencesFromResource(I)V

    .line 136
    const-string v0, "lock_after_timeout"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings_ex/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 139
    const-string v0, "VZW"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/LockSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/LockSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 144
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/LockSettings;->setupLockAfterPreference()V

    .line 145
    invoke-direct {p0}, Lcom/android/settings_ex/LockSettings;->updateLockAfterPreferenceSummary()V

    .line 149
    :cond_2
    const-string v0, "visiblepattern"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/LockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 153
    const-string v0, "power_button_instantly_locks"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/LockSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    const-string v0, "power_button_instantly_locks"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    :cond_3
    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    const/high16 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 171
    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/LockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 172
    const-string v0, "visiblepattern"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    :cond_4
    if-eqz v3, :cond_5

    .line 180
    const-string v0, "unlock_tactile_feedback"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/LockSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 182
    :cond_5
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_6

    .line 192
    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/android/settings_ex/LockSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 193
    iget-object v0, p0, Lcom/android/settings_ex/LockSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 197
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/android/settings_ex/Settings$OwnerInfoSettingsActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 199
    const-string v0, "owner_info_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/inputmethod/ScreenCheckersPreference;

    iput-object v0, p0, Lcom/android/settings_ex/LockSettings;->mOwnerInfo:Lcom/android/settings_ex/inputmethod/ScreenCheckersPreference;

    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/LockSettings;->mOwnerInfo:Lcom/android/settings_ex/inputmethod/ScreenCheckersPreference;

    if-eqz v0, :cond_8

    if-eqz v3, :cond_8

    .line 202
    const-string v0, "l_dcm"

    const-string v2, "ro.build.product"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "i_dcm"

    const-string v2, "ro.build.product"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 204
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/LockSettings;->mOwnerInfo:Lcom/android/settings_ex/inputmethod/ScreenCheckersPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 216
    :cond_8
    :goto_1
    const-string v0, "l_dcm"

    const-string v1, "ro.build.product"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "i_dcm"

    const-string v1, "ro.build.product"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    if-eqz v3, :cond_c

    .line 218
    :cond_9
    iget-object v0, p0, Lcom/android/settings_ex/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_a

    .line 219
    iget-object v0, p0, Lcom/android/settings_ex/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 220
    const-string v0, "unlock_set_or_change"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 221
    const-string v0, "unlock_set_or_change"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f080922

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/LockSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 226
    :cond_a
    const-string v0, "screen_theme"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 227
    const-string v0, "screen_theme"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    :cond_b
    const-string v0, "screen_wallpaper"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 230
    const-string v0, "screen_wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    :cond_c
    return-object v3

    .line 113
    :cond_d
    const v0, 0x7f060032

    move v1, v0

    goto/16 :goto_0

    .line 115
    :cond_e
    iget-object v1, p0, Lcom/android/settings_ex/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/settings_ex/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v2

    .line 117
    goto/16 :goto_0

    .line 119
    :cond_f
    iget-object v1, p0, Lcom/android/settings_ex/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move v1, v0

    goto/16 :goto_0

    .line 121
    :sswitch_0
    const v0, 0x7f060037

    move v1, v0

    .line 122
    goto/16 :goto_0

    .line 124
    :sswitch_1
    const v0, 0x7f060039

    move v1, v0

    .line 125
    goto/16 :goto_0

    .line 129
    :sswitch_2
    const v0, 0x7f060036

    move v1, v0

    goto/16 :goto_0

    .line 206
    :cond_10
    iget-object v0, p0, Lcom/android/settings_ex/LockSettings;->mOwnerInfo:Lcom/android/settings_ex/inputmethod/ScreenCheckersPreference;

    invoke-virtual {v0, p0, v1}, Lcom/android/settings_ex/inputmethod/ScreenCheckersPreference;->setFragmentIntent(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/content/Intent;)V

    .line 207
    const-string v0, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/LockSettings;->mOwnerInfo:Lcom/android/settings_ex/inputmethod/ScreenCheckersPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080870

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/inputmethod/ScreenCheckersPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings_ex/LockSettings;->mOwnerInfo:Lcom/android/settings_ex/inputmethod/ScreenCheckersPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080944

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/inputmethod/ScreenCheckersPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 119
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 22
    .parameter "maxTimeout"

    .prologue
    .line 325
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 326
    .local v6, entries:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v13

    .line 327
    .local v13, values:[Ljava/lang/CharSequence;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v8, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v9, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    .line 330
    .local v2, adminTimeout:J
    :goto_0
    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "screen_off_timeout"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-long v4, v14

    .line 333
    .local v4, displayTimeout:J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v14, v13

    if-ge v7, v14, :cond_2

    .line 334
    aget-object v14, v13, v7

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 335
    .local v10, timeout:J
    cmp-long v14, v10, p1

    if-gez v14, :cond_1

    .line 336
    aget-object v14, v6, v7

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    aget-object v14, v13, v7

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 329
    .end local v2           #adminTimeout:J
    .end local v4           #displayTimeout:J
    .end local v7           #i:I
    .end local v10           #timeout:J
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 339
    .restart local v2       #adminTimeout:J
    .restart local v4       #displayTimeout:J
    .restart local v7       #i:I
    .restart local v10       #timeout:J
    :cond_1
    cmp-long v14, v2, v4

    if-nez v14, :cond_6

    .line 340
    aget-object v14, v6, v7

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    :goto_2
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v10           #timeout:J
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    array-length v15, v6

    if-le v14, v15, :cond_3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    array-length v15, v13

    if-gt v14, v15, :cond_5

    .line 353
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/CharSequence;

    invoke-virtual {v15, v14}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 358
    .local v12, userPreference:I
    int-to-long v14, v12

    cmp-long v14, v14, p1

    if-gtz v14, :cond_4

    .line 359
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 366
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "lock_screen_lock_after_timeout_eas"

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_5

    .line 368
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "lock_screen_lock_after_timeout"

    move-wide/from16 v0, p1

    long-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 374
    .end local v12           #userPreference:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_8

    const/4 v14, 0x1

    :goto_3
    invoke-virtual {v15, v14}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 375
    return-void

    .line 341
    .restart local v10       #timeout:J
    :cond_6
    const-wide/32 v14, 0xea60

    rem-long v14, p1, v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_7

    .line 342
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f0809a3

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-wide/32 v18, 0xea60

    div-long v18, p1, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/settings_ex/LockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f0809a4

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-wide/32 v18, 0xea60

    rem-long v18, p1, v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/settings_ex/LockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 345
    :cond_7
    const v14, 0x7f0809a2

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-wide/32 v17, 0xea60

    div-long v17, p1, v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings_ex/LockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 374
    .end local v10           #timeout:J
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_3
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 434
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 246
    const-wide/16 v2, 0x0

    .line 248
    .local v2, currentTimeout:J
    const-string v8, "VZW"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "ATT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "USC"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    invoke-static {v8, v9, v6, v7}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 257
    :goto_0
    iget-object v8, p0, Lcom/android/settings_ex/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 258
    iget-object v8, p0, Lcom/android/settings_ex/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 259
    iget-object v8, p0, Lcom/android/settings_ex/LockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings_ex/LockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 260
    .local v0, adminTimeout:J
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 262
    .local v4, displayTimeout:J
    cmp-long v8, v0, v6

    if-lez v8, :cond_1

    .line 266
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/LockSettings;->disableUnusableTimeouts(J)V

    .line 268
    :cond_1
    return-void

    .line 253
    .end local v0           #adminTimeout:J
    .end local v4           #displayTimeout:J
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    goto :goto_0

    :cond_3
    move-wide v0, v6

    .line 259
    goto :goto_1
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 13

    .prologue
    .line 273
    const-wide/16 v1, 0x0

    .line 275
    .local v1, currentTimeout:J
    const-string v8, "VZW"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "ATT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "USC"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x0

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 284
    :goto_0
    iget-object v8, p0, Lcom/android/settings_ex/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 285
    .local v3, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings_ex/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 286
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 287
    .local v0, best:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v8, v7

    if-ge v4, v8, :cond_3

    .line 288
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 289
    .local v5, timeout:J
    cmp-long v8, v1, v5

    if-ltz v8, :cond_1

    .line 290
    move v0, v4

    .line 287
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 280
    .end local v0           #best:I
    .end local v3           #entries:[Ljava/lang/CharSequence;
    .end local v4           #i:I
    .end local v5           #timeout:J
    .end local v7           #values:[Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    goto :goto_0

    .line 311
    .restart local v0       #best:I
    .restart local v3       #entries:[Ljava/lang/CharSequence;
    .restart local v4       #i:I
    .restart local v7       #values:[Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    aget-object v10, v7, v0

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    iget-object v8, p0, Lcom/android/settings_ex/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    aget-object v9, v7, v0

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 318
    iget-object v8, p0, Lcom/android/settings_ex/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v9, 0x7f08095c

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v3, v0

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/android/settings_ex/LockSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 322
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 442
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 443
    const/16 v0, 0x7c

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcom/android/settings_ex/LockSettings;->startBiometricWeakImprove()V

    .line 449
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/LockSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/LockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 89
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LockSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/LockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 91
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings_ex/LockSettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 92
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 239
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 240
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "value"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v8, 0x1

    .line 453
    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 455
    .local v3, timeout:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/LockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "lock_screen_lock_after_timeout"

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 457
    iget-object v4, p0, Lcom/android/settings_ex/LockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/LockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/LockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 463
    .local v0, adminTimeout:J
    :goto_1
    cmp-long v4, v0, v5

    if-lez v4, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/android/settings_ex/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_screen_lock_after_timeout_eas"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/LockSettings;->updateLockAfterPreferenceSummary()V

    .line 470
    return v8

    .line 458
    .end local v0           #adminTimeout:J
    :catch_0
    move-exception v2

    .line 459
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v4, "SecuritySettings"

    const-string v7, "could not persist lockAfter timeout setting"

    invoke-static {v4, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_1
    move-wide v0, v5

    .line 462
    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    .line 402
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, key:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/LockSettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 405
    .local v2, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const-string v3, "unlock_set_or_change"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 406
    const-string v3, "com.android.settings_ex.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v4, 0x7b

    invoke-virtual {p0, p0, v3, v4, v5}, Lcom/android/settings_ex/LockSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 430
    :cond_0
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 408
    :cond_1
    const-string v3, "biometric_weak_improve_matching"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 409
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/LockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 411
    .local v0, helper:Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const/16 v3, 0x7c

    invoke-virtual {v0, v3, v5, v5}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/android/settings_ex/LockSettings;->startBiometricWeakImprove()V

    goto :goto_0

    .line 415
    .end local v0           #helper:Lcom/android/settings_ex/ChooseLockSettingsHelper;
    :cond_2
    const-string v3, "lockenabled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 416
    invoke-direct {p0, p2}, Lcom/android/settings_ex/LockSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 417
    :cond_3
    const-string v3, "visiblepattern"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 418
    invoke-direct {p0, p2}, Lcom/android/settings_ex/LockSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    .line 419
    :cond_4
    const-string v3, "unlock_tactile_feedback"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 420
    invoke-direct {p0, p2}, Lcom/android/settings_ex/LockSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    goto :goto_0

    .line 421
    :cond_5
    const-string v3, "power_button_instantly_locks"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 427
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 380
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 384
    invoke-direct {p0}, Lcom/android/settings_ex/LockSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 386
    iget-object v1, p0, Lcom/android/settings_ex/LockSettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 387
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v1, p0, Lcom/android/settings_ex/LockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/android/settings_ex/LockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 390
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/LockSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/android/settings_ex/LockSettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/LockSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    .line 398
    :cond_2
    return-void
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 473
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 474
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/LockSettings;->startActivity(Landroid/content/Intent;)V

    .line 476
    return-void
.end method
