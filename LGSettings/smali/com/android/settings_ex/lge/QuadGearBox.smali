.class public Lcom/android/settings_ex/lge/QuadGearBox;
.super Landroid/preference/PreferenceActivity;
.source "QuadGearBox.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mCustomImagePreference:Lcom/android/settings_ex/CustomImagePreference2;

.field private mQuadGearBoxReceiver:Landroid/content/BroadcastReceiver;

.field private mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 44
    new-instance v0, Lcom/android/settings_ex/lge/QuadGearBox$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/lge/QuadGearBox$1;-><init>(Lcom/android/settings_ex/lge/QuadGearBox;)V

    iput-object v0, p0, Lcom/android/settings_ex/lge/QuadGearBox;->mQuadGearBoxReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/lge/QuadGearBox;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings_ex/lge/QuadGearBox;->mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/lge/QuadGearBox;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings_ex/lge/QuadGearBox;->updateImage(Z)V

    return-void
.end method

.method private syncCoreState()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 86
    const/4 v2, 0x0

    .line 87
    .local v2, sync_result:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/QuadGearBox;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "eco_mode"

    invoke-static {v5, v6, v4}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 88
    .local v1, db_eco_mode:I
    invoke-static {p0}, Lcom/android/settings_ex/lge/OverlayUtils;->getCPUMode(Landroid/content/Context;)I

    move-result v0

    .line 90
    .local v0, core_state_mode:I
    if-ne v0, v7, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    const/4 v5, 0x4

    if-ne v0, v5, :cond_2

    if-nez v1, :cond_2

    .line 91
    :cond_1
    const/4 v2, 0x1

    .line 93
    :cond_2
    if-nez v2, :cond_3

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/QuadGearBox;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "eco_mode"

    if-ne v0, v7, :cond_4

    :goto_0
    invoke-static {v5, v6, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    :cond_3
    return-void

    :cond_4
    move v3, v4

    .line 94
    goto :goto_0
.end method

.method private updateImage(Z)V
    .locals 2
    .parameter "on"

    .prologue
    .line 99
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/lge/QuadGearBox;->mCustomImagePreference:Lcom/android/settings_ex/CustomImagePreference2;

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/CustomImagePreference2;->setImage(I)V

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/lge/QuadGearBox;->mCustomImagePreference:Lcom/android/settings_ex/CustomImagePreference2;

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/CustomImagePreference2;->setImage(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/QuadGearBox;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 64
    .local v1, resolver:Landroid/content/ContentResolver;
    const v2, 0x7f06002d

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lge/QuadGearBox;->addPreferencesFromResource(I)V

    .line 65
    const-string v2, "quad_gearbox_image"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lge/QuadGearBox;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/CustomImagePreference2;

    iput-object v2, p0, Lcom/android/settings_ex/lge/QuadGearBox;->mCustomImagePreference:Lcom/android/settings_ex/CustomImagePreference2;

    .line 66
    iget-object v2, p0, Lcom/android/settings_ex/lge/QuadGearBox;->mCustomImagePreference:Lcom/android/settings_ex/CustomImagePreference2;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/CustomImagePreference2;->setSelectable(Z)V

    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/lge/QuadGearBox;->syncCoreState()V

    .line 69
    const-string v2, "checkbox_quad_gearbox"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lge/QuadGearBox;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/lge/QuadGearBox;->mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;

    .line 70
    iget-object v4, p0, Lcom/android/settings_ex/lge/QuadGearBox;->mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;

    const-string v2, "eco_mode"

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 71
    iget-object v2, p0, Lcom/android/settings_ex/lge/QuadGearBox;->mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    iget-object v2, p0, Lcom/android/settings_ex/lge/QuadGearBox;->mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/lge/QuadGearBox;->updateImage(Z)V

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.settings_ex.ecomode.CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/android/settings_ex/lge/QuadGearBox;->mQuadGearBoxReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings_ex/lge/QuadGearBox;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    return-void

    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    move v2, v3

    .line 70
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/lge/QuadGearBox;->mQuadGearBoxReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/QuadGearBox;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x1

    .line 108
    iget-object v1, p0, Lcom/android/settings_ex/lge/QuadGearBox;->mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    .line 110
    check-cast v0, Ljava/lang/Boolean;

    .line 111
    .local v0, newValue:Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/lge/QuadGearBox;->updateImage(Z)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-static {p0, v1}, Lcom/android/settings_ex/lge/OverlayUtils;->setCPUMode(Landroid/content/Context;I)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ex/lge/QuadGearBox;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "eco_mode"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v3, v4, v1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    .end local v0           #newValue:Ljava/lang/Boolean;
    :cond_0
    return v2

    .line 112
    .restart local v0       #newValue:Ljava/lang/Boolean;
    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    .line 113
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
