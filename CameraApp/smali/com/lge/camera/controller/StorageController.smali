.class public abstract Lcom/lge/camera/controller/StorageController;
.super Lcom/lge/camera/controller/Controller;
.source "StorageController.java"


# static fields
.field public static final STORAGECONTROLLER_LOCKKEY:Ljava/lang/String; = "StorageControllerLockKey"

.field private static mMntSvc:Landroid/os/storage/IMountService;


# instance fields
.field public EXTERNAL_STORAGE_DIR:Ljava/lang/String;

.field public INTERNAL_STORAGE_DIR:Ljava/lang/String;

.field protected mCurrentStorage:I

.field private mCurrentStorageDCFDirectory:Ljava/lang/String;

.field private mCurrentStorageDirectory:Ljava/lang/String;

.field private mCurrentStorageState:Ljava/lang/String;

.field private mMediaScanning:Z

.field protected mStorageState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/camera/controller/StorageController;->mMntSvc:Landroid/os/storage/IMountService;

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 4
    .parameter "mediator"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/Mediator;)V

    .line 27
    iput v2, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorage:I

    .line 31
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/StorageController;->GetStoragePath(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    .line 32
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/StorageController;->GetStoragePath(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/camera/properties/ProjectVariables;->NORMAL_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/camera/properties/ProjectVariables;->DCF_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    .line 36
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    .line 191
    iput-boolean v2, p0, Lcom/lge/camera/controller/StorageController;->mMediaScanning:Z

    .line 40
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsEMMCmemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/StorageController;->setCurrentStorage(I)V

    .line 43
    :cond_0
    return-void
.end method

.method private getExternalAddtionalStorageState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 338
    const-string v1, "removed"

    .line 341
    .local v1, state:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/lge/camera/controller/StorageController;->mMntSvc:Landroid/os/storage/IMountService;

    if-nez v2, :cond_0

    .line 342
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    sput-object v2, Lcom/lge/camera/controller/StorageController;->mMntSvc:Landroid/os/storage/IMountService;

    .line 345
    :cond_0
    sget-object v2, Lcom/lge/camera/controller/StorageController;->mMntSvc:Landroid/os/storage/IMountService;

    if-eqz v2, :cond_1

    .line 346
    sget-object v2, Lcom/lge/camera/controller/StorageController;->mMntSvc:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 353
    :cond_1
    :goto_0
    return-object v1

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, rex:Ljava/lang/Exception;
    const-string v1, "removed"

    .line 350
    const-string v2, "CameraApp"

    const-string v3, "Exception : "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public GetStoragePath(Z)Ljava/lang/String;
    .locals 7
    .parameter "storagetype"

    .prologue
    const/4 v1, 0x0

    .line 470
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v4, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-object v1

    .line 473
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "storage"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 474
    .local v2, mStorage:Landroid/os/storage/StorageManager;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 476
    .local v3, volumeList:[Landroid/os/storage/StorageVolume;
    if-eqz v3, :cond_4

    .line 477
    array-length v4, v3

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 478
    const-string v1, "/mnt/sdcard"

    goto :goto_0

    .line 481
    :cond_2
    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, mPath:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsEMMCmemory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 487
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 488
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Storage info : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " R :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-ne v4, p1, :cond_3

    .line 490
    aget-object v4, v3, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 491
    goto :goto_0

    .line 487
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 498
    .end local v0           #i:I
    .end local v1           #mPath:Ljava/lang/String;
    :cond_4
    const-string v4, "CameraApp"

    const-string v5, "Storage Path is Null"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkFsWritable()Z
    .locals 4

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 237
    .local v1, storageRoot:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    return v2
.end method

.method public checkFsWritable(I)Z
    .locals 4
    .parameter "storageType"

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/StorageController;->getTargetStorageDirectory(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 243
    .local v1, storageRoot:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v2

    return v2
.end method

.method public checkStorage()V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 52
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 53
    return-void
.end method

.method public abstract checkStorage(Z)V
.end method

.method public getBucketId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 390
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetUseDCFRule()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, bucket:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 393
    .end local v0           #bucket:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #bucket:Ljava/lang/String;
    goto :goto_0
.end method

.method public getBucketId(I)Ljava/lang/String;
    .locals 6
    .parameter "storageType"

    .prologue
    const/4 v5, 0x0

    .line 401
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsEMMCmemory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 402
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, storageDirectory:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    .local v1, storageDcfDirectory:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetUseDCFRule()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 417
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, bucket:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 407
    .end local v0           #bucket:Ljava/lang/String;
    .end local v1           #storageDcfDirectory:Ljava/lang/String;
    .end local v2           #storageDirectory:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 408
    .restart local v2       #storageDirectory:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #storageDcfDirectory:Ljava/lang/String;
    goto :goto_0

    .line 412
    .end local v1           #storageDcfDirectory:Ljava/lang/String;
    .end local v2           #storageDirectory:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 413
    .restart local v2       #storageDirectory:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #storageDcfDirectory:Ljava/lang/String;
    goto :goto_0

    .line 419
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #bucket:Ljava/lang/String;
    goto :goto_1
.end method

.method public getCurrentStorage()I
    .locals 1

    .prologue
    .line 328
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsEMMCmemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorage:I

    .line 332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentStorageDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 295
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsEMMCmemory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetUseDCFRule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    .line 304
    :goto_0
    return-object v0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    goto :goto_0

    .line 303
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCurrentStorageState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsEMMCmemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    .line 384
    :goto_0
    return-object v0

    .line 383
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFreeSpace()J
    .locals 2

    .prologue
    .line 202
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->getFreeSpace(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFreeSpace(I)J
    .locals 8
    .parameter "storageType"

    .prologue
    .line 208
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/StorageController;->getTargetStorageDirectory(I)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, strStorageDirectory:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 212
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 214
    :cond_0
    const/4 v1, 0x0

    .line 216
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, stat:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    .line 221
    .end local v1           #file:Ljava/io/File;
    .end local v2           #stat:Landroid/os/StatFs;
    .end local v3           #strStorageDirectory:Ljava/lang/String;
    :goto_0
    return-wide v4

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " error :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-wide/16 v4, -0x2

    goto :goto_0
.end method

.method public getStorageState()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    return v0
.end method

.method public getStorageState(I)Ljava/lang/String;
    .locals 1
    .parameter "storageType"

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 69
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageState()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 62
    :pswitch_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_1
    invoke-direct {p0}, Lcom/lge/camera/controller/StorageController;->getExternalAddtionalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTargetStorageDirectory(I)Ljava/lang/String;
    .locals 2
    .parameter "storageType"

    .prologue
    .line 309
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsEMMCmemory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    packed-switch p1, :pswitch_data_0

    .line 319
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    .line 312
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 315
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract initController()V
.end method

.method public abstract isEnoughWorkingStorage(I)Z
.end method

.method public isExternalStorageRemoved()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 252
    const-string v0, "removed"

    .line 254
    .local v0, state:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsEMMCmemory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/lge/camera/controller/StorageController;->getExternalAddtionalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_0
    const-string v3, "CameraApp"

    const-string v4, "SD card state:%s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v3, "mounted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    :goto_1
    return v1

    .line 258
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 267
    goto :goto_1
.end method

.method public isMediaScanning()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/lge/camera/controller/StorageController;->mMediaScanning:Z

    return v0
.end method

.method public isStorageAvailable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 272
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 273
    iget v1, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    if-nez v1, :cond_0

    .line 274
    const/4 v0, 0x1

    .line 276
    :cond_0
    return v0
.end method

.method public isStorageFull()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/StorageController;->checkStorage(Z)V

    .line 281
    iget v1, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 282
    const/4 v0, 0x1

    .line 284
    :cond_0
    return v0
.end method

.method public isStorageFull(I)Z
    .locals 2
    .parameter "storageType"

    .prologue
    .line 288
    iget v0, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 289
    const/4 v0, 0x1

    .line 291
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStorageReadOnly(Ljava/lang/String;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 463
    const-string v0, "mounted_ro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->checkFsWritable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStorageReady(Ljava/lang/String;)Z
    .locals 1
    .parameter "storageState"

    .prologue
    .line 74
    const-string v0, "bad_removal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "removed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "checking"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unmounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "shared"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unmountable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mounted_ro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    :cond_0
    const/4 v0, 0x0

    .line 84
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCurrentStorage(I)V
    .locals 2
    .parameter "storageType"

    .prologue
    .line 357
    iput p1, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorage:I

    .line 358
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsEMMCmemory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->INTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    .line 362
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    .line 376
    :goto_0
    return-void

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    .line 367
    invoke-direct {p0}, Lcom/lge/camera/controller/StorageController;->getExternalAddtionalStorageState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    goto :goto_0

    .line 372
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDirectory:Ljava/lang/String;

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/StorageController;->EXTERNAL_STORAGE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageDCFDirectory:Ljava/lang/String;

    .line 374
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/StorageController;->mCurrentStorageState:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMediaScanning(Z)V
    .locals 0
    .parameter "scanning"

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/lge/camera/controller/StorageController;->mMediaScanning:Z

    .line 199
    return-void
.end method

.method public setMenuEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    const-string v1, "key_storage"

    invoke-virtual {v0, v1, p1}, Lcom/lge/camera/setting/SettingMenu;->setEnabled(Ljava/lang/String;Z)V

    .line 249
    return-void
.end method

.method public showStorageHint(I)V
    .locals 8
    .parameter "storageState"

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x1

    .line 89
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**showStorageHint"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v0

    .line 91
    .local v0, dialogController:Lcom/lge/camera/controller/DialogController;
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    .line 92
    .local v1, previewPanelController:Lcom/lge/camera/controller/PreviewPanelController;
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v2

    .line 94
    .local v2, toastController:Lcom/lge/camera/controller/ToastController;
    iput p1, p0, Lcom/lge/camera/controller/StorageController;->mStorageState:I

    .line 96
    packed-switch p1, :pswitch_data_0

    .line 178
    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 183
    :cond_0
    const v3, 0x7f0b0036

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/StorageController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable()V

    .line 186
    invoke-virtual {v2}, Lcom/lge/camera/controller/ToastController;->hide()V

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 98
    :pswitch_0
    const-string v3, "CameraApp"

    const-string v4, "***** [kschoi] storage not found"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v2}, Lcom/lge/camera/controller/ToastController;->hide()V

    .line 102
    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 104
    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    const v3, 0x7f090094

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/StorageController;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 113
    :goto_1
    invoke-virtual {v2}, Lcom/lge/camera/controller/ToastController;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "shared"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 116
    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v3

    if-eq v3, v7, :cond_1

    .line 117
    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 118
    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 120
    :cond_3
    invoke-virtual {v0, v7}, Lcom/lge/camera/controller/DialogController;->showDialogPopup(I)V

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {v1, v6}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    goto :goto_1

    .line 125
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/StorageController;->isStorageReadOnly(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 126
    const v3, 0x7f0b01ea

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/StorageController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_6
    const v3, 0x7f0b0037

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/StorageController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :pswitch_1
    const-string v3, "CameraApp"

    const-string v4, "***** [kschoi] storage full"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v2}, Lcom/lge/camera/controller/ToastController;->hide()V

    .line 138
    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v3

    if-ne v3, v6, :cond_7

    .line 141
    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 144
    :cond_7
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Lcom/lge/camera/controller/DialogController;->showDialogPopup(I)V

    .line 145
    invoke-virtual {v1, v6}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    goto/16 :goto_0

    .line 149
    :pswitch_2
    const-string v3, "CameraApp"

    const-string v4, "***** [kschoi] storage scanning"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2}, Lcom/lge/camera/controller/ToastController;->hide()V

    .line 152
    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v3

    if-ne v3, v6, :cond_8

    .line 155
    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 158
    :cond_8
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/ToastController;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v3

    const v4, 0x7f0b0039

    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/StorageController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :pswitch_3
    const-string v3, "CameraApp"

    const-string v4, "***** [kschoi] storage available"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2}, Lcom/lge/camera/controller/ToastController;->hide()V

    .line 167
    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v3

    if-ne v3, v6, :cond_9

    .line 170
    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->getCurrentDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 173
    :cond_9
    invoke-virtual {p0}, Lcom/lge/camera/controller/StorageController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/ToastController;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    const v3, 0x7f0b005d

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/StorageController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/ToastController;->showShortToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
