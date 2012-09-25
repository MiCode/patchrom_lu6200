.class public final Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
.super Ljava/lang/Object;
.source "LocalBluetoothAdapter.java"


# static fields
.field private static final mSync:Ljava/lang/Object;

.field private static sInstance:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private static wifiDirectIsOn:Z


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mLastScan:J

.field private mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mState:I

.field private path_btdir:Ljava/lang/String;

.field private path_forbtamp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 243
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mSync:Ljava/lang/Object;

    .line 253
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->wifiDirectIsOn:Z

    return-void
.end method

.method private constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mIntentFilter:Landroid/content/IntentFilter;

    .line 246
    const-string v0, "/data/system/bluetooth"

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->path_btdir:Ljava/lang/String;

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->path_btdir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/forbtamp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->path_forbtamp:Ljava/lang/String;

    .line 404
    new-instance v0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter$1;-><init>(Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->onRemoveForBtAmp()V

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->handleP2pStateChanged(I)V

    return-void
.end method

.method static declared-synchronized getInstance()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    .locals 3

    .prologue
    .line 90
    const-class v2, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_0

    .line 91
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 92
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 93
    new-instance v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v1, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    sput-object v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 97
    :cond_0
    sget-object v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private handleP2pStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 416
    packed-switch p1, :pswitch_data_0

    .line 426
    :goto_0
    return-void

    .line 418
    :pswitch_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->wifiDirectIsOn:Z

    goto :goto_0

    .line 421
    :pswitch_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->wifiDirectIsOn:Z

    goto :goto_0

    .line 416
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method cancelDiscovery()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 104
    return-void
.end method

.method disable()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method enable()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getBluetoothState()I
    .locals 1

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    .line 195
    iget v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getBondedDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "profile"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 117
    return-void
.end method

.method getScanMode()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    return v0
.end method

.method getState()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    return v0
.end method

.method getUuids()[Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method isDiscovering()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method isEnabled()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onRemoveForBtAmp()V
    .locals 0

    .prologue
    .line 380
    return-void
.end method

.method public setBluetoothEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 221
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    .line 225
    .local v0, success:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 226
    if-eqz p1, :cond_1

    const/16 v1, 0xb

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 237
    :goto_2
    return-void

    .line 221
    .end local v0           #success:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    goto :goto_0

    .line 226
    .restart local v0       #success:Z
    :cond_1
    const/16 v1, 0xd

    goto :goto_1

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    goto :goto_2
.end method

.method declared-synchronized setBluetoothStateInt(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 201
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->setBluetoothStateOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_0
    monitor-exit p0

    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setDiscoverableTimeout(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 149
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 153
    return-void
.end method

.method setProfileManager(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    .line 81
    return-void
.end method

.method setScanMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 157
    return-void
.end method

.method setScanMode(II)Z
    .locals 1
    .parameter "mode"
    .parameter "duration"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    return v0
.end method

.method startScanning(Z)V
    .locals 5
    .parameter "force"

    .prologue
    .line 165
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    if-nez p1, :cond_2

    .line 169
    iget-wide v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    const-wide/32 v3, 0x493e0

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settings_ex/bluetooth/A2dpProfile;

    move-result-object v0

    .line 175
    .local v0, a2dp:Lcom/android/settings_ex/bluetooth/A2dpProfile;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/A2dpProfile;->isA2dpPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    .end local v0           #a2dp:Lcom/android/settings_ex/bluetooth/A2dpProfile;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    goto :goto_0
.end method

.method stopScanning()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 190
    :cond_0
    return-void
.end method

.method syncBluetoothState()Z
    .locals 2

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 213
    .local v0, currentState:I
    iget v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mState:I

    if-eq v0, v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 215
    const/4 v1, 0x1

    .line 217
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
