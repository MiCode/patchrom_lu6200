.class public Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;
.super Ljava/lang/Object;
.source "Ola_ExifInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/olaworks/datastruct/Ola_ExifInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Img"
.end annotation


# instance fields
.field public compression:I

.field public img:[B

.field public resolUnit:I

.field public size:I

.field xResol:Lcom/lge/olaworks/datastruct/Ola_ExifUrational;

.field yResol:Lcom/lge/olaworks/datastruct/Ola_ExifUrational;

.field public ycbcrPos:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->ycbcrPos:I

    .line 77
    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->compression:I

    .line 78
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->img:[B

    .line 79
    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->size:I

    .line 80
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;

    invoke-direct {v0}, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;-><init>()V

    iput-object v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->xResol:Lcom/lge/olaworks/datastruct/Ola_ExifUrational;

    .line 81
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;

    invoke-direct {v0}, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;-><init>()V

    iput-object v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->yResol:Lcom/lge/olaworks/datastruct/Ola_ExifUrational;

    .line 82
    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->resolUnit:I

    .line 83
    return-void
.end method

.method public constructor <init>(II[BIIIIII)V
    .locals 1
    .parameter "ycbcrPos"
    .parameter "compression"
    .parameter "img"
    .parameter "size"
    .parameter "x_numerator"
    .parameter "x_denominator"
    .parameter "y_numerator"
    .parameter "y_denominator"
    .parameter "resolUnit"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->ycbcrPos:I

    .line 55
    iput p2, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->compression:I

    .line 56
    iput-object p3, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->img:[B

    .line 57
    iput p4, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->size:I

    .line 58
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;

    invoke-direct {v0, p5, p6}, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;-><init>(II)V

    iput-object v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->xResol:Lcom/lge/olaworks/datastruct/Ola_ExifUrational;

    .line 59
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;

    invoke-direct {v0, p7, p8}, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;-><init>(II)V

    iput-object v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->yResol:Lcom/lge/olaworks/datastruct/Ola_ExifUrational;

    .line 60
    iput p9, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->resolUnit:I

    .line 61
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .parameter "img"
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->ycbcrPos:I

    .line 66
    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->compression:I

    .line 67
    iput-object p1, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->img:[B

    .line 68
    iput p2, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->size:I

    .line 69
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;

    invoke-direct {v0}, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;-><init>()V

    iput-object v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->xResol:Lcom/lge/olaworks/datastruct/Ola_ExifUrational;

    .line 70
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;

    invoke-direct {v0}, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;-><init>()V

    iput-object v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->yResol:Lcom/lge/olaworks/datastruct/Ola_ExifUrational;

    .line 71
    iput v1, p0, Lcom/lge/olaworks/datastruct/Ola_ExifInfo$Img;->resolUnit:I

    .line 72
    return-void
.end method
