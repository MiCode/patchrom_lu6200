.class public Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;
.super Ljava/lang/Object;
.source "Ola_ExifInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/olaworks/datastruct/Ola_ExifInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Private"
.end annotation


# instance fields
.field public colorSpace:I

.field public componentsConfig:I

.field public exifVersion:I

.field public flashPixversion:I

.field public pixelXdim:I

.field public pixelYdim:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;->exifVersion:I

    .line 20
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;->componentsConfig:I

    .line 21
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;->flashPixversion:I

    .line 22
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;->colorSpace:I

    .line 23
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;->pixelXdim:I

    .line 24
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;->pixelYdim:I

    .line 25
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .parameter "exifVersion"
    .parameter "componentsConfig"
    .parameter "flashPixversion"
    .parameter "colorSpace"
    .parameter "pixelXdim"
    .parameter "pixelYdim"

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;->exifVersion:I

    .line 10
    iput p2, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;->componentsConfig:I

    .line 11
    iput p3, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;->flashPixversion:I

    .line 12
    iput p4, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;->colorSpace:I

    .line 13
    iput p5, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;->pixelXdim:I

    .line 14
    iput p6, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Private;->pixelYdim:I

    .line 15
    return-void
.end method
