.class public Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;
.super Ljava/lang/Object;
.source "PercentageBarChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/PercentageBarChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public final paint:Landroid/graphics/Paint;

.field public final percentage:F


# direct methods
.method protected constructor <init>(FLandroid/graphics/Paint;)V
    .locals 0
    .parameter "percentage"
    .parameter "paint"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->percentage:F

    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/PercentageBarChart$Entry;->paint:Landroid/graphics/Paint;

    return-void
.end method
