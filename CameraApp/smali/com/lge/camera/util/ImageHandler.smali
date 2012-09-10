.class public abstract Lcom/lge/camera/util/ImageHandler;
.super Ljava/lang/Object;
.source "ImageHandler.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "CameraApp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
.end method

.method public abstract addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BI)Landroid/net/Uri;
.end method

.method public abstract addJpegImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
.end method

.method public abstract convertYuvToJpeg([BIIII)[B
.end method

.method public abstract getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
.end method

.method protected getRotated(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bmp"
    .parameter "rotation"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/camera/util/ImageHandler;->getRotated(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getRotated(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bmp"
    .parameter "rotation"
    .parameter "mirror"

    .prologue
    .line 43
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    move-object v8, p1

    .line 71
    :cond_0
    :goto_0
    return-object v8

    .line 46
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 47
    .local v5, matrix:Landroid/graphics/Matrix;
    if-eqz p3, :cond_2

    .line 48
    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 50
    :cond_2
    if-eqz p2, :cond_3

    .line 51
    int-to-float v1, p2

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 53
    :cond_3
    const/4 v8, 0x0

    .line 55
    .local v8, rotated:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 63
    if-eqz p1, :cond_4

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 66
    :cond_4
    const/4 p1, 0x0

    .line 68
    :goto_1
    if-eqz v5, :cond_0

    .line 69
    const/4 v5, 0x0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v7

    .line 57
    .local v7, err:Ljava/lang/OutOfMemoryError;
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 58
    .local v0, tmp:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 59
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 60
    const/4 v0, 0x0

    .line 61
    const-string v1, "CameraApp"

    const-string v2, "error occurred rotating image because of OutOfMemory"

    invoke-static {v1, v2, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    if-eqz p1, :cond_5

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 66
    :cond_5
    const/4 p1, 0x0

    .line 67
    goto :goto_1

    .line 63
    .end local v0           #tmp:Landroid/graphics/Bitmap;
    .end local v7           #err:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    if-eqz p1, :cond_6

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 66
    :cond_6
    const/4 p1, 0x0

    throw v1
.end method

.method public getRotatedNotRecycle(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bmp"
    .parameter "rotation"
    .parameter "mirror"

    .prologue
    const/4 v9, 0x0

    .line 75
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 96
    .end local p1
    :goto_0
    return-object p1

    .line 78
    .restart local p1
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 79
    .local v5, matrix:Landroid/graphics/Matrix;
    if-eqz p3, :cond_1

    .line 80
    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 82
    :cond_1
    if-eqz p2, :cond_2

    .line 83
    int-to-float v1, p2

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 85
    :cond_2
    const/4 v8, 0x0

    .line 87
    .local v8, rotated:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 93
    :goto_1
    if-eqz v5, :cond_3

    .line 94
    const/4 v5, 0x0

    :cond_3
    move-object p1, v8

    .line 96
    goto :goto_0

    .line 88
    :catch_0
    move-exception v7

    .line 89
    .local v7, err:Ljava/lang/OutOfMemoryError;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    invoke-static {p1, v1, v2, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, tmp:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v1, v9

    move v2, v9

    move v6, v9

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 91
    const-string v1, "CameraApp"

    const-string v2, "error occurred rotating image because of OutOfMemory"

    invoke-static {v1, v2, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public abstract resetRotation()V
.end method

.method public abstract saveContiShotImage([BLjava/lang/String;III)I
.end method

.method public abstract saveTempFileForTimeMachineShot([BLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setRotation(Landroid/hardware/Camera$Parameters;I)Z
.end method

.method public abstract startOlaPanorama(Landroid/hardware/Camera$Parameters;I)V
.end method
