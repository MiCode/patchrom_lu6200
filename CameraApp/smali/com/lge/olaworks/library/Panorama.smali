.class public Lcom/lge/olaworks/library/Panorama;
.super Lcom/lge/olaworks/library/BaseEngine;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/olaworks/library/Panorama$Callback;
    }
.end annotation


# static fields
.field private static final CAPTURE_FRAME_LIMIT:I = 0x6

.field public static final CAPTURE_TOLERANCE:F = 0.05f

.field private static final DEBUG:Z = false

.field public static final DEFAULT_THRESHOLD_RATE:F = 0.5f

.field public static final ENGINE_TAG:Ljava/lang/String; = "Panorama"

.field public static final NEXT_CAPTURE_DISTANCE:I = 0x64

.field public static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private final DISABLE_COLOR_COMPENSATION:I

.field private final ENABLE_COLOR_COMPENSATION:I

.field private mAutoSynthsis:Z

.field mCallback:Lcom/lge/olaworks/library/Panorama$Callback;

.field private mCaptureCount:I

.field private mInitOrientation:I

.field private mLimit:I

.field private mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

.field private mPreviousDistance:I

.field private mSynthesisThread:Ljava/lang/Thread;

.field private mThresholdRate:F


# direct methods
.method public constructor <init>(Lcom/lge/olaworks/library/Panorama$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/lge/olaworks/library/BaseEngine;-><init>()V

    .line 40
    iput v1, p0, Lcom/lge/olaworks/library/Panorama;->DISABLE_COLOR_COMPENSATION:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/olaworks/library/Panorama;->ENABLE_COLOR_COMPENSATION:I

    .line 43
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    invoke-direct {v0}, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    .line 45
    iput v1, p0, Lcom/lge/olaworks/library/Panorama;->mCaptureCount:I

    .line 47
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/lge/olaworks/library/Panorama;->mThresholdRate:F

    .line 48
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/olaworks/library/Panorama;->mLimit:I

    .line 49
    iput-boolean v1, p0, Lcom/lge/olaworks/library/Panorama;->mAutoSynthsis:Z

    .line 52
    iput v1, p0, Lcom/lge/olaworks/library/Panorama;->mPreviousDistance:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/olaworks/library/Panorama;->mCallback:Lcom/lge/olaworks/library/Panorama$Callback;

    .line 285
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/olaworks/library/Panorama$1;

    invoke-direct {v1, p0}, Lcom/lge/olaworks/library/Panorama$1;-><init>(Lcom/lge/olaworks/library/Panorama;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/olaworks/library/Panorama;->mSynthesisThread:Ljava/lang/Thread;

    .line 64
    iput-object p1, p0, Lcom/lge/olaworks/library/Panorama;->mCallback:Lcom/lge/olaworks/library/Panorama$Callback;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/lge/olaworks/library/Panorama$Callback;I)V
    .locals 2
    .parameter "callback"
    .parameter "captureFrameLimit"

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/lge/olaworks/library/BaseEngine;-><init>()V

    .line 40
    iput v1, p0, Lcom/lge/olaworks/library/Panorama;->DISABLE_COLOR_COMPENSATION:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/olaworks/library/Panorama;->ENABLE_COLOR_COMPENSATION:I

    .line 43
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    invoke-direct {v0}, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    .line 45
    iput v1, p0, Lcom/lge/olaworks/library/Panorama;->mCaptureCount:I

    .line 47
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/lge/olaworks/library/Panorama;->mThresholdRate:F

    .line 48
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/olaworks/library/Panorama;->mLimit:I

    .line 49
    iput-boolean v1, p0, Lcom/lge/olaworks/library/Panorama;->mAutoSynthsis:Z

    .line 52
    iput v1, p0, Lcom/lge/olaworks/library/Panorama;->mPreviousDistance:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/olaworks/library/Panorama;->mCallback:Lcom/lge/olaworks/library/Panorama$Callback;

    .line 285
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/olaworks/library/Panorama$1;

    invoke-direct {v1, p0}, Lcom/lge/olaworks/library/Panorama$1;-><init>(Lcom/lge/olaworks/library/Panorama;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/olaworks/library/Panorama;->mSynthesisThread:Ljava/lang/Thread;

    .line 75
    iput-object p1, p0, Lcom/lge/olaworks/library/Panorama;->mCallback:Lcom/lge/olaworks/library/Panorama$Callback;

    .line 76
    iput p2, p0, Lcom/lge/olaworks/library/Panorama;->mLimit:I

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/lge/olaworks/library/Panorama$Callback;II)V
    .locals 2
    .parameter "callback"
    .parameter "captureFrameLimit"
    .parameter "threshold"

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/lge/olaworks/library/BaseEngine;-><init>()V

    .line 40
    iput v1, p0, Lcom/lge/olaworks/library/Panorama;->DISABLE_COLOR_COMPENSATION:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/olaworks/library/Panorama;->ENABLE_COLOR_COMPENSATION:I

    .line 43
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    invoke-direct {v0}, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    .line 45
    iput v1, p0, Lcom/lge/olaworks/library/Panorama;->mCaptureCount:I

    .line 47
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/lge/olaworks/library/Panorama;->mThresholdRate:F

    .line 48
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/olaworks/library/Panorama;->mLimit:I

    .line 49
    iput-boolean v1, p0, Lcom/lge/olaworks/library/Panorama;->mAutoSynthsis:Z

    .line 52
    iput v1, p0, Lcom/lge/olaworks/library/Panorama;->mPreviousDistance:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/olaworks/library/Panorama;->mCallback:Lcom/lge/olaworks/library/Panorama$Callback;

    .line 285
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/olaworks/library/Panorama$1;

    invoke-direct {v1, p0}, Lcom/lge/olaworks/library/Panorama$1;-><init>(Lcom/lge/olaworks/library/Panorama;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/olaworks/library/Panorama;->mSynthesisThread:Ljava/lang/Thread;

    .line 88
    iput-object p1, p0, Lcom/lge/olaworks/library/Panorama;->mCallback:Lcom/lge/olaworks/library/Panorama$Callback;

    .line 89
    iput p2, p0, Lcom/lge/olaworks/library/Panorama;->mLimit:I

    .line 90
    int-to-float v0, p3

    iput v0, p0, Lcom/lge/olaworks/library/Panorama;->mThresholdRate:F

    .line 91
    return-void
.end method

.method public constructor <init>(Lcom/lge/olaworks/library/Panorama$Callback;IIZ)V
    .locals 2
    .parameter "callback"
    .parameter "captureFrameLimit"
    .parameter "threshold"
    .parameter "autoSynthsis"

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/lge/olaworks/library/BaseEngine;-><init>()V

    .line 40
    iput v1, p0, Lcom/lge/olaworks/library/Panorama;->DISABLE_COLOR_COMPENSATION:I

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/olaworks/library/Panorama;->ENABLE_COLOR_COMPENSATION:I

    .line 43
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    invoke-direct {v0}, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    .line 45
    iput v1, p0, Lcom/lge/olaworks/library/Panorama;->mCaptureCount:I

    .line 47
    const/high16 v0, 0x3f00

    iput v0, p0, Lcom/lge/olaworks/library/Panorama;->mThresholdRate:F

    .line 48
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/olaworks/library/Panorama;->mLimit:I

    .line 49
    iput-boolean v1, p0, Lcom/lge/olaworks/library/Panorama;->mAutoSynthsis:Z

    .line 52
    iput v1, p0, Lcom/lge/olaworks/library/Panorama;->mPreviousDistance:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/olaworks/library/Panorama;->mCallback:Lcom/lge/olaworks/library/Panorama$Callback;

    .line 285
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/olaworks/library/Panorama$1;

    invoke-direct {v1, p0}, Lcom/lge/olaworks/library/Panorama$1;-><init>(Lcom/lge/olaworks/library/Panorama;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/olaworks/library/Panorama;->mSynthesisThread:Ljava/lang/Thread;

    .line 103
    iput-object p1, p0, Lcom/lge/olaworks/library/Panorama;->mCallback:Lcom/lge/olaworks/library/Panorama$Callback;

    .line 104
    iput p2, p0, Lcom/lge/olaworks/library/Panorama;->mLimit:I

    .line 105
    int-to-float v0, p3

    iput v0, p0, Lcom/lge/olaworks/library/Panorama;->mThresholdRate:F

    .line 106
    iput-boolean p4, p0, Lcom/lge/olaworks/library/Panorama;->mAutoSynthsis:Z

    .line 107
    return-void
.end method

.method private setFrame(Lcom/lge/olaworks/datastruct/Ola_RawContext;)I
    .locals 5
    .parameter "rawContext"

    .prologue
    const/4 v4, 0x0

    .line 349
    invoke-static {p1}, Lcom/lge/olaworks/jni/OlaPanoramaJNI;->setFrame(Lcom/lge/olaworks/datastruct/Ola_RawContext;)I

    move-result v0

    .line 350
    .local v0, retVal:I
    invoke-static {v0}, Lcom/lge/olaworks/define/Ola_ReturnType;->error(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v0

    .line 352
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ola_RawContext width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/lge/olaworks/datastruct/Ola_RawContext;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ola_RawContext height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/lge/olaworks/datastruct/Ola_RawContext;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget v1, p0, Lcom/lge/olaworks/library/Panorama;->mCaptureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/olaworks/library/Panorama;->mCaptureCount:I

    .line 356
    iget-object v1, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iput v4, v1, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->hRealDisp:I

    .line 357
    iget-object v1, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iput v4, v1, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->vRealDisp:I

    .line 359
    iget-object v1, p0, Lcom/lge/olaworks/library/Panorama;->mCallback:Lcom/lge/olaworks/library/Panorama$Callback;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/lge/olaworks/library/Panorama;->mCallback:Lcom/lge/olaworks/library/Panorama$Callback;

    iget v2, p0, Lcom/lge/olaworks/library/Panorama;->mCaptureCount:I

    invoke-interface {v1, v2}, Lcom/lge/olaworks/library/Panorama$Callback;->onCapture(I)V

    goto :goto_0
.end method


# virtual methods
.method public cancelProcess()I
    .locals 1

    .prologue
    .line 435
    invoke-static {}, Lcom/lge/olaworks/jni/OlaPanoramaJNI;->cancelProcess()I

    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public create()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-static {}, Lcom/lge/olaworks/jni/OlaPanoramaJNI;->create()I

    move-result v0

    .line 121
    .local v0, retVal:I
    if-eqz v0, :cond_0

    move v1, v0

    .line 132
    .end local v0           #retVal:I
    .local v1, retVal:I
    :goto_0
    return v1

    .line 124
    .end local v1           #retVal:I
    .restart local v0       #retVal:I
    :cond_0
    invoke-static {}, Lcom/lge/olaworks/jni/OlaPanoramaJNI;->initialize()I

    move-result v0

    .line 127
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseAE_AWBLockInPanorama()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    invoke-static {v3, v3}, Lcom/lge/olaworks/jni/OlaPanoramaJNI;->setParam(II)I

    :goto_1
    move v1, v0

    .line 132
    .end local v0           #retVal:I
    .restart local v1       #retVal:I
    goto :goto_0

    .line 130
    .end local v1           #retVal:I
    .restart local v0       #retVal:I
    :cond_1
    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/lge/olaworks/jni/OlaPanoramaJNI;->setParam(II)I

    goto :goto_1
.end method

.method public destroy()I
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/lge/olaworks/jni/OlaPanoramaJNI;->destroy()I

    move-result v0

    .line 145
    .local v0, retVal:I
    return v0
.end method

.method public getCaptureFrameLimit()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/lge/olaworks/library/Panorama;->mLimit:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, "Panorama"

    return-object v0
.end method

.method public needRenderMode()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public processImage(Landroid/graphics/Bitmap;I)I
    .locals 1
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public processPreview(Landroid/graphics/Bitmap;)I
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public processPreview(Lcom/lge/olaworks/datastruct/Ola_RawContext;)I
    .locals 13
    .parameter "rawContext"

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v11, 0x1

    const v10, 0x3d4ccccd

    .line 172
    iget-boolean v9, p0, Lcom/lge/olaworks/library/BaseEngine;->mStart:Z

    if-nez v9, :cond_1

    move v5, v8

    .line 282
    :cond_0
    :goto_0
    return v5

    .line 174
    :cond_1
    const/4 v5, 0x0

    .line 176
    .local v5, retVal:I
    const/4 v1, 0x0

    .line 178
    .local v1, distance:I
    iget v9, p0, Lcom/lge/olaworks/library/Panorama;->mCaptureCount:I

    if-nez v9, :cond_2

    .line 179
    iget-object v9, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iput v8, v9, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->direction:I

    .line 180
    invoke-direct {p0, p1}, Lcom/lge/olaworks/library/Panorama;->setFrame(Lcom/lge/olaworks/datastruct/Ola_RawContext;)I

    move-result v5

    goto :goto_0

    .line 183
    :cond_2
    iget v8, p0, Lcom/lge/olaworks/library/Panorama;->mCaptureCount:I

    if-ne v8, v11, :cond_3

    .line 184
    iget v8, p1, Lcom/lge/olaworks/datastruct/Ola_RawContext;->orientation:I

    iput v8, p0, Lcom/lge/olaworks/library/Panorama;->mInitOrientation:I

    .line 187
    :cond_3
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iget v3, v8, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->direction:I

    .line 188
    .local v3, oldDirection:I
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    invoke-static {p1, v8}, Lcom/lge/olaworks/jni/OlaPanoramaJNI;->processFrame(Lcom/lge/olaworks/datastruct/Ola_RawContext;Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;)I

    move-result v5

    .line 189
    invoke-static {v5}, Lcom/lge/olaworks/define/Ola_ReturnType;->error(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 191
    move v1, v5

    .line 193
    if-eqz v3, :cond_4

    .line 194
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iput v3, v8, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->direction:I

    .line 197
    :cond_4
    const v2, 0x7fffffff

    .line 198
    .local v2, distanceToCapture:I
    const v4, 0x7fffffff

    .line 199
    .local v4, requiredDistance:I
    const/4 v6, 0x0

    .line 200
    .local v6, wrongDirectionDeviation:I
    const/4 v7, 0x0

    .line 201
    .local v7, wrongDirectionTolerance:I
    const/4 v0, 0x0

    .line 203
    .local v0, captureTolerance:I
    iget v8, p0, Lcom/lge/olaworks/library/Panorama;->mCaptureCount:I

    if-ne v8, v11, :cond_5

    const/16 v8, 0x64

    if-le v5, v8, :cond_5

    .line 204
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iget v8, v8, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->vRealDisp:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget-object v9, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iget v9, v9, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->hRealDisp:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-le v8, v9, :cond_b

    .line 205
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iget v8, v8, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->vRealDisp:I

    if-lez v8, :cond_a

    .line 206
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    const/4 v9, 0x3

    iput v9, v8, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->direction:I

    .line 218
    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iget v8, v8, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->direction:I

    packed-switch v8, :pswitch_data_0

    .line 251
    :goto_2
    int-to-float v8, v4

    mul-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v0, v8

    .line 252
    if-ge v0, v12, :cond_6

    .line 253
    const/4 v0, 0x2

    .line 263
    :cond_6
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v8, v0, :cond_7

    if-ge v6, v7, :cond_7

    .line 264
    iget v8, p0, Lcom/lge/olaworks/library/Panorama;->mPreviousDistance:I

    sub-int/2addr v8, v1

    if-nez v8, :cond_7

    .line 265
    invoke-direct {p0, p1}, Lcom/lge/olaworks/library/Panorama;->setFrame(Lcom/lge/olaworks/datastruct/Ola_RawContext;)I

    move-result v5

    .line 266
    invoke-static {v5}, Lcom/lge/olaworks/define/Ola_ReturnType;->error(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 272
    :cond_7
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mCallback:Lcom/lge/olaworks/library/Panorama$Callback;

    if-eqz v8, :cond_8

    .line 273
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mCallback:Lcom/lge/olaworks/library/Panorama$Callback;

    iget-object v9, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    invoke-interface {v8, v9}, Lcom/lge/olaworks/library/Panorama$Callback;->onProcessFrame(Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;)V

    .line 276
    :cond_8
    iget v8, p0, Lcom/lge/olaworks/library/Panorama;->mCaptureCount:I

    iget v9, p0, Lcom/lge/olaworks/library/Panorama;->mLimit:I

    if-lt v8, v9, :cond_9

    iget-boolean v8, p0, Lcom/lge/olaworks/library/Panorama;->mAutoSynthsis:Z

    if-eqz v8, :cond_9

    .line 277
    invoke-virtual {p0}, Lcom/lge/olaworks/library/Panorama;->startSynthesisThread()V

    .line 280
    :cond_9
    iput v1, p0, Lcom/lge/olaworks/library/Panorama;->mPreviousDistance:I

    goto/16 :goto_0

    .line 208
    :cond_a
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    const/4 v9, 0x4

    iput v9, v8, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->direction:I

    goto :goto_1

    .line 211
    :cond_b
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iget v8, v8, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->hRealDisp:I

    if-lez v8, :cond_c

    .line 212
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iput v11, v8, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->direction:I

    goto :goto_1

    .line 214
    :cond_c
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iput v12, v8, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->direction:I

    goto :goto_1

    .line 220
    :pswitch_0
    iget v8, p1, Lcom/lge/olaworks/datastruct/Ola_RawContext;->width:I

    int-to-float v8, v8

    iget v9, p0, Lcom/lge/olaworks/library/Panorama;->mThresholdRate:F

    mul-float/2addr v8, v9

    float-to-int v4, v8

    .line 221
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iget v8, v8, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->hRealDisp:I

    sub-int v2, v4, v8

    .line 222
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iget v8, v8, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->vRealDisp:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 223
    iget v8, p1, Lcom/lge/olaworks/datastruct/Ola_RawContext;->height:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    float-to-int v7, v8

    .line 224
    goto :goto_2

    .line 227
    :pswitch_1
    iget v8, p1, Lcom/lge/olaworks/datastruct/Ola_RawContext;->width:I

    int-to-float v8, v8

    iget v9, p0, Lcom/lge/olaworks/library/Panorama;->mThresholdRate:F

    mul-float/2addr v8, v9

    neg-float v8, v8

    float-to-int v4, v8

    .line 228
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iget v8, v8, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->hRealDisp:I

    sub-int v2, v4, v8

    .line 229
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iget v8, v8, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->vRealDisp:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 230
    iget v8, p1, Lcom/lge/olaworks/datastruct/Ola_RawContext;->height:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    float-to-int v7, v8

    .line 231
    goto/16 :goto_2

    .line 234
    :pswitch_2
    iget v8, p1, Lcom/lge/olaworks/datastruct/Ola_RawContext;->height:I

    int-to-float v8, v8

    iget v9, p0, Lcom/lge/olaworks/library/Panorama;->mThresholdRate:F

    mul-float/2addr v8, v9

    float-to-int v4, v8

    .line 235
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iget v8, v8, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->vRealDisp:I

    sub-int v2, v4, v8

    .line 236
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iget v8, v8, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->hRealDisp:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 237
    iget v8, p1, Lcom/lge/olaworks/datastruct/Ola_RawContext;->width:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    float-to-int v7, v8

    .line 238
    goto/16 :goto_2

    .line 241
    :pswitch_3
    iget v8, p1, Lcom/lge/olaworks/datastruct/Ola_RawContext;->height:I

    int-to-float v8, v8

    iget v9, p0, Lcom/lge/olaworks/library/Panorama;->mThresholdRate:F

    mul-float/2addr v8, v9

    neg-float v8, v8

    float-to-int v4, v8

    .line 242
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iget v8, v8, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->vRealDisp:I

    sub-int v2, v4, v8

    .line 243
    iget-object v8, p0, Lcom/lge/olaworks/library/Panorama;->mPanoInfo:Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;

    iget v8, v8, Lcom/lge/olaworks/datastruct/Ola_PanoramaInfo;->hRealDisp:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 244
    iget v8, p1, Lcom/lge/olaworks/datastruct/Ola_RawContext;->width:I

    int-to-float v8, v8

    mul-float/2addr v8, v10

    float-to-int v7, v8

    .line 245
    goto/16 :goto_2

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startSynthesisThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-object v0, p0, Lcom/lge/olaworks/library/Panorama;->mSynthesisThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lge/olaworks/library/Panorama$2;

    invoke-direct {v1, p0}, Lcom/lge/olaworks/library/Panorama$2;-><init>(Lcom/lge/olaworks/library/Panorama;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/olaworks/library/Panorama;->mSynthesisThread:Ljava/lang/Thread;

    .line 303
    const-string v0, "CameraApp"

    const-string v1, "Synthesis thread start"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/lge/olaworks/library/Panorama;->mSynthesisThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "Synthesis thread is running already!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public synthesize()Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 371
    iput v1, p0, Lcom/lge/olaworks/library/Panorama;->mCaptureCount:I

    .line 373
    new-instance v7, Lcom/lge/olaworks/datastruct/Ola_RawContext;

    invoke-direct {v7}, Lcom/lge/olaworks/datastruct/Ola_RawContext;-><init>()V

    .line 374
    .local v7, captureContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;
    const-string v2, "CameraApp"

    const-string v3, "call processSynthesis()"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static {v7}, Lcom/lge/olaworks/jni/OlaPanoramaJNI;->processSynthesis(Lcom/lge/olaworks/datastruct/Ola_RawContext;)I

    move-result v9

    .line 376
    .local v9, retVal:I
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "return processSynthesis() retVal:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/lge/olaworks/jni/OlaPanoramaJNI;->initialize()I

    .line 378
    invoke-static {v9}, Lcom/lge/olaworks/define/Ola_ReturnType;->error(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    :goto_0
    return v1

    .line 380
    :cond_0
    iget-object v2, p0, Lcom/lge/olaworks/library/Panorama;->mCallback:Lcom/lge/olaworks/library/Panorama$Callback;

    if-eqz v2, :cond_7

    .line 381
    iget v2, v7, Lcom/lge/olaworks/datastruct/Ola_RawContext;->width:I

    if-eqz v2, :cond_1

    iget v2, v7, Lcom/lge/olaworks/datastruct/Ola_RawContext;->height:I

    if-nez v2, :cond_2

    .line 383
    :cond_1
    const-string v2, "Panorama"

    const-string v3, "panorama synthesis result image is null!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_2
    const/4 v0, 0x0

    .line 389
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget v2, v7, Lcom/lge/olaworks/datastruct/Ola_RawContext;->width:I

    iget v3, v7, Lcom/lge/olaworks/datastruct/Ola_RawContext;->height:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 391
    invoke-static {v0, v7}, Lcom/lge/olaworks/jni/OlaBitmapGraphicsJNI;->setDrawBitmap(Landroid/graphics/Bitmap;Lcom/lge/olaworks/datastruct/Ola_RawContext;)I

    .line 393
    const/4 v11, 0x0

    .line 395
    .local v11, rotDeg:I
    iget v2, p0, Lcom/lge/olaworks/library/Panorama;->mInitOrientation:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 396
    const/16 v11, 0x5a

    .line 402
    :cond_3
    :goto_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Panorama rotDeg ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    if-eqz v11, :cond_4

    .line 405
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 406
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v2, v11

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 407
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 408
    .local v10, rotBm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 409
    const/4 v0, 0x0

    .line 411
    move-object v0, v10

    .line 414
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v10           #rotBm:Landroid/graphics/Bitmap;
    :cond_4
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 415
    .local v8, ostream:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 417
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 418
    const/4 v0, 0x0

    .line 420
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Panorama ostream size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/lge/olaworks/library/Panorama;->mCallback:Lcom/lge/olaworks/library/Panorama$Callback;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v1, v2, v9}, Lcom/lge/olaworks/library/Panorama$Callback;->onComplete([BI)V

    move v1, v6

    .line 430
    goto/16 :goto_0

    .line 397
    .end local v8           #ostream:Ljava/io/ByteArrayOutputStream;
    :cond_5
    iget v2, p0, Lcom/lge/olaworks/library/Panorama;->mInitOrientation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 398
    const/16 v11, 0xb4

    goto :goto_1

    .line 399
    :cond_6
    iget v2, p0, Lcom/lge/olaworks/library/Panorama;->mInitOrientation:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 400
    const/16 v11, 0x10e

    goto/16 :goto_1

    .line 426
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #rotDeg:I
    :cond_7
    const-string v2, "Panorama"

    const-string v3, "error. must set callback interfaec before"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public waitForSynthesisDone()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 313
    :try_start_0
    const-string v3, "CameraApp"

    const-string v4, "wait for synthesis done.."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v3, p0, Lcom/lge/olaworks/library/Panorama;->mSynthesisThread:Ljava/lang/Thread;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    return v1

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "CameraApp"

    const-string v4, "Failed to wait synthesis thread:%s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v1, v2

    .line 319
    goto :goto_0
.end method
