.class public Lcom/lge/olaworks/library/Exif;
.super Ljava/lang/Object;
.source "Exif.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraApp"

.field private static mFocalLength:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/high16 v0, 0x3f80

    sput v0, Lcom/lge/olaworks/library/Exif;->mFocalLength:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeExifThumbnail(Landroid/graphics/Bitmap;)[B
    .locals 19
    .parameter "srcBitmap"

    .prologue
    .line 41
    const/16 v12, 0xa0

    .local v12, tw:I
    const/16 v5, 0x78

    .line 42
    .local v5, th:I
    const-wide/high16 v13, 0x3ff0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-double v15, v15

    mul-double/2addr v13, v15

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-double v15, v15

    div-double v3, v13, v15

    .line 43
    .local v3, srcRatio:D
    const-wide/high16 v13, 0x3ff0

    int-to-double v15, v12

    mul-double/2addr v13, v15

    int-to-double v15, v5

    div-double v10, v13, v15

    .line 48
    .local v10, thumbRatio:D
    cmpl-double v13, v3, v10

    if-lez v13, :cond_1

    .line 49
    const-wide/high16 v13, 0x3ff0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-double v15, v15

    mul-double/2addr v13, v15

    int-to-double v15, v12

    mul-double/2addr v13, v15

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-double v15, v15

    div-double/2addr v13, v15

    const-wide/high16 v15, 0x3fe0

    add-double/2addr v13, v15

    double-to-int v5, v13

    .line 53
    :cond_0
    :goto_0
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v5, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 54
    .local v8, thumbNailBitmap:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 56
    .local v9, thumbNailCanvas:Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v9, v0, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 61
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    .local v2, ostream:Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 63
    .local v6, thumbJpg:[B
    if-eqz v2, :cond_2

    .line 64
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x4b

    invoke-virtual {v8, v13, v14, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 65
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 67
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 68
    const/4 v8, 0x0

    .line 71
    :try_start_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_1
    const/4 v2, 0x0

    .line 86
    invoke-static {v6}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->stripJpegHeader([B)[B

    move-result-object v7

    .line 87
    .local v7, thumbJpg2:[B
    const/4 v6, 0x0

    .line 89
    return-object v7

    .line 50
    .end local v2           #ostream:Ljava/io/ByteArrayOutputStream;
    .end local v6           #thumbJpg:[B
    .end local v7           #thumbJpg2:[B
    .end local v8           #thumbNailBitmap:Landroid/graphics/Bitmap;
    .end local v9           #thumbNailCanvas:Landroid/graphics/Canvas;
    :cond_1
    cmpg-double v13, v3, v10

    if-gez v13, :cond_0

    .line 51
    const-wide/high16 v13, 0x3ff0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-double v15, v15

    mul-double/2addr v13, v15

    int-to-double v15, v5

    mul-double/2addr v13, v15

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-double v15, v15

    div-double/2addr v13, v15

    const-wide/high16 v15, 0x3fe0

    add-double/2addr v13, v15

    double-to-int v12, v13

    goto :goto_0

    .line 72
    .restart local v2       #ostream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #thumbJpg:[B
    .restart local v8       #thumbNailBitmap:Landroid/graphics/Bitmap;
    .restart local v9       #thumbNailCanvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    .line 74
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    const-string v13, "CameraApp"

    const-string v14, " error! ostream can\'t create. ostream is null"

    invoke-static {v13, v14}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 79
    const/4 v8, 0x0

    .line 81
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public static processLoadExif([B[BLandroid/graphics/Bitmap;)[B
    .locals 6
    .parameter "before"
    .parameter "after"
    .parameter "beforeBitmap"

    .prologue
    const/4 v0, 0x0

    .line 340
    new-instance v1, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;

    array-length v4, p0

    invoke-direct {v1, p0, v4}, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;-><init>([BI)V

    .line 342
    .local v1, original:Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->create()I

    move-result v2

    .line 343
    .local v2, res:I
    if-gez v2, :cond_0

    .line 345
    const-string v4, "CameraApp"

    const-string v5, "OlaExifInterfaceJNI.create() is failed"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :goto_0
    return-object v0

    .line 348
    :cond_0
    invoke-static {v1}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->load(Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;)I

    move-result v2

    .line 349
    if-gez v2, :cond_1

    .line 351
    const-string v4, "CameraApp"

    const-string v5, "OlaExifInterfaceJNI.load() is failed"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    goto :goto_0

    .line 356
    :cond_1
    invoke-static {p1}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setPrimaryImg([B)I

    move-result v2

    .line 357
    if-gez v2, :cond_2

    .line 359
    const-string v4, "CameraApp"

    const-string v5, "OlaExifInterfaceJNI.setPrimaryImg() is failed"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    goto :goto_0

    .line 364
    :cond_2
    invoke-static {p2}, Lcom/lge/olaworks/library/Exif;->makeExifThumbnail(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    .line 365
    .local v3, thumbJpg:[B
    if-nez v3, :cond_3

    .line 367
    const-string v4, "CameraApp"

    const-string v5, "OlaExifInterfaceJNI.stripJpegHeader() is failed"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    goto :goto_0

    .line 372
    :cond_3
    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setThumbNail(I[B)I

    move-result v2

    .line 373
    if-gez v2, :cond_4

    .line 375
    const-string v4, "CameraApp"

    const-string v5, "OlaExifInterfaceJNI.setThumbNail() is failed"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    goto :goto_0

    .line 380
    :cond_4
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->generate()[B

    move-result-object v0

    .line 382
    .local v0, generatedJpg:[B
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    goto :goto_0
.end method

.method public static processNewExif([BLandroid/graphics/Bitmap;Landroid/location/Location;)[B
    .locals 31
    .parameter "orgJpg"
    .parameter "orgBitmap"
    .parameter "loc"

    .prologue
    .line 104
    invoke-static/range {p1 .. p1}, Lcom/lge/olaworks/library/Exif;->makeExifThumbnail(Landroid/graphics/Bitmap;)[B

    move-result-object v28

    .line 105
    .local v28, thumbJpg:[B
    if-nez v28, :cond_0

    .line 107
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.stripJpegHeader() is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 109
    const/16 v23, 0x0

    .line 325
    :goto_0
    return-object v23

    .line 112
    :cond_0
    new-instance v2, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    array-length v6, v0

    const/16 v7, 0x48

    const/4 v8, 0x1

    const/16 v9, 0x48

    const/4 v10, 0x1

    const/4 v11, 0x2

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v11}, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;-><init>(II[BIIIIII)V

    .line 113
    .local v2, primeImg:Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;
    new-instance v3, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object/from16 v0, v28

    array-length v7, v0

    const/16 v8, 0x48

    const/4 v9, 0x1

    const/16 v10, 0x48

    const/4 v11, 0x1

    const/4 v12, 0x2

    move-object/from16 v6, v28

    invoke-direct/range {v3 .. v12}, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;-><init>(II[BIIIIII)V

    .line 114
    .local v3, thumbImg:Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;
    new-instance v4, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;

    const v5, 0x30323230

    const v6, 0x1020300

    const v7, 0x30313030

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct/range {v4 .. v10}, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;-><init>(IIIIII)V

    .line 116
    .local v4, exifPriv:Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->create()I

    move-result v27

    .line 117
    .local v27, res:I
    if-gez v27, :cond_1

    .line 119
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.create() is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const/16 v23, 0x0

    goto :goto_0

    .line 123
    :cond_1
    invoke-static {v2, v3, v4}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->initialize(Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;)I

    move-result v27

    .line 124
    if-gez v27, :cond_2

    .line 126
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.initialize() is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 128
    const/16 v23, 0x0

    goto :goto_0

    .line 137
    :cond_2
    const/4 v7, 0x0

    const/16 v9, 0x10f

    const/4 v14, 0x2

    const-string v15, "LG Electronics"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const-string v16, "LG Electronics"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setByteArray(IIII[B)I

    move-result v27

    .line 138
    if-gez v27, :cond_3

    .line 140
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setByteArray(PRIME, MAKE) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 142
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 145
    :cond_3
    const/4 v7, 0x0

    const/16 v9, 0x110

    const/4 v14, 0x2

    sget-object v15, Lcom/lge/olaworks/define/Ola_Exif;->MODEL_STR:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    sget-object v16, Lcom/lge/olaworks/define/Ola_Exif;->MODEL_STR:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setByteArray(IIII[B)I

    move-result v27

    .line 146
    if-gez v27, :cond_4

    .line 148
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setByteArray(PRIME, MODEL) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 150
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 156
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v21

    .line 158
    .local v21, cal:Ljava/util/Calendar;
    const-string v7, "%04d:%02d:%02d %02d:%02d:%02d"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v14

    const/4 v14, 0x1

    const/4 v15, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v14

    const/4 v14, 0x2

    const/4 v15, 0x5

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v14

    const/4 v14, 0x3

    const/16 v15, 0xb

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v14

    const/4 v14, 0x4

    const/16 v15, 0xc

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v14

    const/4 v14, 0x5

    const/16 v15, 0xd

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v9, v14

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 160
    .local v22, calStr:Ljava/lang/String;
    const/4 v7, 0x1

    const v9, 0x9003

    const/4 v14, 0x2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setByteArray(IIII[B)I

    move-result v27

    .line 161
    if-gez v27, :cond_5

    .line 163
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setByteArray(PRIVATE, DATETIME_ORIGINAL) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 165
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 167
    :cond_5
    const/4 v7, 0x1

    const v9, 0x9004

    const/4 v14, 0x2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setByteArray(IIII[B)I

    move-result v27

    .line 168
    if-gez v27, :cond_6

    .line 170
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setByteArray(PRIVATE, DATETIME_DIGITIZED) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 172
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 176
    :cond_6
    new-instance v26, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;

    invoke-direct/range {v26 .. v26}, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;-><init>()V

    .line 179
    .local v26, rationalData:Lcom/lge/olaworks/datastruct/Ola_ExifUrational;
    sget v7, Lcom/lge/olaworks/library/Exif;->mFocalLength:F

    const/high16 v9, 0x42c8

    mul-float/2addr v7, v9

    float-to-int v7, v7

    move-object/from16 v0, v26

    iput v7, v0, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;->numerator:I

    .line 180
    const/16 v7, 0x64

    move-object/from16 v0, v26

    iput v7, v0, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;->denominator:I

    .line 182
    const/4 v7, 0x1

    const v9, 0x920a

    const/4 v14, 0x5

    const/4 v15, 0x1

    move-object/from16 v0, v26

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setUrational(IIIILcom/lge/olaworks/datastruct/Ola_ExifUrational;)I

    move-result v27

    .line 183
    if-gez v27, :cond_7

    .line 185
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setUrational(PRIVATE, FOCALLENGTH) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 187
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 193
    :cond_7
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v14, 0x2

    const-string v15, "R98"

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const-string v16, "R98"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setByteArray(IIII[B)I

    move-result v27

    .line 194
    if-gez v27, :cond_8

    .line 196
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setByteArray(INTEROP, INTEROP_INDEX) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 198
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 200
    :cond_8
    const/4 v7, 0x2

    const/4 v9, 0x2

    const/4 v14, 0x7

    const/4 v15, 0x4

    const v16, 0x30313030

    move/from16 v0, v16

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setInt(IIIII)I

    move-result v27

    .line 201
    if-gez v27, :cond_9

    .line 203
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setInt(INTEROP, INTEROP_VERSION) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 205
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 211
    :cond_9
    const/4 v7, 0x3

    const/4 v9, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x4

    const/high16 v16, 0x2020

    move/from16 v0, v16

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setInt(IIIII)I

    move-result v27

    .line 212
    if-gez v27, :cond_a

    .line 214
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setInt(GPS, GPS_VERSION) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 216
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 219
    :cond_a
    if-eqz p2, :cond_14

    .line 220
    const-wide/16 v29, 0x0

    .line 221
    .local v29, value:D
    const/4 v6, 0x0

    .line 222
    .local v6, degree:I
    const/4 v8, 0x0

    .line 223
    .local v8, min:I
    const/4 v10, 0x0

    .line 225
    .local v10, sec:I
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v29

    .line 226
    const-wide/16 v14, 0x0

    cmpl-double v7, v29, v14

    if-lez v7, :cond_b

    const-string v24, "N"

    .line 227
    .local v24, latRef:Ljava/lang/String;
    :goto_1
    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v14, 0x2

    const/4 v15, 0x1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setByteArray(IIII[B)I

    move-result v27

    .line 228
    if-gez v27, :cond_c

    .line 230
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setByteArray(GPS, GPS_LAT_REF) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 232
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 226
    .end local v24           #latRef:Ljava/lang/String;
    :cond_b
    const-string v24, "S"

    goto :goto_1

    .line 235
    .restart local v24       #latRef:Ljava/lang/String;
    :cond_c
    move-wide/from16 v0, v29

    double-to-int v6, v0

    .line 236
    int-to-double v14, v6

    sub-double v14, v29, v14

    const-wide/high16 v16, 0x404e

    mul-double v14, v14, v16

    double-to-int v8, v14

    .line 237
    int-to-double v14, v6

    sub-double v14, v29, v14

    const-wide/high16 v16, 0x404e

    mul-double v14, v14, v16

    int-to-double v0, v8

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x404e

    mul-double v14, v14, v16

    double-to-int v10, v14

    .line 238
    new-instance v5, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;

    const/4 v7, 0x1

    const/4 v9, 0x1

    const/4 v11, 0x1

    invoke-direct/range {v5 .. v11}, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;-><init>(IIIIII)V

    .line 239
    .local v5, lat:Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;
    const/4 v7, 0x3

    const/4 v9, 0x2

    const/4 v14, 0x5

    const/4 v15, 0x3

    invoke-static {v7, v9, v14, v15, v5}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setGpsUrational(IIIILcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;)I

    move-result v27

    .line 240
    if-gez v27, :cond_d

    .line 242
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setGpsUrational(GPS, GPS_LAT) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 244
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 247
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v29

    .line 248
    const-wide/16 v14, 0x0

    cmpl-double v7, v29, v14

    if-lez v7, :cond_e

    const-string v25, "E"

    .line 249
    .local v25, longRef:Ljava/lang/String;
    :goto_2
    const/4 v7, 0x3

    const/4 v9, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setByteArray(IIII[B)I

    move-result v27

    .line 250
    if-gez v27, :cond_f

    .line 252
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setByteArray(GPS, GPS_LONG_REF) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 254
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 248
    .end local v25           #longRef:Ljava/lang/String;
    :cond_e
    const-string v25, "W"

    goto :goto_2

    .line 257
    .restart local v25       #longRef:Ljava/lang/String;
    :cond_f
    move-wide/from16 v0, v29

    double-to-int v6, v0

    .line 258
    int-to-double v14, v6

    sub-double v14, v29, v14

    const-wide/high16 v16, 0x404e

    mul-double v14, v14, v16

    double-to-int v8, v14

    .line 259
    int-to-double v14, v6

    sub-double v14, v29, v14

    const-wide/high16 v16, 0x404e

    mul-double v14, v14, v16

    int-to-double v0, v8

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x404e

    mul-double v14, v14, v16

    double-to-int v10, v14

    .line 260
    new-instance v11, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;

    const/4 v13, 0x1

    const/4 v15, 0x1

    const/16 v17, 0x1

    move v12, v6

    move v14, v8

    move/from16 v16, v10

    invoke-direct/range {v11 .. v17}, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;-><init>(IIIIII)V

    .line 261
    .local v11, longi:Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;
    const/4 v7, 0x3

    const/4 v9, 0x4

    const/4 v14, 0x5

    const/4 v15, 0x3

    invoke-static {v7, v9, v14, v15, v11}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setGpsUrational(IIIILcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;)I

    move-result v27

    .line 262
    if-gez v27, :cond_10

    .line 264
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setGpsUrational(GPS, GPS_LONG) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 266
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 269
    :cond_10
    const/16 v20, 0x0

    .line 270
    .local v20, altRef:I
    const/4 v7, 0x3

    const/4 v9, 0x5

    const/4 v14, 0x1

    const/4 v15, 0x1

    move/from16 v0, v20

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setInt(IIIII)I

    move-result v27

    .line 271
    if-gez v27, :cond_11

    .line 273
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setByteArray(GPS, GPS_ALT_REF) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 275
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 278
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v29

    .line 279
    move-wide/from16 v0, v29

    double-to-int v6, v0

    .line 280
    int-to-double v14, v6

    sub-double v14, v29, v14

    const-wide/high16 v16, 0x404e

    mul-double v14, v14, v16

    double-to-int v8, v14

    .line 281
    int-to-double v14, v6

    sub-double v14, v29, v14

    const-wide/high16 v16, 0x404e

    mul-double v14, v14, v16

    int-to-double v0, v8

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x404e

    mul-double v14, v14, v16

    double-to-int v10, v14

    .line 282
    new-instance v12, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;

    const/4 v14, 0x1

    const/16 v16, 0x1

    const/16 v18, 0x1

    move v13, v6

    move v15, v8

    move/from16 v17, v10

    invoke-direct/range {v12 .. v18}, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;-><init>(IIIIII)V

    .line 283
    .local v12, alt:Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;
    const/4 v7, 0x3

    const/4 v9, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x3

    invoke-static {v7, v9, v14, v15, v12}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setGpsUrational(IIIILcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;)I

    move-result v27

    .line 284
    if-gez v27, :cond_12

    .line 286
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setGpsUrational(GPS, GPS_ALT) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 288
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 291
    :cond_12
    new-instance v7, Ljava/sql/Date;

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v14

    invoke-direct {v7, v14, v15}, Ljava/sql/Date;-><init>(J)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 292
    new-instance v13, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;

    const/16 v7, 0xb

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/4 v15, 0x1

    const/16 v7, 0xc

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v16

    const/16 v17, 0x1

    const/16 v7, 0xd

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/16 v19, 0x1

    invoke-direct/range {v13 .. v19}, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;-><init>(IIIIII)V

    .line 293
    .local v13, timeStmp:Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;
    const/4 v7, 0x3

    const/4 v9, 0x7

    const/4 v14, 0x5

    const/4 v15, 0x3

    invoke-static {v7, v9, v14, v15, v13}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setGpsUrational(IIIILcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;)I

    move-result v27

    .line 294
    if-gez v27, :cond_13

    .line 296
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setGpsUrational(GPS, GPS_TIMESTAMP) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 298
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 301
    :cond_13
    const/4 v7, 0x3

    const/16 v9, 0x12

    const/4 v14, 0x2

    const/4 v15, 0x6

    const-string v16, "WGS-84"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v7, v9, v14, v15, v0}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setByteArray(IIII[B)I

    move-result v27

    .line 302
    if-gez v27, :cond_15

    .line 304
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setByteArray(GPS, GPS_MAP_DATUM) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 306
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 311
    .end local v5           #lat:Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;
    .end local v6           #degree:I
    .end local v8           #min:I
    .end local v10           #sec:I
    .end local v11           #longi:Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;
    .end local v12           #alt:Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;
    .end local v13           #timeStmp:Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;
    .end local v20           #altRef:I
    .end local v24           #latRef:Ljava/lang/String;
    .end local v25           #longRef:Ljava/lang/String;
    .end local v29           #value:D
    :cond_14
    new-instance v7, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v7, v14, v15}, Ljava/sql/Date;-><init>(J)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 312
    new-instance v13, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;

    const/16 v7, 0xb

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/4 v15, 0x1

    const/16 v7, 0xc

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v16

    const/16 v17, 0x1

    const/16 v7, 0xd

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v18

    const/16 v19, 0x1

    invoke-direct/range {v13 .. v19}, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;-><init>(IIIIII)V

    .line 313
    .restart local v13       #timeStmp:Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;
    const/4 v7, 0x3

    const/4 v9, 0x7

    const/4 v14, 0x5

    const/4 v15, 0x3

    invoke-static {v7, v9, v14, v15, v13}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->setGpsUrational(IIIILcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;)I

    move-result v27

    .line 314
    if-gez v27, :cond_15

    .line 316
    const-string v7, "CameraApp"

    const-string v9, "OlaExifInterfaceJNI.setGpsUrational(GPS, GPS_TIMESTAMP) is failed"

    invoke-static {v7, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    .line 318
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 321
    :cond_15
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->generate()[B

    move-result-object v23

    .line 323
    .local v23, generatedJpg:[B
    invoke-static {}, Lcom/lge/olaworks/jni/OlaExifInterfaceJNI;->destroy()I

    goto/16 :goto_0
.end method


# virtual methods
.method public setFocalLength(F)V
    .locals 0
    .parameter "length"

    .prologue
    .line 29
    sput p1, Lcom/lge/olaworks/library/Exif;->mFocalLength:F

    .line 30
    return-void
.end method
