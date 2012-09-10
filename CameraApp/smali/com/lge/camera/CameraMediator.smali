.class public Lcom/lge/camera/CameraMediator;
.super Lcom/lge/camera/Mediator;
.source "CameraMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/CameraMediator$ImageSaver;,
        Lcom/lge/camera/CameraMediator$SaveRequest;
    }
.end annotation


# instance fields
.field count:I

.field private mCaptureData:[B

.field private mContinuousShotAlived:Z

.field private mCropValue:Ljava/lang/String;

.field protected mFacePreviewController:Lcom/lge/camera/controller/camera/FacePreviewController;

.field private final mFaceValues:[[I

.field private mImageListRotation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mImageListUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mImageSaver:Lcom/lge/camera/CameraMediator$ImageSaver;

.field private mIntentFrom:Ljava/lang/String;

.field private mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field protected mPanoramaController:Lcom/lge/camera/controller/camera/PanoramaController;

.field private mPreviousShotMode:Ljava/lang/String;

.field private mSaveUri:Landroid/net/Uri;

.field private mTimeMachineFileNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mTimerController:Lcom/lge/camera/controller/camera/TimerController;


# direct methods
.method public constructor <init>(Lcom/lge/camera/CameraApp;)V
    .locals 5
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 69
    invoke-direct {p0, p1}, Lcom/lge/camera/Mediator;-><init>(Landroid/app/Activity;)V

    .line 57
    iput-object v1, p0, Lcom/lge/camera/CameraMediator;->mLocationManager:Landroid/location/LocationManager;

    .line 58
    const-string v0, "shotmode_normal"

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mPreviousShotMode:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mTimeMachineFileNameList:Ljava/util/ArrayList;

    .line 493
    iput v4, p0, Lcom/lge/camera/CameraMediator;->count:I

    .line 744
    iput-object v1, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    .line 1210
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mFaceValues:[[I

    .line 70
    invoke-virtual {p0, v4}, Lcom/lge/camera/CameraMediator;->setApplicationMode(I)V

    .line 71
    return-void

    .line 1210
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/lge/camera/CameraMediator;[B)[B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/camera/CameraMediator;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/CameraMediator;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addImageToImageHandler([B[BLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 14
    .parameter "exifData"
    .parameter "data"
    .parameter "fileName"
    .parameter "fileExt"
    .parameter "dateTaken"
    .parameter "path"
    .parameter "bitmap"

    .prologue
    .line 429
    const/4 v13, 0x0

    .line 431
    .local v13, returnValue:Z
    :try_start_0
    const-string v1, "CameraApp"

    const-string v3, "imageHandler.addImage-start "

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/4 v2, 0x0

    .line 433
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 436
    :cond_0
    if-eqz p1, :cond_3

    .line 437
    iget-object v1, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v11, p0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    move-object/from16 v3, p3

    move-wide/from16 v4, p5

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    move-object v10, p1

    invoke-virtual/range {v1 .. v11}, Lcom/lge/camera/util/ImageHandler;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BI)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    .line 450
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    const-string v1, "content"

    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 452
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    .line 458
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 459
    const/4 v13, 0x1

    .line 465
    .end local v2           #cr:Landroid/content/ContentResolver;
    :cond_2
    :goto_2
    const-string v1, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageHandler.addImage-end "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    return v13

    .line 443
    .restart local v2       #cr:Landroid/content/ContentResolver;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v11, p0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    move-object/from16 v3, p3

    move-wide/from16 v4, p5

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v11}, Lcom/lge/camera/util/ImageHandler;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BI)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 461
    .end local v2           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v12

    .line 462
    .local v12, ex:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v3, "Exception while compressing image."

    invoke-static {v1, v3, v12}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 463
    const/4 v13, 0x0

    goto :goto_2

    .line 454
    .end local v12           #ex:Ljava/lang/Exception;
    .restart local v2       #cr:Landroid/content/ContentResolver;
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private getPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "fileName"

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 410
    const-string v1, "content"

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, returnPath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 413
    .end local v0           #returnPath:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 414
    .restart local v0       #returnPath:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\\.[a-zA-Z]+$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 417
    :cond_2
    if-nez v0, :cond_0

    .line 418
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 422
    .end local v0           #returnPath:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #returnPath:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public CheckFreespace()Z
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 1318
    const-string v7, "CameraApp"

    const-string v8, "CheckFreespace"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string v5, ".jpg"

    .line 1322
    .local v5, defaultFileExtension:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1323
    .local v1, OriImage:Ljava/io/File;
    const/4 v3, 0x0

    .line 1324
    .local v3, checkFilePath:Ljava/lang/String;
    iget-object v7, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v8}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getSavedFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1326
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cameraCaptureFilePath: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    new-instance v1, Ljava/io/File;

    .end local v1           #OriImage:Ljava/io/File;
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1331
    .restart local v1       #OriImage:Ljava/io/File;
    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    if-eqz v7, :cond_1

    .line 1332
    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1333
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FilePathFromRequestApp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    const/4 v0, 0x0

    .line 1336
    .local v0, ExternalStorageDirectory:Ljava/io/File;
    const/4 v4, 0x0

    .line 1337
    .local v4, checkStoragePath:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1339
    .local v2, RequestAppStorageID:I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1340
    if-eqz v0, :cond_0

    .line 1341
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1343
    :cond_0
    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1344
    const/4 v2, 0x1

    .line 1348
    :goto_0
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SystemExternalStorageDirectory: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    iget-object v7, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    if-eqz v7, :cond_1

    if-eqz v1, :cond_1

    .line 1351
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mStorageController.getFreeSpace(RequestAppStorageID= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v9, v2}, Lcom/lge/camera/controller/StorageController;->getFreeSpace(I)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OriImage.length(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    iget-object v7, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v7, v2}, Lcom/lge/camera/controller/StorageController;->getFreeSpace(I)J

    move-result-wide v7

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 1355
    const/4 v6, 0x1

    .line 1359
    .end local v0           #ExternalStorageDirectory:Ljava/io/File;
    .end local v2           #RequestAppStorageID:I
    .end local v4           #checkStoragePath:Ljava/lang/String;
    :cond_1
    return v6

    .line 1346
    .restart local v0       #ExternalStorageDirectory:Ljava/io/File;
    .restart local v2       #RequestAppStorageID:I
    .restart local v4       #checkStoragePath:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public SendResultIntent()V
    .locals 5

    .prologue
    .line 1259
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 1261
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1262
    .local v1, newExtras:Landroid/os/Bundle;
    const-string v2, "output"

    iget-object v3, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1263
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSavedImageUri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1265
    .local v0, Intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1266
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1268
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(ILandroid/content/Intent;)V

    .line 1273
    .end local v0           #Intent:Landroid/content/Intent;
    .end local v1           #newExtras:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 1271
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V

    goto :goto_0
.end method

.method public beDirectlyGoingToCropGallery()Z
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mCropValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mIntentFrom:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createControllers()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/lge/camera/controller/camera/CameraPreviewController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;-><init>(Lcom/lge/camera/CameraMediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    .line 134
    :cond_0
    new-instance v0, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    .line 135
    new-instance v0, Lcom/lge/camera/controller/camera/CameraQuickFunctionController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraQuickFunctionController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    .line 136
    new-instance v0, Lcom/lge/camera/controller/camera/CameraIndicatorController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    .line 137
    new-instance v0, Lcom/lge/camera/controller/camera/CameraFocusController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraFocusController;-><init>(Lcom/lge/camera/CameraMediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    .line 138
    new-instance v0, Lcom/lge/camera/controller/camera/CameraStorageController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraStorageController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    .line 139
    new-instance v0, Lcom/lge/camera/controller/camera/PanoramaController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/PanoramaController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mPanoramaController:Lcom/lge/camera/controller/camera/PanoramaController;

    .line 140
    new-instance v0, Lcom/lge/camera/controller/camera/TimerController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/TimerController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mTimerController:Lcom/lge/camera/controller/camera/TimerController;

    .line 141
    new-instance v0, Lcom/lge/camera/controller/camera/FacePreviewController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/FacePreviewController;-><init>(Lcom/lge/camera/Mediator;)V

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mFacePreviewController:Lcom/lge/camera/controller/camera/FacePreviewController;

    .line 143
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mPanoramaController:Lcom/lge/camera/controller/camera/PanoramaController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mTimerController:Lcom/lge/camera/controller/camera/TimerController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mControllers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lge/camera/CameraMediator;->mFacePreviewController:Lcom/lge/camera/controller/camera/FacePreviewController;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-super {p0}, Lcom/lge/camera/Mediator;->createControllers()V

    .line 154
    return-void
.end method

.method protected createPreviewController()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/lge/camera/controller/camera/CameraPreviewController;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/camera/CameraPreviewController;-><init>(Lcom/lge/camera/CameraMediator;)V

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    .line 128
    return-void
.end method

.method public deleteImage(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 7
    .parameter "filename"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 1118
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/camera/CameraStorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v3

    .line 1120
    .local v3, path:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1121
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1122
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1123
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p2}, Lcom/lge/camera/util/ImageManager;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1125
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_1

    const/4 v0, 0x1

    .line 1126
    .local v0, equal:Z
    :goto_0
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1127
    .local v2, index:I
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1128
    if-eqz v0, :cond_0

    .line 1129
    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1131
    :cond_0
    const-string v5, "CameraApp"

    const-string v6, "deleted uri"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    .line 1136
    iget-object v4, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1140
    .end local v0           #equal:Z
    .end local v1           #file:Ljava/io/File;
    .end local v2           #index:I
    :goto_2
    return v4

    .restart local v1       #file:Ljava/io/File;
    :cond_1
    move v0, v4

    .line 1125
    goto :goto_0

    .line 1133
    .restart local v0       #equal:Z
    .restart local v2       #index:I
    :cond_2
    const-string v5, "CameraApp"

    const-string v6, "failure to delete uri!"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1139
    .end local v0           #equal:Z
    .end local v1           #file:Ljava/io/File;
    .end local v2           #index:I
    :cond_3
    const-string v4, "CameraApp"

    const-string v5, "failure delete image file (return -1)"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public deleteTimeMachineImages()Z
    .locals 10

    .prologue
    .line 1083
    const-string v7, "CameraApp"

    const-string v8, "deleteTimeMachineImages-start"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/controller/camera/CameraStorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    .line 1085
    .local v4, path:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1086
    .local v5, timeMachineFilename:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1087
    .local v2, fullFilePath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1090
    .local v6, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v7, 0x4

    if-ge v3, v7, :cond_2

    .line 1091
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TimeMachineImage"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1092
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1093
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/lge/camera/util/Common;->getUriFromFilePath(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1095
    invoke-static {v2}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1096
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1097
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1098
    if-eqz v6, :cond_0

    .line 1099
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TMS uri is = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/lge/camera/util/ImageManager;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1090
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1104
    :cond_1
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file is not exist : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    if-eqz v6, :cond_0

    .line 1106
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/lge/camera/util/ImageManager;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "CameraApp"

    const-string v8, "deleteTimeMachineImages fail!:"

    invoke-static {v7, v8, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1113
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v7, "CameraApp"

    const-string v8, "deleteTimeMachineImages-end"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const/4 v7, 0x1

    return v7
.end method

.method public doAttach()V
    .locals 3

    .prologue
    .line 989
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAttach(),mSaveUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCropValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mCropValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mIntentFrom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mIntentFrom:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mSavedImageUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mPausing:Z

    if-eqz v0, :cond_0

    .line 1001
    :goto_0
    return-void

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mCropValue:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 997
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->doAttachNoCrop()V

    goto :goto_0

    .line 999
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->doAttachCrop()V

    goto :goto_0
.end method

.method public doAttachCrop()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 918
    const/4 v6, 0x0

    .line 919
    .local v6, tempUri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 920
    .local v5, tempStream:Ljava/io/FileOutputStream;
    const-string v7, "CameraApp"

    const-string v8, "doAttachCrop()"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "crop-temp"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 923
    .local v4, path:Ljava/io/File;
    if-nez v4, :cond_0

    .line 924
    const-string v7, "CameraApp"

    const-string v8, "doAttach\tcrop-temp file path is null"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 957
    invoke-static {v5}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 986
    .end local v4           #path:Ljava/io/File;
    :goto_0
    return-void

    .line 928
    .restart local v4       #path:Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 929
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "crop-temp"

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 931
    if-eqz v5, :cond_1

    .line 933
    :try_start_2
    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    if-eqz v7, :cond_4

    .line 934
    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    invoke-virtual {v5, v7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 941
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 945
    :cond_1
    const/4 v5, 0x0

    .line 946
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 947
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "tempUri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 957
    invoke-static {v5}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 960
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 961
    .local v3, newExtras:Landroid/os/Bundle;
    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mCropValue:Ljava/lang/String;

    const-string v8, "circle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 962
    const-string v7, "circleCrop"

    const-string v8, "true"

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    if-eqz v7, :cond_5

    .line 965
    const-string v7, "CameraApp"

    const-string v8, "mSaveUri"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v7, "output"

    iget-object v8, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 980
    :cond_3
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.android.camera.action.CROP"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 982
    .local v1, cropIntent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 983
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 984
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v1, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 985
    const/4 v3, 0x0

    .line 986
    goto :goto_0

    .line 936
    .end local v1           #cropIntent:Landroid/content/Intent;
    .end local v3           #newExtras:Landroid/os/Bundle;
    :cond_4
    :try_start_4
    const-string v7, "CameraApp"

    const-string v8, "doAttach tempStream is null!!!"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 941
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 957
    invoke-static {v5}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 941
    :catchall_0
    move-exception v7

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 948
    .end local v4           #path:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 949
    .local v2, ex:Ljava/io/FileNotFoundException;
    :try_start_7
    const-string v7, "CameraApp"

    const-string v8, "FileNotFoundException"

    invoke-static {v7, v8, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 950
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 957
    invoke-static {v5}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 952
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 953
    .local v2, ex:Ljava/io/IOException;
    :try_start_8
    const-string v7, "CameraApp"

    const-string v8, "IOException"

    invoke-static {v7, v8, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 954
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 957
    invoke-static {v5}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v2           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v7

    invoke-static {v5}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    .line 968
    .restart local v3       #newExtras:Landroid/os/Bundle;
    .restart local v4       #path:Ljava/io/File;
    :cond_5
    const-string v7, "CameraApp"

    const-string v8, "return-data"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string v7, "return-data"

    invoke-virtual {v3, v7, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 970
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 971
    .local v0, InExtra:Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 972
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "input extra = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    const-string v7, "aspectX"

    const-string v8, "aspectX"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 974
    const-string v7, "aspectY"

    const-string v8, "aspectY"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 975
    const-string v7, "outputX"

    const-string v8, "outputX"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 976
    const-string v7, "outputY"

    const-string v8, "outputY"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1
.end method

.method public doAttachNoCrop()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 880
    const-string v3, "CameraApp"

    const-string v4, "doAttachNoCrop()"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 882
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->doAttachSaveUri()V

    .line 914
    :goto_0
    return-void

    .line 884
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 885
    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    invoke-static {v3, v6}, Lcom/lge/camera/util/Common;->createCaptureBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 886
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "inline-data"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 887
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 888
    const-string v3, "CameraApp"

    const-string v4, "doAttach OK"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0, v7, v2}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(ILandroid/content/Intent;)V

    .line 890
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 893
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    const-string v3, "CameraApp"

    const-string v4, "doAttach mCaptureData is Null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const/4 v0, 0x0

    .line 895
    .local v0, Orgbmp:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    if-nez v3, :cond_2

    .line 896
    const-string v3, "CameraApp"

    const-string v4, "doAttach mSavedImageUri null!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V

    goto :goto_0

    .line 900
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v3, v4, v6, v5}, Lcom/lge/camera/util/ImageManager;->loadBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 901
    if-nez v0, :cond_3

    .line 902
    const-string v3, "CameraApp"

    const-string v4, "LoadBitmap fail!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V

    goto :goto_0

    .line 906
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v4, "inline-data"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "data"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 907
    .restart local v2       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 908
    const-string v3, "CameraApp"

    const-string v4, "doAttach OK"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    invoke-virtual {p0, v7, v2}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(ILandroid/content/Intent;)V

    .line 910
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method public doAttachSaveUri()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 808
    const/4 v6, 0x0

    .line 809
    .local v6, outputStream:Ljava/io/OutputStream;
    const-string v7, "CameraApp"

    const-string v8, "doAttachSaveUri()"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->preProcessSaveUri()V

    .line 811
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->CheckFreespace()Z

    move-result v7

    if-nez v7, :cond_0

    .line 812
    const-string v7, "CameraApp"

    const-string v8, "===>Not Enough sotrage space!!!"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v7

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/lge/camera/controller/DialogController;->showDialogPopup(I)V

    .line 814
    invoke-virtual {p0, v9}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V

    .line 872
    :goto_0
    return-void

    .line 819
    :cond_0
    :try_start_0
    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 820
    .local v4, imguri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v7, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 821
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "===>URL Is Not correct we will return URI :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->SendResultIntent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    invoke-static {v6}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 825
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 826
    if-nez v6, :cond_2

    .line 827
    const-string v7, "CameraApp"

    const-string v8, "===>outputStream null! cancel"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v7, "CameraApp"

    const-string v8, "doAttach CANCELED"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 864
    invoke-static {v6}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 832
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    if-eqz v7, :cond_3

    .line 833
    iget-object v7, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 864
    :goto_1
    invoke-static {v6}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    .line 866
    const-string v7, "CameraApp"

    const-string v8, "doAttach OK"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetUseMMSPictureFormat()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 868
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "picFormat"

    const-string v9, "jpeg"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v10, v7}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(ILandroid/content/Intent;)V

    goto :goto_0

    .line 835
    :cond_3
    :try_start_3
    const-string v7, "CameraApp"

    const-string v8, "doAttach mCaptureData is null! so we recopy jpeg data to mSaveUri"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const/4 v5, 0x0

    .line 838
    .local v5, mFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 840
    .local v2, fis:Ljava/io/FileInputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    invoke-virtual {v8}, Lcom/lge/camera/controller/StorageController;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getSavedFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 841
    .local v3, fullfilename:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    .end local v5           #mFile:Ljava/io/File;
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 842
    .restart local v5       #mFile:Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2           #fis:Ljava/io/FileInputStream;
    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 844
    .restart local v2       #fis:Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v0, v7, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 846
    .local v0, data:[B
    :try_start_4
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-eq v7, v10, :cond_4

    .line 847
    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    .line 848
    const-string v7, "CameraApp"

    const-string v8, "fis.read&write"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 856
    :cond_4
    :try_start_5
    invoke-static {v2}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 859
    .end local v0           #data:[B
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #fullfilename:Ljava/lang/String;
    .end local v4           #imguri:Landroid/net/Uri;
    .end local v5           #mFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 860
    .local v1, e:Ljava/lang/Exception;
    :try_start_6
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "outputStream error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 864
    invoke-static {v6}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 850
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #data:[B
    .restart local v2       #fis:Ljava/io/FileInputStream;
    .restart local v3       #fullfilename:Ljava/lang/String;
    .restart local v4       #imguri:Landroid/net/Uri;
    .restart local v5       #mFile:Ljava/io/File;
    :catch_1
    move-exception v1

    .line 851
    .local v1, e:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 852
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V

    .line 853
    const-string v7, "CameraApp"

    const-string v8, "doAttach CANCELED"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 856
    :try_start_8
    invoke-static {v2}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 864
    invoke-static {v6}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 856
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :try_start_9
    invoke-static {v2}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 864
    .end local v0           #data:[B
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v3           #fullfilename:Ljava/lang/String;
    .end local v4           #imguri:Landroid/net/Uri;
    .end local v5           #mFile:Ljava/io/File;
    :catchall_1
    move-exception v7

    invoke-static {v6}, Lcom/lge/camera/util/Common;->closeSilently(Ljava/io/Closeable;)V

    throw v7

    .line 870
    .restart local v4       #imguri:Landroid/net/Uri;
    :cond_5
    invoke-virtual {p0, v10}, Lcom/lge/camera/CameraMediator;->setResultAndFinish(I)V

    goto/16 :goto_0
.end method

.method public getAvailablePictureCount()J
    .locals 2

    .prologue
    .line 1149
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAvailablePictureCount()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAvailablePictureCount(I)J
    .locals 2
    .parameter "storageType"

    .prologue
    .line 1153
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/camera/CameraStorageController;->getAvailablePictureCount(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCaptureData()[B
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    return-object v0
.end method

.method public getContinuousShotAlived()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/lge/camera/CameraMediator;->mContinuousShotAlived:Z

    return v0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1046
    iget-object v3, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    const-string v4, "key_camera_tag_location"

    invoke-virtual {v3, v4}, Lcom/lge/camera/controller/SettingController;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 1058
    :goto_0
    return-object v1

    .line 1050
    :cond_0
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1051
    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/lge/camera/listeners/LocationListener;->current()Landroid/location/Location;

    move-result-object v1

    .line 1052
    .local v1, location:Landroid/location/Location;
    if-eqz v1, :cond_1

    .line 1053
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentLocation return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1050
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1057
    .end local v1           #location:Landroid/location/Location;
    :cond_2
    const-string v3, "CameraApp"

    const-string v4, "getCurrentLocation return = null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 1058
    goto :goto_0
.end method

.method public getFacePreviewController()Lcom/lge/camera/controller/camera/FacePreviewController;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFacePreviewController:Lcom/lge/camera/controller/camera/FacePreviewController;

    return-object v0
.end method

.method public getFaceValues(I)[I
    .locals 3
    .parameter "mValue"

    .prologue
    .line 1234
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FaceBeauty : mFaceValues.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mFaceValues:[[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFaceValues:[[I

    array-length v0, v0

    if-le v0, p1, :cond_0

    if-gez p1, :cond_1

    .line 1237
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "Error : mValue must be a smaller than mFaceValues.length"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    const/4 p1, 0x4

    .line 1240
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mFaceValues:[[I

    aget-object v0, v0, p1

    return-object v0
.end method

.method public bridge synthetic getFocusController()Lcom/lge/camera/controller/FocusController;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    return-object v0
.end method

.method public getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mFocusController:Lcom/lge/camera/controller/FocusController;

    check-cast v0, Lcom/lge/camera/controller/camera/CameraFocusController;

    return-object v0
.end method

.method public getImageListRotation()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImageListUri()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mImageListUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getIndicatorController()Lcom/lge/camera/controller/IndicatorController;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    return-object v0
.end method

.method public getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    check-cast v0, Lcom/lge/camera/controller/camera/CameraIndicatorController;

    return-object v0
.end method

.method public getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1167
    const-wide/16 v2, -0x1

    .line 1168
    .local v2, id:J
    if-eqz p1, :cond_0

    .line 1169
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/Util;->getIdFromUri(Landroid/app/Activity;Landroid/net/Uri;)J

    move-result-wide v2

    .line 1170
    const-string v0, "CameraApp"

    const-string v1, "GET PICTURE THUMB start id is %d, and uri is %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 1173
    const-string v0, "CameraApp"

    const-string v1, "GET PICTURE THUMB end: uri not valid"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    :goto_0
    return-object v5

    .line 1177
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v7

    .line 1178
    .local v7, orientation:I
    invoke-static {}, Lcom/lge/camera/util/BitmapManager;->instance()Lcom/lge/camera/util/BitmapManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/util/BitmapManager;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1179
    .local v8, thumbnail:Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lge/camera/Mediator;->imageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {v0, v8, v7, v6}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1181
    const-string v0, "CameraApp"

    const-string v1, "GET PICTURE THUMB end"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v8

    .line 1183
    goto :goto_0
.end method

.method public getLocationListener()[Lcom/lge/camera/listeners/LocationListener;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    return-object v0
.end method

.method public getLocationManager()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method public getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPanoramaController:Lcom/lge/camera/controller/camera/PanoramaController;

    return-object v0
.end method

.method public bridge synthetic getPreviewController()Lcom/lge/camera/controller/PreviewController;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewController:Lcom/lge/camera/controller/PreviewController;

    check-cast v0, Lcom/lge/camera/controller/camera/CameraPreviewController;

    return-object v0
.end method

.method public bridge synthetic getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewPanelController()Lcom/lge/camera/controller/camera/CameraPreviewPanelController;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mPreviewPanelController:Lcom/lge/camera/controller/PreviewPanelController;

    check-cast v0, Lcom/lge/camera/controller/camera/CameraPreviewPanelController;

    return-object v0
.end method

.method public getPreviousShotModeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mPreviousShotMode:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueCount()I
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/CameraMediator$ImageSaver;

    if-eqz v0, :cond_0

    .line 496
    iget v0, p0, Lcom/lge/camera/CameraMediator;->count:I

    .line 498
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getQuickFunctionController()Lcom/lge/camera/controller/camera/CameraQuickFunctionController;

    move-result-object v0

    return-object v0
.end method

.method public getQuickFunctionController()Lcom/lge/camera/controller/camera/CameraQuickFunctionController;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    check-cast v0, Lcom/lge/camera/controller/camera/CameraQuickFunctionController;

    return-object v0
.end method

.method public getSaveURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    .line 758
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;
    .locals 1

    .prologue
    .line 1145
    invoke-super {p0}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/CameraSettingMenu;

    return-object v0
.end method

.method public bridge synthetic getSettingMenu()Lcom/lge/camera/setting/SettingMenu;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStorageController()Lcom/lge/camera/controller/StorageController;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v0

    return-object v0
.end method

.method public getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mStorageController:Lcom/lge/camera/controller/StorageController;

    check-cast v0, Lcom/lge/camera/controller/camera/CameraStorageController;

    return-object v0
.end method

.method public getTimeMachineFileNameList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mTimeMachineFileNameList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 100
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTimeMachineFileNameList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mTimeMachineFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mTimeMachineFileNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTimerController()Lcom/lge/camera/controller/camera/TimerController;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mTimerController:Lcom/lge/camera/controller/camera/TimerController;

    return-object v0
.end method

.method public hasSaveURI()Z
    .locals 1

    .prologue
    .line 751
    const/4 v0, 0x0

    return v0
.end method

.method public hideOsd()V
    .locals 1

    .prologue
    .line 1075
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->hideOsd(Z)V

    .line 1076
    return-void
.end method

.method public hideOsd(Z)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->hide()V

    .line 1079
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->hideFocus()Z

    .line 1080
    return-void
.end method

.method public initControllers()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Lcom/lge/camera/Mediator;->initControllers()V

    .line 159
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mLocationManager:Landroid/location/LocationManager;

    .line 161
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    const-string v1, "key_camera_tag_location"

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/SettingController;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/Mediator;->mRecordLocation:Z

    .line 164
    iget-boolean v0, p0, Lcom/lge/camera/Mediator;->mRecordLocation:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->startReceivingLocationUpdates()V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/Mediator;->mRecordLocation:Z

    goto :goto_0
.end method

.method public isAttachIntent()Z
    .locals 2

    .prologue
    .line 1161
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1162
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isAttachMode()Z
    .locals 1

    .prologue
    .line 1157
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isAttachIntent()Z

    move-result v0

    return v0
.end method

.method public isMMSIntent()Z
    .locals 6

    .prologue
    .line 1188
    const/4 v3, 0x0

    .line 1189
    .local v3, isMMScalling:Z
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1190
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 1192
    .local v0, callingPackage:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1193
    const-string v4, "MMSAttach"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    .line 1195
    :cond_0
    const-string v4, "intentFrom"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1196
    .local v2, intentFrom:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1197
    const-string v4, "MMSAttach"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 1203
    .end local v2           #intentFrom:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    const-string v4, "com.android.mms"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1204
    const/4 v3, 0x1

    .line 1207
    :cond_2
    return v3
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 307
    const-string v0, "CameraApp"

    const-string v1, "onCreate()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mModuleFactory:Lcom/lge/camera/module/ModuleFactory;

    const-string v1, "DefaultNormalShot"

    invoke-virtual {v0, v1}, Lcom/lge/camera/module/ModuleFactory;->getModule(Ljava/lang/String;)Lcom/lge/camera/module/Module;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/Mediator;->mModule:Lcom/lge/camera/module/Module;

    .line 310
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/camera/listeners/LocationListener;

    const/4 v1, 0x0

    new-instance v2, Lcom/lge/camera/listeners/LocationListener;

    const-string v3, "gps"

    invoke-direct {v2, p0, v3}, Lcom/lge/camera/listeners/LocationListener;-><init>(Lcom/lge/camera/Mediator;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/lge/camera/listeners/LocationListener;

    const-string v3, "network"

    invoke-direct {v2, p0, v3}, Lcom/lge/camera/listeners/LocationListener;-><init>(Lcom/lge/camera/Mediator;Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/lge/camera/CameraMediator;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    .line 315
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->createControllers()V

    .line 317
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onCreate()V

    .line 318
    const-string v0, "CameraApp"

    const-string v1, "onCreate()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    const-string v0, "CameraApp"

    const-string v1, "onDestroy()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    .line 286
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 289
    :cond_0
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    .line 290
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mTimeMachineFileNameList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mTimeMachineFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 296
    :cond_2
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mImageListRotation:Ljava/util/ArrayList;

    .line 298
    iput-object v2, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    .line 300
    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    .line 301
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onDestroy()V

    .line 302
    const-string v0, "CameraApp"

    const-string v1, "onDestroy()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 229
    const-string v2, "CameraApp"

    const-string v3, "onPause()-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/CameraApp;

    invoke-virtual {v2}, Lcom/lge/camera/CameraApp;->setPostviewRequestInitCode()V

    .line 232
    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/CameraMediator$ImageSaver;

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/CameraMediator$ImageSaver;

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator$ImageSaver;->finish()V

    .line 234
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/CameraMediator$ImageSaver;

    .line 237
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isTimeMachinShotSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 241
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getTimeMachineFileNameList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 242
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->deleteTimeMachineImages()Z

    .line 246
    :cond_1
    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_continuous"

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 247
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/module/Module;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 248
    const-string v2, "CameraApp"

    const-string v3, "Continuous shot is running, stop it."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/module/ContinuousShot;

    invoke-virtual {v2}, Lcom/lge/camera/module/ContinuousShot;->stopContinuousShotUserAction()V

    .line 251
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/SoundController;->StopSoundContinuous()V

    .line 252
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/module/ContinuousShot;

    invoke-virtual {v2}, Lcom/lge/camera/module/ContinuousShot;->waitForSaveDone()V

    .line 254
    const-string v2, "key_camera_auto_review"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "key_camera_auto_review"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "on_delay_2sec"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "key_camera_auto_review"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "on_delay_5sec"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 257
    .local v0, autoReview:Z
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 258
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraStorageController;->isStorageAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 259
    const-string v2, "com.lge.camera.command.DisplayCameraPostview"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 274
    .end local v0           #autoReview:Z
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->stopReceivingLocationUpdates()V

    .line 275
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 276
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->onPause()V

    .line 278
    :cond_5
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onPause()V

    .line 279
    const-string v2, "CameraApp"

    const-string v3, "onPause()-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void

    .line 261
    .restart local v0       #autoReview:Z
    :cond_6
    :try_start_1
    const-string v2, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 266
    .end local v0           #autoReview:Z
    :catch_0
    move-exception v1

    .line 267
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v2, "CameraApp"

    const-string v3, "ClassCastException : "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 264
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v0       #autoReview:Z
    :cond_7
    :try_start_2
    const-string v2, "com.lge.camera.command.DisplayPreview"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->doCommand(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 268
    .end local v0           #autoReview:Z
    :catch_1
    move-exception v1

    .line 269
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v2, "CameraApp"

    const-string v3, "NullPointerException : "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 174
    const-string v2, "CameraApp"

    const-string v3, "onResume()-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v2, Lcom/lge/camera/CameraMediator$ImageSaver;

    invoke-direct {v2, p0}, Lcom/lge/camera/CameraMediator$ImageSaver;-><init>(Lcom/lge/camera/CameraMediator;)V

    iput-object v2, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/CameraMediator$ImageSaver;

    .line 177
    const-string v2, "key_time_machine"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    const-string v2, "shotmode_timemachine"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    .line 187
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isTimeMachinShotSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->deleteTimeMachineImages()Z

    .line 190
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/Mediator;->onResume()V

    .line 192
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/CameraApp;

    invoke-virtual {v2}, Lcom/lge/camera/CameraApp;->getPostviewRequestCode()I

    move-result v0

    .line 193
    .local v0, requestCode:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 194
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->doAttach()V

    .line 195
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/CameraApp;

    invoke-virtual {v2}, Lcom/lge/camera/CameraApp;->setPostviewRequestInitCode()V

    .line 226
    :goto_1
    return-void

    .line 180
    .end local v0           #requestCode:I
    :cond_1
    const-string v2, "key_camera_shot_mode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, shotMode:Ljava/lang/String;
    const-string v2, "not found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    const-string v2, "shotmode_normal"

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_2
    invoke-virtual {p0, v1}, Lcom/lge/camera/CameraMediator;->setPreviousShotModeString(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    .end local v1           #shotMode:Ljava/lang/String;
    .restart local v0       #requestCode:I
    :cond_3
    new-instance v2, Lcom/lge/camera/CameraMediator$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/CameraMediator$1;-><init>(Lcom/lge/camera/CameraMediator;)V

    invoke-virtual {p0, v2}, Lcom/lge/camera/CameraMediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 225
    const-string v2, "CameraApp"

    const-string v3, "onResume()-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public preProcessSaveUri()V
    .locals 7

    .prologue
    .line 789
    const-string v4, "content"

    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 790
    iget-object v4, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 791
    .local v1, requestedPath:Ljava/lang/String;
    const/4 v4, 0x0

    const/16 v5, 0x2f

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 792
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requested directory:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 794
    .local v0, requestedDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 795
    const-string v4, "CameraApp"

    const-string v5, "Requested directory not exist, make it."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 805
    .end local v0           #requestedDir:Ljava/io/File;
    .end local v1           #requestedPath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 800
    .local v3, tempFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 801
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    .line 802
    .local v2, ret:Z
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temp file("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") deleted : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveImage([BLandroid/graphics/Bitmap;)Z
    .locals 2
    .parameter "finalJpegData"
    .parameter "bitmap"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/CameraMediator$ImageSaver;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/CameraMediator$ImageSaver;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/CameraMediator$ImageSaver;->addImage([BLandroid/graphics/Bitmap;)Z

    move-result v0

    .line 489
    :goto_0
    return v0

    .line 488
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "ImageSave is null!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public savePicture([BLandroid/graphics/Bitmap;ZI)Z
    .locals 18
    .parameter "data"
    .parameter "bitmap"
    .parameter "useTimeMachine"
    .parameter "timeMachineTempFileCount"

    .prologue
    .line 323
    const/4 v13, 0x0

    .line 324
    .local v13, ret:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 325
    .local v7, dateTaken:J
    const-string v2, "CameraApp"

    const-string v4, "savePicture()-start "

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v9, 0x0

    .line 328
    .local v9, path:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getDeviceDegree()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    .line 330
    const/4 v3, 0x0

    .line 331
    .local v3, exifData:[B
    const-string v2, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/lge/camera/CameraMediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/CameraMediator;->setNewExifInformation([BI)[B

    move-result-object v3

    .line 334
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getCameraMode()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionFrontCameraBeautyShot()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 336
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lge/camera/Mediator;->mImageRotationDegree:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/CameraMediator;->setNewExifInformation([BI)[B

    move-result-object v3

    .line 339
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->isAttachMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 340
    if-eqz v3, :cond_4

    .line 341
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    .line 347
    :cond_2
    :goto_0
    const/4 v5, 0x0

    .line 348
    .local v5, fileName:Ljava/lang/String;
    const-string v6, ".jpg"

    .line 350
    .local v6, fileExt:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->hasSaveURI()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 351
    const-string v2, "content"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 352
    const-string v5, ".tmp"

    .line 353
    const-string v6, ".jpg"

    .line 384
    :cond_3
    :goto_1
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "savePicture >  fileName :"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    if-nez v5, :cond_a

    .line 386
    const-string v2, "CameraApp"

    const-string v4, "error get file name!"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const/4 v2, 0x0

    .line 402
    :goto_2
    return v2

    .line 343
    .end local v5           #fileName:Ljava/lang/String;
    .end local v6           #fileExt:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    goto :goto_0

    .line 355
    .restart local v5       #fileName:Ljava/lang/String;
    .restart local v6       #fileExt:Ljava/lang/String;
    :cond_5
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .local v12, fp:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 357
    if-eqz v5, :cond_3

    .line 358
    const-string v2, "^[^.]+"

    const-string v4, ""

    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 359
    const-string v2, "\\.[a-zA-Z]+$"

    const-string v4, ""

    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 363
    .end local v12           #fp:Ljava/io/File;
    :cond_6
    if-nez p3, :cond_7

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/Mediator;->mFileHelper:Lcom/lge/camera/util/FileNamingHelper;

    if-eqz v2, :cond_3

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/Mediator;->mFileHelper:Lcom/lge/camera/util/FileNamingHelper;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/camera/Mediator;->mApplicationMode:I

    const/4 v10, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v4, v10, v0, v1}, Lcom/lge/camera/util/FileNamingHelper;->getFileName(IZZI)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 368
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TimeMachineImage"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 370
    .local v14, timeMachineFilename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/Mediator;->mFileHelper:Lcom/lge/camera/util/FileNamingHelper;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/CameraMediator;->mTimeMachineFileNameList:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    .line 371
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_9

    const/4 v15, 0x0

    .line 372
    .local v15, useFileNameForTimeMachine:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/Mediator;->mFileHelper:Lcom/lge/camera/util/FileNamingHelper;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/camera/Mediator;->mApplicationMode:I

    const/4 v10, 0x1

    move/from16 v0, p4

    invoke-virtual {v2, v4, v10, v15, v0}, Lcom/lge/camera/util/FileNamingHelper;->getFileName(IZZI)Ljava/lang/String;

    move-result-object v11

    .line 373
    .local v11, fileHelperName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/CameraMediator;->mTimeMachineFileNameList:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TMS fileHelperName = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/4 v2, 0x5

    move/from16 v0, p4

    if-ne v0, v2, :cond_8

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/CameraMediator;->mTimeMachineFileNameList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #timeMachineFilename:Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 380
    .end local v11           #fileHelperName:Ljava/lang/String;
    .end local v15           #useFileNameForTimeMachine:Z
    .restart local v14       #timeMachineFilename:Ljava/lang/String;
    :cond_8
    move-object v5, v14

    goto/16 :goto_1

    .line 371
    :cond_9
    const/4 v15, 0x1

    goto :goto_3

    .line 390
    .end local v14           #timeMachineFilename:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/lge/camera/CameraMediator;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    .line 391
    invoke-direct/range {v2 .. v10}, Lcom/lge/camera/CameraMediator;->addImageToImageHandler([B[BLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v13

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getStorageController()Lcom/lge/camera/controller/camera/CameraStorageController;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/lge/camera/controller/camera/CameraStorageController;->checkStorage(Z)V

    .line 395
    if-eqz v13, :cond_b

    .line 396
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lge/camera/Mediator;->mSavedFileName:Ljava/lang/String;

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-static {v2, v4}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/CameraMediator;->mImageListUri:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/Mediator;->mSavedImageUri:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_b
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "savePicture()-end, return "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v13

    .line 402
    goto/16 :goto_2
.end method

.method public setCaptureData([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lge/camera/CameraMediator;->mCaptureData:[B

    .line 87
    return-void
.end method

.method public setContinuousShotAlived(Z)V
    .locals 0
    .parameter "alived"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/lge/camera/CameraMediator;->mContinuousShotAlived:Z

    .line 75
    return-void
.end method

.method public setFaceBeutyShotParameter(I)V
    .locals 7
    .parameter "mValue"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1244
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v2

    const-string v3, "FaceBeauty"

    invoke-virtual {v2, v3}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1245
    const-string v2, "CameraApp"

    const-string v3, "setFaceBeutyShotParameter"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v2

    const-string v3, "FaceBeauty"

    invoke-virtual {v2, v3}, Lcom/lge/olaworks/library/EngineProcessor;->getEngine(Ljava/lang/String;)Lcom/lge/olaworks/library/BaseEngine;

    move-result-object v0

    check-cast v0, Lcom/lge/olaworks/library/FaceBeauty;

    .line 1248
    .local v0, beautyEngine:Lcom/lge/olaworks/library/FaceBeauty;
    invoke-virtual {p0, p1}, Lcom/lge/camera/CameraMediator;->getFaceValues(I)[I

    move-result-object v1

    .line 1250
    .local v1, value:[I
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FaceBeauty White Value ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Strength Value ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    if-eqz v0, :cond_0

    .line 1253
    aget v2, v1, v5

    aget v3, v1, v6

    invoke-virtual {v0, v2, v3}, Lcom/lge/olaworks/library/FaceBeauty;->setParameter(II)V

    .line 1256
    .end local v0           #beautyEngine:Lcom/lge/olaworks/library/FaceBeauty;
    .end local v1           #value:[I
    :cond_0
    return-void
.end method

.method public setNewExifInformation([BI)[B
    .locals 8
    .parameter "originalByteArray"
    .parameter "orientation"

    .prologue
    const/4 v4, 0x0

    .line 720
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 721
    .local v2, loc:Landroid/location/Location;
    const/4 v1, 0x0

    .line 723
    .local v1, generatedExifJpg:[B
    const/4 v5, 0x1

    :try_start_0
    invoke-static {p1, v5}, Lcom/lge/camera/util/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 724
    .local v3, originalBitmap:Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 725
    const-string v5, "CameraApp"

    const-string v6, "originalBitmap is null"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    .end local v3           #originalBitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v4

    .line 728
    .restart local v3       #originalBitmap:Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {p1, v3, v2}, Lcom/lge/olaworks/library/Exif;->processNewExif([BLandroid/graphics/Bitmap;Landroid/location/Location;)[B

    move-result-object v1

    .line 729
    if-nez v1, :cond_1

    .line 730
    const-string v5, "CameraApp"

    const-string v6, "processNewExif() is failed"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    .line 741
    goto :goto_0

    .line 735
    .end local v3           #originalBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 736
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "CameraApp"

    const-string v6, "EXIF data insert fail."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreviousShotModeString(Ljava/lang/String;)V
    .locals 0
    .parameter "strShotMode"

    .prologue
    .line 1279
    iput-object p1, p0, Lcom/lge/camera/CameraMediator;->mPreviousShotMode:Ljava/lang/String;

    .line 1280
    return-void
.end method

.method public setResultAndFinish(I)V
    .locals 1
    .parameter "resultCode"

    .prologue
    .line 784
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 785
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 786
    return-void
.end method

.method public setResultAndFinish(ILandroid/content/Intent;)V
    .locals 1
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 779
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 780
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 781
    return-void
.end method

.method public setTimeMachineShot(Landroid/hardware/Camera$Parameters;I)V
    .locals 3
    .parameter "parameters"
    .parameter "zsl_buffer"

    .prologue
    .line 1283
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isTimeMachinShotSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1315
    :goto_0
    return-void

    .line 1286
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_5

    .line 1287
    const-string v0, "CameraApp"

    const-string v1, "setTimeMachineShot for X3 only"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->isTimeMachineModeOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1289
    sget-boolean v0, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    if-eqz v0, :cond_1

    .line 1290
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bEnterSetting =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1292
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bEnterSetting =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    const-string v0, "CameraApp"

    const-string v1, "set TimeMachineShot"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    const-string v0, "zsl"

    const-string v1, "TMS"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1297
    :cond_2
    sget-boolean v0, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    if-eqz v0, :cond_3

    .line 1298
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bEnterSetting =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1300
    :cond_3
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bEnterSetting =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const-string v0, "key_camera_shot_mode"

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "shotmode_hdr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1302
    const-string v0, "CameraApp"

    const-string v1, "set Normal or Conti or Panorama shot"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    const-string v0, "zsl"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1305
    :cond_4
    const-string v0, "CameraApp"

    const-string v1, "set HDR shot"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v0, "zsl"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1313
    :cond_5
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTimeMachineShot zsl-burst-count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const-string v0, "zsl-burst-count"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public setTimerAndSceneSmartShutterEnable(Landroid/hardware/Camera$Parameters;ZZZ)V
    .locals 10
    .parameter "parameters"
    .parameter "timer"
    .parameter "scene"
    .parameter "enable"

    .prologue
    .line 1363
    const-string v6, "key_camera_timer"

    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1364
    .local v1, currentTimerValue:Ljava/lang/String;
    const-string v6, "key_scene_mode"

    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1366
    .local v0, currentSceneMode:Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v6, "0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1367
    const-string v6, "key_camera_timer"

    const-string v7, "0"

    invoke-virtual {p0, v6, v7}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1368
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1369
    new-instance v6, Lcom/lge/camera/CameraMediator$2;

    invoke-direct {v6, p0}, Lcom/lge/camera/CameraMediator$2;-><init>(Lcom/lge/camera/CameraMediator;)V

    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1378
    :cond_0
    if-eqz p3, :cond_2

    .line 1379
    const-string v6, "Smart shutter"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1380
    const-string v6, "key_scene_mode"

    const-string v7, "auto"

    invoke-virtual {p0, v6, v7}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1381
    const-string v6, "CameraApp"

    const-string v7, "####### scene mode set to off, because of smart shutter"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const-string v6, "auto"

    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->isInitialized()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1384
    new-instance v6, Lcom/lge/camera/CameraMediator$3;

    invoke-direct {v6, p0}, Lcom/lge/camera/CameraMediator$3;-><init>(Lcom/lge/camera/CameraMediator;)V

    invoke-virtual {p0, v6}, Lcom/lge/camera/CameraMediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1392
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v6

    const-string v7, "key_scene_mode"

    invoke-virtual {v6, v7}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v3

    .line 1393
    .local v3, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v3, :cond_2

    .line 1394
    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 1395
    .local v5, sceneEntryValues:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 1396
    .local v4, sceneEntryValueLength:I
    if-eqz v5, :cond_2

    .line 1397
    array-length v4, v5

    .line 1398
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 1399
    aget-object v6, v5, v2

    const-string v7, "Smart shutter"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1400
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getSettingMenu()Lcom/lge/camera/setting/CameraSettingMenu;

    move-result-object v6

    const-string v7, "key_scene_mode"

    const-string v8, "Smart shutter"

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/lge/camera/setting/CameraSettingMenu;->setEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1407
    .end local v2           #i:I
    .end local v3           #pref:Lcom/lge/camera/setting/ListPreference;
    .end local v4           #sceneEntryValueLength:I
    .end local v5           #sceneEntryValues:[Ljava/lang/CharSequence;
    :cond_2
    return-void

    .line 1398
    .restart local v2       #i:I
    .restart local v3       #pref:Lcom/lge/camera/setting/ListPreference;
    .restart local v4       #sceneEntryValueLength:I
    .restart local v5       #sceneEntryValues:[Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setupCaptureParams()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 766
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 767
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 768
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    .line 769
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/CameraMediator;->mCropValue:Ljava/lang/String;

    .line 770
    const-string v1, "intentFrom"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/CameraMediator;->mIntentFrom:Ljava/lang/String;

    .line 771
    const-string v1, "CameraApp"

    const-string v2, "mSaveUri: %s, crop:%s, intentFrom:%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lge/camera/CameraMediator;->mSaveUri:Landroid/net/Uri;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mCropValue:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mIntentFrom:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :goto_0
    return-void

    .line 774
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "no extra values"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showOsd()V
    .locals 1

    .prologue
    .line 1062
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->showOsd(Z)V

    .line 1063
    return-void
.end method

.method public showOsd(Z)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->show()V

    .line 1067
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mIndicatorController:Lcom/lge/camera/controller/IndicatorController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->show()V

    .line 1069
    const-string v0, "key_focus"

    invoke-virtual {p0, v0}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "face_tracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus()Z

    .line 1072
    :cond_0
    return-void
.end method

.method public startReceivingLocationUpdates()V
    .locals 8

    .prologue
    .line 1004
    const-string v0, "CameraApp"

    const-string v1, "startReceivingLocationUpdates()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lcom/lge/camera/Mediator;->mSettingController:Lcom/lge/camera/controller/SettingController;

    const-string v1, "key_camera_tag_location"

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/SettingController;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 1010
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 1012
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1020
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/camera/CameraMediator;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1026
    :goto_2
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateGpsIndicator()V

    goto :goto_0

    .line 1013
    :catch_0
    move-exception v6

    .line 1014
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "CameraApp"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1015
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    .line 1016
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1021
    .end local v6           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v6

    .line 1022
    .local v6, ex:Ljava/lang/SecurityException;
    const-string v0, "CameraApp"

    const-string v1, "fail to request location update, ignore"

    invoke-static {v0, v1, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1023
    .end local v6           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v6

    .line 1024
    .local v6, ex:Ljava/lang/IllegalArgumentException;
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "provider does not exist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public stopReceivingLocationUpdates()V
    .locals 4

    .prologue
    .line 1031
    const-string v2, "CameraApp"

    const-string v3, "stopReceivingLocationUpdates"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v2, :cond_1

    .line 1033
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1035
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/CameraMediator;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/lge/camera/CameraMediator;->mLocationListeners:[Lcom/lge/camera/listeners/LocationListener;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1036
    :catch_0
    move-exception v0

    .line 1037
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "fail to remove location listners, ignore"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1040
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateGpsIndicator()V

    .line 1042
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public waitSaveImageTreadDone()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/CameraMediator$ImageSaver;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/lge/camera/CameraMediator;->mImageSaver:Lcom/lge/camera/CameraMediator$ImageSaver;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator$ImageSaver;->waitDone()V

    .line 482
    :cond_0
    return-void
.end method
