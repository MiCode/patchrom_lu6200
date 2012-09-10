.class public Lcom/lge/camera/CameraMediator$SaveRequest;
.super Ljava/lang/Object;
.source "CameraMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/CameraMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveRequest"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field data:[B

.field dateTaken:J

.field exifData:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 471
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 472
    iput-object v0, p0, Lcom/lge/camera/CameraMediator$SaveRequest;->exifData:[B

    .line 473
    iput-object v0, p0, Lcom/lge/camera/CameraMediator$SaveRequest;->data:[B

    .line 474
    iput-object v0, p0, Lcom/lge/camera/CameraMediator$SaveRequest;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
