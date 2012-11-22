.class public Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;
.super Landroid/preference/PreferenceActivity;
.source "LgBtUiHiddenSettings.java"


# static fields
.field private static final BTUI_HIDDEN_MENU:[Z


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;->BTUI_HIDDEN_MENU:[Z

    return-void

    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings$1;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private BtUiLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 243
    const-string v0, "LgBtUiHiddenSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v5, 0x7f06000b

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .local v4, prefScreen:Landroid/preference/PreferenceScreen;
    sget-object v5, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;->BTUI_HIDDEN_MENU:[Z

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_0

    .line 93
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, prefHidden1:Landroid/preference/Preference;
    const-string v5, "Battery Level"

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 95
    const-string v5, "btui_battery_level"

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 97
    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 99
    .end local v0           #prefHidden1:Landroid/preference/Preference;
    :cond_0
    sget-object v5, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;->BTUI_HIDDEN_MENU:[Z

    aget-boolean v5, v5, v7

    if-eqz v5, :cond_1

    .line 103
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 104
    .local v1, prefHidden2:Landroid/preference/Preference;
    const-string v5, "RSSI Level"

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    const-string v5, "btui_rssi_level"

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setOrder(I)V

    .line 107
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 109
    .end local v1           #prefHidden2:Landroid/preference/Preference;
    :cond_1
    sget-object v5, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;->BTUI_HIDDEN_MENU:[Z

    aget-boolean v5, v5, v8

    if-eqz v5, :cond_2

    .line 113
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 114
    .local v2, prefHidden3:Landroid/preference/Preference;
    const-string v5, "Service Status"

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    const-string v5, "btui_svc_status"

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setOrder(I)V

    .line 117
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 119
    .end local v2           #prefHidden3:Landroid/preference/Preference;
    :cond_2
    sget-object v5, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;->BTUI_HIDDEN_MENU:[Z

    aget-boolean v5, v5, v9

    if-eqz v5, :cond_3

    .line 123
    new-instance v3, Landroid/preference/Preference;

    invoke-direct {v3, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 124
    .local v3, prefHidden4:Landroid/preference/Preference;
    const-string v5, "Roaming Status"

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    const-string v5, "btui_roam_status"

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setOrder(I)V

    .line 127
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 129
    .end local v3           #prefHidden4:Landroid/preference/Preference;
    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    const-string v0, "[BTUI] onDestroy()... "

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;->BtUiLog(Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    const-string v0, "[BTUI] onPause()... "

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;->BtUiLog(Ljava/lang/String;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 174
    const-string v9, "btui_battery_level"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 175
    const/4 v9, 0x5

    new-array v1, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const-string v10, "Level 1"

    aput-object v10, v1, v9

    const/4 v9, 0x1

    const-string v10, "Level 2"

    aput-object v10, v1, v9

    const/4 v9, 0x2

    const-string v10, "Level 3"

    aput-object v10, v1, v9

    const/4 v9, 0x3

    const-string v10, "Level 4"

    aput-object v10, v1, v9

    const/4 v9, 0x4

    const-string v10, "Level 5"

    aput-object v10, v1, v9

    .line 177
    .local v1, batteryLevels:[Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const-string v9, "Send Battery Level"

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 179
    const/4 v9, -0x1

    new-instance v10, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings$2;

    invoke-direct {v10, p0, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings$2;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;[Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1, v9, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 188
    .local v0, battAlert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 239
    .end local v0           #battAlert:Landroid/app/AlertDialog;
    .end local v1           #batteryLevels:[Ljava/lang/CharSequence;
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    const/4 v9, 0x1

    return v9

    .line 190
    :cond_1
    const-string v9, "btui_rssi_level"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 191
    const/4 v9, 0x5

    new-array v6, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const-string v10, "Level 1"

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-string v10, "Level 2"

    aput-object v10, v6, v9

    const/4 v9, 0x2

    const-string v10, "Level 3"

    aput-object v10, v6, v9

    const/4 v9, 0x3

    const-string v10, "Level 4"

    aput-object v10, v6, v9

    const/4 v9, 0x4

    const-string v10, "Level 5"

    aput-object v10, v6, v9

    .line 193
    .local v6, rssiLevels:[Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 194
    .restart local v2       #builder:Landroid/app/AlertDialog$Builder;
    const-string v9, "Send RSSI Level"

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 195
    const/4 v9, -0x1

    new-instance v10, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings$3;

    invoke-direct {v10, p0, v6}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings$3;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;[Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v6, v9, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 203
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 204
    .local v5, rssiAlert:Landroid/app/AlertDialog;
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 206
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    .end local v5           #rssiAlert:Landroid/app/AlertDialog;
    .end local v6           #rssiLevels:[Ljava/lang/CharSequence;
    :cond_2
    const-string v9, "btui_svc_status"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 207
    const/4 v9, 0x2

    new-array v8, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const-string v10, "No Service"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "In Service"

    aput-object v10, v8, v9

    .line 209
    .local v8, serviceStatus:[Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 210
    .restart local v2       #builder:Landroid/app/AlertDialog$Builder;
    const-string v9, "Send Service Status"

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 211
    const/4 v9, -0x1

    new-instance v10, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings$4;

    invoke-direct {v10, p0, v8}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings$4;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;[Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 219
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 220
    .local v7, serviceAlert:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 222
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    .end local v7           #serviceAlert:Landroid/app/AlertDialog;
    .end local v8           #serviceStatus:[Ljava/lang/CharSequence;
    :cond_3
    const-string v9, "btui_roam_status"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 223
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    const-string v10, "In Home"

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string v10, "On Roaming"

    aput-object v10, v4, v9

    .line 225
    .local v4, roamingStatus:[Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 226
    .restart local v2       #builder:Landroid/app/AlertDialog$Builder;
    const-string v9, "Send Roaming Status"

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 227
    const/4 v9, -0x1

    new-instance v10, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings$5;

    invoke-direct {v10, p0, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings$5;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;[Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 235
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 236
    .local v3, roadmingAlert:Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string v1, "[BTUI] onResume()... "

    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;->BtUiLog(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    const-string v0, "[BTUI] onStop()... "

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;->BtUiLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
