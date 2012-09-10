.class public Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;
.super Ljava/lang/Object;
.source "Ola_ExifGpsUrational.java"


# instance fields
.field public degree_denominator:I

.field public degree_numerator:I

.field public min_denominator:I

.field public min_numerator:I

.field public sec_denominator:I

.field public sec_numerator:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;->degree_numerator:I

    .line 21
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;->degree_denominator:I

    .line 23
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;->min_numerator:I

    .line 24
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;->min_denominator:I

    .line 26
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;->sec_numerator:I

    .line 27
    iput v0, p0, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;->sec_denominator:I

    .line 28
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0
    .parameter "degree_numerator"
    .parameter "degree_denominator"
    .parameter "min_numerator"
    .parameter "min_denominator"
    .parameter "sec_numerator"
    .parameter "sec_denominator"

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;->degree_numerator:I

    .line 8
    iput p2, p0, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;->degree_denominator:I

    .line 10
    iput p3, p0, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;->min_numerator:I

    .line 11
    iput p4, p0, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;->min_denominator:I

    .line 13
    iput p5, p0, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;->sec_numerator:I

    .line 14
    iput p6, p0, Lcom/lge/olaworks/datastruct/Ola_ExifGpsUrational;->sec_denominator:I

    .line 16
    return-void
.end method
