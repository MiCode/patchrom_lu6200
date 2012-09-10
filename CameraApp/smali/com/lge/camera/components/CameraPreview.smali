.class public Lcom/lge/camera/components/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;
    }
.end annotation


# static fields
.field public static final DONT_CARE:F = 0.0f

.field public static final DRAW_FACE_TRACKING:I = 0x1

.field public static final DRAW_NOTHING:I = 0x0

.field public static final DRAW_PANORAMA_AUTO:I = 0x3

.field public static final DRAW_PANORAMA_GUIDE:I = 0x2

.field protected static final MAX_PREVIEW_BUFFER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field isInitialized:Z

.field private mAspectRatio:F

.field private mDrawMode:I

.field protected mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

.field private mFaceCount:I

.field private mFaceRect:[Landroid/graphics/Rect;

.field protected mFlipH:Z

.field private mHorizontalTileSize:I

.field private mIsCompleteFrame:Z

.field protected mOrientation:I

.field protected mOrientationFlip:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPanoramaGuideBottom:F

.field private mPanoramaGuideColor:I

.field private mPanoramaGuideHeight:I

.field private mPanoramaGuideLeft:F

.field private mPanoramaGuideMoveRate:F

.field private mPanoramaGuideRight:F

.field private mPanoramaGuideTop:F

.field private mPanoramaGuideWidth:I

.field private mPanoramaInitialized:Z

.field mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

.field private mPreviewCallbackBuffer:[B

.field protected mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

.field private mRectColor:[I

.field private mSrcPreviewHeight:I

.field private mSrcPreviewWidth:I

.field private mVerticalTileSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 57
    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mHorizontalTileSize:I

    .line 58
    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mVerticalTileSize:I

    .line 59
    iput-boolean v0, p0, Lcom/lge/camera/components/CameraPreview;->mIsCompleteFrame:Z

    .line 61
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 64
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

    .line 66
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 68
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    .line 70
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->mFlipH:Z

    .line 72
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 73
    new-instance v0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;-><init>(Lcom/lge/camera/components/CameraPreview;)V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    .line 75
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->isInitialized:Z

    .line 79
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 422
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mDrawMode:I

    .line 434
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    .line 435
    new-array v0, v3, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    .line 436
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mRectColor:[I

    .line 478
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    .line 489
    const/high16 v0, -0x1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    .line 491
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideMoveRate:F

    .line 84
    return-void

    .line 436
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mHorizontalTileSize:I

    .line 58
    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mVerticalTileSize:I

    .line 59
    iput-boolean v0, p0, Lcom/lge/camera/components/CameraPreview;->mIsCompleteFrame:Z

    .line 61
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 64
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

    .line 66
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 68
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    .line 70
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->mFlipH:Z

    .line 72
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 73
    new-instance v0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;-><init>(Lcom/lge/camera/components/CameraPreview;)V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    .line 75
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->isInitialized:Z

    .line 79
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 422
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mDrawMode:I

    .line 434
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    .line 435
    new-array v0, v3, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    .line 436
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mRectColor:[I

    .line 478
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    .line 489
    const/high16 v0, -0x1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    .line 491
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideMoveRate:F

    .line 88
    return-void

    .line 436
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mHorizontalTileSize:I

    .line 58
    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mVerticalTileSize:I

    .line 59
    iput-boolean v0, p0, Lcom/lge/camera/components/CameraPreview;->mIsCompleteFrame:Z

    .line 61
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 64
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

    .line 66
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 68
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    .line 70
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->mFlipH:Z

    .line 72
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 73
    new-instance v0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;-><init>(Lcom/lge/camera/components/CameraPreview;)V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    .line 75
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->isInitialized:Z

    .line 79
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 422
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mDrawMode:I

    .line 434
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    .line 435
    new-array v0, v3, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    .line 436
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mRectColor:[I

    .line 478
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    .line 489
    const/high16 v0, -0x1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    .line 491
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideMoveRate:F

    .line 92
    return-void

    .line 436
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$002(Lcom/lge/camera/components/CameraPreview;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/lge/camera/components/CameraPreview;->mIsCompleteFrame:Z

    return p1
.end method

.method private roundUpToTile(III)I
    .locals 1
    .parameter "dimension"
    .parameter "tileSize"
    .parameter "maxDimension"

    .prologue
    .line 370
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p2

    mul-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public close(Landroid/hardware/Camera;)V
    .locals 5
    .parameter "camera"

    .prologue
    const/4 v4, 0x0

    .line 95
    const-string v2, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close()-start, camera is null? :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iput-object v4, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 97
    iput-object v4, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

    .line 100
    if-eqz p1, :cond_0

    .line 101
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 102
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 103
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 104
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_1
    iput-object v4, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 112
    const-string v1, "CameraApp"

    const-string v2, "close()-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void

    .line 95
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method

.method public getDrawMode()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mDrawMode:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    return v0
.end method

.method public getSrcImageHeight()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    return v0
.end method

.method public getSrcImageWidth()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    return v0
.end method

.method public goOnPanoramaDrawing()V
    .locals 1

    .prologue
    .line 540
    const/high16 v0, -0x1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    .line 541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    .line 542
    return-void
.end method

.method public initAutoPanorama()V
    .locals 0

    .prologue
    .line 521
    return-void
.end method

.method public initEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V
    .locals 13
    .parameter "processor"
    .parameter "camera"

    .prologue
    .line 230
    if-nez p2, :cond_0

    .line 283
    :goto_0
    return-void

    .line 234
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "initEngineProcessor-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 239
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 241
    iput-object p1, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 246
    const/4 v6, 0x0

    .line 247
    .local v6, bufSize:I
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    .line 248
    .local v9, param:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 249
    .local v12, previewSize:Landroid/hardware/Camera$Size;
    if-nez v12, :cond_1

    .line 250
    const-string v0, "CameraApp"

    const-string v1, "initEngineProcessor-end. it doesn`t get a previewSize"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_1
    :try_start_0
    new-instance v11, Landroid/graphics/PixelFormat;

    invoke-direct {v11}, Landroid/graphics/PixelFormat;-><init>()V

    .line 256
    .local v11, pixelinfo:Landroid/graphics/PixelFormat;
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v10

    .line 257
    .local v10, pixelformat:I
    invoke-static {v10, v11}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 259
    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    iget v1, v12, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    iget v1, v11, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v10           #pixelformat:I
    .end local v11           #pixelinfo:Landroid/graphics/PixelFormat;
    :goto_1
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    const/4 v0, 0x1

    if-ge v8, v0, :cond_2

    .line 272
    new-array v0, v6, [B

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 273
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 271
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 260
    .end local v8           #i:I
    :catch_0
    move-exception v7

    .line 261
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "CameraApp"

    const-string v1, "initEngineProcessor Exception : "

    invoke-static {v0, v1, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    iget v1, v12, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    div-int/lit8 v6, v0, 0x8

    goto :goto_1

    .line 276
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #i:I
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 278
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_RawContext;

    iget v1, v12, Landroid/hardware/Camera$Size;->width:I

    iget v2, v12, Landroid/hardware/Camera$Size;->height:I

    const/16 v3, 0x2a3

    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/lge/olaworks/datastruct/Ola_RawContext;-><init>(IIII[B)V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/CameraPreview;->isInitialized:Z

    .line 282
    const-string v0, "CameraApp"

    const-string v1, "initEngineProcessor-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public initPanoramaGuide()V
    .locals 8

    .prologue
    const/high16 v7, 0x4000

    .line 494
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 495
    .local v1, wScale:F
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 497
    .local v0, hScale:F
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a00c2

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    .line 498
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a00c3

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    .line 501
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget v5, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideMoveRate:F

    .line 503
    const/4 v2, 0x1

    .line 504
    .local v2, weightLeft:I
    const/4 v3, 0x1

    .line 506
    .local v3, weightTop:I
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetHDmodel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 507
    const/16 v2, 0xc

    .line 513
    :cond_0
    :goto_0
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    sub-int/2addr v4, v2

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget v5, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    .line 514
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    iget v5, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideRight:F

    .line 515
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    sub-int/2addr v4, v3

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget v5, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    .line 516
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    iget v5, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideBottom:F

    .line 517
    return-void

    .line 508
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetXGAmodel()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 509
    const/4 v3, -0x2

    .line 510
    const/16 v2, 0xa

    goto :goto_0
.end method

.method public initializePanorama(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 532
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    .line 533
    return-void
.end method

.method public isCompleteProcessFrame()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/lge/camera/components/CameraPreview;->mIsCompleteFrame:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 374
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mDrawMode:I

    packed-switch v0, :pswitch_data_0

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 376
    :pswitch_0
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceCount:I

    if-lez v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    if-eq v0, v1, :cond_1

    .line 378
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 381
    :cond_1
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceCount:I

    if-ge v7, v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 383
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mRectColor:[I

    aget v1, v1, v7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 384
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 385
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v0, v0, v7

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 381
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 391
    .end local v7           #i:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    if-eq v0, v1, :cond_2

    .line 392
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v1, v1

    div-float v8, v0, v1

    .line 393
    .local v8, wScale:F
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    int-to-float v1, v1

    div-float v6, v0, v1

    .line 394
    .local v6, hScale:F
    invoke-virtual {p1, v8, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 396
    .end local v6           #hScale:F
    .end local v8           #wScale:F
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 397
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 398
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 399
    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    iget v2, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    iget v3, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideRight:F

    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideBottom:F

    iget-object v5, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 334
    new-instance v1, Ljava/lang/Float;

    iget v7, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    invoke-direct {v1, v7}, Ljava/lang/Float;-><init>(F)V

    .line 335
    .local v1, fAspectRatio:Ljava/lang/Float;
    new-instance v2, Ljava/lang/Float;

    const/4 v7, 0x0

    invoke-direct {v2, v7}, Ljava/lang/Float;-><init>(F)V

    .line 336
    .local v2, fDontCare:Ljava/lang/Float;
    invoke-virtual {v1, v2}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v7

    if-eqz v7, :cond_2

    .line 337
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 338
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 345
    .local v4, heightSpecSize:I
    move v5, v6

    .line 346
    .local v5, width:I
    move v3, v4

    .line 348
    .local v3, height:I
    if-lez v5, :cond_3

    if-lez v3, :cond_3

    .line 349
    int-to-float v7, v5

    int-to-float v8, v3

    div-float v0, v7, v8

    .line 350
    .local v0, defaultRatio:F
    iget v7, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    cmpg-float v7, v0, v7

    if-gez v7, :cond_1

    .line 352
    int-to-float v7, v5

    iget v8, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    div-float/2addr v7, v8

    float-to-int v3, v7

    .line 356
    :cond_0
    :goto_0
    iget v7, p0, Lcom/lge/camera/components/CameraPreview;->mHorizontalTileSize:I

    invoke-direct {p0, v5, v7, v6}, Lcom/lge/camera/components/CameraPreview;->roundUpToTile(III)I

    move-result v5

    .line 357
    iget v7, p0, Lcom/lge/camera/components/CameraPreview;->mVerticalTileSize:I

    invoke-direct {p0, v3, v7, v4}, Lcom/lge/camera/components/CameraPreview;->roundUpToTile(III)I

    move-result v3

    .line 359
    invoke-virtual {p0, v5, v3}, Lcom/lge/camera/components/CameraPreview;->setMeasuredDimension(II)V

    .line 360
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->initPanoramaGuide()V

    .line 367
    .end local v0           #defaultRatio:F
    .end local v3           #height:I
    .end local v4           #heightSpecSize:I
    .end local v5           #width:I
    .end local v6           #widthSpecSize:I
    :goto_1
    return-void

    .line 353
    .restart local v0       #defaultRatio:F
    .restart local v3       #height:I
    .restart local v4       #heightSpecSize:I
    .restart local v5       #width:I
    .restart local v6       #widthSpecSize:I
    :cond_1
    iget v7, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_0

    .line 354
    int-to-float v7, v3

    iget v8, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    mul-float/2addr v7, v8

    float-to-int v5, v7

    goto :goto_0

    .line 364
    .end local v0           #defaultRatio:F
    .end local v3           #height:I
    .end local v4           #heightSpecSize:I
    .end local v5           #width:I
    .end local v6           #widthSpecSize:I
    :cond_2
    const-string v7, "CameraApp"

    const-string v8, "mAspectRatio is 0.0f"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    goto :goto_1
.end method

.method public processPreviewFrame([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

    .line 305
    .local v0, rawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;
    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-eqz v1, :cond_0

    .line 306
    iput-object p1, v0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->rawData:[B

    .line 307
    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    iput v1, v0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->orientation:I

    .line 309
    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v1, v0}, Lcom/lge/olaworks/library/EngineProcessor;->processPreview(Lcom/lge/olaworks/datastruct/Ola_RawContext;)Z

    .line 311
    :cond_0
    return-void
.end method

.method public releasePreviewCallback(Landroid/hardware/Camera;)V
    .locals 1
    .parameter "camera"

    .prologue
    const/4 v0, 0x0

    .line 286
    if-eqz p1, :cond_0

    .line 287
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 288
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 290
    :cond_0
    return-void
.end method

.method public resetAutoPanorama()V
    .locals 0

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->initAutoPanorama()V

    .line 552
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->postInvalidate()V

    .line 553
    return-void
.end method

.method public resetFaceRectangles()V
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    .line 466
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceCount:I

    .line 467
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->postInvalidate()V

    .line 468
    return-void
.end method

.method public resetPanoramaGuide()V
    .locals 0

    .prologue
    .line 545
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->initPanoramaGuide()V

    .line 546
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->postInvalidate()V

    .line 547
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 4
    .parameter "aspectRatio"

    .prologue
    .line 320
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    .line 321
    .local v0, faspectRatio:Ljava/lang/Float;
    new-instance v1, Ljava/lang/Float;

    iget v2, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    .line 322
    .local v1, fmAspectRatio:Ljava/lang/Float;
    invoke-virtual {v0, v1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    iput p1, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    .line 324
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->requestLayout()V

    .line 325
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->invalidate()V

    .line 330
    :goto_0
    return-void

    .line 327
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "setAspectRatio and aspectRatio are same"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAspectRatio(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 314
    int-to-float v1, p1

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 315
    .local v0, aspectRatio:F
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAspectRatio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/CameraPreview;->setAspectRatio(F)V

    .line 317
    return-void
.end method

.method public setDrawMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 424
    iput p1, p0, Lcom/lge/camera/components/CameraPreview;->mDrawMode:I

    .line 425
    return-void
.end method

.method public setEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V
    .locals 2
    .parameter "processor"
    .parameter "camera"

    .prologue
    .line 293
    if-nez p2, :cond_0

    .line 294
    const-string v0, "CameraApp"

    const-string v1, "exit setEngineProcessor by camera == null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/CameraPreview;->mIsCompleteFrame:Z

    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/components/CameraPreview;->initEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V

    goto :goto_0
.end method

.method public setFaceRectangleColor(II)V
    .locals 1
    .parameter "index"
    .parameter "color"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mRectColor:[I

    aput p2, v0, p1

    .line 472
    return-void
.end method

.method public setFaceRectangles([Landroid/graphics/Rect;I)V
    .locals 0
    .parameter "rect"
    .parameter "faceCount"

    .prologue
    .line 459
    iput-object p1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    .line 460
    iput p2, p0, Lcom/lge/camera/components/CameraPreview;->mFaceCount:I

    .line 461
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->postInvalidate()V

    .line 462
    return-void
.end method

.method public setFlipHorizontal(Z)V
    .locals 1
    .parameter "flipH"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0, p1}, Lcom/lge/olaworks/library/EngineProcessor;->setFlipHorizontal(Z)V

    .line 123
    :cond_0
    iput-boolean p1, p0, Lcom/lge/camera/components/CameraPreview;->mFlipH:Z

    .line 124
    return-void
.end method

.method public setOrientation(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 148
    rem-int/lit16 p1, p1, 0x168

    .line 150
    const/16 v0, 0x2d

    if-ge p1, v0, :cond_0

    .line 151
    iput v2, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 152
    iput v2, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    .line 168
    :goto_0
    return-void

    .line 153
    :cond_0
    const/16 v0, 0x87

    if-ge p1, v0, :cond_1

    .line 154
    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 155
    iput v5, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    goto :goto_0

    .line 156
    :cond_1
    const/16 v0, 0xe1

    if-ge p1, v0, :cond_2

    .line 157
    iput v3, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 158
    iput v3, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    goto :goto_0

    .line 159
    :cond_2
    const/16 v0, 0x13b

    if-ge p1, v0, :cond_3

    .line 160
    iput v5, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 161
    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    goto :goto_0

    .line 163
    :cond_3
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 164
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    goto :goto_0
.end method

.method public setPanoramaGuideColor(Z)V
    .locals 1
    .parameter "capture"

    .prologue
    .line 524
    if-eqz p1, :cond_0

    .line 525
    const v0, -0xff0100

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    const/high16 v0, -0x1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    goto :goto_0
.end method

.method public setPanoramaGuidePosition(IIII)V
    .locals 3
    .parameter "direction"
    .parameter "hDist"
    .parameter "vDist"
    .parameter "status"

    .prologue
    const/high16 v2, 0x4000

    .line 556
    int-to-float v0, p2

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideMoveRate:F

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 557
    int-to-float v0, p3

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideMoveRate:F

    mul-float/2addr v0, v1

    float-to-int p3, v0

    .line 559
    iget-boolean v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    if-nez v0, :cond_0

    .line 592
    :goto_0
    return-void

    .line 563
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 591
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->postInvalidate()V

    goto :goto_0

    .line 567
    :pswitch_1
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    .line 568
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideRight:F

    .line 569
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    .line 570
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideBottom:F

    goto :goto_1

    .line 573
    :pswitch_2
    rsub-int/lit8 v0, p2, 0x0

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    .line 574
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideRight:F

    .line 575
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    .line 576
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideBottom:F

    goto :goto_1

    .line 579
    :pswitch_3
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    .line 580
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideRight:F

    .line 581
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    .line 582
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideBottom:F

    goto :goto_1

    .line 585
    :pswitch_4
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    .line 586
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideRight:F

    .line 587
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v0, v0

    neg-float v0, v0

    div-float/2addr v0, v2

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    .line 588
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideBottom:F

    goto/16 :goto_1

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lge/camera/components/CameraPreview;->mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 117
    return-void
.end method

.method public setSrcImageSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 448
    iput p1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    .line 449
    iput p2, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    .line 450
    return-void
.end method

.method public stopPanoramaDrawing()V
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    .line 537
    return-void
.end method
