.class public Lcom/lge/camera/CamcorderMediator$SaveRequest;
.super Ljava/lang/Object;
.source "CamcorderMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/CamcorderMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveRequest"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field data:[B

.field dateTaken:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 572
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 573
    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator$SaveRequest;->data:[B

    .line 574
    iput-object v0, p0, Lcom/lge/camera/CamcorderMediator$SaveRequest;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
