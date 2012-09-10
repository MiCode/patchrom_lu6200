.class public Lcom/lge/camera/util/ImageRotationOff;
.super Lcom/lge/camera/util/ImageHandler;
.source "ImageRotationOff.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lge/camera/util/ImageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 1
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "degree"

    .prologue
    .line 27
    invoke-static/range {p1 .. p8}, Lcom/lge/camera/util/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BI)Landroid/net/Uri;
    .locals 1
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
    .line 31
    invoke-static/range {p1 .. p10}, Lcom/lge/camera/util/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BI)Landroid/net/Uri;

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
    .line 47
    invoke-static/range {p1 .. p9}, Lcom/lge/camera/util/ImageManager;->addJpegImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public convertYuvToJpeg([BIIII)[B
    .locals 1
    .parameter "data"
    .parameter "width"
    .parameter "height"
    .parameter "rotation"
    .parameter "quality"

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "bmp"
    .parameter "rotation"
    .parameter "mirror"

    .prologue
    .line 43
    return-object p1
.end method

.method public resetRotation()V
    .locals 0

    .prologue
    .line 17
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
    .line 39
    const/4 v0, -0x1

    return v0
.end method

.method public saveTempFileForTimeMachineShot([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "jpegData"
    .parameter "directory"
    .parameter "filename"

    .prologue
    .line 35
    invoke-static {p1, p2, p3}, Lcom/lge/camera/util/ImageManager;->saveTempFileForTimeMachineShot([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setRotation(Landroid/hardware/Camera$Parameters;I)Z
    .locals 1
    .parameter "param"
    .parameter "rotation"

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public startOlaPanorama(Landroid/hardware/Camera$Parameters;I)V
    .locals 0
    .parameter "param"
    .parameter "rotation"

    .prologue
    .line 24
    return-void
.end method
