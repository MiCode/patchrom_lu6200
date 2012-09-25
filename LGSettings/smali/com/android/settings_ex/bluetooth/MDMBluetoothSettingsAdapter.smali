.class public Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;
.super Ljava/lang/Object;
.source "MDMBluetoothSettingsAdapter.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "LGMDMUISettingsAdapter"

    sput-object v0, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static getInstance()Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->mInstance:Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;

    invoke-direct {v0}, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;-><init>()V

    sput-object v0, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->mInstance:Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;

    .line 45
    :cond_0
    sget-object v0, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->mInstance:Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;

    return-object v0
.end method


# virtual methods
.method public checkBluetoothAudioOnly(Ljava/lang/String;)Z
    .locals 10
    .parameter "address"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 120
    sget-object v7, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkBluetoothAudioOnly() address : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v7, "bluetooth"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 124
    .local v0, bluetoothService:Landroid/bluetooth/IBluetooth;
    :try_start_0
    new-instance v1, Landroid/bluetooth/BluetoothClass;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetooth;->getRemoteClass(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v1, v7}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    .line 126
    .local v1, btClass:Landroid/bluetooth/BluetoothClass;
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/lge/mdm/LGMDMManager;->getAllowBluetooth(Landroid/content/ComponentName;)I

    move-result v7

    if-ne v7, v5, :cond_0

    move v4, v5

    .line 127
    .local v4, isAudioOnlyPolicy:Z
    :goto_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v7

    const/16 v8, 0x400

    if-ne v7, v8, :cond_1

    move v3, v5

    .line 130
    .local v3, isAudioBTClass:Z
    :goto_1
    sget-object v7, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAudioOnlyPolicy : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v7, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAudioBTClass : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-nez v3, :cond_2

    move v7, v5

    :goto_2
    and-int/2addr v7, v4

    if-eqz v7, :cond_3

    .line 133
    const-string v7, "LGMDM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LGMDM BT POINT #004 - btClass.getMajorDeviceClass() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v7, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v8, "checkBluetoothAudioOnly block bluetooth except audio "

    invoke-static {v7, v8}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v1           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v3           #isAudioBTClass:Z
    .end local v4           #isAudioOnlyPolicy:Z
    :goto_3
    return v5

    .restart local v1       #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_0
    move v4, v6

    .line 126
    goto :goto_0

    .restart local v4       #isAudioOnlyPolicy:Z
    :cond_1
    move v3, v6

    .line 127
    goto :goto_1

    .restart local v3       #isAudioBTClass:Z
    :cond_2
    move v7, v6

    .line 132
    goto :goto_2

    .line 137
    :cond_3
    if-eqz v4, :cond_4

    if-nez p1, :cond_4

    .line 138
    const-string v7, "LGMDM"

    const-string v8, "LGMDM BT POINT #005"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v7, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v8, "checkBluetoothAudioOnly block bluetooth "

    invoke-static {v7, v8}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 142
    .end local v1           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local v3           #isAudioBTClass:Z
    .end local v4           #isAudioOnlyPolicy:Z
    :catch_0
    move-exception v2

    .line 143
    .local v2, e:Landroid/os/RemoteException;
    const-string v5, "LGMDM"

    const-string v7, "LGMDM BT POINT #006"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-object v5, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkBluetoothAudioOnly RemoteException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2           #e:Landroid/os/RemoteException;
    :cond_4
    move v5, v6

    .line 147
    goto :goto_3
.end method

.method public setBluetoothDiscoverableEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;ZLandroid/preference/Preference;)V
    .locals 7
    .parameter "who"
    .parameter "resContext"
    .parameter "discoverable"
    .parameter "discoveryPreference"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 100
    sget-object v2, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBluetoothDiscoverableEnableMenu() Component : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowBluetooth(Landroid/content/ComponentName;)I

    move-result v0

    .line 103
    .local v0, btPolicy:I
    if-ne v0, v6, :cond_2

    .line 104
    sget-object v2, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "[LGMDM] Bluetooth Audio only mode"

    invoke-static {v2, v3}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "LGMDM"

    const-string v3, "LGMDM BT POINT #003 - They say ALLOW_AUDIOONLY!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 p3, 0x0

    .line 107
    instance-of v2, p4, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    move-object v1, p4

    .line 108
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 109
    .local v1, preference:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 111
    .end local v1           #preference:Landroid/preference/CheckBoxPreference;
    :cond_0
    invoke-virtual {p4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 112
    const v2, 0x7f080968

    invoke-virtual {p4, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 117
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 114
    sget-object v2, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "[LGMDM] Bluetooth Allow mode"

    invoke-static {v2, v3}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setBluetoothEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/widget/Switch;)Z
    .locals 6
    .parameter "who"
    .parameter "resContext"
    .parameter "menuString"
    .parameter "menu"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    sget-object v3, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBluetoothEnableMenu() Component : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Menu: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 72
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz p4, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v1, v2

    .line 96
    :cond_1
    :goto_0
    return v1

    .line 75
    :cond_2
    const-string v3, "mSwitch"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowBluetooth(Landroid/content/ComponentName;)I

    move-result v3

    if-eqz v3, :cond_6

    .line 77
    sget-object v3, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v4, "[LGMDM] Allow Bluetooth mode"

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    if-eqz v0, :cond_5

    .line 79
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_4

    .line 81
    :cond_3
    invoke-virtual {p4, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 83
    :cond_4
    invoke-virtual {p4, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 86
    :cond_5
    sget-object v2, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v3, "[LGMDM] bluetoothAdapter is null"

    invoke-static {v2, v3}, Lcom/lge/mdm/controller/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p4, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 90
    :cond_6
    sget-object v3, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v4, "[LGMDM] Disabllow Bluetooth mode"

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v3, "LGMDM"

    const-string v4, "LGMDM BT POINT #002 - Bluetooth fuction will not work!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p4, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setBluetoothPreferenceEnableMenu(Landroid/content/ComponentName;Landroid/app/Activity;Ljava/lang/String;Landroid/preference/Preference;)V
    .locals 4
    .parameter "who"
    .parameter "resActivity"
    .parameter "str"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 162
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowBluetooth(Landroid/content/ComponentName;)I

    move-result v0

    .line 163
    .local v0, btPolicy:I
    if-ne v0, v2, :cond_1

    .line 164
    sget-object v1, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBluetoothDiscoverableEnableMenu() Component : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    sget-object v1, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v2, "[LGMDM] Bluetooth Audio only mode"

    invoke-static {v1, v2}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 167
    const v1, 0x7f080969

    invoke-virtual {p4, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 169
    invoke-virtual {p4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setMDMSearchFilter(Landroid/content/ComponentName;Landroid/content/Context;Landroid/app/Activity;)V
    .locals 6
    .parameter "who"
    .parameter "resContext"
    .parameter "resActivity"

    .prologue
    .line 151
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowBluetooth(Landroid/content/ComponentName;)I

    move-result v0

    .line 152
    .local v0, btPolicy:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 153
    sget-object v3, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPosFilterType() Component : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v3, "BtUiSearchFilter"

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 155
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 156
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "key_scan_filter_type"

    const/16 v4, 0x400

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public setTextViewDisabledString(Landroid/content/ComponentName;Ljava/lang/String;Landroid/widget/TextView;)Z
    .locals 3
    .parameter "who"
    .parameter "menuString"
    .parameter "textView"

    .prologue
    .line 52
    sget-object v0, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkReceAction() Component : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Menu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 55
    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    .line 57
    :cond_1
    const-string v0, "bluetooth"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-static {}, Lcom/lge/mdm/LGMDMManager;->getInstance()Lcom/lge/mdm/LGMDMManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/mdm/LGMDMManager;->getAllowBluetooth(Landroid/content/ComponentName;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    sget-object v0, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "[LGMDM] Allow bluetooth mode"

    invoke-static {v0, v1}, Lcom/lge/mdm/controller/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 61
    :cond_3
    sget-object v0, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->TAG:Ljava/lang/String;

    const-string v1, "[LGMDM] Disabllow bluetooth mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v0, "LGMDM"

    const-string v1, "LGMDM BT POINT #001 - Bluetooth fuction will not work!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const v0, 0x7f080968

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
