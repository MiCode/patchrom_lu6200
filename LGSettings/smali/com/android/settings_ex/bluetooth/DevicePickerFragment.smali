.class public final Lcom/android/settings_ex/bluetooth/DevicePickerFragment;
.super Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# instance fields
.field private mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mAvailableDevicesCategoryIsPresent:Z

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mStartScanOnResume:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;-><init>()V

    return-void
.end method

.method private addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 1
    .parameter "preferenceGroup"
    .parameter "titleId"
    .parameter "filter"

    .prologue
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0, p3}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->setFilter(Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;)V

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->addCachedDevices()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 277
    return-void
.end method

.method private startScanning()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->removeAllSearchedDevices()V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->updateContent(I)V

    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 135
    return-void
.end method

.method private updateContent(I)V
    .locals 7
    .parameter "bluetoothState"

    .prologue
    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .local v2, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->updateSearchButton()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->setDeviceListGroup(Landroid/preference/PreferenceGroup;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->removeAllDevices()V

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->clear()V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v3, :cond_2

    new-instance v3, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 174
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0801c3

    sget-object v5, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .local v1, numberOfPairedDevices:I
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v3, :cond_3

    new-instance v3, Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/settings_ex/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 185
    :goto_3
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    const v4, 0x7f0801c4

    sget-object v5, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->addDeviceCategory(Landroid/preference/PreferenceGroup;ILcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .local v0, numberOfAvailableDevices:I
    iput-boolean v6, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mAvailableDevicesCategoryIsPresent:Z

    :cond_1
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-boolean v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mAvailableDevicesCategoryIsPresent:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 172
    .end local v0           #numberOfAvailableDevices:I
    .end local v1           #numberOfPairedDevices:I
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_2

    .line 183
    .restart local v1       #numberOfPairedDevices:I
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_3

    .end local v1           #numberOfPairedDevices:I
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->finish()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const v1, 0x7f060016

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    .line 65
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->setFilter(I)V

    .line 67
    const-string v1, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    .line 68
    const-string v1, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2
    .parameter "bluetoothState"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->updateContent(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mBtnSearch:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->startScanning()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0800ca

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 76
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_0

    move v0, v3

    .line 102
    .local v0, bluetoothIsEnabled:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 103
    .local v1, isDiscovering:Z
    if-eqz v1, :cond_1

    const v2, 0x7f080afd

    .line 105
    .local v2, textId:I
    :goto_1
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 108
    return-void

    .end local v0           #bluetoothIsEnabled:Z
    .end local v1           #isDiscovering:Z
    .end local v2           #textId:I
    :cond_0
    move v0, v4

    .line 101
    goto :goto_0

    .line 103
    .restart local v0       #bluetoothIsEnabled:Z
    .restart local v1       #isDiscovering:Z
    :cond_1
    const v2, 0x7f0801c0

    goto :goto_1
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    const/16 v1, 0xc

    if-ne p2, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->finish()V

    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->updateContent(I)V

    .line 256
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 2
    .parameter "btPreference"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 114
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->startScanning()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->updateContent(I)V

    .line 143
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->updateContent(I)V

    .line 96
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .parameter "started"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->updateSearchButton()V

    return-void
.end method

.method public updateSearchButton()V
    .locals 0

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->updateSearchButton()V

    return-void
.end method
