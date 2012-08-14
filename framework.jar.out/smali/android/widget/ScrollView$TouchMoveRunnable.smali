.class Landroid/widget/ScrollView$TouchMoveRunnable;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ScrollView;
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

.field final synthetic this$0:Landroid/widget/ScrollView;

.field thisView:Landroid/widget/ScrollView;

.field private totalCount:I

.field private final yDiff:[I


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;Landroid/widget/ScrollView;)V
    .locals 9
    .parameter
    .parameter "getView"

    .prologue
    const/4 v8, 0x5

    const/16 v7, -0x28f

    const/16 v6, -0xccd

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 260
    iput-object p1, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 175
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

    iput v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->SQRT2:I

    .line 176
    iput v4, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->HISTORY_SIZE:I

    .line 177
    const v0, 0x3ba3d70a

    iput v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->NOISE_GATE_IN_COEF:F

    .line 178
    const v0, 0x3bc49ba6

    iput v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->NOISE_GATE_OUT_COEF:F

    .line 180
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    .line 181
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    .line 182
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputSourceY:[I

    .line 183
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    .line 184
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->errorY:[I

    .line 185
    new-array v0, v4, [I

    iput-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->yDiff:[I

    .line 186
    new-array v0, v4, [Z

    iput-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inflection:[Z

    .line 200
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->BIQUAD_VFAST:[I

    .line 205
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->BIQUAD_FAST:[I

    .line 210
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->BIQUAD_NORM:[I

    .line 215
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->BIQUAD_SLOW:[I

    .line 220
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->BIQUAD_STOP:[I

    .line 227
    iput v4, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->MAX_PI_CONTROL_COUNT:I

    .line 228
    iput v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->PROPORTIONAL_COEF:I

    .line 229
    iput v7, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->INTEGRAL_COEF:I

    .line 232
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->SPRING_COEF:F

    .line 233
    const/high16 v0, 0x4040

    iput v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->DAMPING_COEF:F

    .line 234
    const/16 v0, 0xba3

    iput v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->NR_COEF1:I

    .line 235
    const/16 v0, 0x45d1

    iput v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->NR_COEF2:I

    .line 236
    const/16 v0, -0x1174

    iput v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->NR_COEF3:I

    .line 237
    const/4 v0, 0x6

    iput v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->MIN_NOISE_STATE_CHANGE_COUNT:I

    .line 245
    iput v5, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->NOISE_SURPRESS_MODE:I

    .line 246
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->NORMAL_MODE:I

    .line 250
    new-array v0, v8, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->ACCEL_COEF:[I

    .line 255
    iput v8, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->MAX_ACCEL_COUNT:I

    .line 256
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->MAX_NOISE_COUNT:I

    .line 261
    iput-object p2, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->thisView:Landroid/widget/ScrollView;

    .line 262
    #setter for: Landroid/widget/ScrollView;->onTouchThread:Z
    invoke-static {p1, v5}, Landroid/widget/ScrollView;->access$002(Landroid/widget/ScrollView;Z)Z

    .line 263
    iput v7, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->intCoef:I

    .line 264
    iput v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->proCoef:I

    .line 265
    iput-boolean v5, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->isFirst:Z

    .line 266
    return-void

    .line 200
    nop

    :array_0
    .array-data 0x4
        0x77t 0xat 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0xb9t 0x12t 0x0t 0x0t
        0x72t 0x25t 0x0t 0x0t
    .end array-data

    .line 205
    :array_1
    .array-data 0x4
        0x9dt 0xf0t 0xfft 0xfft
        0xedt 0x0t 0x0t 0x0t
        0x63t 0xct 0x0t 0x0t
        0xc5t 0x18t 0x0t 0x0t
    .end array-data

    .line 210
    :array_2
    .array-data 0x4
        0x2ft 0xc8t 0xfft 0xfft
        0x2bt 0xct 0x0t 0x0t
        0x17t 0x5t 0x0t 0x0t
        0x2dt 0xat 0x0t 0x0t
    .end array-data

    .line 215
    :array_3
    .array-data 0x4
        0x12t 0x99t 0xfft 0xfft
        0x2ft 0x2ft 0x0t 0x0t
        0x10t 0x2t 0x0t 0x0t
        0x21t 0x4t 0x0t 0x0t
    .end array-data

    .line 220
    :array_4
    .array-data 0x4
        0x4t 0xaat 0xfft 0xfft
        0xe1t 0x1ct 0x0t 0x0t
        0xb9t 0x1t 0x0t 0x0t
        0x73t 0x3t 0x0t 0x0t
    .end array-data

    .line 250
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
    .locals 25

    .prologue
    .line 466
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 467
    .local v15, currTime:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->lastYUpdateTime:J

    sub-long v2, v15, v2

    long-to-int v0, v2

    move/from16 v23, v0

    .line 468
    .local v23, timeGap:I
    const/16 v2, 0x46

    move/from16 v0, v23

    if-le v0, v2, :cond_1

    .line 469
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseState:I

    .line 470
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->stateChangeCount:I

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->totalCount:I

    if-ltz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->totalCount:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->dispHeightForTouchMove:I
    invoke-static {v2}, Landroid/widget/ScrollView;->access$700(Landroid/widget/ScrollView;)I

    move-result v2

    const/16 v3, 0x384

    if-le v2, v3, :cond_2

    .line 477
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->BIQUAD_NORM:[I

    .line 501
    .local v13, bk_BiQuad:[I
    :goto_1
    const/16 v17, 0x3

    .local v17, i:I
    :goto_2
    if-lez v17, :cond_a

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputSourceY:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputSourceY:[I

    add-int/lit8 v5, v17, -0x1

    aget v3, v3, v5

    aput v3, v2, v17

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    add-int/lit8 v5, v17, -0x1

    aget v3, v3, v5

    aput v3, v2, v17

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->errorY:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->errorY:[I

    add-int/lit8 v5, v17, -0x1

    aget v3, v3, v5

    aput v3, v2, v17

    .line 501
    add-int/lit8 v17, v17, -0x1

    goto :goto_2

    .line 479
    .end local v13           #bk_BiQuad:[I
    .end local v17           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->BIQUAD_SLOW:[I

    .restart local v13       #bk_BiQuad:[I
    goto :goto_1

    .line 480
    .end local v13           #bk_BiQuad:[I
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 481
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->dispHeightForTouchMove:I
    invoke-static {v2}, Landroid/widget/ScrollView;->access$700(Landroid/widget/ScrollView;)I

    move-result v2

    const/16 v3, 0x384

    if-le v2, v3, :cond_6

    .line 482
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->stateChangeCount:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_4

    .line 483
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->BIQUAD_VFAST:[I

    .restart local v13       #bk_BiQuad:[I
    goto :goto_1

    .line 484
    .end local v13           #bk_BiQuad:[I
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->stateChangeCount:I

    const/4 v3, 0x7

    if-ge v2, v3, :cond_5

    .line 485
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->BIQUAD_FAST:[I

    .restart local v13       #bk_BiQuad:[I
    goto :goto_1

    .line 487
    .end local v13           #bk_BiQuad:[I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->BIQUAD_NORM:[I

    .restart local v13       #bk_BiQuad:[I
    goto :goto_1

    .line 489
    .end local v13           #bk_BiQuad:[I
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->stateChangeCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_7

    .line 490
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->BIQUAD_FAST:[I

    .restart local v13       #bk_BiQuad:[I
    goto :goto_1

    .line 492
    .end local v13           #bk_BiQuad:[I
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->BIQUAD_SLOW:[I

    .restart local v13       #bk_BiQuad:[I
    goto :goto_1

    .line 495
    .end local v13           #bk_BiQuad:[I
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->stateChangeCount:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_9

    .line 496
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->BIQUAD_STOP:[I

    .restart local v13       #bk_BiQuad:[I
    goto/16 :goto_1

    .line 498
    .end local v13           #bk_BiQuad:[I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->BIQUAD_VFAST:[I

    .restart local v13       #bk_BiQuad:[I
    goto/16 :goto_1

    .line 506
    .restart local v17       #i:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputSourceY:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    aput v5, v2, v3

    .line 508
    const/4 v2, 0x2

    aget v2, v13, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputSourceY:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputSourceY:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputSourceY:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    aget v3, v13, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    mul-int/2addr v3, v5

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v13, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    mul-int/2addr v3, v5

    sub-int v20, v2, v3

    .line 510
    .local v20, outputYFinal:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v3, 0x0

    move/from16 v0, v20

    add-int/lit16 v5, v0, 0x2000

    shr-int/lit8 v5, v5, 0xe

    aput v5, v2, v3

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->errorY:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputSourceY:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    aput v5, v2, v3

    .line 514
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->proCoef:I

    mul-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->intCoef:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->errorY:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    mul-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->intCoef:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->errorY:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    shl-int/lit8 v5, v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->errorY:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    add-int/2addr v5, v6

    mul-int/2addr v3, v5

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    add-int v20, v20, v2

    .line 515
    move/from16 v0, v20

    add-int/lit16 v2, v0, 0x2000

    shr-int/lit8 v20, v2, 0xe

    .line 518
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->overdampingCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->overdampingCount:I

    .line 519
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    if-lez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    if-le v2, v3, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    if-le v2, v3, :cond_11

    .line 521
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->overdampingCount:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_b

    .line 522
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->additionalOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->additionalOffset:I

    .line 523
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->overdampingCount:I

    .line 525
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int v2, v2, v20

    shr-int/lit8 v20, v2, 0x1

    .line 526
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1

    aput v5, v2, v3

    .line 537
    :cond_c
    :goto_3
    add-int/lit8 v2, v20, 0x2

    shr-int/lit8 v24, v2, 0x2

    .line 539
    .local v24, y:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mLastMotionY:F
    invoke-static {v2}, Landroid/widget/ScrollView;->access$200(Landroid/widget/ScrollView;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move/from16 v0, v24

    if-eq v0, v2, :cond_0

    .line 543
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mIsBeingDragged:Z
    invoke-static {v2}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->ev2:Landroid/view/MotionEvent;
    invoke-static {v2}, Landroid/widget/ScrollView;->access$800(Landroid/widget/ScrollView;)Landroid/view/MotionEvent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->ev2:Landroid/view/MotionEvent;
    invoke-static {v2}, Landroid/widget/ScrollView;->access$800(Landroid/widget/ScrollView;)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mActivePointerId:I
    invoke-static {v3}, Landroid/widget/ScrollView;->access$500(Landroid/widget/ScrollView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 550
    .local v12, activePointerIndex:I
    const/4 v2, -0x1

    if-eq v12, v2, :cond_0

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mLastMotionY:F
    invoke-static {v2}, Landroid/widget/ScrollView;->access$200(Landroid/widget/ScrollView;)F

    move-result v2

    move/from16 v0, v24

    int-to-float v3, v0

    sub-float/2addr v2, v3

    float-to-int v4, v2

    .line 556
    .local v4, deltaY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    move/from16 v0, v24

    int-to-float v3, v0

    #setter for: Landroid/widget/ScrollView;->mLastMotionY:F
    invoke-static {v2, v3}, Landroid/widget/ScrollView;->access$202(Landroid/widget/ScrollView;F)F

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v2}, Landroid/widget/ScrollView;->access$900(Landroid/widget/ScrollView;)I

    move-result v18

    .line 559
    .local v18, oldX:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v2}, Landroid/widget/ScrollView;->access$1000(Landroid/widget/ScrollView;)I

    move-result v19

    .line 560
    .local v19, oldY:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #calls: Landroid/widget/ScrollView;->getScrollRange()I
    invoke-static {v2}, Landroid/widget/ScrollView;->access$1100(Landroid/widget/ScrollView;)I

    move-result v8

    .line 561
    .local v8, range:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getOverScrollMode()I

    move-result v21

    .line 562
    .local v21, overscrollMode:I
    if-eqz v21, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_13

    if-lez v8, :cond_13

    :cond_d
    const/4 v14, 0x1

    .line 565
    .local v14, canOverscroll:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$1200(Landroid/widget/ScrollView;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mOverscrollDistance:I
    invoke-static {v10}, Landroid/widget/ScrollView;->access$1300(Landroid/widget/ScrollView;)I

    move-result v10

    const/4 v11, 0x1

    #calls: Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z
    invoke-static/range {v2 .. v11}, Landroid/widget/ScrollView;->access$1400(Landroid/widget/ScrollView;IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v2}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/view/VelocityTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 569
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v3}, Landroid/widget/ScrollView;->access$1600(Landroid/widget/ScrollView;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1700(Landroid/widget/ScrollView;)I

    move-result v5

    move/from16 v0, v18

    move/from16 v1, v19

    #calls: Landroid/widget/ScrollView;->onScrollChanged(IIII)V
    invoke-static {v2, v3, v5, v0, v1}, Landroid/widget/ScrollView;->access$1800(Landroid/widget/ScrollView;IIII)V

    .line 571
    if-eqz v14, :cond_0

    .line 572
    add-int v22, v19, v4

    .line 573
    .local v22, pulledToY:I
    if-gez v22, :cond_14

    .line 574
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/ScrollView;->access$1900(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    int-to-float v3, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/ScrollView;->access$2000(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_f

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/ScrollView;->access$2000(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 584
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/ScrollView;->access$1900(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/ScrollView;->access$1900(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/ScrollView;->access$2000(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 586
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->invalidate()V

    goto/16 :goto_0

    .line 527
    .end local v4           #deltaY:I
    .end local v8           #range:I
    .end local v12           #activePointerIndex:I
    .end local v14           #canOverscroll:Z
    .end local v18           #oldX:I
    .end local v19           #oldY:I
    .end local v21           #overscrollMode:I
    .end local v22           #pulledToY:I
    .end local v24           #y:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    if-gez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    if-ge v2, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    if-ge v2, v3, :cond_c

    .line 528
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->overdampingCount:I

    const/4 v3, 0x5

    if-le v2, v3, :cond_12

    .line 529
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->additionalOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->additionalOffset:I

    .line 530
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->overdampingCount:I

    .line 532
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int v2, v2, v20

    shr-int/lit8 v20, v2, 0x1

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1

    aput v5, v2, v3

    goto/16 :goto_3

    .line 562
    .restart local v4       #deltaY:I
    .restart local v8       #range:I
    .restart local v12       #activePointerIndex:I
    .restart local v18       #oldX:I
    .restart local v19       #oldY:I
    .restart local v21       #overscrollMode:I
    .restart local v24       #y:I
    :cond_13
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 578
    .restart local v14       #canOverscroll:Z
    .restart local v22       #pulledToY:I
    :cond_14
    move/from16 v0, v22

    if-le v0, v8, :cond_f

    .line 579
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/ScrollView;->access$2000(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    int-to-float v3, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 580
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/ScrollView;->access$1900(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_f

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v2}, Landroid/widget/ScrollView;->access$1900(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->onRelease()V

    goto/16 :goto_5
.end method


# virtual methods
.method public addPosition(I)V
    .locals 15
    .parameter "getY"

    .prologue
    .line 321
    iget-boolean v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->isFirst:Z

    if-eqz v10, :cond_0

    .line 322
    invoke-virtual/range {p0 .. p1}, Landroid/widget/ScrollView$TouchMoveRunnable;->init(I)V

    .line 324
    :cond_0
    shl-int/lit8 v0, p1, 0x2

    .line 325
    .local v0, getY_Fixed:I
    iget v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->scale:I

    mul-int/2addr v10, v0

    shr-int/lit8 v10, v10, 0xe

    iget-object v11, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->offset:I
    invoke-static {v11}, Landroid/widget/ScrollView;->access$100(Landroid/widget/ScrollView;)I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->additionalOffset:I

    add-int v0, v10, v11

    .line 327
    iget-boolean v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->isFirst:Z

    if-nez v10, :cond_2

    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-ne v0, v10, :cond_2

    .line 435
    :cond_1
    :goto_0
    return-void

    .line 330
    :cond_2
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->isFirst:Z

    .line 331
    iget v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->totalCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->totalCount:I

    .line 333
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->lastYUpdateTime:J

    .line 335
    const/4 v1, 0x3

    .local v1, i:I
    :goto_1
    if-lez v1, :cond_3

    .line 336
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    iget-object v11, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    add-int/lit8 v12, v1, -0x1

    aget v11, v11, v12

    aput v11, v10, v1

    .line 337
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    iget-object v11, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    add-int/lit8 v12, v1, -0x1

    aget v11, v11, v12

    aput v11, v10, v1

    .line 338
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->yDiff:[I

    iget-object v11, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->yDiff:[I

    add-int/lit8 v12, v1, -0x1

    aget v11, v11, v12

    aput v11, v10, v1

    .line 339
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inflection:[Z

    iget-object v11, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inflection:[Z

    add-int/lit8 v12, v1, -0x1

    aget-boolean v11, v11, v12

    aput-boolean v11, v10, v1

    .line 335
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 341
    :cond_3
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    const/4 v11, 0x0

    aput v0, v10, v11

    .line 342
    const/4 v8, 0x0

    .line 343
    .local v8, resetHistory:Z
    const/4 v9, 0x0

    .line 346
    .local v9, resetTypeAccel:Z
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->yDiff:[I

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    shl-int/lit8 v12, v12, 0x1

    iget-object v13, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    add-int/2addr v12, v13

    iget-object v13, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    shl-int/lit8 v13, v13, 0x2

    sub-int/2addr v12, v13

    iget-object v13, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    add-int/2addr v12, v13

    aput v12, v10, v11

    .line 349
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inflection:[Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-boolean v12, v10, v11

    .line 350
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->yDiff:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    if-gez v10, :cond_9

    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->yDiff:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-ltz v10, :cond_9

    .line 351
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inflection:[Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput-boolean v12, v10, v11

    .line 355
    :cond_4
    :goto_2
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inflection:[Z

    const/4 v11, 0x0

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inflection:[Z

    const/4 v11, 0x1

    aget-boolean v10, v10, v11

    if-nez v10, :cond_5

    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inflection:[Z

    const/4 v11, 0x2

    aget-boolean v10, v10, v11

    if-nez v10, :cond_5

    .line 356
    const/4 v8, 0x1

    .line 357
    iget v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->MAX_ACCEL_COUNT:I

    iput v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->accelCount:I

    .line 360
    :cond_5
    iget v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseState:I

    iput v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseStateOld:I

    .line 361
    iget v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_a

    .line 362
    if-eqz v8, :cond_6

    iget v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->stateChangeCount:I

    const/4 v11, 0x6

    if-le v10, v11, :cond_6

    .line 363
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseState:I

    .line 364
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->stateChangeCount:I

    .line 373
    :cond_6
    :goto_3
    iget v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->stateChangeCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->stateChangeCount:I

    .line 375
    iget v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseState:I

    if-nez v10, :cond_b

    .line 377
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    mul-int/lit16 v12, v12, 0xba3

    iget-object v13, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    mul-int/lit16 v13, v13, 0x45d1

    add-int/2addr v12, v13

    iget-object v13, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    mul-int/lit16 v13, v13, -0x1174

    add-int/2addr v12, v13

    aput v12, v10, v11

    .line 378
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/lit16 v12, v12, 0x2000

    shr-int/lit8 v12, v12, 0xe

    aput v12, v10, v11

    .line 380
    iget v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseStateOld:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 381
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->accelCount:I

    .line 382
    iget v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->MAX_NOISE_COUNT:I

    iput v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseCount:I

    .line 383
    const/4 v8, 0x1

    .line 395
    :cond_7
    :goto_4
    iget v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->accelCount:I

    if-lez v10, :cond_c

    .line 396
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int/2addr v10, v11

    iget-object v11, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->ACCEL_COEF:[I

    iget v12, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->accelCount:I

    add-int/lit8 v12, v12, -0x1

    aget v11, v11, v12

    mul-int v3, v10, v11

    .line 397
    .local v3, newInputY:I
    add-int/lit16 v10, v3, 0x2000

    shr-int/lit8 v3, v10, 0xe

    .line 398
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    add-int/2addr v3, v10

    .line 399
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v11, 0x0

    aput v3, v10, v11

    .line 400
    iget v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->accelCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->accelCount:I

    .line 401
    iget v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->overdampingCount:I

    const/4 v11, 0x2

    if-le v10, v11, :cond_8

    .line 402
    iget v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->additionalOffset:I

    iget v11, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->SQRT2:I

    mul-int/2addr v10, v11

    shr-int/lit8 v10, v10, 0xe

    iput v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->additionalOffset:I

    .line 410
    .end local v3           #newInputY:I
    :cond_8
    :goto_5
    if-eqz v8, :cond_1

    .line 415
    if-eqz v9, :cond_d

    .line 416
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int v2, v10, v11

    .line 417
    .local v2, inputFinalOffset:I
    shr-int/lit8 v10, v2, 0x1

    add-int/2addr v2, v10

    .line 418
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputSourceY:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputSourceY:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int v7, v10, v11

    .line 419
    .local v7, outputSourceOffset:I
    shr-int/lit8 v10, v7, 0x1

    add-int/2addr v7, v10

    .line 420
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    sub-int v6, v10, v11

    .line 421
    .local v6, outputOffset:I
    shr-int/lit8 v10, v6, 0x1

    add-int/2addr v6, v10

    .line 428
    :goto_6
    const/4 v1, 0x1

    :goto_7
    const/4 v10, 0x4

    if-ge v1, v10, :cond_e

    .line 429
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    iget-object v11, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    add-int/lit8 v12, v1, -0x1

    aget v11, v11, v12

    sub-int/2addr v11, v2

    aput v11, v10, v1

    .line 430
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputSourceY:[I

    iget-object v11, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputSourceY:[I

    add-int/lit8 v12, v1, -0x1

    aget v11, v11, v12

    sub-int/2addr v11, v7

    aput v11, v10, v1

    .line 431
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    iget-object v11, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    add-int/lit8 v12, v1, -0x1

    aget v11, v11, v12

    sub-int/2addr v11, v6

    aput v11, v10, v1

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 352
    .end local v2           #inputFinalOffset:I
    .end local v6           #outputOffset:I
    .end local v7           #outputSourceOffset:I
    :cond_9
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->yDiff:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    if-lez v10, :cond_4

    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->yDiff:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    if-gtz v10, :cond_4

    .line 353
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inflection:[Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput-boolean v12, v10, v11

    goto/16 :goto_2

    .line 367
    :cond_a
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 368
    .local v4, noise:I
    iget v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseGateOut:I

    if-lt v4, v10, :cond_6

    .line 369
    const/4 v10, 0x1

    iput v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseState:I

    .line 370
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->stateChangeCount:I

    goto/16 :goto_3

    .line 386
    .end local v4           #noise:I
    :cond_b
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    aput v12, v10, v11

    .line 387
    iget v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseStateOld:I

    if-nez v10, :cond_7

    .line 388
    iget v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->MAX_ACCEL_COUNT:I

    iput v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->accelCount:I

    .line 389
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseCount:I

    .line 390
    const/4 v8, 0x1

    .line 391
    const/4 v9, 0x1

    goto/16 :goto_4

    .line 403
    :cond_c
    iget v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseCount:I

    if-lez v10, :cond_8

    .line 404
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    iget-object v11, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-int v5, v10, v11

    .line 405
    .local v5, noiseReductionOffset:I
    shr-int/lit8 v10, v5, 0x1

    sub-int/2addr v5, v10

    .line 406
    iget-object v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    const/4 v11, 0x0

    iget-object v12, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v12, v5

    aput v12, v10, v11

    .line 407
    iget v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseCount:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseCount:I

    goto/16 :goto_5

    .line 423
    .end local v5           #noiseReductionOffset:I
    :cond_d
    const/4 v2, 0x0

    .line 424
    .restart local v2       #inputFinalOffset:I
    const/4 v7, 0x0

    .line 425
    .restart local v7       #outputSourceOffset:I
    const/4 v6, 0x0

    .restart local v6       #outputOffset:I
    goto/16 :goto_6

    .line 433
    :cond_e
    const/4 v10, 0x0

    iput v10, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->overdampingCount:I

    goto/16 :goto_0
.end method

.method public endTouchMove()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 459
    iget-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #setter for: Landroid/widget/ScrollView;->onTouchThread:Z
    invoke-static {v0, v1}, Landroid/widget/ScrollView;->access$002(Landroid/widget/ScrollView;Z)Z

    .line 460
    iput-boolean v1, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->isFirst:Z

    .line 461
    iget-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 462
    return-void
.end method

.method public init(I)V
    .locals 11
    .parameter "getY"

    .prologue
    const/high16 v10, 0x4080

    const/4 v9, 0x0

    .line 275
    iget-object v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 276
    .local v3, resources:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 277
    .local v0, compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    iget v4, v0, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 278
    .local v4, scalef:F
    const/high16 v6, 0x4680

    mul-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->scale:I

    .line 279
    iget-object v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    int-to-float v7, p1

    mul-float/2addr v7, v4

    mul-float/2addr v7, v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    #setter for: Landroid/widget/ScrollView;->offset:I
    invoke-static {v6, v7}, Landroid/widget/ScrollView;->access$102(Landroid/widget/ScrollView;I)I

    .line 281
    shl-int/lit8 v1, p1, 0x2

    .line 282
    .local v1, getY_Fixed:I
    iget v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->scale:I

    mul-int/2addr v6, v1

    shr-int/lit8 v6, v6, 0xe

    iget-object v7, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->offset:I
    invoke-static {v7}, Landroid/widget/ScrollView;->access$100(Landroid/widget/ScrollView;)I

    move-result v7

    add-int v1, v6, v7

    .line 283
    iget-object v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    add-int/lit8 v7, v1, 0x2

    shr-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    #setter for: Landroid/widget/ScrollView;->mLastMotionY:F
    invoke-static {v6, v7}, Landroid/widget/ScrollView;->access$202(Landroid/widget/ScrollView;F)F

    .line 285
    iget-object v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    aput v1, v6, v9

    .line 286
    iget-object v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    aput v1, v6, v9

    .line 287
    iget-object v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputSourceY:[I

    aput v1, v6, v9

    .line 288
    iget-object v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    aput v1, v6, v9

    .line 289
    iget-object v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->errorY:[I

    aput v9, v6, v9

    .line 290
    iget-object v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inflection:[Z

    aput-boolean v9, v6, v9

    .line 291
    iget-object v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->yDiff:[I

    aput v9, v6, v9

    .line 292
    iput v9, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->additionalOffset:I

    .line 294
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    const/4 v6, 0x4

    if-ge v2, v6, :cond_0

    .line 295
    iget-object v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    iget-object v7, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputY:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    aput v7, v6, v2

    .line 296
    iget-object v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    iget-object v7, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inputFinalY:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    aput v7, v6, v2

    .line 297
    iget-object v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputSourceY:[I

    iget-object v7, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputSourceY:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    aput v7, v6, v2

    .line 298
    iget-object v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    iget-object v7, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->outputY:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    aput v7, v6, v2

    .line 299
    iget-object v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->errorY:[I

    iget-object v7, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->errorY:[I

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    aput v7, v6, v2

    .line 300
    iget-object v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->inflection:[Z

    aput-boolean v9, v6, v2

    .line 301
    iget-object v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->yDiff:[I

    aput v9, v6, v2

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    :cond_0
    iput v9, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->lastComputedDeltaY:I

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->startTime:J

    .line 306
    iget-wide v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->startTime:J

    iput-wide v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->lastYUpdateTime:J

    .line 307
    iput v9, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseState:I

    .line 308
    iput v9, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseStateOld:I

    .line 309
    iput v9, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->accelCount:I

    .line 310
    iput v9, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseCount:I

    .line 311
    iput v9, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->totalCount:I

    .line 312
    iput v9, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->stateChangeCount:I

    .line 313
    iput v9, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->overdampingCount:I

    .line 315
    iget-object v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getHeight()I

    move-result v6

    iget-object v7, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v5, v6

    .line 316
    .local v5, viewLength:F
    const v6, 0x3ba3d70a

    mul-float/2addr v6, v5

    mul-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseGateIn:I

    .line 317
    const v6, 0x3bc49ba6

    mul-float/2addr v6, v5

    mul-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->noiseGateOut:I

    .line 318
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 438
    iget-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->onTouchThread:Z
    invoke-static {v0}, Landroid/widget/ScrollView;->access$000(Landroid/widget/ScrollView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    invoke-virtual {p0}, Landroid/widget/ScrollView$TouchMoveRunnable;->endTouchMove()V

    .line 456
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mIsBeingDragged:Z
    invoke-static {v0}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    invoke-virtual {p0}, Landroid/widget/ScrollView$TouchMoveRunnable;->endTouchMove()V

    goto :goto_0

    .line 449
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->checkLastEvent:J
    invoke-static {v2}, Landroid/widget/ScrollView;->access$400(Landroid/widget/ScrollView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x96

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mActivePointerId:I
    invoke-static {v0}, Landroid/widget/ScrollView;->access$500(Landroid/widget/ScrollView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 450
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ScrollView$TouchMoveRunnable;->endTouchMove()V

    goto :goto_0

    .line 453
    :cond_3
    iget-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->nationalY:I
    invoke-static {v0}, Landroid/widget/ScrollView;->access$600(Landroid/widget/ScrollView;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView$TouchMoveRunnable;->addPosition(I)V

    .line 454
    invoke-direct {p0}, Landroid/widget/ScrollView$TouchMoveRunnable;->touchDraw()V

    .line 455
    iget-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 269
    iget-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    #setter for: Landroid/widget/ScrollView;->onTouchThread:Z
    invoke-static {v0, v1}, Landroid/widget/ScrollView;->access$002(Landroid/widget/ScrollView;Z)Z

    .line 270
    iput-boolean v1, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->isFirst:Z

    .line 271
    iget-object v0, p0, Landroid/widget/ScrollView$TouchMoveRunnable;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 272
    return-void
.end method
