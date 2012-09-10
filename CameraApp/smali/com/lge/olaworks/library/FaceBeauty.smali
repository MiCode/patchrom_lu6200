.class public Lcom/lge/olaworks/library/FaceBeauty;
.super Lcom/lge/olaworks/library/BaseEngine;
.source "FaceBeauty.java"


# static fields
.field public static final ENGINE_TAG:Ljava/lang/String; = "FaceBeauty"

.field public static final TAG:Ljava/lang/String; = "CameraApp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/lge/olaworks/library/BaseEngine;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public create()I
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lcom/lge/olaworks/jni/OlaFaceBeautyJNI;->create()I

    move-result v0

    .line 28
    .local v0, retVal:I
    if-eqz v0, :cond_0

    move v1, v0

    .line 32
    .end local v0           #retVal:I
    .local v1, retVal:I
    :goto_0
    return v1

    .line 31
    .end local v1           #retVal:I
    .restart local v0       #retVal:I
    :cond_0
    invoke-static {}, Lcom/lge/olaworks/jni/OlaFaceBeautyJNI;->initialize()I

    move-result v0

    move v1, v0

    .line 32
    .end local v0           #retVal:I
    .restart local v1       #retVal:I
    goto :goto_0
.end method

.method public destroy()I
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/lge/olaworks/jni/OlaFaceBeautyJNI;->destroy()I

    move-result v0

    .line 38
    .local v0, retVal:I
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const-string v0, "FaceBeauty"

    return-object v0
.end method

.method public needRenderMode()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public processImage(Landroid/graphics/Bitmap;I)I
    .locals 3
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    .line 71
    const-string v1, "CameraApp"

    const-string v2, "FaceBeauty Shot processImage execute"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {p1, p2}, Lcom/lge/olaworks/jni/OlaFaceBeautyJNI;->processImageBitmap(Landroid/graphics/Bitmap;I)I

    move-result v0

    .line 73
    .local v0, retVal:I
    return v0
.end method

.method public processImage(Lcom/lge/olaworks/datastruct/Ola_RawContext;)I
    .locals 3
    .parameter "rawContext"

    .prologue
    .line 64
    const-string v1, "CameraApp"

    const-string v2, "FaceBeauty Shot processImage execute"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p1}, Lcom/lge/olaworks/jni/OlaFaceBeautyJNI;->processImageRaw(Lcom/lge/olaworks/datastruct/Ola_RawContext;)I

    move-result v0

    .line 67
    .local v0, retVal:I
    return v0
.end method

.method public processPreview(Landroid/graphics/Bitmap;I)I
    .locals 2
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    .line 53
    invoke-static {p1, p2}, Lcom/lge/olaworks/jni/OlaFaceBeautyJNI;->processPreviewBitmap(Landroid/graphics/Bitmap;I)I

    move-result v0

    .line 54
    .local v0, retVal:I
    if-ltz v0, :cond_0

    .line 55
    iget-boolean v1, p0, Lcom/lge/olaworks/library/BaseEngine;->mFlipH:Z

    if-eqz v1, :cond_0

    .line 60
    :cond_0
    return v0
.end method

.method public processPreview(Lcom/lge/olaworks/datastruct/Ola_RawContext;)I
    .locals 2
    .parameter "rawContext"

    .prologue
    .line 42
    invoke-static {p1}, Lcom/lge/olaworks/jni/OlaFaceBeautyJNI;->processPreviewRaw(Lcom/lge/olaworks/datastruct/Ola_RawContext;)I

    move-result v0

    .line 43
    .local v0, retVal:I
    if-ltz v0, :cond_0

    .line 44
    iget-boolean v1, p0, Lcom/lge/olaworks/library/BaseEngine;->mFlipH:Z

    if-eqz v1, :cond_0

    .line 49
    :cond_0
    return v0
.end method

.method public setParameter(II)V
    .locals 4
    .parameter "whiteing"
    .parameter "strength"

    .prologue
    .line 82
    const-string v1, "CameraApp"

    const-string v2, "setParameter"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {p1, p2}, Lcom/lge/olaworks/jni/OlaFaceBeautyJNI;->setParameters(II)I

    move-result v0

    .line 84
    .local v0, retVal:I
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setParameter return ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method
