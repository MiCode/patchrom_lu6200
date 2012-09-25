.class public Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;
.super Landroid/preference/PreferenceActivity;
.source "LgBtUiSigSettings.java"


# static fields
.field private static final LG_BTUI_SIG:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mHfpCategory:Landroid/preference/PreferenceGroup;

.field private mHidCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSapCategory:Landroid/preference/PreferenceGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "persist.service.btui.sig"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->LG_BTUI_SIG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 51
    new-instance v0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$1;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private BtUiLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 305
    const-string v0, "LgBtUiSigSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->BtUiLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->updateScreen()V

    return-void
.end method

.method private updateScreen()V
    .locals 14

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    .line 91
    .local v10, prefScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 93
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 98
    new-instance v11, Landroid/preference/PreferenceCategory;

    invoke-direct {v11, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mHfpCategory:Landroid/preference/PreferenceGroup;

    .line 99
    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mHfpCategory:Landroid/preference/PreferenceGroup;

    const-string v12, "HFP"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mHfpCategory:Landroid/preference/PreferenceGroup;

    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_0

    const/4 v11, 0x1

    :goto_0
    invoke-virtual {v12, v11}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 101
    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mHfpCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 103
    new-instance v0, Landroid/preference/ListPreference;

    invoke-direct {v0, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 104
    .local v0, pref1:Landroid/preference/ListPreference;
    const-string v11, "Battery Level"

    invoke-virtual {v0, v11}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    const v11, 0x7f0900ab

    invoke-virtual {v0, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 106
    const v11, 0x7f0900ac

    invoke-virtual {v0, v11}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 107
    new-instance v11, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$2;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$2;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;)V

    invoke-virtual {v0, v11}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 119
    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mHfpCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 121
    new-instance v5, Landroid/preference/ListPreference;

    invoke-direct {v5, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 122
    .local v5, pref2:Landroid/preference/ListPreference;
    const-string v11, "RSSI Level"

    invoke-virtual {v5, v11}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 123
    const v11, 0x7f0900ab

    invoke-virtual {v5, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 124
    const v11, 0x7f0900ac

    invoke-virtual {v5, v11}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 125
    new-instance v11, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$3;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$3;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;)V

    invoke-virtual {v5, v11}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mHfpCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 139
    new-instance v8, Landroid/preference/ListPreference;

    invoke-direct {v8, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 140
    .local v8, pref3:Landroid/preference/ListPreference;
    const-string v11, "Service Level"

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    const v11, 0x7f0900ad

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 142
    const v11, 0x7f0900ae

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 143
    new-instance v11, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$4;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$4;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;)V

    invoke-virtual {v8, v11}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mHfpCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 157
    new-instance v9, Landroid/preference/ListPreference;

    invoke-direct {v9, p0}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 158
    .local v9, pref4:Landroid/preference/ListPreference;
    const-string v11, "Roam Level"

    invoke-virtual {v9, v11}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 159
    const v11, 0x7f0900af

    invoke-virtual {v9, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 160
    const v11, 0x7f0900b0

    invoke-virtual {v9, v11}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 161
    new-instance v11, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$5;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$5;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;)V

    invoke-virtual {v9, v11}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 173
    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mHfpCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 178
    new-instance v11, Landroid/preference/PreferenceCategory;

    invoke-direct {v11, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mHidCategory:Landroid/preference/PreferenceGroup;

    .line 179
    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mHidCategory:Landroid/preference/PreferenceGroup;

    const-string v12, "HID"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v12, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mHidCategory:Landroid/preference/PreferenceGroup;

    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v13, 0x4

    invoke-virtual {v11, v13}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v11

    const/4 v13, 0x2

    if-ne v11, v13, :cond_1

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v12, v11}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 181
    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mHidCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 183
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 184
    .local v1, pref11:Landroid/preference/Preference;
    const-string v11, "Virtual cable unplug"

    invoke-virtual {v1, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    const-string v11, "TC_HOS_HCR_BV_03_I"

    invoke-virtual {v1, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    new-instance v11, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$6;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$6;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;)V

    invoke-virtual {v1, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 194
    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mHidCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 196
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 197
    .local v2, pref12:Landroid/preference/Preference;
    const-string v11, "Send output report"

    invoke-virtual {v2, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    const-string v11, "TC_HOS_HDT_BV_02_I"

    invoke-virtual {v2, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    new-instance v11, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$7;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$7;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;)V

    invoke-virtual {v2, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 207
    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mHidCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 209
    new-instance v3, Landroid/preference/Preference;

    invoke-direct {v3, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 210
    .local v3, pref13:Landroid/preference/Preference;
    const-string v11, "Send Get_Report"

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    const-string v11, "TC_HOS_HID_BV_01_C"

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    new-instance v11, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$8;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$8;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;)V

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 220
    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mHidCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 222
    new-instance v4, Landroid/preference/Preference;

    invoke-direct {v4, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 223
    .local v4, pref14:Landroid/preference/Preference;
    const-string v11, "Send Set_Report"

    invoke-virtual {v4, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    const-string v11, "TC_HOS_HID_BV_02_C"

    invoke-virtual {v4, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 225
    new-instance v11, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$9;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$9;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;)V

    invoke-virtual {v4, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 233
    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mHidCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 238
    new-instance v11, Landroid/preference/PreferenceCategory;

    invoke-direct {v11, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mSapCategory:Landroid/preference/PreferenceGroup;

    .line 239
    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mSapCategory:Landroid/preference/PreferenceGroup;

    const-string v12, "SAP"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mSapCategory:Landroid/preference/PreferenceGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 241
    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mSapCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 243
    new-instance v6, Landroid/preference/Preference;

    invoke-direct {v6, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 244
    .local v6, pref21:Landroid/preference/Preference;
    const-string v11, "SAP disconnect (Graceful)"

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    new-instance v11, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$10;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$10;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;)V

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 255
    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mSapCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 257
    new-instance v7, Landroid/preference/Preference;

    invoke-direct {v7, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 258
    .local v7, pref22:Landroid/preference/Preference;
    const-string v11, "SAP disconnect (Immediate)"

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 259
    new-instance v11, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$11;

    invoke-direct {v11, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$11;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;)V

    invoke-virtual {v7, v11}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 269
    iget-object v11, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mSapCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v11, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 271
    return-void

    .line 100
    .end local v0           #pref1:Landroid/preference/ListPreference;
    .end local v1           #pref11:Landroid/preference/Preference;
    .end local v2           #pref12:Landroid/preference/Preference;
    .end local v3           #pref13:Landroid/preference/Preference;
    .end local v4           #pref14:Landroid/preference/Preference;
    .end local v5           #pref2:Landroid/preference/ListPreference;
    .end local v6           #pref21:Landroid/preference/Preference;
    .end local v7           #pref22:Landroid/preference/Preference;
    .end local v8           #pref3:Landroid/preference/ListPreference;
    .end local v9           #pref4:Landroid/preference/ListPreference;
    :cond_0
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 180
    .restart local v0       #pref1:Landroid/preference/ListPreference;
    .restart local v5       #pref2:Landroid/preference/ListPreference;
    .restart local v8       #pref3:Landroid/preference/ListPreference;
    .restart local v9       #pref4:Landroid/preference/ListPreference;
    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method BtUiSendIntent(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 298
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f080c33

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->setTitle(I)V

    .line 74
    const v0, 0x7f06000b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->addPreferencesFromResource(I)V

    .line 75
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 275
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 277
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 292
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 80
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->updateScreen()V

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 281
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 282
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 286
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onUserLeaveHint()V

    .line 287
    return-void
.end method
