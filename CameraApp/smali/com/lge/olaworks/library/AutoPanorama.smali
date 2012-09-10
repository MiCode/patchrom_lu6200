.class public Lcom/lge/olaworks/library/AutoPanorama;
.super Lcom/lge/olaworks/library/BaseEngine;
.source "AutoPanorama.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/olaworks/library/AutoPanorama$1;,
        Lcom/lge/olaworks/library/AutoPanorama$Callback;,
        Lcom/lge/olaworks/library/AutoPanorama$ProcessHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_PANNING_SPEED_THRESHOLD:I = 0x64

.field public static final ENGINE_TAG:Ljava/lang/String; = "AutoPanorama"

.field private static final PROC_STOP_FAIL:I = 0x2

.field private static final PROC_WAIT_RESULT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private final DISABLE_COLOR_COMPENSATION:I

.field private final DISABLE_IMPROVED_ALIGNMENT:I

.field private final ENABLE_COLOR_COMPENSATION:I

.field private final ENABLE_IMPROVED_ALIGNMENT:I

.field mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

.field private final mHandler:Landroid/os/Handler;

.field mInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

.field private mInitOrientation:I

.field private mIsInitOrientation:Z

.field private mOneShotOrientation:I

.field private mPanningSpeedThreshold:I

.field private mWarningStatus:Z


# direct methods
.method public constructor <init>(Lcom/lge/olaworks/library/AutoPanorama$Callback;)V
    .locals 4
    .parameter "callback"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Lcom/lge/olaworks/library/BaseEngine;-><init>()V

    .line 25
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    invoke-direct {v0}, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    .line 26
    iput-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    .line 29
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mPanningSpeedThreshold:I

    .line 31
    iput v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->DISABLE_COLOR_COMPENSATION:I

    .line 32
    iput v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->ENABLE_COLOR_COMPENSATION:I

    .line 35
    iput v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->ENABLE_IMPROVED_ALIGNMENT:I

    .line 36
    iput v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->DISABLE_IMPROVED_ALIGNMENT:I

    .line 39
    new-instance v0, Lcom/lge/olaworks/library/AutoPanorama$ProcessHandler;

    invoke-direct {v0, p0, v3}, Lcom/lge/olaworks/library/AutoPanorama$ProcessHandler;-><init>(Lcom/lge/olaworks/library/AutoPanorama;Lcom/lge/olaworks/library/AutoPanorama$1;)V

    iput-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mHandler:Landroid/os/Handler;

    .line 45
    iput-boolean v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mIsInitOrientation:Z

    .line 47
    iput-boolean v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mWarningStatus:Z

    .line 150
    iput-object p1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    .line 151
    return-void
.end method

.method static synthetic access$100(Lcom/lge/olaworks/library/AutoPanorama;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lge/olaworks/library/AutoPanorama;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/olaworks/library/AutoPanorama;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lge/olaworks/library/AutoPanorama;->prepareOutput()I

    move-result v0

    return v0
.end method

.method private prepareOutput()I
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 90
    const/4 v10, 0x0

    .line 91
    .local v10, retVal:I
    new-instance v8, Lcom/lge/olaworks/datastruct/Ola_RawContext;

    invoke-direct {v8}, Lcom/lge/olaworks/datastruct/Ola_RawContext;-><init>()V

    .line 93
    .local v8, output:Lcom/lge/olaworks/datastruct/Ola_RawContext;
    const/4 v11, 0x0

    .line 94
    .local v11, rotDeg:I
    iget v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInitOrientation:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 95
    const/16 v11, 0x5a

    .line 103
    :goto_0
    invoke-static {v8, v11}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->getOutputImage(Lcom/lge/olaworks/datastruct/Ola_RawContext;I)I

    move-result v10

    .line 104
    if-gez v10, :cond_3

    .line 105
    iget-object v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    invoke-interface {v1, v5}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onComplete([B)V

    .line 146
    .end local v10           #retVal:I
    :goto_1
    return v10

    .line 96
    .restart local v10       #retVal:I
    :cond_0
    iget v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInitOrientation:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 97
    const/16 v11, 0xb4

    goto :goto_0

    .line 98
    :cond_1
    iget v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInitOrientation:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 99
    const/16 v11, 0x10e

    goto :goto_0

    .line 101
    :cond_2
    iget v11, p0, Lcom/lge/olaworks/library/AutoPanorama;->mOneShotOrientation:I

    goto :goto_0

    .line 109
    :cond_3
    new-instance v0, Landroid/graphics/YuvImage;

    iget-object v1, v8, Lcom/lge/olaworks/datastruct/Ola_RawContext;->rawData:[B

    const/16 v2, 0x11

    iget v3, v8, Lcom/lge/olaworks/datastruct/Ola_RawContext;->width:I

    iget v4, v8, Lcom/lge/olaworks/datastruct/Ola_RawContext;->height:I

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 110
    .local v0, data:Landroid/graphics/YuvImage;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 111
    .local v7, ostream:Ljava/io/ByteArrayOutputStream;
    iget v1, v8, Lcom/lge/olaworks/datastruct/Ola_RawContext;->width:I

    rem-int/lit8 v12, v1, 0x10

    .line 112
    .local v12, w:I
    iget v1, v8, Lcom/lge/olaworks/datastruct/Ola_RawContext;->height:I

    rem-int/lit8 v6, v1, 0x10

    .line 114
    .local v6, h:I
    if-eqz v12, :cond_4

    .line 115
    iget v1, v8, Lcom/lge/olaworks/datastruct/Ola_RawContext;->width:I

    sub-int/2addr v1, v12

    iput v1, v8, Lcom/lge/olaworks/datastruct/Ola_RawContext;->width:I

    .line 116
    :cond_4
    if-eqz v6, :cond_5

    .line 117
    iget v1, v8, Lcom/lge/olaworks/datastruct/Ola_RawContext;->height:I

    sub-int/2addr v1, v6

    iput v1, v8, Lcom/lge/olaworks/datastruct/Ola_RawContext;->height:I

    .line 119
    :cond_5
    new-instance v9, Landroid/graphics/Rect;

    iget v1, v8, Lcom/lge/olaworks/datastruct/Ola_RawContext;->width:I

    iget v2, v8, Lcom/lge/olaworks/datastruct/Ola_RawContext;->height:I

    invoke-direct {v9, v13, v13, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 121
    .local v9, rect:Landroid/graphics/Rect;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/YuvImage;->getStrides()[I

    move-result-object v1

    if-eqz v1, :cond_6

    .line 122
    const/16 v1, 0x5f

    invoke-virtual {v0, v9, v1, v7}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 124
    :cond_6
    iget-object v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onComplete([B)V

    .line 126
    invoke-static {}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->initialize()I

    .line 130
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseAE_AWBLockInPanorama()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 131
    invoke-static {v13, v13}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->setParam(II)I

    .line 137
    :goto_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isPanoramaUseImproveAlign()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 138
    invoke-static {v14, v13}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->setParam(II)I

    .line 143
    :goto_3
    iput-boolean v13, p0, Lcom/lge/olaworks/library/AutoPanorama;->mIsInitOrientation:Z

    move v10, v13

    .line 146
    goto :goto_1

    .line 133
    :cond_7
    invoke-static {v13, v14}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->setParam(II)I

    goto :goto_2

    .line 140
    :cond_8
    invoke-static {v14, v14}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->setParam(II)I

    goto :goto_3
.end method


# virtual methods
.method public create()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 164
    invoke-static {}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->create()I

    move-result v0

    .line 165
    .local v0, retVal:I
    if-gtz v0, :cond_0

    .line 182
    .end local v0           #retVal:I
    :goto_0
    return v0

    .line 167
    .restart local v0       #retVal:I
    :cond_0
    invoke-static {}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->initialize()I

    .line 170
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseAE_AWBLockInPanorama()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    invoke-static {v1, v1}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->setParam(II)I

    .line 177
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isPanoramaUseImproveAlign()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    invoke-static {v3, v1}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->setParam(II)I

    :goto_2
    move v0, v1

    .line 182
    goto :goto_0

    .line 173
    :cond_1
    invoke-static {v1, v3}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->setParam(II)I

    goto :goto_1

    .line 180
    :cond_2
    invoke-static {v3, v3}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->setParam(II)I

    goto :goto_2
.end method

.method public destroy()I
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->destroy()I

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, "AutoPanorama"

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
    .locals 2
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    .line 231
    const-string v0, "CameraApp"

    const-string v1, "Auto Panorama not support function processImage"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public processPreview(Lcom/lge/olaworks/datastruct/Ola_RawContext;)I
    .locals 5
    .parameter "olaBitmap"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 195
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    invoke-virtual {v2}, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->clear()V

    .line 196
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    invoke-static {p1, v2}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->processFrame(Lcom/lge/olaworks/datastruct/Ola_RawContext;Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;)I

    move-result v0

    .line 197
    .local v0, retVal:I
    if-gez v0, :cond_0

    .line 227
    .end local v0           #retVal:I
    :goto_0
    return v0

    .line 199
    .restart local v0       #retVal:I
    :cond_0
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    if-eqz v2, :cond_3

    .line 200
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    invoke-interface {v2, v3}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onProcessFrame(Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;)V

    .line 203
    iget-boolean v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mIsInitOrientation:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    iget v2, v2, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->progressNow:I

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_1

    .line 204
    iget v2, p1, Lcom/lge/olaworks/datastruct/Ola_RawContext;->orientation:I

    iput v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInitOrientation:I

    .line 205
    iput-boolean v4, p0, Lcom/lge/olaworks/library/AutoPanorama;->mIsInitOrientation:Z

    .line 208
    :cond_1
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    iget v2, v2, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->displacement:I

    iget v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mPanningSpeedThreshold:I

    if-le v2, v3, :cond_4

    .line 209
    iget-boolean v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mWarningStatus:Z

    if-nez v2, :cond_2

    .line 210
    iput-boolean v4, p0, Lcom/lge/olaworks/library/AutoPanorama;->mWarningStatus:Z

    .line 211
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    iget-boolean v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mWarningStatus:Z

    invoke-interface {v2, v3}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onPanningSpeedWarning(Z)V

    .line 221
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    iget v2, v2, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->progressNow:I

    iget-object v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    iget v3, v3, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->progressMax:I

    if-lt v2, v3, :cond_3

    .line 222
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    move v0, v1

    .line 227
    goto :goto_0

    .line 215
    :cond_4
    iget-boolean v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mWarningStatus:Z

    if-eqz v2, :cond_2

    .line 216
    iput-boolean v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mWarningStatus:Z

    .line 217
    iget-object v2, p0, Lcom/lge/olaworks/library/AutoPanorama;->mCallback:Lcom/lge/olaworks/library/AutoPanorama$Callback;

    iget-boolean v3, p0, Lcom/lge/olaworks/library/AutoPanorama;->mWarningStatus:Z

    invoke-interface {v2, v3}, Lcom/lge/olaworks/library/AutoPanorama$Callback;->onPanningSpeedWarning(Z)V

    goto :goto_1
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 87
    iput p1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mOneShotOrientation:I

    .line 88
    return-void
.end method

.method public setProcessPreviewStop(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 265
    return-void
.end method

.method public stopProcess()I
    .locals 3

    .prologue
    .line 238
    iget-object v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    invoke-virtual {v1}, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;->clear()V

    .line 239
    iget-object v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mInfo:Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;

    invoke-static {v1}, Lcom/lge/olaworks/jni/OlaAutoPanoramaJNI;->stopProcess(Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaInfo;)I

    move-result v0

    .line 241
    .local v0, retVal:I
    if-nez v0, :cond_0

    .line 242
    iget-object v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 248
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/lge/olaworks/library/AutoPanorama;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 246
    const-string v1, "CameraApp"

    const-string v2, "auto panorama stop process fail!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
