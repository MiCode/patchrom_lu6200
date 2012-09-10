.class public Lcom/lge/camera/controller/camera/FacePreviewController;
.super Lcom/lge/camera/controller/camera/CameraController;
.source "FacePreviewController.java"

# interfaces
.implements Lcom/lge/olaworks/library/FaceDetector$Callback;


# instance fields
.field private mAverageOfFacePoint:Landroid/graphics/Point;

.field mCameraMediator:Lcom/lge/camera/CameraMediator;

.field private mDetectedFaces:[Landroid/graphics/Rect;

.field mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

.field private mFaceDetectedCount:I

.field private final mFaceDistanceThreshold:I

.field private mFaceTimeCnt:I

.field private final mFaceTimeThreshold:I

.field mNewFaceDetector:Lcom/lge/olaworks/library/FaceDetector;

.field private mPreviousFaceRect:Landroid/graphics/Rect;

.field private mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

.field private mSumOfFacePoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 3
    .parameter "mediator"

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/CameraController;-><init>(Lcom/lge/camera/Mediator;)V

    .line 19
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mNewFaceDetector:Lcom/lge/olaworks/library/FaceDetector;

    .line 20
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    .line 23
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRect:Landroid/graphics/Rect;

    .line 27
    const/16 v0, 0x32

    iput v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDistanceThreshold:I

    .line 28
    const/16 v0, 0xa

    iput v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeThreshold:I

    .line 29
    iput v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    .line 30
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    .line 31
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mAverageOfFacePoint:Landroid/graphics/Point;

    .line 36
    check-cast p1, Lcom/lge/camera/CameraMediator;

    .end local p1
    iput-object p1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    .line 38
    return-void
.end method

.method private flipHorizontal([Landroid/graphics/Rect;I)V
    .locals 5
    .parameter "rects"
    .parameter "count"

    .prologue
    .line 276
    iget-object v3, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v3}, Lcom/lge/camera/components/CameraPreview;->getWidth()I

    move-result v1

    .line 278
    .local v1, previewWidth:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 279
    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 280
    .local v2, width:I
    aget-object v3, p1, v0

    aget-object v4, p1, v0

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int v4, v1, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 281
    aget-object v3, p1, v0

    aget-object v4, p1, v0

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    .end local v2           #width:I
    :cond_0
    return-void
.end method


# virtual methods
.method public getDetectedFaces()[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFaceDetectedCount()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    return v0
.end method

.method public getFaceDetector()Lcom/lge/olaworks/library/FaceDetector;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mNewFaceDetector:Lcom/lge/olaworks/library/FaceDetector;

    return-object v0
.end method

.method public getSumPosition(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->isCafSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const-string v0, "CameraApp"

    const-string v1, "getSumPosition() return: CAF not supported"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 111
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method public hideView()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview;->setDrawMode(I)V

    .line 84
    :cond_0
    return-void
.end method

.method public initController()V
    .locals 2

    .prologue
    .line 50
    const v0, 0x7f09008d

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/CameraPreview;

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    .line 51
    new-instance v0, Lcom/lge/olaworks/library/FaceDetector;

    invoke-direct {v0, p0}, Lcom/lge/olaworks/library/FaceDetector;-><init>(Lcom/lge/olaworks/library/FaceDetector$Callback;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mNewFaceDetector:Lcom/lge/olaworks/library/FaceDetector;

    .line 52
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mNewFaceDetector:Lcom/lge/olaworks/library/FaceDetector;

    invoke-virtual {v0, v1}, Lcom/lge/olaworks/library/EngineProcessor;->setEngine(Lcom/lge/olaworks/library/BaseEngine;)Lcom/lge/olaworks/library/BaseEngine;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 56
    return-void
.end method

.method public initFaceDetectInfo()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    .line 97
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraPreview;->resetFaceRectangles()V

    .line 100
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    .line 45
    iput-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mNewFaceDetector:Lcom/lge/olaworks/library/FaceDetector;

    .line 46
    invoke-super {p0}, Lcom/lge/camera/controller/camera/CameraController;->onDestroy()V

    .line 47
    return-void
.end method

.method public onFaceDetected(I[Landroid/graphics/Rect;)V
    .locals 11
    .parameter "numDetectedFaces"
    .parameter "detectedFaces"

    .prologue
    .line 133
    if-lez p1, :cond_16

    .line 134
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getInCaptureProgress()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 135
    :cond_0
    const-string v6, "CameraApp"

    const-string v7, " captureing or pausing..don\'t need to detect faces"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_1
    :goto_0
    return-void

    .line 140
    :cond_2
    iput p1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    .line 141
    iput-object p2, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    .line 143
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getCameraMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 144
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    iget v7, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    invoke-direct {p0, v6, v7}, Lcom/lge/camera/controller/camera/FacePreviewController;->flipHorizontal([Landroid/graphics/Rect;I)V

    .line 146
    :cond_3
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    iget-object v7, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    iget v8, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    invoke-virtual {v6, v7, v8}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangles([Landroid/graphics/Rect;I)V

    .line 148
    const/4 v3, 0x0

    .line 149
    .local v3, largestFaceIndex:I
    const/4 v4, 0x0

    .line 150
    .local v4, largestFaceWidth:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    if-ge v2, v6, :cond_5

    .line 151
    aget-object v6, p2, v3

    iget v6, v6, Landroid/graphics/Rect;->right:I

    aget-object v7, p2, v3

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int v4, v6, v7

    .line 152
    aget-object v6, p2, v2

    iget v6, v6, Landroid/graphics/Rect;->right:I

    aget-object v7, p2, v2

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int v5, v6, v7

    .line 154
    .local v5, newWidth:I
    if-ge v4, v5, :cond_4

    .line 155
    move v3, v2

    .line 156
    move v4, v5

    .line 150
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 160
    .end local v5           #newWidth:I
    :cond_5
    const/4 v2, 0x0

    :goto_2
    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    if-ge v2, v6, :cond_15

    .line 161
    if-ne v3, v2, :cond_14

    .line 163
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->isCafSupported()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 165
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "largestFaceIndex"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v8}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/CameraFocusController;->getBlockingFaceTrFocusing()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 171
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "face blocking return:yellow:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/16 v7, -0x100

    invoke-virtual {v6, v2, v7}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    .line 160
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 176
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v6

    if-nez v6, :cond_7

    .line 177
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 181
    :cond_7
    aget-object v6, p2, v3

    iget v6, v6, Landroid/graphics/Rect;->right:I

    aget-object v7, p2, v3

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    div-int/lit8 v0, v6, 0x2

    .line 182
    .local v0, center_x:I
    aget-object v6, p2, v3

    iget v6, v6, Landroid/graphics/Rect;->top:I

    aget-object v7, p2, v3

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v1, v6, 0x2

    .line 184
    .local v1, center_y:I
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    aget-object v7, p2, v3

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 185
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_9

    .line 186
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/high16 v7, -0x1

    invoke-virtual {v6, v2, v7}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    .line 195
    :goto_4
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_12

    .line 196
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_d

    .line 198
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    aget-object v7, p2, v3

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 242
    :cond_8
    :goto_5
    aget-object v6, p2, v3

    iput-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRect:Landroid/graphics/Rect;

    goto :goto_3

    .line 187
    :cond_9
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_a

    .line 188
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const v7, -0xff0100

    invoke-virtual {v6, v2, v7}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    goto :goto_4

    .line 190
    :cond_a
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/16 v7, -0x100

    invoke-virtual {v6, v2, v7}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    goto :goto_4

    .line 192
    :cond_b
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/16 v7, -0x100

    invoke-virtual {v6, v2, v7}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    goto :goto_4

    .line 201
    :cond_c
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5

    .line 206
    :cond_d
    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    .line 207
    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    const/16 v7, 0xa

    if-ne v6, v7, :cond_11

    .line 210
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mAverageOfFacePoint:Landroid/graphics/Point;

    iget-object v7, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    div-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 211
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mAverageOfFacePoint:Landroid/graphics/Point;

    iget-object v7, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget v8, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    div-int/2addr v7, v8

    iput v7, v6, Landroid/graphics/Point;->y:I

    .line 212
    const/4 v6, 0x0

    iput v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    .line 218
    :cond_e
    :goto_6
    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    if-nez v6, :cond_8

    .line 224
    aget-object v6, p2, v3

    iget-object v7, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mAverageOfFacePoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mAverageOfFacePoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_10

    .line 226
    :cond_f
    const-string v6, "CameraApp"

    const-string v7, "startFocus"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v1, v7}, Lcom/lge/camera/controller/camera/CameraFocusController;->startFocusByTouchPress(IIZ)V

    .line 229
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    aget-object v7, p2, v3

    const/16 v8, 0x32

    const/16 v9, 0x32

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/lge/camera/controller/camera/FacePreviewController;->outSet(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 232
    :cond_10
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_5

    .line 214
    :cond_11
    iget v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceTimeCnt:I

    const/16 v7, 0xa

    if-gt v6, v7, :cond_e

    .line 215
    aget-object v6, p2, v3

    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camera/FacePreviewController;->getSumPosition(Landroid/graphics/Rect;)V

    goto :goto_6

    .line 236
    :cond_12
    const-string v6, "CameraApp"

    const-string v7, "startFocus"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v1, v7}, Lcom/lge/camera/controller/camera/CameraFocusController;->startFocusByTouchPress(IIZ)V

    .line 238
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    aget-object v7, p2, v3

    const/16 v8, 0x32

    const/16 v9, 0x32

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/lge/camera/controller/camera/FacePreviewController;->outSet(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    goto/16 :goto_5

    .line 244
    .end local v0           #center_x:I
    .end local v1           #center_y:I
    :cond_13
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v6

    aget-object v7, p2, v3

    invoke-virtual {v6, v7}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusRectangle(Landroid/graphics/Rect;)V

    .line 245
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusPosition(I)V

    .line 246
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const v7, -0xff0100

    invoke-virtual {v6, v2, v7}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    goto/16 :goto_3

    .line 250
    :cond_14
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/4 v7, -0x1

    invoke-virtual {v6, v2, v7}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangleColor(II)V

    goto/16 :goto_3

    .line 254
    :cond_15
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v6}, Lcom/lge/camera/components/CameraPreview;->getVisibility()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 255
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    goto/16 :goto_0

    .line 259
    .end local v2           #i:I
    .end local v3           #largestFaceIndex:I
    .end local v4           #largestFaceWidth:I
    :cond_16
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v6}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusPosition(I)V

    .line 260
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 261
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRect:Landroid/graphics/Rect;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 262
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 268
    iput p1, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    .line 269
    iget-object v6, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    iget-object v7, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;

    iget v8, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I

    invoke-virtual {v6, v7, v8}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangles([Landroid/graphics/Rect;I)V

    goto/16 :goto_0
.end method

.method public outSet(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 4
    .parameter "dst_r"
    .parameter "src_r"
    .parameter "dx"
    .parameter "dy"

    .prologue
    const v3, 0x7f0a0033

    const v1, 0x7f0a0032

    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->isCafSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    const-string v0, "CameraApp"

    const-string v1, "outSet() return: CAF not supported"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget v0, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 121
    iget v0, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 122
    iget v0, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p4

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 123
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p4

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 125
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 126
    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_3

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 127
    :cond_3
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_4

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 128
    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v3, :cond_0

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public showView()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview;->setDrawMode(I)V

    .line 79
    :cond_0
    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "CameraApp"

    const-string v1, "Face dectection Start!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->initFaceDetectInfo()V

    .line 62
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->start()V

    .line 63
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->showView()V

    .line 64
    return-void
.end method

.method public stopFaceDetection()V
    .locals 2

    .prologue
    .line 67
    const-string v0, "CameraApp"

    const-string v1, "Face dectection stop!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->isEmptyEngine()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->stop()V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->initFaceDetectInfo()V

    .line 72
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/FacePreviewController;->hideView()V

    .line 73
    return-void
.end method
