.class Lcom/lge/camera/Mediator$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "Mediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/Mediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field private mBlockJitterStep:F

.field private mOneStepBeforeSpan:F

.field final synthetic this$0:Lcom/lge/camera/Mediator;


# direct methods
.method private constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter

    .prologue
    .line 1766
    iput-object p1, p0, Lcom/lge/camera/Mediator$ScaleListener;->this$0:Lcom/lge/camera/Mediator;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 1768
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/lge/camera/Mediator$ScaleListener;->mBlockJitterStep:F

    .line 1769
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/Mediator$ScaleListener;->mOneStepBeforeSpan:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/Mediator;Lcom/lge/camera/Mediator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1766
    invoke-direct {p0, p1}, Lcom/lge/camera/Mediator$ScaleListener;-><init>(Lcom/lge/camera/Mediator;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 14
    .parameter "detector"

    .prologue
    const/16 v13, 0x50

    const/16 v12, 0x28

    const/16 v11, 0x10

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 1773
    const-string v7, "CameraApp"

    const-string v8, "onScale!!!"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v7

    iget v8, p0, Lcom/lge/camera/Mediator$ScaleListener;->mOneStepBeforeSpan:F

    sub-float/2addr v7, v8

    float-to-int v3, v7

    .line 1775
    .local v3, mGapSpan:I
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getTimeDelta()J

    move-result-wide v4

    .line 1780
    .local v4, timeDelta:J
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/lge/camera/Mediator$ScaleListener;->mBlockJitterStep:F

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_0

    .line 1781
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v7

    .line 1826
    :goto_0
    return v7

    .line 1784
    :cond_0
    const/4 v0, 0x1

    .line 1785
    .local v0, factor:I
    const/4 v1, 0x1

    .line 1786
    .local v1, factorStep:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getGestureZoomFactor()I

    move-result v8

    mul-int v2, v7, v8

    .line 1787
    .local v2, gapSpan:I
    if-gt v2, v11, :cond_3

    .line 1788
    const/4 v0, 0x1

    .line 1789
    const/4 v1, 0x1

    .line 1804
    :cond_1
    :goto_1
    const-wide/16 v7, 0x32

    cmp-long v7, v4, v7

    if-gtz v7, :cond_2

    if-gt v0, v10, :cond_2

    .line 1805
    mul-int/lit8 v0, v0, 0x2

    .line 1806
    mul-int/lit8 v1, v1, 0x2

    .line 1809
    :cond_2
    div-int v6, v0, v1

    .line 1813
    .local v6, zoomStep:I
    if-lez v3, :cond_7

    .line 1814
    :goto_2
    if-lez v1, :cond_8

    .line 1815
    iget-object v7, p0, Lcom/lge/camera/Mediator$ScaleListener;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v7, v10, v6, v9}, Lcom/lge/camera/Mediator;->zoomInOut(IIZ)V

    .line 1816
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1790
    .end local v6           #zoomStep:I
    :cond_3
    if-le v2, v11, :cond_4

    if-gt v2, v12, :cond_4

    .line 1791
    const/4 v0, 0x6

    .line 1792
    const/4 v1, 0x2

    goto :goto_1

    .line 1793
    :cond_4
    if-le v2, v12, :cond_5

    if-gt v2, v13, :cond_5

    .line 1794
    const/16 v0, 0x10

    .line 1795
    const/4 v1, 0x4

    goto :goto_1

    .line 1796
    :cond_5
    if-le v2, v13, :cond_6

    const/16 v7, 0x78

    if-gt v2, v7, :cond_6

    .line 1797
    const/16 v0, 0x18

    .line 1798
    const/4 v1, 0x4

    goto :goto_1

    .line 1799
    :cond_6
    const/16 v7, 0x78

    if-le v2, v7, :cond_1

    .line 1800
    const/16 v0, 0x30

    .line 1801
    const/16 v1, 0x8

    goto :goto_1

    .line 1818
    .restart local v6       #zoomStep:I
    :cond_7
    if-gez v3, :cond_8

    .line 1819
    :goto_3
    if-lez v1, :cond_8

    .line 1820
    iget-object v7, p0, Lcom/lge/camera/Mediator$ScaleListener;->this$0:Lcom/lge/camera/Mediator;

    const/4 v8, -0x2

    invoke-virtual {v7, v8, v6, v9}, Lcom/lge/camera/Mediator;->zoomInOut(IIZ)V

    .line 1821
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1825
    :cond_8
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v7

    iput v7, p0, Lcom/lge/camera/Mediator$ScaleListener;->mOneStepBeforeSpan:F

    .line 1826
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v7

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    .line 1831
    const-string v0, "CameraApp"

    const-string v1, "onScaleBegin"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    iput v0, p0, Lcom/lge/camera/Mediator$ScaleListener;->mOneStepBeforeSpan:F

    .line 1833
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "detector"

    .prologue
    .line 1838
    const-string v0, "CameraApp"

    const-string v1, "onScaleEnd```````````````````"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/Mediator$ScaleListener;->mOneStepBeforeSpan:F

    .line 1840
    iget-object v0, p0, Lcom/lge/camera/Mediator$ScaleListener;->this$0:Lcom/lge/camera/Mediator;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/Mediator;->zoomInOut(IIZ)V

    .line 1841
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 1842
    return-void
.end method
