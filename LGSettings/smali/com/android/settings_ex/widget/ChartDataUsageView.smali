.class public Lcom/android/settings_ex/widget/ChartDataUsageView;
.super Lcom/android/settings_ex/widget/ChartView;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;,
        Lcom/android/settings_ex/widget/ChartDataUsageView$TimeAxis;,
        Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;
    }
.end annotation


# instance fields
.field private mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

.field private mGrid:Lcom/android/settings_ex/widget/ChartGridView;

.field private mHandler:Landroid/os/Handler;

.field private mHistory:Landroid/net/NetworkStatsHistory;

.field private mHorizListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

.field private mListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

.field private mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

.field private mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

.field private mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

.field private mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

.field private mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

.field private mVertListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

.field private mVertMax:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 303
    new-instance v0, Lcom/android/settings_ex/widget/ChartDataUsageView$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/widget/ChartDataUsageView$2;-><init>(Lcom/android/settings_ex/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHorizListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    .line 331
    new-instance v0, Lcom/android/settings_ex/widget/ChartDataUsageView$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/widget/ChartDataUsageView$3;-><init>(Lcom/android/settings_ex/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    .line 92
    new-instance v0, Lcom/android/settings_ex/widget/ChartDataUsageView$TimeAxis;

    invoke-direct {v0}, Lcom/android/settings_ex/widget/ChartDataUsageView$TimeAxis;-><init>()V

    new-instance v1, Lcom/android/settings_ex/widget/InvertedChartAxis;

    new-instance v2, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;

    invoke-direct {v2}, Lcom/android/settings_ex/widget/ChartDataUsageView$DataAxis;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/settings_ex/widget/InvertedChartAxis;-><init>(Lcom/android/settings_ex/widget/ChartAxis;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->init(Lcom/android/settings_ex/widget/ChartAxis;Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 94
    new-instance v0, Lcom/android/settings_ex/widget/ChartDataUsageView$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/widget/ChartDataUsageView$1;-><init>(Lcom/android/settings_ex/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/widget/ChartDataUsageView;Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/widget/ChartDataUsageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateEstimateVisible()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/widget/ChartDataUsageView;Lcom/android/settings_ex/widget/ChartSweepView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/settings_ex/widget/ChartSweepView;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/widget/ChartDataUsageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updatePrimaryRange()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/widget/ChartDataUsageView;Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/settings_ex/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartSweepView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/widget/ChartDataUsageView;)Lcom/android/settings_ex/widget/ChartSweepView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic access$800(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-static {p0, p1, p2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findOrCreateSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I

    move-result-object v0

    return-object v0
.end method

.method private clearUpdateAxisDelayed(Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 2
    .parameter "sweep"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 329
    return-void
.end method

.method private static findOrCreateSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;)[I
    .locals 4
    .parameter "builder"
    .parameter "key"
    .parameter "bootstrap"

    .prologue
    .line 659
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 660
    .local v1, start:I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 661
    .local v0, end:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 662
    invoke-static {p0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 663
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 664
    const/16 v2, 0x12

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 666
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    return-object v2
.end method

.method private getHistoryEnd()J
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x8000

    goto :goto_0
.end method

.method private getHistoryStart()J
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0xfa00000000L

    goto :goto_0
.end method

.method private sendUpdateAxisDelayed(Lcom/android/settings_ex/widget/ChartSweepView;Z)V
    .locals 4
    .parameter "sweep"
    .parameter "force"

    .prologue
    const/16 v2, 0x64

    .line 321
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 325
    :cond_1
    return-void
.end method

.method private updateEstimateVisible()V
    .locals 9

    .prologue
    .line 281
    iget-object v5, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v5}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->getMaxEstimate()J

    move-result-wide v3

    .line 284
    .local v3, maxEstimate:J
    const-wide v1, 0xfa00000000L

    .line 285
    .local v1, interestLine:J
    iget-object v5, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/android/settings_ex/widget/ChartSweepView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 286
    iget-object v5, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    .line 291
    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_1

    .line 292
    const-wide v1, 0xfa00000000L

    .line 295
    :cond_1
    const-wide v5, 0xfa00000000L

    cmp-long v5, v1, v5

    if-ltz v5, :cond_2

    .line 296
    const-wide v1, 0xfa00000000L

    .line 299
    :cond_2
    const-wide/16 v5, 0x7

    mul-long/2addr v5, v1

    const-wide/16 v7, 0xa

    div-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-ltz v5, :cond_4

    const/4 v0, 0x1

    .line 300
    .local v0, estimateVisible:Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v5, v0}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setEstimateVisible(Z)V

    .line 301
    return-void

    .line 287
    .end local v0           #estimateVisible:Z
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/android/settings_ex/widget/ChartSweepView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 288
    iget-object v5, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v5}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    goto :goto_0

    .line 299
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updatePrimaryRange()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 448
    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    .line 449
    .local v0, left:J
    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 452
    .local v2, right:J
    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v4}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 453
    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 454
    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v5, v6, v5, v6}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setPrimaryRange(JJ)V

    goto :goto_0
.end method

.method private updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 24
    .parameter "activeSweep"

    .prologue
    .line 221
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVertMax:J

    .line 223
    .local v7, max:J
    const-wide/16 v17, 0x0

    .line 224
    .local v17, newMax:J
    if-eqz p1, :cond_0

    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings_ex/widget/ChartSweepView;->shouldAdjustAxis()I

    move-result v5

    .line 226
    .local v5, adjustAxis:I
    if-lez v5, :cond_5

    .line 228
    const-wide/16 v19, 0xb

    mul-long v19, v19, v7

    const-wide/16 v21, 0xa

    div-long v17, v19, v21

    .line 238
    .end local v5           #adjustAxis:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 239
    .local v13, maxSweep:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 240
    .local v11, maxSeries:J
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v19

    const-wide/16 v21, 0xc

    mul-long v19, v19, v21

    const-wide/16 v21, 0xa

    div-long v15, v19, v21

    .line 241
    .local v15, maxVisible:J
    const-wide v19, 0x80000000L

    move-wide v0, v15

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 242
    .local v9, maxDefault:J
    move-wide/from16 v0, v17

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    .line 245
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVertMax:J

    move-wide/from16 v19, v0

    cmp-long v19, v17, v19

    if-eqz v19, :cond_4

    .line 246
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVertMax:J

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide/from16 v3, v17

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/widget/ChartAxis;->setBounds(JJ)Z

    move-result v6

    .line 249
    .local v6, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    move-wide/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRange(JJ)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    const-wide v22, 0xfa00000000L

    invoke-virtual/range {v19 .. v23}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRange(JJ)V

    .line 252
    if-eqz v6, :cond_1

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 257
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mGrid:Lcom/android/settings_ex/widget/ChartGridView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ex/widget/ChartGridView;->invalidate()V

    .line 260
    if-eqz p1, :cond_2

    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings_ex/widget/ChartSweepView;->updateValueFromPosition()V

    .line 267
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_3

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->layoutSweep(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 270
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_4

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->layoutSweep(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 274
    .end local v6           #changed:Z
    :cond_4
    return-void

    .line 229
    .end local v9           #maxDefault:J
    .end local v11           #maxSeries:J
    .end local v13           #maxSweep:J
    .end local v15           #maxVisible:J
    .restart local v5       #adjustAxis:I
    :cond_5
    if-gez v5, :cond_6

    .line 231
    const-wide/16 v19, 0x9

    mul-long v19, v19, v7

    const-wide/16 v21, 0xa

    div-long v17, v19, v21

    goto/16 :goto_0

    .line 233
    :cond_6
    move-wide/from16 v17, v7

    goto/16 :goto_0
.end method


# virtual methods
.method public bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 3
    .parameter "stats"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 174
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setEndTime(J)V

    .line 178
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 179
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 180
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->requestLayout()V

    .line 182
    return-void

    .line 174
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public bindNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 7
    .parameter "policy"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const-wide/16 v3, -0x1

    .line 185
    if-nez p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 214
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-wide v1, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 203
    :goto_1
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-wide v1, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 211
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->requestLayout()V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->invalidate()V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/widget/ChartSweepView;->setEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    goto :goto_1

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings_ex/widget/ChartSweepView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    goto :goto_2
.end method

.method public bindNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 1
    .parameter "stats"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 165
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHistory:Landroid/net/NetworkStatsHistory;

    .line 166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 167
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 168
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->requestLayout()V

    .line 170
    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLimitBytes()J
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningBytes()J
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 109
    invoke-super {p0}, Lcom/android/settings_ex/widget/ChartView;->onFinishInflate()V

    .line 111
    const v0, 0x7f0b007b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartGridView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mGrid:Lcom/android/settings_ex/widget/ChartGridView;

    .line 112
    const v0, 0x7f0b007c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    .line 113
    const v0, 0x7f0b007d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 116
    const v0, 0x7f0b007e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    .line 117
    const v0, 0x7f0b007f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    .line 118
    const v0, 0x7f0b0081

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    .line 119
    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings_ex/widget/ChartSweepView;Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings_ex/widget/ChartSweepView;Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings_ex/widget/ChartSweepView;Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings_ex/widget/ChartSweepView;Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setNeighbors([Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setNeighbors([Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    new-array v1, v6, [Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setNeighbors([Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    new-array v1, v6, [Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setNeighbors([Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHorizListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mHorizListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    const-wide/32 v1, 0x500000

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setDragInterval(J)V

    .line 139
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    const-wide/32 v1, 0x500000

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setDragInterval(J)V

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/widget/ChartSweepView;->setClickable(Z)V

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/widget/ChartSweepView;->setFocusable(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/widget/ChartSweepView;->setClickable(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/widget/ChartSweepView;->setFocusable(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mGrid:Lcom/android/settings_ex/widget/ChartGridView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartGridView;->init(Lcom/android/settings_ex/widget/ChartAxis;Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->init(Lcom/android/settings_ex/widget/ChartAxis;Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->init(Lcom/android/settings_ex/widget/ChartAxis;Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->init(Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->init(Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->init(Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings_ex/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->init(Lcom/android/settings_ex/widget/ChartAxis;)V

    .line 156
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setActivated(Z)V

    .line 157
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 361
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    :goto_0
    return v0

    .line 362
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 364
    goto :goto_0

    .line 367
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setActivated(Z)V

    move v0, v1

    .line 368
    goto :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setListener(Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    .line 161
    return-void
.end method

.method public setVisibleRange(JJ)V
    .locals 24
    .parameter "visibleStart"
    .parameter "visibleEnd"

    .prologue
    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/widget/ChartAxis;->setBounds(JJ)Z

    move-result v5

    .line 407
    .local v5, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mGrid:Lcom/android/settings_ex/widget/ChartGridView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/widget/ChartGridView;->setBounds(JJ)V

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setBounds(JJ)V

    .line 411
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getHistoryStart()J

    move-result-wide v10

    .line 412
    .local v10, historyStart:J
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getHistoryEnd()J

    move-result-wide v8

    .line 414
    .local v8, historyEnd:J
    const-wide v20, 0xfa00000000L

    cmp-long v20, v10, v20

    if-nez v20, :cond_1

    move-wide/from16 v18, p1

    .line 416
    .local v18, validStart:J
    :goto_0
    const-wide/high16 v20, -0x8000

    cmp-long v20, v8, v20

    if-nez v20, :cond_2

    move-wide/from16 v16, p3

    .line 424
    .local v16, validEnd:J
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRange(JJ)V

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setValidRange(JJ)V

    .line 429
    add-long v20, p3, p1

    const-wide/16 v22, 0x2

    div-long v6, v20, v22

    .line 430
    .local v6, halfRange:J
    move-wide/from16 v12, v16

    .line 431
    .local v12, sweepMax:J
    const-wide/32 v20, 0x240c8400

    sub-long v20, v12, v20

    move-wide/from16 v0, p1

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 433
    .local v14, sweepMin:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepLeft:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSweepRight:Lcom/android/settings_ex/widget/ChartSweepView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->requestLayout()V

    .line 437
    if-eqz v5, :cond_0

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 442
    :cond_0
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings_ex/widget/ChartSweepView;)V

    .line 443
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updateEstimateVisible()V

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->updatePrimaryRange()V

    .line 445
    return-void

    .line 414
    .end local v6           #halfRange:J
    .end local v12           #sweepMax:J
    .end local v14           #sweepMin:J
    .end local v16           #validEnd:J
    .end local v18           #validStart:J
    :cond_1
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v18

    goto :goto_0

    .line 416
    .restart local v18       #validStart:J
    :cond_2
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    goto :goto_1
.end method
