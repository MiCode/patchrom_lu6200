.class public Lcom/android/settings_ex/widget/ChartSweepView;
.super Landroid/view/View;
.source "ChartSweepView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;
    }
.end annotation


# instance fields
.field private mAxis:Lcom/android/settings_ex/widget/ChartAxis;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContentOffset:Landroid/graphics/Rect;

.field private mDragInterval:J

.field private mFollowAxis:I

.field private mLabelColor:I

.field private mLabelLayout:Landroid/text/DynamicLayout;

.field private mLabelOffset:F

.field private mLabelSize:I

.field private mLabelTemplate:Landroid/text/SpannableStringBuilder;

.field private mLabelTemplateRes:I

.field private mLabelValue:J

.field private mListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

.field private mMargins:Landroid/graphics/Rect;

.field private mNeighborMargin:F

.field private mNeighbors:[Lcom/android/settings_ex/widget/ChartSweepView;

.field private mOutlinePaint:Landroid/graphics/Paint;

.field private mSweep:Landroid/graphics/drawable/Drawable;

.field private mSweepOffset:Landroid/graphics/Point;

.field private mSweepPadding:Landroid/graphics/Rect;

.field private mTouchMode:I

.field private mTracking:Landroid/view/MotionEvent;

.field private mTrackingStart:F

.field private mValidAfter:J

.field private mValidAfterDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

.field private mValidBefore:J

.field private mValidBeforeDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

.field private mValue:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    iput v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mTouchMode:I

    const-wide/16 v1, 0x1

    iput-wide v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mDragInterval:J

    new-array v1, v3, [Lcom/android/settings_ex/widget/ChartSweepView;

    iput-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mNeighbors:[Lcom/android/settings_ex/widget/ChartSweepView;

    new-instance v1, Lcom/android/settings_ex/widget/ChartSweepView$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/widget/ChartSweepView$1;-><init>(Lcom/android/settings_ex/widget/ChartSweepView;)V

    iput-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mClickListener:Landroid/view/View$OnClickListener;

    sget-object v1, Lcom/android/settings_ex/R$styleable;->ChartSweepView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setSweepDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setFollowAxis(I)V

    .line 129
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setNeighborMargin(F)V

    .line 131
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setLabelSize(I)V

    .line 132
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setLabelTemplate(I)V

    .line 133
    const/4 v1, 0x5

    const v2, -0xffff01

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setLabelColor(I)V

    const v1, 0x7f02005e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setClickable(Z)V

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/widget/ChartSweepView;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->dispatchRequestEdit()V

    return-void
.end method

.method private buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;
    .locals 9
    .parameter "parentContent"
    .parameter "afterValue"
    .parameter "beforeValue"
    .parameter "margin"

    .prologue
    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    instance-of v7, v7, Lcom/android/settings_ex/widget/InvertedChartAxis;

    if-eqz v7, :cond_0

    move-wide v5, p4

    .local v5, temp:J
    move-wide p4, p2

    move-wide p2, v5

    .end local v5           #temp:J
    :cond_0
    const-wide/high16 v7, -0x8000

    cmp-long v7, p2, v7

    if-eqz v7, :cond_3

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, p2, v7

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    .line 615
    .local v1, afterValid:Z
    :goto_0
    const-wide/high16 v7, -0x8000

    cmp-long v7, p4, v7

    if-eqz v7, :cond_4

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, p4, v7

    if-eqz v7, :cond_4

    const/4 v3, 0x1

    .line 617
    .local v3, beforeValid:Z
    :goto_1
    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-interface {v7, p2, p3}, Lcom/android/settings_ex/widget/ChartAxis;->convertToPoint(J)F

    move-result v7

    add-float v0, v7, p6

    .line 618
    .local v0, afterPoint:F
    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-interface {v7, p4, p5}, Lcom/android/settings_ex/widget/ChartAxis;->convertToPoint(J)F

    move-result v7

    sub-float v2, v7, p6

    .line 620
    .local v2, beforePoint:F
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 621
    .local v4, clampRect:Landroid/graphics/Rect;
    iget v7, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 622
    if-eqz v3, :cond_1

    iget v7, v4, Landroid/graphics/Rect;->top:I

    float-to-int v8, v2

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 623
    :cond_1
    if-eqz v1, :cond_2

    iget v7, v4, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v7, v0

    float-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 628
    :cond_2
    :goto_2
    return-object v4

    .line 614
    .end local v0           #afterPoint:F
    .end local v1           #afterValid:Z
    .end local v2           #beforePoint:F
    .end local v3           #beforeValid:Z
    .end local v4           #clampRect:Landroid/graphics/Rect;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 615
    .restart local v1       #afterValid:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 625
    .restart local v0       #afterPoint:F
    .restart local v2       #beforePoint:F
    .restart local v3       #beforeValid:Z
    .restart local v4       #clampRect:Landroid/graphics/Rect;
    :cond_5
    if-eqz v3, :cond_6

    iget v7, v4, Landroid/graphics/Rect;->left:I

    float-to-int v8, v2

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 626
    :cond_6
    if-eqz v1, :cond_2

    iget v7, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float/2addr v7, v0

    float-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->left:I

    goto :goto_2
.end method

.method private computeClampRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .parameter "parentContent"

    .prologue
    iget-wide v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidAfter:J

    iget-wide v4, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidBefore:J

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/widget/ChartSweepView;->buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v8

    .line 597
    .local v8, rect:Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getValidAfterDynamic()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getValidBeforeDynamic()J

    move-result-wide v4

    iget v6, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mNeighborMargin:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/widget/ChartSweepView;->buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v7

    .line 600
    .local v7, dynamicRect:Landroid/graphics/Rect;
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 603
    :cond_0
    return-object v8
.end method

.method private dispatchOnSweep(Z)V
    .locals 1
    .parameter "sweepDone"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;->onSweep(Lcom/android/settings_ex/widget/ChartSweepView;Z)V

    :cond_0
    return-void
.end method

.method private dispatchRequestEdit()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    invoke-interface {v0, p0}, Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;->requestEdit(Lcom/android/settings_ex/widget/ChartSweepView;)V

    :cond_0
    return-void
.end method

.method public static getLabelBottom(Lcom/android/settings_ex/widget/ChartSweepView;)F
    .locals 2
    .parameter "view"

    .prologue
    invoke-static {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelTop(Lcom/android/settings_ex/widget/ChartSweepView;)F

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static getLabelTop(Lcom/android/settings_ex/widget/ChartSweepView;)F
    .locals 2
    .parameter "view"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private getParentContentRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, parent:Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private getTargetInset()F
    .locals 5

    .prologue
    const/high16 v4, 0x4000

    iget v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 185
    .local v0, targetHeight:F
    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    div-float v3, v0, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 189
    .end local v0           #targetHeight:F
    :goto_0
    return v2

    .line 187
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 189
    .local v1, targetWidth:F
    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    div-float v3, v1, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_0
.end method

.method private getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F
    .locals 3
    .parameter "eventInParent"

    .prologue
    iget v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getX()F

    move-result v1

    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getTargetInset()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 414
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getY()F

    move-result v1

    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getTargetInset()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0
.end method

.method private getValidAfterDynamic()J
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    .local v0, dynamic:Lcom/android/settings_ex/widget/ChartSweepView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000

    goto :goto_0
.end method

.method private getValidBeforeDynamic()J
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    .local v0, dynamic:Lcom/android/settings_ex/widget/ChartSweepView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private invalidateLabel()V
    .locals 8

    .prologue
    const-wide v6, 0xfa00000000L

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    iget-wide v4, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValue:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/settings_ex/widget/ChartAxis;->buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelValue:J

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidateLabelOffset()V

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidate()V

    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, instanceName:Ljava/lang/String;
    const-string v1, "TimeAxis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelValue:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_0

    iput-wide v6, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelValue:J

    .end local v0           #instanceName:Ljava/lang/String;
    :cond_0
    return-void

    :cond_1
    iget-wide v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValue:J

    iput-wide v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelValue:J

    goto :goto_0
.end method

.method private invalidateLabelTemplate()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    iget v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelTemplateRes:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelTemplateRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 260
    .local v8, template:Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    .line 261
    .local v2, paint:Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v2, Landroid/text/TextPaint;->density:F

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    iget v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelColor:I

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/high16 v0, 0x4080

    iget v1, v2, Landroid/text/TextPaint;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, -0x100

    invoke-virtual {v2, v0, v6, v6, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    iget v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelSize:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidateLabel()V

    .end local v2           #paint:Landroid/text/TextPaint;
    .end local v8           #template:Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidate()V

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->requestLayout()V

    return-void

    :cond_0
    iput-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    iput-object v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    goto :goto_0
.end method


# virtual methods
.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 572
    return-void
.end method

.method public addOnSweepListener(Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mListener:Lcom/android/settings_ex/widget/ChartSweepView$OnSweepListener;

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 637
    :cond_0
    return-void
.end method

.method public getFollowAxis()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    return v0
.end method

.method public getLabelValue()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelValue:J

    return-wide v0
.end method

.method public getMargins()Landroid/graphics/Rect;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPoint()F
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    iget-wide v1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValue:J

    invoke-interface {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartAxis;->convertToPoint(J)F

    move-result v0

    .line 373
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValue:J

    return-wide v0
.end method

.method init(Lcom/android/settings_ex/widget/ChartAxis;)V
    .locals 1
    .parameter "axis"

    .prologue
    .line 158
    const-string v0, "missing axis"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    .line 159
    return-void
.end method

.method public invalidateLabelOffset()V
    .locals 6

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x0

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, labelOffset:F
    iget v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-static {v2}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelTop(Lcom/android/settings_ex/widget/ChartSweepView;)F

    move-result v2

    invoke-static {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelBottom(Lcom/android/settings_ex/widget/ChartSweepView;)F

    move-result v3

    sub-float v1, v2, v3

    .line 308
    .local v1, margin:F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    .line 309
    div-float v0, v1, v5

    .line 322
    .end local v1           #margin:F
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelOffset:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    iput v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelOffset:F

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidate()V

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidateLabelOffset()V

    .line 326
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidateLabelOffset()V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelTop(Lcom/android/settings_ex/widget/ChartSweepView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    invoke-static {v3}, Lcom/android/settings_ex/widget/ChartSweepView;->getLabelBottom(Lcom/android/settings_ex/widget/ChartSweepView;)F

    move-result v3

    sub-float v1, v2, v3

    .line 313
    .restart local v1       #margin:F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    .line 314
    neg-float v2, v1

    div-float v0, v2, v5

    goto :goto_0
.end method

.method public isTouchCloserTo(Landroid/view/MotionEvent;Lcom/android/settings_ex/widget/ChartSweepView;)Z
    .locals 3
    .parameter "eventInParent"
    .parameter "another"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/widget/ChartSweepView;->getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F

    move-result v1

    .local v1, selfDist:F
    invoke-direct {p2, p1}, Lcom/android/settings_ex/widget/ChartSweepView;->getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F

    move-result v0

    .local v0, anotherDist:F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getWidth()I

    move-result v3

    .local v3, width:I
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getHeight()I

    move-result v1

    .local v1, height:I
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    if-eqz v4, :cond_0

    .line 716
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 718
    .local v0, count:I
    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelOffset:F

    add-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v4, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelSize:I

    .end local v0           #count:I
    .local v2, labelSize:I
    :goto_0
    iget v4, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v3

    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .end local v2           #labelSize:I
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #labelSize:I
    goto :goto_0

    .line 731
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v1

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidateLabelOffset()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .local v3, sweepHeight:I
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v9}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v6

    .local v6, templateHeight:I
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    div-int/lit8 v10, v6, 0x2

    int-to-float v10, v10

    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getTargetInset()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/android/settings_ex/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 658
    .end local v3           #sweepHeight:I
    .end local v6           #templateHeight:I
    :goto_0
    iget v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v9, v10

    .line 661
    .local v4, targetHeight:I
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    div-int/lit8 v11, v4, 0x2

    add-int/2addr v10, v11

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iput v12, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .end local v4           #targetHeight:I
    :goto_1
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    invoke-virtual {v9, v12, v12, v12, v12}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getMeasuredWidth()I

    move-result v8

    .local v8, widthBefore:I
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getMeasuredHeight()I

    move-result v1

    .local v1, heightBefore:I
    iget v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    if-nez v9, :cond_2

    mul-int/lit8 v7, v8, 0x3

    .local v7, widthAfter:I
    invoke-virtual {p0, v7, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setMeasuredDimension(II)V

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    sub-int v10, v7, v8

    div-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v2, v9, 0x2

    .local v2, offset:I
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 697
    .end local v7           #widthAfter:I
    :goto_2
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->offset(II)V

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    neg-int v10, v10

    iget-object v11, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    neg-int v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 699
    return-void

    .line 653
    .end local v1           #heightBefore:I
    .end local v2           #offset:I
    .end local v8           #widthBefore:I
    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/android/settings_ex/widget/ChartSweepView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 666
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int v5, v9, v10

    .line 668
    .local v5, targetWidth:I
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    div-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iput v12, v9, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .end local v5           #targetWidth:I
    .restart local v1       #heightBefore:I
    .restart local v8       #widthBefore:I
    :cond_2
    mul-int/lit8 v0, v1, 0x2

    .local v0, heightAfter:I
    invoke-virtual {p0, v8, v0}, Lcom/android/settings_ex/widget/ChartSweepView;->setMeasuredDimension(II)V

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    sub-int v10, v0, v1

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v9, v12, v10}, Landroid/graphics/Rect;->offset(II)V

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v2, v9, 0x2

    .restart local v2       #offset:I
    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->right:I

    iget-object v9, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .parameter "event"

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->isEnabled()Z

    move-result v21

    if-nez v21, :cond_0

    const/16 v21, 0x0

    .line 537
    :goto_0
    return v21

    .line 422
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 423
    .local v15, parent:Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v21

    packed-switch v21, :pswitch_data_0

    .line 537
    const/16 v21, 0x0

    goto :goto_0

    .line 429
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 430
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x8

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_1

    const/4 v3, 0x1

    .line 431
    .local v3, acceptDrag:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_2

    const/4 v4, 0x1

    .line 439
    .local v4, acceptLabel:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v11

    .line 440
    .local v11, eventInParent:Landroid/view/MotionEvent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLeft()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 443
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mNeighbors:[Lcom/android/settings_ex/widget/ChartSweepView;

    .local v5, arr$:[Lcom/android/settings_ex/widget/ChartSweepView;
    array-length v13, v5

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_3
    if-ge v12, v13, :cond_9

    aget-object v14, v5, v12

    .local v14, neighbor:Lcom/android/settings_ex/widget/ChartSweepView;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14}, Lcom/android/settings_ex/widget/ChartSweepView;->isTouchCloserTo(Landroid/view/MotionEvent;Lcom/android/settings_ex/widget/ChartSweepView;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 445
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 430
    .end local v3           #acceptDrag:Z
    .end local v4           #acceptLabel:Z
    .end local v5           #arr$:[Lcom/android/settings_ex/widget/ChartSweepView;
    .end local v11           #eventInParent:Landroid/view/MotionEvent;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v14           #neighbor:Lcom/android/settings_ex/widget/ChartSweepView;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 431
    .restart local v3       #acceptDrag:Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 434
    .end local v3           #acceptDrag:Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x8

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_5

    const/4 v3, 0x1

    .line 435
    .restart local v3       #acceptDrag:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_6

    const/4 v4, 0x1

    .restart local v4       #acceptLabel:Z
    :goto_5
    goto :goto_2

    .line 434
    .end local v3           #acceptDrag:Z
    .end local v4           #acceptLabel:Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    .line 435
    .restart local v3       #acceptDrag:Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 443
    .restart local v4       #acceptLabel:Z
    .restart local v5       #arr$:[Lcom/android/settings_ex/widget/ChartSweepView;
    .restart local v11       #eventInParent:Landroid/view/MotionEvent;
    .restart local v12       #i$:I
    .restart local v13       #len$:I
    .restart local v14       #neighbor:Lcom/android/settings_ex/widget/ChartSweepView;
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .end local v14           #neighbor:Lcom/android/settings_ex/widget/ChartSweepView;
    :cond_9
    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getTop()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/widget/ChartSweepView;->mTrackingStart:F

    .line 455
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    .line 456
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/widget/ChartSweepView;->mTouchMode:I

    .line 459
    invoke-virtual {v15}, Landroid/view/View;->isActivated()Z

    move-result v21

    if-nez v21, :cond_a

    .line 460
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/View;->setActivated(Z)V

    .line 463
    :cond_a
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 453
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLeft()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/widget/ChartSweepView;->mTrackingStart:F

    goto :goto_6

    .line 464
    :cond_c
    if-eqz v4, :cond_d

    .line 465
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/widget/ChartSweepView;->mTouchMode:I

    .line 466
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 468
    :cond_d
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/widget/ChartSweepView;->mTouchMode:I

    .line 469
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 473
    .end local v3           #acceptDrag:Z
    .end local v4           #acceptLabel:Z
    .end local v5           #arr$:[Lcom/android/settings_ex/widget/ChartSweepView;
    .end local v11           #eventInParent:Landroid/view/MotionEvent;
    .end local v12           #i$:I
    .end local v13           #len$:I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mTouchMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 474
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 477
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getParentContentRect()Landroid/graphics/Rect;

    move-result-object v16

    .local v16, parentContent:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->computeClampRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 482
    .local v6, clampRect:Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_f

    const/16 v21, 0x1

    goto/16 :goto_0

    .line 485
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getTop()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v10, v0

    .line 487
    .local v10, currentTargetY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mTrackingStart:F

    move/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    sub-float v22, v22, v23

    add-float v18, v21, v22

    .line 489
    .local v18, requestedTargetY:F
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v8

    .line 491
    .local v8, clampedTargetY:F
    sub-float v21, v8, v10

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setTranslationY(F)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v8, v22

    invoke-interface/range {v21 .. v22}, Lcom/android/settings_ex/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v19

    .line 496
    .local v19, value:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mDragInterval:J

    move-wide/from16 v21, v0

    rem-long v21, v19, v21

    sub-long v19, v19, v21

    .line 497
    const-wide v21, 0xfa00000000L

    cmp-long v21, v19, v21

    if-ltz v21, :cond_10

    .line 498
    const-wide v19, 0xfa00000000L

    .line 501
    :cond_10
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 517
    .end local v8           #clampedTargetY:F
    .end local v10           #currentTargetY:F
    .end local v18           #requestedTargetY:F
    :goto_7
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->dispatchOnSweep(Z)V

    .line 518
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 503
    .end local v19           #value:J
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getLeft()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v9, v0

    .line 504
    .local v9, currentTargetX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mTrackingStart:F

    move/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/MotionEvent;->getRawX()F

    move-result v23

    sub-float v22, v22, v23

    add-float v17, v21, v22

    .line 506
    .local v17, requestedTargetX:F
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v7

    .line 508
    .local v7, clampedTargetX:F
    sub-float v21, v7, v9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setTranslationX(F)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v7, v22

    invoke-interface/range {v21 .. v22}, Lcom/android/settings_ex/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v19

    .line 513
    .restart local v19       #value:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mDragInterval:J

    move-wide/from16 v21, v0

    rem-long v21, v19, v21

    sub-long v19, v19, v21

    .line 514
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    goto/16 :goto_7

    .line 521
    .end local v6           #clampRect:Landroid/graphics/Rect;
    .end local v7           #clampedTargetX:F
    .end local v9           #currentTargetX:F
    .end local v16           #parentContent:Landroid/graphics/Rect;
    .end local v17           #requestedTargetX:F
    .end local v19           #value:J
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mTouchMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->performClick()Z

    :cond_12
    :goto_8
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/widget/ChartSweepView;->mTouchMode:I

    .line 534
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 523
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mTouchMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 524
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/widget/ChartSweepView;->mTrackingStart:F

    .line 525
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    .line 526
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelValue:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/widget/ChartSweepView;->mValue:J

    .line 527
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->dispatchOnSweep(Z)V

    .line 528
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setTranslationX(F)V

    .line 529
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ChartSweepView;->setTranslationY(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/widget/ChartSweepView;->requestLayout()V

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 577
    return-void
.end method

.method public setDragInterval(J)V
    .locals 0
    .parameter "dragInterval"

    .prologue
    iput-wide p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mDragInterval:J

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/widget/ChartSweepView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->requestLayout()V

    return-void
.end method

.method public setFollowAxis(I)V
    .locals 0
    .parameter "followAxis"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    return-void
.end method

.method public setLabelColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelColor:I

    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidateLabelTemplate()V

    return-void
.end method

.method public setLabelSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelSize:I

    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidateLabelTemplate()V

    return-void
.end method

.method public setLabelTemplate(I)V
    .locals 0
    .parameter "resId"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mLabelTemplateRes:I

    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidateLabelTemplate()V

    return-void
.end method

.method public setNeighborMargin(F)V
    .locals 0
    .parameter "neighborMargin"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mNeighborMargin:F

    return-void
.end method

.method public varargs setNeighbors([Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 0
    .parameter "neighbors"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mNeighbors:[Lcom/android/settings_ex/widget/ChartSweepView;

    return-void
.end method

.method public setSweepDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sweep"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/widget/ChartSweepView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidate()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iput-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setValidRange(JJ)V
    .locals 0
    .parameter "validAfter"
    .parameter "validBefore"

    .prologue
    iput-wide p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidAfter:J

    iput-wide p3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidBefore:J

    return-void
.end method

.method public setValidRangeDynamic(Lcom/android/settings_ex/widget/ChartSweepView;Lcom/android/settings_ex/widget/ChartSweepView;)V
    .locals 0
    .parameter "validAfter"
    .parameter "validBefore"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    iput-object p2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/settings_ex/widget/ChartSweepView;

    return-void
.end method

.method public setValue(J)V
    .locals 0
    .parameter "value"

    .prologue
    iput-wide p1, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mValue:J

    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->invalidateLabel()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 344
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 342
    goto :goto_0
.end method

.method public shouldAdjustAxis()I
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/settings_ex/widget/ChartAxis;->shouldAdjustAxis(J)I

    move-result v0

    return v0
.end method

.method public updateValueFromPosition()V
    .locals 5

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getParentContentRect()Landroid/graphics/Rect;

    move-result-object v2

    .local v2, parentContent:Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mFollowAxis:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 551
    .local v1, effectiveY:F
    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-interface {v3, v1}, Lcom/android/settings_ex/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    .line 556
    .end local v1           #effectiveY:F
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/widget/ChartSweepView;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 554
    .local v0, effectiveX:F
    iget-object v3, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mAxis:Lcom/android/settings_ex/widget/ChartAxis;

    invoke-interface {v3, v0}, Lcom/android/settings_ex/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/widget/ChartSweepView;->setValue(J)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
