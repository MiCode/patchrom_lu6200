.class public final Lcom/android/settings_ex/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .local v0, manager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 66
    return-void

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    :goto_0
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    const-string v0, "LGMDM"

    const-string v1, "LGMDM BT POINT #023"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->getInstance()Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v3, "mSwitch"

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->setBluetoothEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/widget/Switch;)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 138
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f080216

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->getInstance()Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v3, "mSwitch"

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->setBluetoothEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/widget/Switch;)Z

    .line 154
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public resume()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    const-string v0, "LGMDM"

    const-string v1, "LGMDM BT POINT #021"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->getInstance()Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v3, "mSwitch"

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->setBluetoothEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/widget/Switch;)Z

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 8
    .parameter "switch_"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v5, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/16 v0, 0xa

    .local v0, bluetoothState:I
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 120
    :cond_2
    const/16 v5, 0xc

    if-ne v0, v5, :cond_5

    move v2, v3

    .line 121
    .local v2, isOn:Z
    :goto_1
    const/16 v5, 0xa

    if-ne v0, v5, :cond_6

    move v1, v3

    .local v1, isOff:Z
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v4, v3

    :cond_4
    invoke-virtual {v5, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v3, :cond_0

    const-string v3, "LGMDM"

    const-string v4, "LGMDM BT POINT #022"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->getInstance()Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v5, "mSwitch"

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7, v4, v5, v6}, Lcom/android/settings_ex/bluetooth/MDMBluetoothSettingsAdapter;->setBluetoothEnableMenu(Landroid/content/ComponentName;Landroid/content/Context;Ljava/lang/String;Landroid/widget/Switch;)Z

    goto :goto_0

    .end local v1           #isOff:Z
    .end local v2           #isOn:Z
    :cond_5
    move v2, v4

    .line 120
    goto :goto_1

    .restart local v2       #isOn:Z
    :cond_6
    move v1, v4

    .line 121
    goto :goto_2
.end method
