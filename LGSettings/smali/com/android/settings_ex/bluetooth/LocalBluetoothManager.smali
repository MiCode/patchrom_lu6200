.class public final Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# static fields
.field private static sInstance:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;


# instance fields
.field private mBtUiStatus:Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;

.field private final mCachedDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

.field private final mContext:Landroid/content/Context;

.field private mDiscoverableEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

.field private final mEventManager:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

.field private mForegroundActivity:Landroid/content/Context;

.field private final mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V
    .locals 4
    .parameter "adapter"
    .parameter "context"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    new-instance v0, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, p2}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;-><init>(Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    new-instance v0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;-><init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;-><init>(Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mBtUiStatus:Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mBtUiStatus:Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->start()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    .locals 4
    .parameter "context"

    .prologue
    const-class v3, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, adapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    .end local v0           #adapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    :goto_0
    monitor-exit v3

    return-object v2

    .restart local v0       #adapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 92
    .local v1, appContext:Landroid/content/Context;
    new-instance v2, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-direct {v2, v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;-><init>(Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V

    sput-object v2, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    .end local v0           #adapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    .end local v1           #appContext:Landroid/content/Context;
    :cond_1
    sget-object v2, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method public getBluetoothUIStatus()Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mBtUiStatus:Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;

    return-object v0
.end method

.method getCachedDeviceManager()Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDiscoverableEnabler()Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mDiscoverableEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    return-object v0
.end method

.method getEventManager()Lcom/android/settings_ex/bluetooth/BluetoothEventManager;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    return-object v0
.end method

.method public getForegroundActivity()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    return-object v0
.end method

.method getProfileManager()Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDiscoverableEnabler(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0
    .parameter "discoverableEnabler"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mDiscoverableEnabler:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    return-void
.end method

.method declared-synchronized setForegroundActivity(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 139
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 140
    :try_start_0
    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to non-null context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startScan()V
    .locals 3

    .prologue
    .line 168
    const-string v0, "LGBT_CNDTL_FUNCTION_BLOCK_DISCOVER_INCALL"

    invoke-static {v0}, Lcom/lge/config/BtFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mBtUiStatus:Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->isVoiceConversation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    const v2, 0x7f080af3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->BtUiToastMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method
