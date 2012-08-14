.class Landroid/widget/AbsListView$TouchMoveRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchMoveRunnable"
.end annotation


# static fields
.field private static final MAX_TOUCH_DISPLAY_TIME_GAP:I = 0x46


# instance fields
.field private ACCEL_COEF:[I

.field private final BIQUAD_FAST:[I

.field private final BIQUAD_NORM:[I

.field private final BIQUAD_SLOW:[I

.field private final BIQUAD_STOP:[I

.field private final BIQUAD_VFAST:[I

.field private final DAMPING_COEF:F

.field private final HISTORY_SIZE:I

.field private final INTEGRAL_COEF:I

.field private MAX_ACCEL_COUNT:I

.field private MAX_NOISE_COUNT:I

.field private final MAX_PI_CONTROL_COUNT:I

.field private final MIN_NOISE_STATE_CHANGE_COUNT:I

.field private final NOISE_GATE_IN_COEF:F

.field private final NOISE_GATE_OUT_COEF:F

.field private final NOISE_SURPRESS_MODE:I

.field private final NORMAL_MODE:I

.field private final NR_COEF1:I

.field private final NR_COEF2:I

.field private final NR_COEF3:I

.field private final PROPORTIONAL_COEF:I

.field private final SPRING_COEF:F

.field private final SQRT2:I

.field private accelCount:I

.field private additionalOffset:I

.field private currY:F

.field private final errorY:[I

.field private final inflection:[Z

.field private final inputFinalY:[I

.field private final inputY:[I

.field private final intCoef:I

.field private isFirst:Z

.field private lastComputedDeltaY:I

.field private lastComputedY:I

.field private lastYUpdateTime:J

.field private noiseCount:I

.field private noiseGateIn:I

.field private noiseGateOut:I

.field private noiseState:I

.field private noiseStateOld:I

.field private final outputSourceY:[I

.field private final outputY:[I

.field private overdampingCount:I

.field private final proCoef:I

.field private scale:I

.field private startTime:J

.field private stateChangeCount:I

.field final synthetic this$0:Landroid/widget/AbsListView;

.field thisView:Landroid/widget/AbsListView;

.field private totalCount:I

.field private final yDiff:[I


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView;)V
    .locals 9
    .parameter
    .parameter "getView"

    .prologue
    const/4 v8, 0x5

    const/16 v7, -0x28f

    const/16 v6, -0xccd

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 748
    iput-object p1, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 663
    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x40d0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->SQRT2:I

    .line 664
    iput v4, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->HISTORY_SIZE:I

    .line 665
    const v0, 0x3ba3d70a

    iput v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->NOISE_GATE_IN_COEF:F

    .line 666
    const v0, 0x3bc49ba6

    iput v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->NOISE_GATE_OUT_COEF:F

    .line 668
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    .line 669
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    .line 670
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputSourceY:[I

    .line 671
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    .line 672
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->errorY:[I

    .line 673
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->yDiff:[I

    .line 674
    new-array v0, v4, [Z

    iput-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inflection:[Z

    .line 688
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->BIQUAD_VFAST:[I

    .line 693
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->BIQUAD_FAST:[I

    .line 698
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->BIQUAD_NORM:[I

    .line 703
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->BIQUAD_SLOW:[I

    .line 708
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->BIQUAD_STOP:[I

    .line 715
    iput v4, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->MAX_PI_CONTROL_COUNT:I

    .line 716
    iput v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->PROPORTIONAL_COEF:I

    .line 717
    iput v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->INTEGRAL_COEF:I

    .line 720
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->SPRING_COEF:F

    .line 721
    const/high16 v0, 0x4040

    iput v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->DAMPING_COEF:F

    .line 722
    const/16 v0, 0xba3

    iput v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->NR_COEF1:I

    .line 723
    const/16 v0, 0x45d1

    iput v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->NR_COEF2:I

    .line 724
    const/16 v0, -0x1174

    iput v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->NR_COEF3:I

    .line 725
    const/4 v0, 0x6

    iput v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->MIN_NOISE_STATE_CHANGE_COUNT:I

    .line 733
    iput v5, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->NOISE_SURPRESS_MODE:I

    .line 734
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->NORMAL_MODE:I

    .line 738
    new-array v0, v8, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->ACCEL_COEF:[I

    .line 743
    iput v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->MAX_ACCEL_COUNT:I

    .line 744
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->MAX_NOISE_COUNT:I

    .line 749
    iput-object p2, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->thisView:Landroid/widget/AbsListView;

    .line 750
    #setter for: Landroid/widget/AbsListView;->onTouchThread:Z
    invoke-static {p1, v5}, Landroid/widget/AbsListView;->access$002(Landroid/widget/AbsListView;Z)Z

    .line 751
    iput v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->intCoef:I

    .line 752
    iput v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->proCoef:I

    .line 753
    iput-boolean v5, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->isFirst:Z

    .line 754
    return-void

    .line 688
    nop

    :array_0
    .array-data 0x4
        0x77t 0xat 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0xb9t 0x12t 0x0t 0x0t
        0x72t 0x25t 0x0t 0x0t
    .end array-data

    .line 693
    :array_1
    .array-data 0x4
        0x9dt 0xf0t 0xfft 0xfft
        0xedt 0x0t 0x0t 0x0t
        0x63t 0xct 0x0t 0x0t
        0xc5t 0x18t 0x0t 0x0t
    .end array-data

    .line 698
    :array_2
    .array-data 0x4
        0x2ft 0xc8t 0xfft 0xfft
        0x2bt 0xct 0x0t 0x0t
        0x17t 0x5t 0x0t 0x0t
        0x2dt 0xat 0x0t 0x0t
    .end array-data

    .line 703
    :array_3
    .array-data 0x4
        0x12t 0x99t 0xfft 0xfft
        0x2ft 0x2ft 0x0t 0x0t
        0x10t 0x2t 0x0t 0x0t
        0x21t 0x4t 0x0t 0x0t
    .end array-data

    .line 708
    :array_4
    .array-data 0x4
        0x4t 0xaat 0xfft 0xfft
        0xe1t 0x1ct 0x0t 0x0t
        0xb9t 0x1t 0x0t 0x0t
        0x73t 0x3t 0x0t 0x0t
    .end array-data

    .line 738
    :array_5
    .array-data 0x4
        0x8et 0x43t 0x0t 0x0t
        0x0t 0x48t 0x0t 0x0t
        0x39t 0x4et 0x0t 0x0t
        0x39t 0x56t 0x0t 0x0t
        0x0t 0x60t 0x0t 0x0t
    .end array-data
.end method

.method private touchDraw()V
    .locals 15

    .prologue
    const/16 v9, 0x384

    const/4 v14, 0x5

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 966
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 967
    .local v1, currTime:J
    iget-wide v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->lastYUpdateTime:J

    sub-long v7, v1, v7

    long-to-int v5, v7

    .line 968
    .local v5, timeGap:I
    const/16 v7, 0x46

    if-le v5, v7, :cond_1

    .line 969
    iput v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseState:I

    .line 970
    iput v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->stateChangeCount:I

    .line 1043
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    iget v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->totalCount:I

    if-ltz v7, :cond_3

    iget v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->totalCount:I

    const/16 v8, 0xa

    if-ge v7, v8, :cond_3

    .line 976
    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->dispHeightForTouchMove:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$500(Landroid/widget/AbsListView;)I

    move-result v7

    if-le v7, v9, :cond_2

    .line 977
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->BIQUAD_NORM:[I

    .line 1001
    .local v0, bk_BiQuad:[I
    :goto_1
    const/4 v3, 0x3

    .local v3, i:I
    :goto_2
    if-lez v3, :cond_a

    .line 1002
    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputSourceY:[I

    iget-object v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputSourceY:[I

    add-int/lit8 v9, v3, -0x1

    aget v8, v8, v9

    aput v8, v7, v3

    .line 1003
    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    iget-object v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    add-int/lit8 v9, v3, -0x1

    aget v8, v8, v9

    aput v8, v7, v3

    .line 1004
    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->errorY:[I

    iget-object v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->errorY:[I

    add-int/lit8 v9, v3, -0x1

    aget v8, v8, v9

    aput v8, v7, v3

    .line 1001
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 979
    .end local v0           #bk_BiQuad:[I
    .end local v3           #i:I
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->BIQUAD_SLOW:[I

    .restart local v0       #bk_BiQuad:[I
    goto :goto_1

    .line 980
    .end local v0           #bk_BiQuad:[I
    :cond_3
    iget v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseState:I

    if-ne v7, v12, :cond_8

    .line 981
    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->dispHeightForTouchMove:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$500(Landroid/widget/AbsListView;)I

    move-result v7

    if-le v7, v9, :cond_6

    .line 982
    iget v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->stateChangeCount:I

    const/4 v8, 0x4

    if-ge v7, v8, :cond_4

    .line 983
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->BIQUAD_VFAST:[I

    .restart local v0       #bk_BiQuad:[I
    goto :goto_1

    .line 984
    .end local v0           #bk_BiQuad:[I
    :cond_4
    iget v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->stateChangeCount:I

    const/4 v8, 0x7

    if-ge v7, v8, :cond_5

    .line 985
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->BIQUAD_FAST:[I

    .restart local v0       #bk_BiQuad:[I
    goto :goto_1

    .line 987
    .end local v0           #bk_BiQuad:[I
    :cond_5
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->BIQUAD_NORM:[I

    .restart local v0       #bk_BiQuad:[I
    goto :goto_1

    .line 989
    .end local v0           #bk_BiQuad:[I
    :cond_6
    iget v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->stateChangeCount:I

    const/4 v8, 0x3

    if-ge v7, v8, :cond_7

    .line 990
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->BIQUAD_FAST:[I

    .restart local v0       #bk_BiQuad:[I
    goto :goto_1

    .line 992
    .end local v0           #bk_BiQuad:[I
    :cond_7
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->BIQUAD_SLOW:[I

    .restart local v0       #bk_BiQuad:[I
    goto :goto_1

    .line 995
    .end local v0           #bk_BiQuad:[I
    :cond_8
    iget v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->stateChangeCount:I

    if-ge v7, v14, :cond_9

    .line 996
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->BIQUAD_STOP:[I

    .restart local v0       #bk_BiQuad:[I
    goto :goto_1

    .line 998
    .end local v0           #bk_BiQuad:[I
    :cond_9
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->BIQUAD_VFAST:[I

    .restart local v0       #bk_BiQuad:[I
    goto :goto_1

    .line 1006
    .restart local v3       #i:I
    :cond_a
    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputSourceY:[I

    iget-object v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    aget v8, v8, v11

    aput v8, v7, v11

    .line 1008
    aget v7, v0, v13

    iget-object v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputSourceY:[I

    aget v8, v8, v11

    iget-object v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputSourceY:[I

    aget v9, v9, v13

    add-int/2addr v8, v9

    iget-object v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputSourceY:[I

    aget v9, v9, v12

    shl-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    mul-int/2addr v7, v8

    aget v8, v0, v11

    iget-object v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    aget v9, v9, v12

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    aget v8, v0, v12

    iget-object v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    aget v9, v9, v13

    mul-int/2addr v8, v9

    sub-int v4, v7, v8

    .line 1010
    .local v4, outputYFinal:I
    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    add-int/lit16 v8, v4, 0x2000

    shr-int/lit8 v8, v8, 0xe

    aput v8, v7, v11

    .line 1013
    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->errorY:[I

    iget-object v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    aget v8, v8, v11

    iget-object v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputSourceY:[I

    aget v9, v9, v11

    sub-int/2addr v8, v9

    aput v8, v7, v11

    .line 1014
    iget v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->proCoef:I

    mul-int/lit8 v7, v7, 0x3

    iget v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->intCoef:I

    add-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->errorY:[I

    aget v8, v8, v11

    mul-int/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->intCoef:I

    iget-object v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->errorY:[I

    aget v9, v9, v12

    shl-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->errorY:[I

    aget v10, v10, v13

    add-int/2addr v9, v10

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x3

    add-int/2addr v4, v7

    .line 1015
    add-int/lit16 v7, v4, 0x2000

    shr-int/lit8 v4, v7, 0xe

    .line 1018
    iget v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->overdampingCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->overdampingCount:I

    .line 1019
    iget v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseState:I

    if-ne v7, v12, :cond_c

    .line 1020
    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    aget v7, v7, v11

    iget-object v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    aget v8, v8, v12

    sub-int/2addr v7, v8

    if-lez v7, :cond_d

    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    aget v7, v7, v11

    iget-object v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    aget v8, v8, v11

    if-le v7, v8, :cond_d

    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    aget v7, v7, v12

    iget-object v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    aget v8, v8, v12

    if-le v7, v8, :cond_d

    .line 1021
    iget v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->overdampingCount:I

    if-le v7, v14, :cond_b

    .line 1022
    iget v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->additionalOffset:I

    iget-object v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    aget v8, v8, v11

    iget-object v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    aget v9, v9, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    aget v9, v9, v11

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->additionalOffset:I

    .line 1023
    iput v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->overdampingCount:I

    .line 1025
    :cond_b
    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    aget v7, v7, v11

    add-int/2addr v7, v4

    shr-int/lit8 v4, v7, 0x1

    .line 1026
    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    iget-object v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    aget v8, v8, v11

    iget-object v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    aget v9, v9, v11

    add-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x1

    aput v8, v7, v11

    .line 1037
    :cond_c
    :goto_3
    add-int/lit8 v7, v4, 0x2

    shr-int/lit8 v6, v7, 0x2

    .line 1039
    .local v6, y:I
    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AbsListView;->mLastY:I

    if-eq v6, v7, :cond_0

    .line 1042
    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->scrollIfNeeded(I)V
    invoke-static {v7, v6}, Landroid/widget/AbsListView;->access$600(Landroid/widget/AbsListView;I)V

    goto/16 :goto_0

    .line 1027
    .end local v6           #y:I
    :cond_d
    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    aget v7, v7, v11

    iget-object v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    aget v8, v8, v12

    sub-int/2addr v7, v8

    if-gez v7, :cond_c

    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    aget v7, v7, v11

    iget-object v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    aget v8, v8, v11

    if-ge v7, v8, :cond_c

    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    aget v7, v7, v12

    iget-object v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    aget v8, v8, v12

    if-ge v7, v8, :cond_c

    .line 1028
    iget v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->overdampingCount:I

    if-le v7, v14, :cond_e

    .line 1029
    iget v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->additionalOffset:I

    iget-object v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    aget v8, v8, v11

    iget-object v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    aget v9, v9, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    aget v9, v9, v11

    sub-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->additionalOffset:I

    .line 1030
    iput v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->overdampingCount:I

    .line 1032
    :cond_e
    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    aget v7, v7, v11

    add-int/2addr v7, v4

    shr-int/lit8 v4, v7, 0x1

    .line 1033
    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    iget-object v8, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    aget v8, v8, v11

    iget-object v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    aget v9, v9, v11

    add-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x1

    aput v8, v7, v11

    goto :goto_3
.end method


# virtual methods
.method public addPosition(I)V
    .locals 15
    .parameter "getY"

    .prologue
    .line 810
    iget-boolean v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->isFirst:Z

    if-eqz v10, :cond_0

    .line 811
    invoke-virtual/range {p0 .. p1}, Landroid/widget/AbsListView$TouchMoveRunnable;->init(I)V

    .line 813
    :cond_0
    shl-int/lit8 v0, p1, 0x2

    .line 814
    .local v0, getY_Fixed:I
    iget v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->scale:I

    mul-int/2addr v10, v0

    shr-int/lit8 v10, v10, 0xe

    iget-object v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->offset:I
    invoke-static {v11}, Landroid/widget/AbsListView;->access$200(Landroid/widget/AbsListView;)I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->additionalOffset:I

    add-int v0, v10, v11

    .line 816
    iget-boolean v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->isFirst:Z

    if-nez v10, :cond_2

    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-ne v0, v10, :cond_2

    .line 924
    :cond_1
    :goto_0
    return-void

    .line 819
    :cond_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->isFirst:Z

    .line 820
    iget v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->totalCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->totalCount:I

    .line 822
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->lastYUpdateTime:J

    .line 824
    const/4 v1, 0x3

    .local v1, i:I
    :goto_1
    if-lez v1, :cond_3

    .line 825
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    iget-object v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    add-int/lit8 v12, v1, -0x1

    aget v11, v11, v12

    aput v11, v10, v1

    .line 826
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    iget-object v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    add-int/lit8 v12, v1, -0x1

    aget v11, v11, v12

    aput v11, v10, v1

    .line 827
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->yDiff:[I

    iget-object v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->yDiff:[I

    add-int/lit8 v12, v1, -0x1

    aget v11, v11, v12

    aput v11, v10, v1

    .line 828
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inflection:[Z

    iget-object v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inflection:[Z

    add-int/lit8 v12, v1, -0x1

    aget-boolean v11, v11, v12

    aput-boolean v11, v10, v1

    .line 824
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 830
    :cond_3
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    const/4 v11, 0x0

    aput v0, v10, v11

    .line 831
    const/4 v8, 0x0

    .line 832
    .local v8, resetHistory:Z
    const/4 v9, 0x0

    .line 835
    .local v9, resetTypeAccel:Z
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->yDiff:[I

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    shl-int/lit8 v12, v12, 0x1

    iget-object v13, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    iget-object v13, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    shl-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    iget-object v13, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    aput v12, v10, v11

    .line 838
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inflection:[Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-boolean v12, v10, v11

    .line 839
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->yDiff:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    if-gez v10, :cond_9

    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->yDiff:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-ltz v10, :cond_9

    .line 840
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inflection:[Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput-boolean v12, v10, v11

    .line 844
    :cond_4
    :goto_2
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inflection:[Z

    const/4 v11, 0x0

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inflection:[Z

    const/4 v11, 0x1

    aget-boolean v10, v10, v11

    if-nez v10, :cond_5

    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inflection:[Z

    const/4 v11, 0x2

    aget-boolean v10, v10, v11

    if-nez v10, :cond_5

    .line 845
    const/4 v8, 0x1

    .line 846
    iget v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->MAX_ACCEL_COUNT:I

    iput v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->accelCount:I

    .line 849
    :cond_5
    iget v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseState:I

    iput v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseStateOld:I

    .line 850
    iget v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    .line 851
    if-eqz v8, :cond_6

    iget v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->stateChangeCount:I

    const/4 v11, 0x6

    if-le v10, v11, :cond_6

    .line 852
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseState:I

    .line 853
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->stateChangeCount:I

    .line 862
    :cond_6
    :goto_3
    iget v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->stateChangeCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->stateChangeCount:I

    .line 864
    iget v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseState:I

    if-nez v10, :cond_b

    .line 866
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    mul-int/lit16 v12, v12, 0xba3

    iget-object v13, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    mul-int/lit16 v13, v13, 0x45d1

    add-int/2addr v12, v13

    iget-object v13, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    mul-int/lit16 v13, v13, -0x1174

    add-int/2addr v12, v13

    aput v12, v10, v11

    .line 867
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/lit16 v12, v12, 0x2000

    shr-int/lit8 v12, v12, 0xe

    aput v12, v10, v11

    .line 869
    iget v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseStateOld:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 870
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->accelCount:I

    .line 871
    iget v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->MAX_NOISE_COUNT:I

    iput v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseCount:I

    .line 872
    const/4 v8, 0x1

    .line 884
    :cond_7
    :goto_4
    iget v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->accelCount:I

    if-lez v10, :cond_c

    .line 885
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int/2addr v10, v11

    iget-object v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->ACCEL_COEF:[I

    iget v12, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->accelCount:I

    add-int/lit8 v12, v12, -0x1

    aget v11, v11, v12

    mul-int v3, v10, v11

    .line 886
    .local v3, newInputY:I
    add-int/lit16 v10, v3, 0x2000

    shr-int/lit8 v3, v10, 0xe

    .line 887
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v3, v10

    .line 888
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v11, 0x0

    aput v3, v10, v11

    .line 889
    iget v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->accelCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->accelCount:I

    .line 890
    iget v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->overdampingCount:I

    const/4 v11, 0x2

    if-le v10, v11, :cond_8

    .line 891
    iget v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->additionalOffset:I

    iget v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->SQRT2:I

    mul-int/2addr v10, v11

    shr-int/lit8 v10, v10, 0xe

    iput v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->additionalOffset:I

    .line 899
    .end local v3           #newInputY:I
    :cond_8
    :goto_5
    if-eqz v8, :cond_1

    .line 904
    if-eqz v9, :cond_d

    .line 905
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int v2, v10, v11

    .line 906
    .local v2, inputFinalOffset:I
    shr-int/lit8 v10, v2, 0x1

    add-int/2addr v2, v10

    .line 907
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputSourceY:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputSourceY:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int v7, v10, v11

    .line 908
    .local v7, outputSourceOffset:I
    shr-int/lit8 v10, v7, 0x1

    add-int/2addr v7, v10

    .line 909
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int v6, v10, v11

    .line 910
    .local v6, outputOffset:I
    shr-int/lit8 v10, v6, 0x1

    add-int/2addr v6, v10

    .line 917
    :goto_6
    const/4 v1, 0x1

    :goto_7
    const/4 v10, 0x4

    if-ge v1, v10, :cond_e

    .line 918
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    iget-object v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    add-int/lit8 v12, v1, -0x1

    aget v11, v11, v12

    sub-int/2addr v11, v2

    aput v11, v10, v1

    .line 919
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputSourceY:[I

    iget-object v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputSourceY:[I

    add-int/lit8 v12, v1, -0x1

    aget v11, v11, v12

    sub-int/2addr v11, v7

    aput v11, v10, v1

    .line 920
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    iget-object v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    add-int/lit8 v12, v1, -0x1

    aget v11, v11, v12

    sub-int/2addr v11, v6

    aput v11, v10, v1

    .line 917
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 841
    .end local v2           #inputFinalOffset:I
    .end local v6           #outputOffset:I
    .end local v7           #outputSourceOffset:I
    :cond_9
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->yDiff:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    if-lez v10, :cond_4

    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->yDiff:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-gtz v10, :cond_4

    .line 842
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inflection:[Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput-boolean v12, v10, v11

    goto/16 :goto_2

    .line 856
    :cond_a
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 857
    .local v4, noise:I
    iget v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseGateOut:I

    if-lt v4, v10, :cond_6

    .line 858
    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseState:I

    .line 859
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->stateChangeCount:I

    goto/16 :goto_3

    .line 875
    .end local v4           #noise:I
    :cond_b
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    aput v12, v10, v11

    .line 876
    iget v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseStateOld:I

    if-nez v10, :cond_7

    .line 877
    iget v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->MAX_ACCEL_COUNT:I

    iput v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->accelCount:I

    .line 878
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseCount:I

    .line 879
    const/4 v8, 0x1

    .line 880
    const/4 v9, 0x1

    goto/16 :goto_4

    .line 892
    :cond_c
    iget v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseCount:I

    if-lez v10, :cond_8

    .line 893
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-int v5, v10, v11

    .line 894
    .local v5, noiseReductionOffset:I
    shr-int/lit8 v10, v5, 0x1

    sub-int/2addr v5, v10

    .line 895
    iget-object v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v12, v5

    aput v12, v10, v11

    .line 896
    iget v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseCount:I

    goto/16 :goto_5

    .line 912
    .end local v5           #noiseReductionOffset:I
    :cond_d
    const/4 v2, 0x0

    .line 913
    .restart local v2       #inputFinalOffset:I
    const/4 v7, 0x0

    .line 914
    .restart local v7       #outputSourceOffset:I
    const/4 v6, 0x0

    .restart local v6       #outputOffset:I
    goto/16 :goto_6

    .line 922
    :cond_e
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->overdampingCount:I

    goto/16 :goto_0
.end method

.method public endTouchMove()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 959
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    #setter for: Landroid/widget/AbsListView;->onTouchThread:Z
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$002(Landroid/widget/AbsListView;Z)Z

    .line 960
    iput-boolean v1, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->isFirst:Z

    .line 961
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 962
    return-void
.end method

.method public init(I)V
    .locals 11
    .parameter "getY"

    .prologue
    const/high16 v10, 0x4080

    const/4 v9, 0x0

    .line 764
    iget-object v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 765
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 766
    .local v0, compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    iget v4, v0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 767
    .local v4, scalef:F
    const/high16 v6, 0x4680

    mul-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->scale:I

    .line 768
    iget-object v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    int-to-float v7, p1

    mul-float/2addr v7, v4

    mul-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    #setter for: Landroid/widget/AbsListView;->offset:I
    invoke-static {v6, v7}, Landroid/widget/AbsListView;->access$202(Landroid/widget/AbsListView;I)I

    .line 770
    shl-int/lit8 v1, p1, 0x2

    .line 771
    .local v1, getY_Fixed:I
    iget v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->scale:I

    mul-int/2addr v6, v1

    shr-int/lit8 v6, v6, 0xe

    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->offset:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$200(Landroid/widget/AbsListView;)I

    move-result v7

    add-int v1, v6, v7

    .line 772
    iget-object v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v7, v1, 0x2

    shr-int/lit8 v7, v7, 0x2

    iput v7, v6, Landroid/widget/AbsListView;->mLastY:I

    .line 774
    iget-object v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    aput v1, v6, v9

    .line 775
    iget-object v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    aput v1, v6, v9

    .line 776
    iget-object v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputSourceY:[I

    aput v1, v6, v9

    .line 777
    iget-object v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    aput v1, v6, v9

    .line 778
    iget-object v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->errorY:[I

    aput v9, v6, v9

    .line 779
    iget-object v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inflection:[Z

    aput-boolean v9, v6, v9

    .line 780
    iget-object v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->yDiff:[I

    aput v9, v6, v9

    .line 781
    iput v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->additionalOffset:I

    .line 783
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    const/4 v6, 0x4

    if-ge v2, v6, :cond_0

    .line 784
    iget-object v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputY:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    aput v7, v6, v2

    .line 785
    iget-object v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inputFinalY:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    aput v7, v6, v2

    .line 786
    iget-object v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputSourceY:[I

    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputSourceY:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    aput v7, v6, v2

    .line 787
    iget-object v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->outputY:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    aput v7, v6, v2

    .line 788
    iget-object v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->errorY:[I

    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->errorY:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    aput v7, v6, v2

    .line 789
    iget-object v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->inflection:[Z

    aput-boolean v9, v6, v2

    .line 790
    iget-object v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->yDiff:[I

    aput v9, v6, v2

    .line 783
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 793
    :cond_0
    iput v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->lastComputedDeltaY:I

    .line 794
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->startTime:J

    .line 795
    iget-wide v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->startTime:J

    iput-wide v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->lastYUpdateTime:J

    .line 796
    iput v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseState:I

    .line 797
    iput v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseStateOld:I

    .line 798
    iput v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->accelCount:I

    .line 799
    iput v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseCount:I

    .line 800
    iput v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->totalCount:I

    .line 801
    iput v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->stateChangeCount:I

    .line 802
    iput v9, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->overdampingCount:I

    .line 804
    iget-object v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getHeight()I

    move-result v6

    iget-object v7, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v5, v6

    .line 805
    .local v5, viewLength:F
    const v6, 0x3ba3d70a

    mul-float/2addr v6, v5

    mul-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseGateIn:I

    .line 806
    const v6, 0x3bc49ba6

    mul-float/2addr v6, v5

    mul-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->noiseGateOut:I

    .line 807
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 927
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->onTouchThread:Z
    invoke-static {v0}, Landroid/widget/AbsListView;->access$000(Landroid/widget/AbsListView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 928
    invoke-virtual {p0}, Landroid/widget/AbsListView$TouchMoveRunnable;->endTouchMove()V

    .line 956
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mTouchMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 933
    invoke-virtual {p0}, Landroid/widget/AbsListView$TouchMoveRunnable;->endTouchMove()V

    goto :goto_0

    .line 938
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_3

    .line 939
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 944
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->checkLastEvent:J
    invoke-static {v2}, Landroid/widget/AbsListView;->access$300(Landroid/widget/AbsListView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 945
    invoke-virtual {p0}, Landroid/widget/AbsListView$TouchMoveRunnable;->endTouchMove()V

    .line 946
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_LDI:Z

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->nationalY:I
    invoke-static {v1}, Landroid/widget/AbsListView;->access$400(Landroid/widget/AbsListView;)I

    move-result v1

    iput v1, v0, Landroid/widget/AbsListView;->mLastY:I

    .line 948
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    #setter for: Landroid/widget/AbsListView;->ifKeepMoving:Z
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$102(Landroid/widget/AbsListView;Z)Z

    goto :goto_0

    .line 953
    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->nationalY:I
    invoke-static {v0}, Landroid/widget/AbsListView;->access$400(Landroid/widget/AbsListView;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AbsListView$TouchMoveRunnable;->addPosition(I)V

    .line 954
    invoke-direct {p0}, Landroid/widget/AbsListView$TouchMoveRunnable;->touchDraw()V

    .line 955
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 757
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    #setter for: Landroid/widget/AbsListView;->onTouchThread:Z
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$002(Landroid/widget/AbsListView;Z)Z

    .line 758
    iput-boolean v1, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->isFirst:Z

    .line 759
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/AbsListView;->ifKeepMoving:Z
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$102(Landroid/widget/AbsListView;Z)Z

    .line 760
    iget-object v0, p0, Landroid/widget/AbsListView$TouchMoveRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 761
    return-void
.end method
