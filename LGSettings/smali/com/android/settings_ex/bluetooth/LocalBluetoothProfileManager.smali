.class final Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;,
        Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;,
        Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    }
.end annotation


# instance fields
.field private mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

.field private final mEventManager:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

.field private mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

.field private final mHidProfile:Lcom/android/settings_ex/bluetooth/HidProfile;

.field private final mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private mOppProfile:Lcom/android/settings_ex/bluetooth/OppProfile;

.field private final mPanProfile:Lcom/android/settings_ex/bluetooth/PanProfile;

.field private final mProfileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)V
    .locals 5
    .parameter "context"
    .parameter "adapter"
    .parameter "deviceManager"
    .parameter "eventManager"

    .prologue
    const/4 v4, 0x0

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    .line 95
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 98
    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    .line 99
    iput-object p4, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    .line 113
    const-string v1, "LocalBluetoothProfileManager"

    const-string v2, "CALL LBA setProfileManager();"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setProfileManager(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)V

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->setProfileManager(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)V

    .line 123
    invoke-virtual {p2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 126
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 133
    :cond_0
    const-string v1, "bluetooth_hid"

    invoke-static {v1}, Landroid/bluetooth/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    new-instance v1, Lcom/android/settings_ex/bluetooth/HidProfile;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v1, p1, v2}, Lcom/android/settings_ex/bluetooth/HidProfile;-><init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings_ex/bluetooth/HidProfile;

    .line 135
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings_ex/bluetooth/HidProfile;

    const-string v2, "HID"

    const-string v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    const-string v1, "bluetooth_pan"

    invoke-static {v1}, Landroid/bluetooth/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    new-instance v1, Lcom/android/settings_ex/bluetooth/PanProfile;

    invoke-direct {v1, p1}, Lcom/android/settings_ex/bluetooth/PanProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings_ex/bluetooth/PanProfile;

    .line 144
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings_ex/bluetooth/PanProfile;

    const-string v2, "PAN"

    const-string v3, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->addPanProfile(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_1
    const-string v1, "LocalBluetoothProfileManager"

    const-string v2, "LocalBluetoothProfileManager construction complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 138
    :cond_1
    const-string v1, "LocalBluetoothProfileManager"

    const-string v2, "Not adding HID Host profile because it is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings_ex/bluetooth/HidProfile;

    goto :goto_0

    .line 147
    :cond_2
    const-string v1, "LocalBluetoothProfileManager"

    const-string v2, "Not adding PAN profile because it is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings_ex/bluetooth/PanProfile;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method private addPanProfile(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "profile"
    .parameter "profileName"
    .parameter "stateChangedAction"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;-><init>(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method

.method private addProfile(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "profile"
    .parameter "profileName"
    .parameter "stateChangedAction"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 211
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method


# virtual methods
.method addServiceListener(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 282
    return-void
.end method

.method callServiceConnectedListeners()V
    .locals 3

    .prologue
    .line 291
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 292
    .local v1, l:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceConnected()V

    goto :goto_0

    .line 294
    .end local v1           #l:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method callServiceDisconnectedListeners()V
    .locals 3

    .prologue
    .line 298
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 299
    .local v1, listener:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceDisconnected()V

    goto :goto_0

    .line 301
    .end local v1           #listener:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method getA2dpProfile()Lcom/android/settings_ex/bluetooth/A2dpProfile;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

    return-object v0
.end method

.method getHeadsetProfile()Lcom/android/settings_ex/bluetooth/HeadsetProfile;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    return-object v0
.end method

.method getProfileByName(Ljava/lang/String;)Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    .locals 1
    .parameter "name"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    return-object v0
.end method

.method public declared-synchronized isManagerReady()Z
    .locals 2

    .prologue
    .line 307
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    .line 308
    .local v0, profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    if-eqz v0, :cond_0

    .line 309
    invoke-interface {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 315
    :goto_0
    monitor-exit p0

    return v1

    .line 311
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

    .line 312
    if-eqz v0, :cond_1

    .line 313
    invoke-interface {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 315
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 307
    .end local v0           #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method removeServiceListener(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 287
    return-void
.end method

.method setBluetoothStateOn()V
    .locals 2

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 228
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    .line 232
    return-void
.end method

.method updateLocalProfiles([Landroid/os/ParcelUuid;)V
    .locals 4
    .parameter "uuids"

    .prologue
    .line 164
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    .line 166
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Lcom/android/settings_ex/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/bluetooth/A2dpProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

    const-string v1, "A2DP"

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    :goto_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    if-nez v0, :cond_2

    .line 179
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local HEADSET profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings_ex/bluetooth/HeadsetProfile;-><init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    const-string v1, "HEADSET"

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_2
    :goto_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 191
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_ex/bluetooth/OppProfile;

    if-nez v0, :cond_3

    .line 192
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local OPP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v0, Lcom/android/settings_ex/bluetooth/OppProfile;

    invoke-direct {v0}, Lcom/android/settings_ex/bluetooth/OppProfile;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_ex/bluetooth/OppProfile;

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    const-string v1, "OPP"

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_ex/bluetooth/OppProfile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    .line 203
    return-void

    .line 171
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_2

    .line 186
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: HEADSET profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 197
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_ex/bluetooth/OppProfile;

    if-eqz v0, :cond_3

    .line 198
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: OPP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method declared-synchronized updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .parameter "uuids"
    .parameter "localUuids"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "[",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p3, profiles:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;>;"
    .local p4, removedProfiles:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    .line 340
    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 341
    invoke-interface {p3}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    if-nez p1, :cond_1

    .line 380
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 347
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_4

    .line 348
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 357
    :cond_4
    sget-object v0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

    if-eqz v0, :cond_5

    .line 359
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 363
    :cond_5
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_ex/bluetooth/OppProfile;

    if-eqz v0, :cond_6

    .line 365
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_ex/bluetooth/OppProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_ex/bluetooth/OppProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 369
    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings_ex/bluetooth/HidProfile;

    if-eqz v0, :cond_7

    .line 371
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings_ex/bluetooth/HidProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings_ex/bluetooth/HidProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 375
    :cond_7
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings_ex/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings_ex/bluetooth/PanProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings_ex/bluetooth/PanProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
