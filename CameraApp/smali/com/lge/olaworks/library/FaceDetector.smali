.class public Lcom/lge/olaworks/library/FaceDetector;
.super Lcom/lge/olaworks/library/BaseEngine;
.source "FaceDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/olaworks/library/FaceDetector$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private mAutoGet:Z

.field private mCallback:Lcom/lge/olaworks/library/FaceDetector$Callback;

.field private mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mShowFaceRect:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Lcom/lge/olaworks/library/BaseEngine;-><init>()V

    .line 33
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    invoke-direct {v0}, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    .line 35
    iput-boolean v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mAutoGet:Z

    .line 37
    iput-boolean v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mShowFaceRect:Z

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mPaint:Landroid/graphics/Paint;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mCallback:Lcom/lge/olaworks/library/FaceDetector$Callback;

    .line 48
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iput v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewHeight:I

    iput v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewWidth:I

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/lge/olaworks/library/FaceDetector$Callback;)V
    .locals 3
    .parameter "callback"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Lcom/lge/olaworks/library/BaseEngine;-><init>()V

    .line 33
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    invoke-direct {v0}, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    .line 35
    iput-boolean v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mAutoGet:Z

    .line 37
    iput-boolean v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mShowFaceRect:Z

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mPaint:Landroid/graphics/Paint;

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mCallback:Lcom/lge/olaworks/library/FaceDetector$Callback;

    .line 60
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iput v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewHeight:I

    iput v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewWidth:I

    .line 64
    iput-object p1, p0, Lcom/lge/olaworks/library/FaceDetector;->mCallback:Lcom/lge/olaworks/library/FaceDetector$Callback;

    .line 65
    return-void
.end method


# virtual methods
.method public create()I
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->create()I

    move-result v0

    .line 135
    .local v0, retVal:I
    if-eqz v0, :cond_0

    move v1, v0

    .line 139
    .end local v0           #retVal:I
    .local v1, retVal:I
    :goto_0
    return v1

    .line 138
    .end local v1           #retVal:I
    .restart local v0       #retVal:I
    :cond_0
    invoke-static {}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->initialize()I

    move-result v0

    move v1, v0

    .line 139
    .end local v0           #retVal:I
    .restart local v1       #retVal:I
    goto :goto_0
.end method

.method public destroy()I
    .locals 3

    .prologue
    .line 151
    const-string v1, "CameraApp"

    const-string v2, "destroy()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->destroy()I

    move-result v0

    .line 153
    .local v0, retVal:I
    invoke-static {}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->initialize()I

    move-result v0

    .line 154
    return v0
.end method

.method public drawOverlay(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 276
    iget-object v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    if-nez v2, :cond_1

    .line 284
    :cond_0
    return-void

    .line 277
    :cond_1
    iget-boolean v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mShowFaceRect:Z

    if-eqz v2, :cond_0

    .line 279
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget v2, v2, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->numDetectedFaces:I

    if-ge v0, v2, :cond_0

    .line 280
    iget-object v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v2, v2, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v1, v2, v0

    .line 281
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFDInfo()Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    return-object v0
.end method

.method public getFaceDetectorInfo()Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mAutoGet:Z

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    invoke-virtual {v0}, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->clear()V

    .line 265
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    invoke-static {v0}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->getProcessInfo(Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;)I

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "CameraApp"

    return-object v0
.end method

.method public needRenderMode()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public processImage(Landroid/graphics/Bitmap;I)I
    .locals 13
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    const/4 v11, 0x1

    .line 200
    invoke-static {p1, v11}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->processImageBitmap(Landroid/graphics/Bitmap;I)I

    move-result v6

    .line 201
    .local v6, retVal:I
    iget-boolean v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mAutoGet:Z

    if-eqz v10, :cond_2

    .line 204
    iget v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewWidth:I

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewHeight:I

    if-nez v10, :cond_3

    .line 205
    :cond_0
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    invoke-virtual {v10}, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->clear()V

    .line 206
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    invoke-static {v10}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->getProcessInfo(Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;)I

    .line 251
    :cond_1
    invoke-static {}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->initialize()I

    .line 253
    :cond_2
    return v6

    .line 213
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v1, v10

    .line 214
    .local v1, bitmapWidth:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v0, v10

    .line 216
    .local v0, bitmapHeight:F
    iget v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewWidth:I

    int-to-float v10, v10

    div-float v9, v1, v10

    .line 217
    .local v9, wRatio:F
    iget v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewHeight:I

    int-to-float v10, v10

    div-float v3, v0, v10

    .line 222
    .local v3, hRatio:F
    if-ne p2, v11, :cond_4

    .line 223
    const-string v10, "CameraApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "wRatio = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", hRatio = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->numDetectedFaces:I

    if-ge v4, v10, :cond_1

    .line 225
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget-object v11, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v11, v11, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v11, v11, v4

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    mul-float/2addr v11, v9

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 226
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget-object v11, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v11, v11, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v11, v11, v4

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    mul-float/2addr v11, v9

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 227
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget-object v11, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v11, v11, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v11, v11, v4

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    mul-float/2addr v11, v3

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 228
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget-object v11, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v11, v11, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v11, v11, v4

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    mul-float/2addr v11, v3

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 224
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 234
    .end local v4           #i:I
    :cond_4
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->numDetectedFaces:I

    if-ge v4, v10, :cond_1

    .line 235
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    mul-float v5, v9, v10

    .line 236
    .local v5, left:F
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    mul-float v7, v9, v10

    .line 237
    .local v7, right:F
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    mul-float v8, v3, v10

    .line 238
    .local v8, top:F
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    mul-float v2, v3, v10

    .line 240
    .local v2, bottom:F
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    sub-float v11, v1, v2

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 241
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    sub-float v11, v1, v8

    float-to-int v11, v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 242
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    float-to-int v11, v5

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 243
    iget-object v10, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v10, v10, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    float-to-int v11, v7

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public processPreview(Lcom/lge/olaworks/datastruct/Ola_RawContext;)I
    .locals 4
    .parameter "rawContext"

    .prologue
    .line 169
    invoke-static {p1}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->processPreviewRaw(Lcom/lge/olaworks/datastruct/Ola_RawContext;)I

    move-result v0

    .line 170
    .local v0, retVal:I
    iget-boolean v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mAutoGet:Z

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    invoke-virtual {v1}, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->clear()V

    .line 172
    iget-object v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    invoke-static {v1}, Lcom/lge/olaworks/jni/OlaFaceDetectorJNI;->getProcessInfo(Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;)I

    .line 174
    iget-object v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mCallback:Lcom/lge/olaworks/library/FaceDetector$Callback;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mCallback:Lcom/lge/olaworks/library/FaceDetector$Callback;

    iget-object v2, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget v2, v2, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->numDetectedFaces:I

    iget-object v3, p0, Lcom/lge/olaworks/library/FaceDetector;->mFDInfo:Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;

    iget-object v3, v3, Lcom/lge/olaworks/datastruct/Ola_FaceDetectorInfo;->detectedFaces:[Landroid/graphics/Rect;

    invoke-interface {v1, v2, v3}, Lcom/lge/olaworks/library/FaceDetector$Callback;->onFaceDetected(I[Landroid/graphics/Rect;)V

    .line 178
    :cond_0
    iget v1, p1, Lcom/lge/olaworks/datastruct/Ola_RawContext;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 179
    iget v1, p1, Lcom/lge/olaworks/datastruct/Ola_RawContext;->width:I

    iput v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewWidth:I

    .line 180
    iget v1, p1, Lcom/lge/olaworks/datastruct/Ola_RawContext;->height:I

    iput v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewHeight:I

    .line 186
    :cond_1
    :goto_0
    return v0

    .line 181
    :cond_2
    iget v1, p1, Lcom/lge/olaworks/datastruct/Ola_RawContext;->orientation:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 182
    iget v1, p1, Lcom/lge/olaworks/datastruct/Ola_RawContext;->height:I

    iput v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewWidth:I

    .line 183
    iget v1, p1, Lcom/lge/olaworks/datastruct/Ola_RawContext;->width:I

    iput v1, p0, Lcom/lge/olaworks/library/FaceDetector;->mPreviewHeight:I

    goto :goto_0
.end method

.method public setARGB(IIII)V
    .locals 1
    .parameter "a"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 93
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lge/olaworks/library/FaceDetector;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    return-void
.end method

.method public showFaceRect(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/lge/olaworks/library/FaceDetector;->mShowFaceRect:Z

    .line 81
    return-void
.end method
