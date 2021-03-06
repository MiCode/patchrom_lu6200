.class public Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/StorageMeasurement$1;,
        Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;,
        Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;,
        Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field static final LOGV:Z

.field private static mStorageManager:Landroid/os/storage/StorageManager;

.field private static sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/storage/StorageVolume;",
            "Lcom/android/settings_ex/deviceinfo/StorageMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static sInternalInstance:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;


# instance fields
.field private mAppsSize:J

.field private mAvailSize:J

.field private mDownloadsSize:J

.field mFileInfoForMisc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

.field private final mIsInternal:Z

.field private final mIsPrimary:Z

.field private mMediaSizes:[J

.field private mMiscSize:J

.field private volatile mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private mReservedSize:J

.field private final mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const-string v0, "StorageMeasurement"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->LOGV:Z

    .line 85
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 90
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V
    .locals 4
    .parameter "context"
    .parameter "storageVolume"
    .parameter "isPrimary"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez p2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z

    iget-boolean v1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    .line 126
    return-void

    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    :cond_0
    move v1, v3

    .line 119
    goto :goto_0

    :cond_1
    move v2, v3

    .line 120
    goto :goto_1
.end method

.method static synthetic access$1002(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide p1
.end method

.method static synthetic access$1102(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReservedSize:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)[J
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mDownloadsSize:J

    return-wide p1
.end method

.method static synthetic access$1802(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->measureSizesOfMisc(Lcom/android/internal/app/IMediaContainerService;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sendExactUpdate()V

    return-void
.end method

.method static synthetic access$300()Landroid/content/ComponentName;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mIsInternal:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAppsSize:J

    return-wide p1
.end method

.method static synthetic access$800()Landroid/os/storage/StorageManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method private getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    .locals 4
    .parameter "imcs"
    .parameter "dir"

    .prologue
    .line 527
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 530
    :goto_0
    return-wide v1

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "StorageMeasurement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read memory from default container service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
    .locals 3
    .parameter "context"
    .parameter "storageVolume"
    .parameter "isPrimary"

    .prologue
    .line 136
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    sput-object v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez p1, :cond_1

    sget-object v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sInternalInstance:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V

    sput-object v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sInternalInstance:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    :cond_0
    sget-object v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sInternalInstance:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    goto :goto_0

    .line 147
    :cond_2
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V

    .local v0, storageMeasurement:Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
    sget-object v1, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 150
    goto :goto_0
.end method

.method private measureSizesOfMisc(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 23
    .parameter "imcs"

    .prologue
    sget-object v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v21

    .local v21, storageVolumes:[Landroid/os/storage/StorageVolume;
    const/16 v18, 0x0

    .local v18, indexOfSDcard:I
    const-string v20, ""

    .local v20, pathOfSDcard:Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move-object/from16 v0, v21

    array-length v2, v0

    move/from16 v0, v17

    if-ge v0, v2, :cond_0

    .line 544
    aget-object v2, v21, v17

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 545
    const/16 v18, 0x0

    .line 546
    aget-object v2, v21, v17

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v20

    .line 551
    :cond_0
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    .local v22, top:Ljava/io/File;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    .line 553
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v16

    .line 554
    .local v16, files:[Ljava/io/File;
    if-nez v16, :cond_2

    .line 582
    :goto_1
    return-void

    .line 543
    .end local v16           #files:[Ljava/io/File;
    .end local v22           #top:Ljava/io/File;
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 555
    .restart local v16       #files:[Ljava/io/File;
    .restart local v22       #top:Ljava/io/File;
    :cond_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v19, v0

    .line 557
    .local v19, len:I
    const-wide/16 v6, 0x0

    .line 558
    .local v6, counter:J
    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 559
    aget-object v2, v16, v17

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, path:Ljava/lang/String;
    sget-object v2, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 558
    :cond_3
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 563
    :cond_4
    aget-object v2, v16, v17

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 564
    aget-object v2, v16, v17

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 565
    .local v4, fileSize:J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v12, 0x1

    add-long v14, v6, v12

    .end local v6           #counter:J
    .local v14, counter:J
    invoke-direct/range {v2 .. v7}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    add-long/2addr v8, v4

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    move-wide v6, v14

    .line 567
    .end local v14           #counter:J
    .restart local v6       #counter:J
    goto :goto_3

    .end local v4           #fileSize:J
    :cond_5
    aget-object v2, v16, v17

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 569
    aget-object v2, v16, v17

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 573
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v10

    .line 574
    .local v10, dirSize:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v8, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v12, 0x1

    add-long v14, v6, v12

    .end local v6           #counter:J
    .restart local v14       #counter:J
    move-object v9, v3

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    move-wide v6, v14

    .end local v14           #counter:J
    .restart local v6       #counter:J
    goto :goto_3

    .line 581
    .end local v3           #path:Ljava/lang/String;
    .end local v10           #dirSize:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method private sendExactUpdate()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v1, v2

    .local v1, receiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v1, :cond_2

    sget-boolean v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v2, :cond_0

    const-string v2, "StorageMeasurement"

    const-string v3, "measurements dropped because receiver is null! wasted effort"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    .end local v1           #receiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1       #receiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "total_size"

    iget-wide v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "avail_size"

    iget-wide v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAvailSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "apps_used"

    iget-wide v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAppsSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "downloads_size"

    iget-wide v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mDownloadsSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "misc_size"

    iget-wide v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "media_sizes"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v2, "reserved_size"

    iget-wide v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReservedSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-interface {v1, v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateExact(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private sendInternalApproximateUpdate()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v1, v2

    .local v1, receiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return-void

    .end local v1           #receiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1       #receiver:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "total_size"

    iget-wide v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mTotalSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "avail_size"

    iget-wide v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mAvailSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "reserved_size"

    iget-wide v3, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReservedSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-interface {v1, v0}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateApproximate(Landroid/os/Bundle;)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method getMiscSize()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mMiscSize:J

    return-wide v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method isExternalSDCard()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public measure()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public setReceiver(Lcom/android/settings_ex/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 156
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 158
    :cond_1
    return-void
.end method
