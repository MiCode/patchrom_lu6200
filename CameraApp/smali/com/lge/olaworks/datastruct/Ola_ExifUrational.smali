.class public Lcom/lge/olaworks/datastruct/Ola_ExifUrational;
.super Ljava/lang/Object;
.source "Ola_ExifUrational.java"


# instance fields
.field public denominator:I

.field public numerator:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;->numerator:I

    .line 14
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;->denominator:I

    .line 15
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "numerator"
    .parameter "denominator"

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;->numerator:I

    .line 8
    iput p2, p0, Lcom/lge/olaworks/datastruct/Ola_ExifUrational;->denominator:I

    .line 9
    return-void
.end method
