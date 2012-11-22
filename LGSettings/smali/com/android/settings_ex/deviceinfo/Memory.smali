.class public Lcom/android/settings_ex/deviceinfo/Memory;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "Memory.java"


# static fields
.field protected static isCloudBUA:Z


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBUAStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

.field private mClickedMountPoint:Ljava/lang/String;

.field private mInternalStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

.field private mLastClickedMountToggle:Landroid/preference/Preference;

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMountService:Landroid/os/storage/IMountService;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResources:Landroid/content/res/Resources;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumePreferenceCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/deviceinfo/Memory;->isCloudBUA:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v0, Lcom/android/settings_ex/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Memory$1;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings_ex/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Memory$2;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    new-instance v0, Lcom/android/settings_ex/deviceinfo/Memory$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/Memory$3;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/Memory;)Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mBUAStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/Memory;)[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->doUnmount()V

    return-void
.end method

.method private doUnmount()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f080366

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .local v1, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f080367

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f080368

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 354
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 240
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "MemorySettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 235
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .local v0, mountService:Landroid/os/storage/IMountService;
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v1

    .line 366
    .local v1, stUsers:[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 380
    :cond_0
    return v3
.end method

.method private mount()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .local v0, mountService:Landroid/os/storage/IMountService;
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "MemorySettings"

    const-string v2, "Mount service is null, can\'t mount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Memory;->removeDialog(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/Memory;->showDialog(I)V

    return-void
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 386
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/Memory;->showDialogInner(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->doUnmount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MemorySettings"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings_ex/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method


# virtual methods
.method protected cloudEnable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, result:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, mPackageManager:Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    const-string v2, "com.lge.cloudservice.enabled"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    :cond_0
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/Memory;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->cloudEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/deviceinfo/Memory;->isCloudBUA:Z

    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;Z)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mBUAStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mBUAStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mBUAStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->initForBUA(Landroid/app/Activity;)V

    .line 101
    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;Z)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->init()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v9

    .line 112
    .local v9, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v0, v9

    if-lez v0, :cond_3

    const/4 v0, 0x0

    aget-object v0, v9, v0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    .local v8, massStorageEnabled:Z
    :goto_0
    array-length v7, v9

    .local v7, length:I
    new-array v0, v7, [Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v7, :cond_5

    aget-object v3, v9, v6

    .local v3, storageVolume:Landroid/os/storage/StorageVolume;
    if-nez v6, :cond_4

    const/4 v5, 0x1

    .local v5, isPrimary:Z
    :goto_2
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;Z)V

    aput-object v0, v10, v6

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->init()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v3           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v5           #isPrimary:Z
    .end local v6           #i:I
    .end local v7           #length:I
    .end local v8           #massStorageEnabled:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 118
    .restart local v3       #storageVolume:Landroid/os/storage/StorageVolume;
    .restart local v6       #i:I
    .restart local v7       #length:I
    .restart local v8       #massStorageEnabled:Z
    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    .line 126
    .end local v3           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_5
    if-nez v8, :cond_6

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/Memory;->setHasOptionsMenu(Z)V

    .line 127
    return-void

    .line 126
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x7f08044e

    const/4 v0, 0x0

    .line 322
    packed-switch p1, :pswitch_data_0

    .line 340
    :goto_0
    return-object v0

    .line 324
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080362

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings_ex/deviceinfo/Memory$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/deviceinfo/Memory$4;-><init>(Lcom/android/settings_ex/deviceinfo/Memory;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080134

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080363

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 334
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080364

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080365

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v9, 0x1

    .line 248
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    array-length v10, v10

    if-ge v1, v10, :cond_4

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v7, v10, v1

    .local v7, svpc:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v7, p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v2

    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #svpc:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    :goto_1
    return v9

    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v7       #svpc:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    invoke-virtual {v7, p2}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->mountToggleClicked(Landroid/preference/Preference;)Z

    move-result v10

    if-eqz v10, :cond_3

    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    invoke-virtual {v7}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v5

    .local v5, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 261
    .local v4, state:Ljava/lang/String;
    const-string v10, "mounted"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "mounted_ro"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->unmount()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->mount()V

    goto :goto_1

    .end local v4           #state:Ljava/lang/String;
    .end local v5           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    .end local v2           #intent:Landroid/content/Intent;
    .end local v7           #svpc:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    :cond_4
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mBUAStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v9, :cond_5

    instance-of v9, p2, Lcom/android/settings_ex/deviceinfo/UsageBarPreference;

    if-nez v9, :cond_5

    .line 271
    const-string v3, ""

    .line 272
    .local v3, preferenceTitle:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const v9, 0x7f080963

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, subscribedToken:Ljava/lang/String;
    const v9, 0x7f080962

    invoke-virtual {p0, v9}, Lcom/android/settings_ex/deviceinfo/Memory;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 277
    .local v8, upgradToken:Ljava/lang/String;
    const/4 v1, 0x0

    :goto_2
    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mBUAStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v9}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getPreferenceCount()I

    move-result v9

    if-ge v1, v9, :cond_5

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mBUAStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v9, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mBUAStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v9, v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, buaTitle:Ljava/lang/String;
    :goto_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.lge.cloudservice.intent.action.SELF_PROVISIONING_MEDIA"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    .end local v0           #buaTitle:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #preferenceTitle:Ljava/lang/String;
    .end local v6           #subscribedToken:Ljava/lang/String;
    .end local v8           #upgradToken:Ljava/lang/String;
    :cond_5
    :goto_4
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 278
    .restart local v3       #preferenceTitle:Ljava/lang/String;
    .restart local v6       #subscribedToken:Ljava/lang/String;
    .restart local v8       #upgradToken:Ljava/lang/String;
    :cond_6
    const-string v0, ""

    goto :goto_3

    .line 284
    .restart local v0       #buaTitle:Ljava/lang/String;
    :cond_7
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.lge.cloudservice.intent.action.UPGRADE_STORAGE"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .end local v2           #intent:Landroid/content/Intent;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mBUAStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v3, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.lge.cloudservice.intent.action.RESPONSE_STORAGE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, CloudIntentFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/Memory;->mBUAStorageVolumePreferenceCategory:Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->getCloudStorageInfo(Landroid/app/Activity;)V

    .line 157
    .end local v0           #CloudIntentFilter:Landroid/content/IntentFilter;
    :cond_2
    return-void
.end method
