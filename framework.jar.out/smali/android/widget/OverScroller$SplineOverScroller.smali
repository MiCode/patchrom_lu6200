.class Landroid/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/OverScroller$SplineOverScroller$FrameRate;
    }
.end annotation


# static fields
.field private static final ABNORMAL_PERIOD:I = 0x5

.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final DISTANCE_DOWN_DIFF:F = 0.5f

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_COMPUTE_MODE_USING_CONSTANT_TIME_DIFF:I = 0x2

.field private static final FLING_COMPUTE_MODE_USING_NOISE_SURPRESS:I = 0x1

.field private static final FLING_COMPUTE_ORIGINAL_MODE:I = 0x0

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final MAX_COMPUTE_OFFSET_PERIOD:I = 0x46

.field private static final MULTIPLE_VELOCITY_ACTIONUP:I = 0x7

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static PHYSICAL_COEF:F = 0.0f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F = null

.field private static final SPLINE_TIME:[F = null

.field private static final START_TENSION:F = 0.5f

.field private static final TOTAL_DURATION_FOR_LIST:I = 0xa06

.field private static distance_coef:F

.field private static init_Distance_coef:Z

.field private static maxFlickVelocity:I

.field private static minFlickVelocity:I


# instance fields
.field private countAbnormalScene:I

.field private firstCurrentTime:J

.field private flingComputeMode:I

.field private frameRate:Landroid/widget/OverScroller$SplineOverScroller$FrameRate;

.field private frameTotalTime:D

.field private lastCurrentTime:J

.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mOver:I

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mVelocity:I

.field private timePassedDiffConstant:F


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 652
    const-wide v11, 0x3fe8f5c28f5c28f6L

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    const-wide v13, 0x3feccccccccccccdL

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    double-to-float v11, v11

    sput v11, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 660
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 661
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 712
    const/4 v7, 0x0

    .line 713
    .local v7, x_min:F
    const/4 v10, 0x0

    .line 714
    .local v10, y_min:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v11, 0x64

    if-ge v3, v11, :cond_4

    .line 715
    int-to-float v11, v3

    const/high16 v12, 0x42c8

    div-float v0, v11, v12

    .line 717
    .local v0, alpha:F
    const/high16 v6, 0x3f80

    .line 720
    .local v6, x_max:F
    :goto_1
    sub-float v11, v6, v7

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    add-float v5, v7, v11

    .line 721
    .local v5, x:F
    const/high16 v11, 0x4040

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v5

    mul-float v1, v11, v12

    .line 722
    .local v1, coef:F
    const/high16 v11, 0x3f80

    sub-float/2addr v11, v5

    const v12, 0x3e333333

    mul-float/2addr v11, v12

    const v12, 0x3eb33334

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float v4, v11, v12

    .line 723
    .local v4, tx:F
    sub-float v11, v4, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3ee4f8b588e368f1L

    cmpg-double v11, v11, v13

    if-gez v11, :cond_0

    .line 727
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v5

    const/high16 v13, 0x3f00

    mul-float/2addr v12, v13

    add-float/2addr v12, v5

    mul-float/2addr v12, v1

    mul-float v13, v5, v5

    mul-float/2addr v13, v5

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 729
    const/high16 v9, 0x3f80

    .line 732
    .local v9, y_max:F
    :goto_2
    sub-float v11, v9, v10

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    add-float v8, v10, v11

    .line 733
    .local v8, y:F
    const/high16 v11, 0x4040

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v8

    mul-float v1, v11, v12

    .line 734
    const/high16 v11, 0x3f80

    sub-float/2addr v11, v8

    const/high16 v12, 0x3f00

    mul-float/2addr v11, v12

    add-float/2addr v11, v8

    mul-float/2addr v11, v1

    mul-float v12, v8, v8

    mul-float/2addr v12, v8

    add-float v2, v11, v12

    .line 735
    .local v2, dy:F
    sub-float v11, v2, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3ee4f8b588e368f1L

    cmpg-double v11, v11, v13

    if-gez v11, :cond_2

    .line 739
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v8

    const v13, 0x3e333333

    mul-float/2addr v12, v13

    const v13, 0x3eb33334

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    mul-float/2addr v12, v1

    mul-float v13, v8, v8

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 714
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 724
    .end local v2           #dy:F
    .end local v8           #y:F
    .end local v9           #y_max:F
    :cond_0
    cmpl-float v11, v4, v0

    if-lez v11, :cond_1

    move v6, v5

    goto/16 :goto_1

    .line 725
    :cond_1
    move v7, v5

    goto/16 :goto_1

    .line 736
    .restart local v2       #dy:F
    .restart local v8       #y:F
    .restart local v9       #y_max:F
    :cond_2
    cmpl-float v11, v2, v0

    if-lez v11, :cond_3

    move v9, v8

    goto :goto_2

    .line 737
    :cond_3
    move v10, v8

    goto :goto_2

    .line 741
    .end local v0           #alpha:F
    .end local v1           #coef:F
    .end local v2           #dy:F
    .end local v4           #tx:F
    .end local v5           #x:F
    .end local v6           #x_max:F
    .end local v8           #y:F
    .end local v9           #y_max:F
    :cond_4
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/16 v12, 0x64

    sget-object v13, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/16 v14, 0x64

    const/high16 v15, 0x3f80

    aput v15, v13, v14

    aput v15, v11, v12

    .line 742
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 763
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 641
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 644
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 766
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_SCROLLER:Z

    if-eqz v0, :cond_0

    .line 767
    new-instance v0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;

    invoke-direct {v0, p0}, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;-><init>(Landroid/widget/OverScroller$SplineOverScroller;)V

    iput-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->frameRate:Landroid/widget/OverScroller$SplineOverScroller$FrameRate;

    .line 769
    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 603
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 603
    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 603
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/OverScroller$SplineOverScroller;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 603
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 603
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 603
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 603
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/OverScroller$SplineOverScroller;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 603
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 603
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method private adjustDuration(III)V
    .locals 12
    .parameter "start"
    .parameter "oldFinal"
    .parameter "newFinal"

    .prologue
    const/high16 v11, 0x42c8

    .line 787
    sub-int v2, p2, p1

    .line 788
    .local v2, oldDistance:I
    sub-int v1, p3, p1

    .line 789
    .local v1, newDistance:I
    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 790
    .local v6, x:F
    mul-float v9, v11, v6

    float-to-int v0, v9

    .line 791
    .local v0, index:I
    const/16 v9, 0x64

    if-ge v0, v9, :cond_0

    .line 792
    int-to-float v9, v0

    div-float v7, v9, v11

    .line 793
    .local v7, x_inf:F
    add-int/lit8 v9, v0, 0x1

    int-to-float v9, v9

    div-float v8, v9, v11

    .line 794
    .local v8, x_sup:F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v3, v9, v0

    .line 795
    .local v3, t_inf:F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v10, v0, 0x1

    aget v4, v9, v10

    .line 796
    .local v4, t_sup:F
    sub-float v9, v6, v7

    sub-float v10, v8, v7

    div-float/2addr v9, v10

    sub-float v10, v4, v3

    mul-float/2addr v9, v10

    add-float v5, v3, v9

    .line 797
    .local v5, timeCoef:F
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 799
    .end local v3           #t_inf:F
    .end local v4           #t_sup:F
    .end local v5           #timeCoef:F
    .end local v7           #x_inf:F
    .end local v8           #x_sup:F
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 8
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    .line 959
    neg-int v4, p3

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float v2, v4, v5

    .line 960
    .local v2, durationToApex:F
    mul-int v4, p3, p3

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v0, v4, v5

    .line 961
    .local v0, distanceToApex:F
    sub-int v4, p2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v1, v4

    .line 962
    .local v1, distanceToEdge:F
    const-wide/high16 v4, 0x4000

    add-float v6, v0, v1

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 964
    .local v3, totalDuration:F
    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    const/high16 v6, 0x447a

    sub-float v7, v3, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 965
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 966
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 967
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .parameter "velocity"

    .prologue
    .line 779
    if-lez p0, :cond_0

    const/high16 v0, -0x3b06

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x44fa

    goto :goto_0
.end method

.method private getSplineDeceleration(I)D
    .locals 3
    .parameter "velocity"

    .prologue
    .line 941
    const v0, 0x3eb33333

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    sget v2, Landroid/widget/OverScroller$SplineOverScroller;->PHYSICAL_COEF:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8
    .parameter "velocity"

    .prologue
    .line 945
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 946
    .local v2, l:D
    sget v4, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v4, v6

    .line 947
    .local v0, decelMinusOne:D
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    sget v5, Landroid/widget/OverScroller$SplineOverScroller;->PHYSICAL_COEF:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 8
    .parameter "velocity"

    .prologue
    .line 952
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 953
    .local v2, l:D
    sget v4, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v4, v6

    .line 954
    .local v0, decelMinusOne:D
    const-wide v4, 0x408f400000000000L

    div-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method static initFromContext(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 745
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x4320

    mul-float v1, v2, v3

    .line 746
    .local v1, ppi:F
    const v2, 0x43c10b3d

    mul-float/2addr v2, v1

    const v3, 0x3f570a3d

    mul-float/2addr v2, v3

    sput v2, Landroid/widget/OverScroller$SplineOverScroller;->PHYSICAL_COEF:F

    .line 751
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_SCROLLER:Z

    if-eqz v2, :cond_0

    .line 752
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 753
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    sput v2, Landroid/widget/OverScroller$SplineOverScroller;->minFlickVelocity:I

    .line 754
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    sput v2, Landroid/widget/OverScroller$SplineOverScroller;->maxFlickVelocity:I

    .line 755
    const/4 v2, 0x1

    sput-boolean v2, Landroid/widget/OverScroller$SplineOverScroller;->init_Distance_coef:Z

    .line 757
    .end local v0           #configuration:Landroid/view/ViewConfiguration;
    :cond_0
    return-void
.end method

.method private onEdgeReached()V
    .locals 5

    .prologue
    const/high16 v4, 0x4000

    .line 1011
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    div-float v0, v2, v3

    .line 1012
    .local v0, distance:F
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 1014
    .local v1, sign:F
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 1016
    neg-float v2, v1

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 1017
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v0, v2

    .line 1020
    :cond_0
    float-to-int v2, v0

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 1021
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 1022
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v3, :cond_1

    .end local v0           #distance:F
    :goto_0
    float-to-int v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 1023
    const/high16 v2, 0x447a

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 1024
    return-void

    .line 1022
    .restart local v0       #distance:F
    :cond_1
    neg-float v0, v0

    goto :goto_0
.end method

.method private startAfterEdge(IIII)V
    .locals 13
    .parameter "start"
    .parameter "min"
    .parameter "max"
    .parameter "velocity"

    .prologue
    .line 976
    if-le p1, p2, :cond_0

    move/from16 v0, p3

    if-ge p1, v0, :cond_0

    .line 977
    const-string v1, "OverScroller"

    const-string/jumbo v2, "startAfterEdge called from a valid position"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 996
    :goto_0
    return-void

    .line 981
    :cond_0
    move/from16 v0, p3

    if-le p1, v0, :cond_1

    const/4 v10, 0x1

    .line 982
    .local v10, positive:Z
    :goto_1
    if-eqz v10, :cond_2

    move/from16 v7, p3

    .line 983
    .local v7, edge:I
    :goto_2
    sub-int v9, p1, v7

    .line 984
    .local v9, overDistance:I
    mul-int v1, v9, p4

    if-ltz v1, :cond_3

    const/4 v8, 0x1

    .line 985
    .local v8, keepIncreasing:Z
    :goto_3
    if-eqz v8, :cond_4

    .line 987
    move/from16 v0, p4

    invoke-direct {p0, p1, v7, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_0

    .line 981
    .end local v7           #edge:I
    .end local v8           #keepIncreasing:Z
    .end local v9           #overDistance:I
    .end local v10           #positive:Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .restart local v10       #positive:Z
    :cond_2
    move v7, p2

    .line 982
    goto :goto_2

    .line 984
    .restart local v7       #edge:I
    .restart local v9       #overDistance:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 989
    .restart local v8       #keepIncreasing:Z
    :cond_4
    move/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v11

    .line 990
    .local v11, totalDistance:D
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    cmpl-double v1, v11, v1

    if-lez v1, :cond_7

    .line 991
    if-eqz v10, :cond_5

    move v4, p2

    :goto_4
    if-eqz v10, :cond_6

    move v5, p1

    :goto_5
    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object v1, p0

    move v2, p1

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_0

    :cond_5
    move v4, p1

    goto :goto_4

    :cond_6
    move/from16 v5, p3

    goto :goto_5

    .line 993
    :cond_7
    move/from16 v0, p4

    invoke-direct {p0, p1, v7, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0
.end method

.method private startBounceAfterEdge(III)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    .line 970
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    :goto_0
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 971
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 972
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 973
    return-void

    :cond_0
    move v0, p3

    .line 970
    goto :goto_0
.end method

.method private startSpringback(III)V
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    .line 855
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 856
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 857
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 858
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 859
    sub-int v0, p1, p2

    .line 860
    .local v0, delta:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 862
    neg-int v1, v0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 863
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 864
    const-wide v1, 0x408f400000000000L

    const-wide/high16 v3, -0x4000

    int-to-double v5, v0

    mul-double/2addr v3, v5

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 865
    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1027
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 1051
    :goto_0
    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    .line 1052
    const/4 v0, 0x1

    :cond_0
    :pswitch_0
    return v0

    .line 1030
    :pswitch_1
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v1, v2, :cond_0

    .line 1032
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 1034
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 1035
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 1036
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1037
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_0

    .line 1044
    :pswitch_2
    iget-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1045
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 1027
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 5
    .parameter "extend"

    .prologue
    .line 829
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 830
    .local v1, time:J
    iget-wide v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v3, v1, v3

    long-to-int v0, v3

    .line 831
    .local v0, elapsedTime:I
    add-int v3, v0, p1

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 832
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 833
    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    .line 816
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 820
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 821
    return-void
.end method

.method fling(IIIII)V
    .locals 10
    .parameter "start"
    .parameter "velocity"
    .parameter "min"
    .parameter "max"
    .parameter "over"

    .prologue
    const/16 v4, 0xa06

    const/high16 v9, 0x3f00

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 868
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 869
    iput-boolean v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 870
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, p2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 871
    iput v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 872
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 873
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 875
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_SCROLLER:Z

    if-eqz v2, :cond_0

    .line 876
    sget-boolean v2, Landroid/widget/OverScroller$SplineOverScroller;->init_Distance_coef:Z

    if-eqz v2, :cond_0

    .line 877
    sget v2, Landroid/widget/OverScroller$SplineOverScroller;->minFlickVelocity:I

    mul-int/lit8 v2, v2, 0x7

    invoke-direct {p0, v2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v2

    rsub-int v2, v2, 0xa06

    int-to-float v2, v2

    div-float v2, v9, v2

    sput v2, Landroid/widget/OverScroller$SplineOverScroller;->distance_coef:F

    .line 879
    sput-boolean v6, Landroid/widget/OverScroller$SplineOverScroller;->init_Distance_coef:Z

    .line 883
    :cond_0
    if-gt p1, p4, :cond_1

    if-ge p1, p3, :cond_3

    .line 884
    :cond_1
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 938
    :cond_2
    :goto_0
    return-void

    .line 888
    :cond_3
    iput v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 889
    const-wide/16 v0, 0x0

    .line 891
    .local v0, totalDistance:D
    if-eqz p2, :cond_4

    .line 892
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_SCROLLER:Z

    if-eqz v2, :cond_a

    .line 893
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget v3, Landroid/widget/OverScroller$SplineOverScroller;->minFlickVelocity:I

    mul-int/lit8 v3, v3, 0x7

    if-gt v2, v3, :cond_8

    .line 894
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 895
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 911
    :cond_4
    :goto_1
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 912
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 915
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-ge v2, p3, :cond_5

    .line 916
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p3}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 917
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 920
    :cond_5
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-le v2, p4, :cond_6

    .line 921
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 922
    iput p4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 925
    :cond_6
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_SCROLLER:Z

    if-eqz v2, :cond_2

    .line 926
    iget-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->frameRate:Landroid/widget/OverScroller$SplineOverScroller$FrameRate;

    iget-wide v2, v2, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->timePassed:J

    cmp-long v2, v2, v7

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->frameRate:Landroid/widget/OverScroller$SplineOverScroller$FrameRate;

    iget v2, v2, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameCount:I

    const/16 v3, 0xf

    if-ge v2, v3, :cond_b

    .line 927
    :cond_7
    const/4 v2, 0x1

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->flingComputeMode:I

    .line 932
    :goto_2
    iput-wide v7, p0, Landroid/widget/OverScroller$SplineOverScroller;->firstCurrentTime:J

    .line 933
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->frameTotalTime:D

    .line 934
    iput v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->countAbnormalScene:I

    .line 935
    iput-wide v7, p0, Landroid/widget/OverScroller$SplineOverScroller;->lastCurrentTime:J

    .line 936
    iget-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->frameRate:Landroid/widget/OverScroller$SplineOverScroller$FrameRate;

    invoke-virtual {v2}, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->reset()V

    goto :goto_0

    .line 896
    :cond_8
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget v3, Landroid/widget/OverScroller$SplineOverScroller;->minFlickVelocity:I

    mul-int/lit8 v3, v3, 0x7

    if-le v2, v3, :cond_4

    .line 897
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 898
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v2

    if-gt v2, v4, :cond_9

    .line 899
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v2

    const-wide v4, 0x40a40c0000000000L

    mul-double/2addr v2, v4

    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v4

    int-to-double v4, v4

    div-double v0, v2, v4

    .line 900
    sget v2, Landroid/widget/OverScroller$SplineOverScroller;->distance_coef:F

    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v3

    sget v4, Landroid/widget/OverScroller$SplineOverScroller;->minFlickVelocity:I

    invoke-direct {p0, v4}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v9

    float-to-double v2, v2

    mul-double/2addr v0, v2

    goto/16 :goto_1

    .line 902
    :cond_9
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    goto/16 :goto_1

    .line 906
    :cond_a
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 907
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    goto/16 :goto_1

    .line 929
    :cond_b
    iget-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->frameRate:Landroid/widget/OverScroller$SplineOverScroller$FrameRate;

    invoke-virtual {v2}, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->getTimeDiff()F

    move-result v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->timePassedDiffConstant:F

    .line 930
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->flingComputeMode:I

    goto :goto_2
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "over"

    .prologue
    .line 1000
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 1001
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 1002
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1005
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 1007
    :cond_0
    return-void
.end method

.method setFinalPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 824
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 825
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 826
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .parameter "friction"

    .prologue
    .line 760
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 761
    return-void
.end method

.method springback(III)Z
    .locals 4
    .parameter "start"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 836
    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 838
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 839
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 841
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 842
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 844
    if-ge p1, p2, :cond_1

    .line 845
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 850
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 846
    :cond_1
    if-le p1, p3, :cond_0

    .line 847
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 850
    goto :goto_1
.end method

.method startScroll(III)V
    .locals 3
    .parameter "start"
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 802
    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 804
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 805
    add-int v0, p1, p2

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 807
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 808
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 811
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 812
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 813
    return-void
.end method

.method update()Z
    .locals 26

    .prologue
    .line 1061
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v17

    .line 1062
    .local v17, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    move-wide/from16 v20, v0

    sub-long v4, v17, v20

    .line 1064
    .local v4, currentTime:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v20, v4, v20

    if-lez v20, :cond_0

    .line 1065
    const/16 v20, 0x0

    .line 1169
    :goto_0
    return v20

    .line 1068
    :cond_0
    sget-boolean v20, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_SCROLLER:Z

    if-eqz v20, :cond_6

    .line 1069
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->lastCurrentTime:J

    move-wide/from16 v20, v0

    sub-long v20, v4, v20

    const-wide/16 v22, 0x5

    cmp-long v20, v20, v22

    if-gtz v20, :cond_1

    .line 1070
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->countAbnormalScene:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->countAbnormalScene:I

    .line 1071
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->countAbnormalScene:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->frameRate:Landroid/widget/OverScroller$SplineOverScroller$FrameRate;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->reset()V

    .line 1073
    const/16 v20, 0x0

    goto :goto_0

    .line 1076
    :cond_1
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->countAbnormalScene:I

    .line 1079
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->lastCurrentTime:J

    move-wide/from16 v20, v0

    sub-long v20, v4, v20

    const-wide/16 v22, 0x46

    cmp-long v20, v20, v22

    if-lez v20, :cond_3

    .line 1080
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->flingComputeMode:I

    .line 1083
    :cond_3
    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->lastCurrentTime:J

    .line 1085
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->frameRate:Landroid/widget/OverScroller$SplineOverScroller$FrameRate;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameCount:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameCount:I

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->frameRate:Landroid/widget/OverScroller$SplineOverScroller$FrameRate;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-wide v4, v0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->timePassed:J

    .line 1088
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->frameTotalTime:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_4

    .line 1089
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->frameTotalTime:D

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    double-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v22, v22, v4

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 1090
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 1094
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->flingComputeMode:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->frameRate:Landroid/widget/OverScroller$SplineOverScroller$FrameRate;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameCount:I

    move/from16 v20, v0

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->frameRate:Landroid/widget/OverScroller$SplineOverScroller$FrameRate;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/widget/OverScroller$SplineOverScroller;->firstCurrentTime:J

    .line 1097
    :cond_5
    long-to-double v0, v4

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/OverScroller$SplineOverScroller;->frameTotalTime:D

    .line 1109
    :cond_6
    :goto_1
    const-wide/16 v8, 0x0

    .line 1110
    .local v8, distance:D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 1167
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    move/from16 v20, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 1169
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 1099
    .end local v8           #distance:D
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->frameTotalTime:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->firstCurrentTime:J

    move-wide/from16 v22, v0

    sub-long v22, v4, v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->frameRate:Landroid/widget/OverScroller$SplineOverScroller$FrameRate;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameCount:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/OverScroller$SplineOverScroller;->frameTotalTime:D

    goto :goto_1

    .line 1101
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->flingComputeMode:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->frameRate:Landroid/widget/OverScroller$SplineOverScroller$FrameRate;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller$FrameRate;->frameCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v3, v0

    .line 1103
    .local v3, count:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->timePassedDiffConstant:F

    move/from16 v20, v0

    mul-float v20, v20, v3

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/OverScroller$SplineOverScroller;->frameTotalTime:D

    goto/16 :goto_1

    .line 1105
    .end local v3           #count:F
    :cond_9
    long-to-double v0, v4

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/OverScroller$SplineOverScroller;->frameTotalTime:D

    goto/16 :goto_1

    .line 1112
    .restart local v8       #distance:D
    :pswitch_0
    sget-boolean v20, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_SCROLLER:Z

    if-eqz v20, :cond_c

    .line 1113
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->frameTotalTime:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v13, v20, v21

    .line 1114
    .local v13, t:F
    const/high16 v20, 0x42c8

    mul-float v20, v20, v13

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x63

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    const/16 v11, 0x63

    .line 1116
    .local v11, index:I
    :goto_3
    const/high16 v10, 0x3f80

    .line 1117
    .local v10, distanceCoef:F
    const/16 v19, 0x0

    .line 1118
    .local v19, velocityCoef:F
    const/16 v20, 0x64

    move/from16 v0, v20

    if-ge v11, v0, :cond_a

    .line 1119
    int-to-float v0, v11

    move/from16 v20, v0

    const/high16 v21, 0x42c8

    div-float v15, v20, v21

    .line 1120
    .local v15, t_inf:F
    add-int/lit8 v20, v11, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x42c8

    div-float v16, v20, v21

    .line 1121
    .local v16, t_sup:F
    sget-object v20, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v6, v20, v11

    .line 1122
    .local v6, d_inf:F
    sget-object v20, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v21, v11, 0x1

    aget v7, v20, v21

    .line 1123
    .local v7, d_sup:F
    sub-float v20, v7, v6

    sub-float v21, v16, v15

    div-float v19, v20, v21

    .line 1124
    sub-float v20, v13, v15

    mul-float v20, v20, v19

    add-float v10, v6, v20

    .line 1127
    .end local v6           #d_inf:F
    .end local v7           #d_sup:F
    .end local v15           #t_inf:F
    .end local v16           #t_sup:F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v10

    move/from16 v0, v20

    float-to-double v8, v0

    .line 1128
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x447a

    mul-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_2

    .line 1114
    .end local v10           #distanceCoef:F
    .end local v11           #index:I
    .end local v19           #velocityCoef:F
    :cond_b
    const/high16 v20, 0x42c8

    mul-float v20, v20, v13

    move/from16 v0, v20

    float-to-int v11, v0

    goto :goto_3

    .line 1130
    .end local v13           #t:F
    :cond_c
    long-to-float v0, v4

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v13, v20, v21

    .line 1131
    .restart local v13       #t:F
    const/high16 v20, 0x42c8

    mul-float v20, v20, v13

    move/from16 v0, v20

    float-to-int v11, v0

    .line 1133
    .restart local v11       #index:I
    const/high16 v10, 0x3f80

    .line 1134
    .restart local v10       #distanceCoef:F
    const/16 v19, 0x0

    .line 1135
    .restart local v19       #velocityCoef:F
    const/16 v20, 0x64

    move/from16 v0, v20

    if-ge v11, v0, :cond_d

    .line 1136
    int-to-float v0, v11

    move/from16 v20, v0

    const/high16 v21, 0x42c8

    div-float v15, v20, v21

    .line 1137
    .restart local v15       #t_inf:F
    add-int/lit8 v20, v11, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x42c8

    div-float v16, v20, v21

    .line 1138
    .restart local v16       #t_sup:F
    sget-object v20, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v6, v20, v11

    .line 1139
    .restart local v6       #d_inf:F
    sget-object v20, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v21, v11, 0x1

    aget v7, v20, v21

    .line 1140
    .restart local v7       #d_sup:F
    sub-float v20, v7, v6

    sub-float v21, v16, v15

    div-float v19, v20, v21

    .line 1141
    sub-float v20, v13, v15

    mul-float v20, v20, v19

    add-float v10, v6, v20

    .line 1144
    .end local v6           #d_inf:F
    .end local v7           #d_sup:F
    .end local v15           #t_inf:F
    .end local v16           #t_sup:F
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v10

    move/from16 v0, v20

    float-to-double v8, v0

    .line 1145
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    const/high16 v21, 0x447a

    mul-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_2

    .line 1151
    .end local v10           #distanceCoef:F
    .end local v11           #index:I
    .end local v13           #t:F
    .end local v19           #velocityCoef:F
    :pswitch_1
    long-to-float v0, v4

    move/from16 v20, v0

    const/high16 v21, 0x447a

    div-float v13, v20, v21

    .line 1152
    .restart local v13       #t:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    move/from16 v21, v0

    mul-float v21, v21, v13

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 1153
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    move/from16 v21, v0

    mul-float v21, v21, v13

    mul-float v21, v21, v13

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v8, v0

    .line 1154
    goto/16 :goto_2

    .line 1158
    .end local v13           #t:F
    :pswitch_2
    long-to-float v0, v4

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v13, v20, v21

    .line 1159
    .restart local v13       #t:F
    mul-float v14, v13, v13

    .line 1160
    .local v14, t2:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->signum(F)F

    move-result v12

    .line 1161
    .local v12, sign:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v12

    const/high16 v21, 0x4040

    mul-float v21, v21, v14

    const/high16 v22, 0x4000

    mul-float v22, v22, v13

    mul-float v22, v22, v14

    sub-float v21, v21, v22

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v8, v0

    .line 1162
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v12

    const/high16 v21, 0x40c0

    mul-float v20, v20, v21

    neg-float v0, v13

    move/from16 v21, v0

    add-float v21, v21, v14

    mul-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_2

    .line 1110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3
    .parameter "q"

    .prologue
    .line 772
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 773
    return-void
.end method
