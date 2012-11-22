.class public Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;
.super Landroid/preference/PreferenceActivity;
.source "DiscoverServicesActivity.java"


# instance fields
.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDidList:Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;

.field private mHandler:Landroid/os/Handler;

.field private mRecNum:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceList:Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;

.field private mServiceListManager:Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;

.field private mTotalRecNum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$1;-><init>(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    new-instance v0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$2;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity$2;-><init>(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceListManager:Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->processDiscoverEvent(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->processRemoteDiInfo(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->processRemoteDiRecord(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;)Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceList:Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;

    return-object v0
.end method

.method private getProperty(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "savedInstanceState"

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, val:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 112
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-object v1
.end method

.method private processDiscoverEvent(Landroid/os/Bundle;)V
    .locals 8
    .parameter "extra"

    .prologue
    const-string v6, "DiscoverServicesActivity"

    const-string v7, "processDiscoverEvent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceList:Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;

    invoke-virtual {v6}, Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;->removeAll()V

    const-string v6, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 252
    .local v1, d:Landroid/bluetooth/BluetoothDevice;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 253
    .local v0, address:Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 254
    const-string v6, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v5

    .line 255
    .local v5, uuids:[Landroid/os/Parcelable;
    if-eqz v5, :cond_2

    .line 256
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 257
    .local v3, processed:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/os/ParcelUuid;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 258
    aget-object v4, v5, v2

    check-cast v4, Landroid/os/ParcelUuid;

    .line 259
    .local v4, uuid:Landroid/os/ParcelUuid;
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 260
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v6, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceListManager:Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;

    invoke-static {p0, v4, v6}, Lcom/broadcom/bt/app/settings/BluetoothServicesMap;->getServiceStringByUUID(Landroid/content/Context;Landroid/os/ParcelUuid;Lcom/broadcom/bt/app/settings/BluetoothServicesMap$IServiceListManager;)V

    .line 257
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 252
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #processed:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/os/ParcelUuid;>;"
    .end local v4           #uuid:Landroid/os/ParcelUuid;
    .end local v5           #uuids:[Landroid/os/Parcelable;
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 266
    .restart local v0       #address:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceList:Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;->setProgress(Z)V

    .line 267
    return-void
.end method

.method private processRemoteDiInfo(Landroid/os/Bundle;)V
    .locals 3
    .parameter "extra"

    .prologue
    .line 281
    const-string v1, "android.bluetooth.adapter.extra.DI_STATUS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 282
    .local v0, status:I
    const-string v1, "android.bluetooth.adapter.extra.DI_REC_NUM"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mTotalRecNum:I

    .line 284
    if-nez v0, :cond_0

    iget v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mTotalRecNum:I

    if-nez v1, :cond_2

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDidList:Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;

    const v2, 0x7f080a85

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;->setTitle(I)V

    .line 286
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->discoverServices()V

    .line 294
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mRecNum:I

    .line 291
    iget v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mRecNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mRecNum:I

    iget v2, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mTotalRecNum:I

    if-le v1, v2, :cond_1

    .line 292
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->discoverServices()V

    goto :goto_0
.end method

.method private processRemoteDiRecord(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9
    .parameter "context"
    .parameter "extra"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 297
    iget v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mRecNum:I

    if-ne v4, v8, :cond_0

    .line 298
    const-string v4, "android.bluetooth.adapter.extra.DI_SPEC_ID"

    invoke-virtual {p2, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 299
    .local v1, specId:I
    div-int/lit16 v4, v1, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, specIdMajor:Ljava/lang/String;
    rem-int/lit16 v4, v1, 0x100

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, specIdMinor:Ljava/lang/String;
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDidList:Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;

    const v5, 0x7f080a86

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v7

    aput-object v3, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;->setTitle(Ljava/lang/CharSequence;)V

    .line 305
    .end local v1           #specId:I
    .end local v2           #specIdMajor:Ljava/lang/String;
    .end local v3           #specIdMinor:Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 306
    .local v0, p:Landroid/preference/Preference;
    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 307
    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 308
    iget v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mRecNum:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    iget v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mRecNum:I

    invoke-static {p1, v0, p2, v4}, Lcom/broadcom/bt/app/settings/BluetoothDid;->getDidRecord(Landroid/content/Context;Landroid/preference/Preference;Landroid/os/Bundle;I)V

    iget-object v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDidList:Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;

    invoke-virtual {v4, v0}, Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;->addPreference(Landroid/preference/Preference;)Z

    iget v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mRecNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mRecNum:I

    iget v5, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mTotalRecNum:I

    if-le v4, v5, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->discoverServices()V

    .line 315
    :cond_1
    return-void
.end method


# virtual methods
.method public discoverServices()V
    .locals 3

    .prologue
    const-string v1, "DiscoverServicesActivity"

    const-string v2, "discoverServices"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDidList:Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;->setProgress(Z)V

    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceList:Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;->setProgress(Z)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteServices(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public fetchRemoteDiInfo()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDidList:Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;

    const v2, 0x7f080a84

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;->setTitle(I)V

    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDidList:Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;->setProgress(Z)V

    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDidList:Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;

    invoke-virtual {v1}, Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;->removeAll()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->fetchRemoteDiInfo(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .local v2, localManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 137
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    .line 140
    :cond_1
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    const-string v4, "DiscoverServicesActivity"

    const-string v5, "Activity started without address"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->finish()V

    goto :goto_0

    .line 146
    :cond_2
    const v4, 0x7f060017

    invoke-virtual {p0, v4}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->addPreferencesFromResource(I)V

    .line 147
    const-string v4, "bt_name"

    invoke-virtual {p0, v4}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 148
    .local v3, mNamePreference:Landroid/preference/Preference;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 152
    const-string v4, "android.bluetooth.device.extra.NAME"

    invoke-direct {p0, v4, p1}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->getProperty(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceName:Ljava/lang/String;

    .line 153
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceName:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 154
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 157
    :cond_3
    const-string v4, "bt_did_list"

    invoke-virtual {p0, v4}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;

    iput-object v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDidList:Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;

    .line 158
    const-string v4, "bt_service_list"

    invoke-virtual {p0, v4}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;

    iput-object v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mServiceList:Lcom/android/settings_ex/ProgressCategoryServiceDiscovery;

    .line 160
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.bluetooth.device.action.UUID"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.bluetooth.adapter.action.DI_REMOTE_DI_INFO_RECEIVED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.bluetooth.adapter.action.DI_REMOTE_DI_RECORD_RECEIVED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 168
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v4, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getDeviceType()B

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 171
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->discoverServices()V

    goto/16 :goto_0

    .line 174
    :cond_4
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->fetchRemoteDiInfo()V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 193
    const v0, 0x7f080a81

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080333

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 196
    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 189
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 219
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 208
    :pswitch_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 209
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getDeviceType()B

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->discoverServices()V

    .line 217
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->fetchRemoteDiInfo()V

    goto :goto_1

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 185
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 224
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 225
    invoke-static {p0, v0}, Lcom/broadcom/bt/app/settings/BluetoothDid;->showRemoteDiRecord(Landroid/content/Context;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 226
    if-eqz v1, :cond_0

    .line 227
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/broadcom/bt/app/settings/ViewDidRecord;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    const-string v3, "title"

    const-string v4, "Record %1$s"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v0, "content"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/settings/DiscoverServicesActivity;->startActivity(Landroid/content/Intent;)V

    .line 232
    :cond_0
    return v7
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 200
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 201
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 202
    return v3
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 179
    const-string v0, "DiscoverServicesActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 181
    return-void
.end method
