.class public Lcom/lge/camera/util/ImageRotationOn;
.super Lcom/lge/camera/util/ImageHandler;
.source "ImageRotationOn.java"


# static fields
.field private static final ROTATE_CCR_90:I = 0x10e

.field private static final ROTATE_CR_180:I = 0xb4

.field private static final ROTATE_CR_90:I = 0x5a

.field private static final ROTATE_ZERO:I


# instance fields
.field private mLastRotation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lge/camera/util/ImageHandler;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    return-void
.end method

.method private getOlaRotation(I)I
    .locals 1
    .parameter "rotation"

    .prologue
    .line 78
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_0

    .line 79
    const/4 v0, 0x6

    .line 87
    :goto_0
    return v0

    .line 81
    :cond_0
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_1

    .line 82
    const/16 v0, 0x8

    goto :goto_0

    .line 84
    :cond_1
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_2

    .line 85
    const/4 v0, 0x3

    goto :goto_0

    .line 87
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 8
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "degree"

    .prologue
    .line 62
    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v7}, Lcom/lge/camera/util/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BI)Landroid/net/Uri;
    .locals 10
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpegData"
    .parameter "degree"

    .prologue
    .line 66
    const/4 v9, 0x0

    move-object v0, p1

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-static/range {v0 .. v9}, Lcom/lge/camera/util/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public addJpegImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 1
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "jpegData"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "degree"

    .prologue
    .line 95
    invoke-static/range {p1 .. p9}, Lcom/lge/camera/util/ImageManager;->addJpegImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public convertYuvToJpeg([BIIII)[B
    .locals 19
    .parameter "data"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"
    .parameter "quality"

    .prologue
    .line 100
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/lge/camera/util/ImageRotationOn;->getOlaRotation(I)I

    move-result v5

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v5, v3}, Lcom/lge/olaworks/jni/OlaBitmapGraphicsJNI;->convertYuvToJpeg([BIIII)[B

    move-result-object v13

    .line 101
    .local v13, jpegData:[B
    if-eqz v13, :cond_0

    .line 102
    const-string v5, "CameraApp"

    const-string v6, "converted by OlaBitmapGraphicsJNI.convertYuvToJpeg()"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .end local v13           #jpegData:[B
    :goto_0
    return-object v13

    .line 106
    .restart local v13       #jpegData:[B
    :cond_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resolution ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] data size ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getOlaRotation("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/lge/camera/util/ImageRotationOn;->getOlaRotation(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    move-object/from16 v0, p1

    array-length v5, v0

    mul-int v6, p2, p3

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v6, v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v13, 0x0

    goto :goto_0

    .line 111
    :cond_1
    if-eqz p4, :cond_3

    .line 112
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/lge/camera/util/ImageRotationOn;->getOlaRotation(I)I

    move-result v5

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v5}, Lcom/lge/olaworks/jni/OlaBitmapGraphicsJNI;->rotateYuv([BIII)[B

    move-result-object v17

    .line 113
    .local v17, rotateData:[B
    if-eqz v17, :cond_6

    .line 114
    move-object/from16 p1, v17

    .line 115
    const/16 v5, 0x10e

    move/from16 v0, p4

    if-eq v0, v5, :cond_2

    const/16 v5, 0x5a

    move/from16 v0, p4

    if-ne v0, v5, :cond_3

    .line 116
    :cond_2
    move/from16 v18, p2

    .line 117
    .local v18, tmp:I
    move/from16 p2, p3

    .line 118
    move/from16 p3, v18

    .line 127
    .end local v17           #rotateData:[B
    .end local v18           #tmp:I
    :cond_3
    :goto_1
    new-instance v4, Landroid/graphics/YuvImage;

    const/16 v6, 0x11

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v4 .. v9}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 128
    .local v4, yuv:Landroid/graphics/YuvImage;
    const/4 v15, 0x0

    .line 129
    .local v15, result:[B
    if-eqz v4, :cond_5

    .line 130
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 132
    .local v10, bos:Ljava/io/ByteArrayOutputStream;
    const/16 v16, 0x0

    .line 133
    .local v16, ret:Z
    :try_start_0
    new-instance v14, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v14, v5, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 134
    .local v14, rectangle:Landroid/graphics/Rect;
    if-eqz v14, :cond_4

    invoke-virtual {v4}, Landroid/graphics/YuvImage;->getStrides()[I

    move-result-object v5

    if-eqz v5, :cond_4

    .line 135
    move/from16 v0, p5

    invoke-virtual {v4, v14, v0, v10}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v16

    .line 137
    :cond_4
    if-eqz v16, :cond_7

    .line 138
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    .line 149
    :goto_2
    :try_start_1
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    const/4 v10, 0x0

    .line 156
    .end local v14           #rectangle:Landroid/graphics/Rect;
    :goto_3
    const/4 v4, 0x0

    .line 157
    const/16 p1, 0x0

    .end local v10           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v16           #ret:Z
    :cond_5
    move-object v13, v15

    .line 162
    goto/16 :goto_0

    .line 122
    .end local v4           #yuv:Landroid/graphics/YuvImage;
    .end local v15           #result:[B
    .restart local v17       #rotateData:[B
    :cond_6
    const-string v5, "CameraApp"

    const-string v6, "Rotated data is null!"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 141
    .end local v17           #rotateData:[B
    .restart local v4       #yuv:Landroid/graphics/YuvImage;
    .restart local v10       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v14       #rectangle:Landroid/graphics/Rect;
    .restart local v15       #result:[B
    .restart local v16       #ret:Z
    :cond_7
    const/4 v15, 0x0

    goto :goto_2

    .line 151
    :catch_0
    move-exception v12

    .line 152
    .local v12, ex:Ljava/lang/Exception;
    const-string v5, "CameraApp"

    const-string v6, "Exception in finally block"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 143
    .end local v12           #ex:Ljava/lang/Exception;
    .end local v14           #rectangle:Landroid/graphics/Rect;
    :catch_1
    move-exception v11

    .line 144
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    const-string v5, "CameraApp"

    const-string v6, "Exception while YuvImage.compressToJpeg()"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    const/4 v15, 0x0

    .line 149
    :try_start_3
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 150
    const/4 v10, 0x0

    goto :goto_3

    .line 151
    :catch_2
    move-exception v12

    .line 152
    .restart local v12       #ex:Ljava/lang/Exception;
    const-string v5, "CameraApp"

    const-string v6, "Exception in finally block"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 148
    .end local v11           #e:Ljava/lang/Exception;
    .end local v12           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 149
    :try_start_4
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 150
    const/4 v10, 0x0

    .line 154
    :goto_4
    throw v5

    .line 151
    :catch_3
    move-exception v12

    .line 152
    .restart local v12       #ex:Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "Exception in finally block"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "bmp"
    .parameter "rotation"
    .parameter "mirror"

    .prologue
    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/camera/util/ImageRotationOn;->getRotated(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public resetRotation()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    .line 36
    return-void
.end method

.method public saveContiShotImage([BLjava/lang/String;III)I
    .locals 1
    .parameter "data"
    .parameter "filename"
    .parameter "rotation"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 74
    const/4 v0, -0x1

    return v0
.end method

.method public saveTempFileForTimeMachineShot([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "jpegData"
    .parameter "directory"
    .parameter "filename"

    .prologue
    .line 70
    invoke-static {p1, p2, p3}, Lcom/lge/camera/util/ImageManager;->saveTempFileForTimeMachineShot([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setRotation(Landroid/hardware/Camera$Parameters;I)Z
    .locals 4
    .parameter "param"
    .parameter "rotation"

    .prologue
    const/4 v0, 0x1

    .line 39
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 40
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRotation ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isOMAP4Chipset()Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 43
    iput p2, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    .line 54
    :goto_0
    return v0

    .line 46
    :cond_0
    iget v1, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    if-eq v1, p2, :cond_1

    .line 47
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 48
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRotation ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput p2, p0, Lcom/lge/camera/util/ImageRotationOn;->mLastRotation:I

    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startOlaPanorama(Landroid/hardware/Camera$Parameters;I)V
    .locals 0
    .parameter "param"
    .parameter "rotation"

    .prologue
    .line 59
    return-void
.end method
