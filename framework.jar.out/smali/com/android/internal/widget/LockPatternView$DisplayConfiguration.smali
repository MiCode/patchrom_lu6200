.class Lcom/android/internal/widget/LockPatternView$DisplayConfiguration;
.super Ljava/lang/Object;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayConfiguration"
.end annotation


# instance fields
.field private final STROKE_WIDTH_HDPI:F

.field private final STROKE_WIDTH_XHDPI:F

.field public final mPathAlpha:I

.field public final mPathColor:I

.field public final mPathColorWrong:I

.field public final mPathWidth:F


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/high16 v7, 0x4148

    const v6, 0x412ab852

    .line 1322
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1312
    iput v6, p0, Lcom/android/internal/widget/LockPatternView$DisplayConfiguration;->STROKE_WIDTH_HDPI:F

    .line 1313
    iput v7, p0, Lcom/android/internal/widget/LockPatternView$DisplayConfiguration;->STROKE_WIDTH_XHDPI:F

    .line 1323
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1324
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1325
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1326
    .local v1, config:Landroid/content/res/Configuration;
    iget v2, v3, Landroid/util/DisplayMetrics;->density:F

    .line 1337
    .local v2, density:F
    const-string/jumbo v5, "ro.product.device"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1339
    .local v0, DEVICE:Ljava/lang/String;
    const-string/jumbo v5, "p2"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1340
    const v5, 0xffffff

    iput v5, p0, Lcom/android/internal/widget/LockPatternView$DisplayConfiguration;->mPathColor:I

    .line 1341
    const v5, 0x555555

    iput v5, p0, Lcom/android/internal/widget/LockPatternView$DisplayConfiguration;->mPathColorWrong:I

    .line 1349
    :goto_0
    const v5, 0x3fc147ae

    cmpg-float v5, v2, v5

    if-gez v5, :cond_1

    .line 1350
    mul-float v5, v2, v6

    iput v5, p0, Lcom/android/internal/widget/LockPatternView$DisplayConfiguration;->mPathWidth:F

    .line 1354
    :goto_1
    const/16 v5, 0xcc

    iput v5, p0, Lcom/android/internal/widget/LockPatternView$DisplayConfiguration;->mPathAlpha:I

    .line 1355
    return-void

    .line 1344
    :cond_0
    const v5, 0x42e2ff

    iput v5, p0, Lcom/android/internal/widget/LockPatternView$DisplayConfiguration;->mPathColor:I

    .line 1345
    const v5, 0xff4266

    iput v5, p0, Lcom/android/internal/widget/LockPatternView$DisplayConfiguration;->mPathColorWrong:I

    goto :goto_0

    .line 1352
    :cond_1
    mul-float v5, v2, v7

    iput v5, p0, Lcom/android/internal/widget/LockPatternView$DisplayConfiguration;->mPathWidth:F

    goto :goto_1
.end method
