.class public Lcom/android/settings_ex/widget/ChartView;
.super Landroid/widget/FrameLayout;
.source "ChartView.java"


# instance fields
.field private mContent:Landroid/graphics/Rect;

.field mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

.field private mOptimalWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mOptimalWidthWeight:F

.field mVert:Lcom/android/settings_ex/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings_ex/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/android/settings_ex/widget/ChartView;->mOptimalWidth:I

    iput v4, p0, Lcom/android/settings_ex/widget/ChartView;->mOptimalWidthWeight:F

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/widget/ChartView;->mContent:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/settings_ex/R$styleable;->ChartView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/widget/ChartView;->setOptimalWidth(IF)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/widget/ChartView;->setClipToPadding(Z)V

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/widget/ChartView;->setClipChildren(Z)V

    return-void
.end method


# virtual methods
.method init(Lcom/android/settings_ex/widget/ChartAxis;Lcom/android/settings_ex/widget/ChartAxis;)V
    .locals 1
    .parameter "horiz"
    .parameter "vert"

    .prologue
    .line 74
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    .line 75
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    .line 76
    return-void
.end method

.method protected layoutSweep(Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 6
    .parameter "sweep"

    .prologue
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v1, parentRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .local v0, childRect:Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/settings_ex/widget/ChartView;->layoutSweep(Lcom/android/settings_ex/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/android/settings_ex/widget/ChartSweepView;->layout(IIII)V

    .line 135
    return-void
.end method

.method protected layoutSweep(Lcom/android/settings_ex/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .parameter "sweep"
    .parameter "parentRect"
    .parameter "childRect"

    .prologue
    const/16 v4, 0x33

    invoke-virtual {p1}, Lcom/android/settings_ex/widget/ChartSweepView;->getMargins()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, sweepMargins:Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/android/settings_ex/widget/ChartSweepView;->getFollowAxis()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 142
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcom/android/settings_ex/widget/ChartSweepView;->getPoint()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 143
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 144
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 145
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 146
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/settings_ex/widget/ChartSweepView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v4, v1, v2, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 157
    :goto_0
    return-void

    .line 150
    :cond_0
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcom/android/settings_ex/widget/ChartSweepView;->getPoint()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 151
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    .line 152
    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 153
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Lcom/android/settings_ex/widget/ChartSweepView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v4, v1, v2, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartView;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartView;->getPaddingTop()I

    move-result v9

    sub-int v10, p4, p2

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    sub-int v11, p5, p3

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartView;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v6

    .local v6, width:I
    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 104
    .local v2, height:I
    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartView;->mHoriz:Lcom/android/settings_ex/widget/ChartAxis;

    int-to-float v8, v6

    invoke-interface {v7, v8}, Lcom/android/settings_ex/widget/ChartAxis;->setSize(F)Z

    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartView;->mVert:Lcom/android/settings_ex/widget/ChartAxis;

    int-to-float v8, v2

    invoke-interface {v7, v8}, Lcom/android/settings_ex/widget/ChartAxis;->setSize(F)Z

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .local v5, parentRect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, childRect:Landroid/graphics/Rect;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartView;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/widget/ChartView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    .local v4, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartView;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    instance-of v7, v0, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    if-nez v7, :cond_0

    instance-of v7, v0, Lcom/android/settings_ex/widget/ChartGridView;

    if-eqz v7, :cond_2

    .line 119
    :cond_0
    iget v7, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-static {v7, v6, v2, v5, v1}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 120
    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 110
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    :cond_2
    instance-of v7, v0, Lcom/android/settings_ex/widget/ChartSweepView;

    if-eqz v7, :cond_1

    move-object v7, v0

    check-cast v7, Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {p0, v7, v5, v1}, Lcom/android/settings_ex/widget/ChartView;->layoutSweep(Lcom/android/settings_ex/widget/ChartSweepView;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 127
    .end local v0           #child:Landroid/view/View;
    .end local v4           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartView;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/android/settings_ex/widget/ChartView;->mOptimalWidth:I

    sub-int v0, v2, v3

    .line 89
    .local v0, slack:I
    iget v2, p0, Lcom/android/settings_ex/widget/ChartView;->mOptimalWidth:I

    if-lez v2, :cond_0

    if-lez v0, :cond_0

    iget v2, p0, Lcom/android/settings_ex/widget/ChartView;->mOptimalWidth:I

    int-to-float v2, v2

    int-to-float v3, v0

    iget v4, p0, Lcom/android/settings_ex/widget/ChartView;->mOptimalWidthWeight:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v1, v2

    .line 91
    .local v1, targetWidth:I
    const/high16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 92
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 94
    .end local v1           #targetWidth:I
    :cond_0
    return-void
.end method

.method public setOptimalWidth(IF)V
    .locals 0
    .parameter "optimalWidth"
    .parameter "optimalWidthWeight"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/widget/ChartView;->mOptimalWidth:I

    iput p2, p0, Lcom/android/settings_ex/widget/ChartView;->mOptimalWidthWeight:F

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartView;->requestLayout()V

    return-void
.end method
