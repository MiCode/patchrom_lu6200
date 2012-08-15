.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
    .end annotation
.end field

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 106
    const v0, 0x800033

    iput v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 174
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    iput-boolean v9, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 92
    iput v8, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 100
    iput v7, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 106
    const v5, 0x800033

    iput v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 176
    sget-object v5, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 179
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 180
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 181
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 184
    :cond_0
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 185
    if-ltz v3, :cond_1

    .line 186
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 189
    :cond_1
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 190
    .local v1, baselineAligned:Z
    if-nez v1, :cond_2

    .line 191
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 194
    :cond_2
    const/4 v5, 0x4

    const/high16 v6, -0x4080

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 196
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 200
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 201
    iget v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v2, v5, 0x7

    .line 202
    .local v2, horiMask:I
    if-eq v2, v9, :cond_3

    .line 203
    iget v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v5, v5, 0x70

    or-int/lit8 v5, v5, 0x5

    iput v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 204
    :cond_3
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    .line 205
    .local v4, temp:I
    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    iput v5, p0, Landroid/view/View;->mPaddingLeft:I

    .line 206
    iput v4, p0, Landroid/view/View;->mPaddingRight:I

    .line 209
    .end local v2           #horiMask:I
    .end local v4           #temp:I
    :cond_4
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 211
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 212
    const/4 v5, 0x7

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 213
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 215
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 216
    return-void
.end method

.method private forceUniformHeight(II)V
    .locals 9
    .parameter "count"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 1339
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x4000

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1341
    .local v4, uniformMeasureSpec:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 1342
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1343
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    .line 1344
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 1346
    .local v7, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1349
    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1350
    .local v8, oldWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    .line 1353
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1354
    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1341
    .end local v7           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #oldWidth:I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1358
    .end local v1           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 9
    .parameter "count"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 921
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v4, 0x4000

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 923
    .local v2, uniformMeasureSpec:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, p1, :cond_1

    .line 924
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 925
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    .line 926
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 928
    .local v7, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 931
    iget v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 932
    .local v8, oldHeight:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    .line 935
    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 936
    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 923
    .end local v7           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #oldHeight:I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 940
    .end local v1           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2
    .parameter "child"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1658
    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1659
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1767
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 340
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v1

    .line 341
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 342
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 348
    .local v0, child:Landroid/view/View;
    const/4 v3, 0x0

    .line 349
    .local v3, left:I
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 350
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 351
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 352
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 353
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v3, v6, v7

    .line 358
    :goto_1
    invoke-virtual {p0, p1, v3}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 341
    .end local v4           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    .restart local v4       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    add-int/lit8 v3, v6, -0x1

    goto :goto_1

    .line 363
    .end local v0           #child:Landroid/view/View;
    .end local v3           #left:I
    .end local v4           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 364
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 365
    .restart local v0       #child:Landroid/view/View;
    const/4 v5, 0x0

    .line 366
    .local v5, right:I
    if-nez v0, :cond_4

    .line 367
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    .line 382
    :goto_2
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    .line 384
    .end local v0           #child:Landroid/view/View;
    .end local v5           #right:I
    :cond_3
    return-void

    .line 369
    .restart local v0       #child:Landroid/view/View;
    .restart local v5       #right:I
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 375
    .restart local v4       #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 376
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v5, v6, v7

    goto :goto_2

    .line 378
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v5, v6, v7

    goto :goto_2
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 313
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v2

    .line 314
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 315
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 317
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 318
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 319
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 320
    .local v4, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v5, v6, v7

    .line 321
    .local v5, top:I
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 314
    .end local v4           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v5           #top:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 326
    .end local v1           #child:Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 327
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 328
    .restart local v1       #child:Landroid/view/View;
    const/4 v0, 0x0

    .line 329
    .local v0, bottom:I
    if-nez v1, :cond_3

    .line 330
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int v0, v6, v7

    .line 335
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    .line 337
    .end local v0           #bottom:I
    .end local v1           #child:Landroid/view/View;
    :cond_2
    return-void

    .line 332
    .restart local v0       #bottom:I
    .restart local v1       #child:Landroid/view/View;
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 333
    .restart local v4       #lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v0, v6, v7

    goto :goto_1
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .locals 4
    .parameter "canvas"
    .parameter "top"

    .prologue
    .line 387
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 389
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 390
    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .locals 5
    .parameter "canvas"
    .parameter "left"

    .prologue
    .line 393
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 395
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 396
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1750
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_0

    .line 1751
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1755
    :goto_0
    return-object v0

    .line 1752
    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1753
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 1755
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 5
    .parameter "attrs"

    .prologue
    .line 1731
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1732
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1733
    .local v0, l:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1737
    .end local v0           #l:Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1760
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBaseline()I
    .locals 8

    .prologue
    const/4 v5, -0x1

    .line 451
    iget v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v6, :cond_1

    .line 452
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v5

    .line 499
    :cond_0
    :goto_0
    return v5

    .line 455
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    iget v7, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gt v6, v7, :cond_2

    .line 456
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 460
    :cond_2
    iget v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 461
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 463
    .local v1, childBaseline:I
    if-ne v1, v5, :cond_3

    .line 464
    iget v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-eqz v6, :cond_0

    .line 470
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 480
    :cond_3
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 482
    .local v2, childTop:I
    iget v5, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 483
    iget v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v4, v5, 0x70

    .line 484
    .local v4, majorGravity:I
    const/16 v5, 0x30

    if-eq v4, v5, :cond_4

    .line 485
    sparse-switch v4, :sswitch_data_0

    .line 498
    .end local v4           #majorGravity:I
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 499
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    goto :goto_0

    .line 487
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v4       #majorGravity:I
    :sswitch_0
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v2, v5, v6

    .line 488
    goto :goto_1

    .line 491
    :sswitch_1
    iget v5, p0, Landroid/view/View;->mBottom:I

    iget v6, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_1

    .line 485
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .locals 1
    .parameter "child"
    .parameter "index"

    .prologue
    .line 1369
    const/4 v0, 0x0

    return v0
.end method

.method public getDividerPadding()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 1411
    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 1423
    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1681
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 536
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 5
    .parameter "childIndex"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 597
    if-nez p1, :cond_2

    .line 598
    iget v4, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 611
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 598
    goto :goto_0

    .line 599
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ne p1, v4, :cond_3

    .line 600
    iget v4, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 601
    :cond_3
    iget v2, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_6

    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, hasVisibleViewBefore:Z
    add-int/lit8 v1, p1, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_4

    .line 604
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    .line 605
    const/4 v0, 0x1

    :cond_4
    move v2, v0

    .line 609
    goto :goto_0

    .line 603
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .end local v0           #hasVisibleViewBefore:Z
    .end local v1           #i:I
    :cond_6
    move v2, v3

    .line 611
    goto :goto_0
.end method

.method public isBaselineAligned()Z
    .locals 1

    .prologue
    .line 405
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal()V
    .locals 30

    .prologue
    .line 1534
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v20

    .line 1535
    .local v20, isLayoutRtl:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v27, v0

    .line 1541
    .local v27, paddingTop:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int v18, v2, v4

    .line 1542
    .local v18, height:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingBottom:I

    sub-int v10, v18, v2

    .line 1545
    .local v10, childBottom:I
    sub-int v2, v18, v27

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPaddingBottom:I

    sub-int v13, v2, v4

    .line 1547
    .local v13, childSpace:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v14

    .line 1549
    .local v14, count:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mGravity:I

    const v4, 0x800007

    and-int v23, v2, v4

    .line 1550
    .local v23, majorGravity:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v26, v2, 0x70

    .line 1552
    .local v26, minorGravity:I
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 1554
    .local v8, baselineAligned:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v24, v0

    .line 1555
    .local v24, maxAscent:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v25, v0

    .line 1557
    .local v25, maxDescent:[I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResolvedLayoutDirection()I

    move-result v21

    .line 1558
    .local v21, layoutDirection:I
    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1571
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mPaddingLeft:I

    .line 1575
    .local v12, childLeft:I
    :goto_0
    const/16 v28, 0x0

    .line 1576
    .local v28, start:I
    const/16 v16, 0x1

    .line 1578
    .local v16, dir:I
    if-eqz v20, :cond_0

    .line 1579
    add-int/lit8 v28, v14, -0x1

    .line 1580
    const/16 v16, -0x1

    .line 1583
    :cond_0
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    move/from16 v0, v19

    if-ge v0, v14, :cond_7

    .line 1584
    mul-int v2, v16, v19

    add-int v11, v28, v2

    .line 1585
    .local v11, childIndex:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1587
    .local v3, child:Landroid/view/View;
    if-nez v3, :cond_2

    .line 1588
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v2

    add-int/2addr v12, v2

    .line 1583
    :cond_1
    :goto_2
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1561
    .end local v3           #child:Landroid/view/View;
    .end local v11           #childIndex:I
    .end local v12           #childLeft:I
    .end local v16           #dir:I
    .end local v19           #i:I
    .end local v28           #start:I
    :sswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mRight:I

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v12, v2, v4

    .line 1562
    .restart local v12       #childLeft:I
    goto :goto_0

    .line 1566
    .end local v12           #childLeft:I
    :sswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/View;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    div-int/lit8 v4, v4, 0x2

    add-int v12, v2, v4

    .line 1567
    .restart local v12       #childLeft:I
    goto :goto_0

    .line 1589
    .restart local v3       #child:Landroid/view/View;
    .restart local v11       #childIndex:I
    .restart local v16       #dir:I
    .restart local v19       #i:I
    .restart local v28       #start:I
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    .line 1590
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1591
    .local v6, childWidth:I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1592
    .local v7, childHeight:I
    const/4 v9, -0x1

    .line 1594
    .local v9, childBaseline:I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout$LayoutParams;

    .line 1597
    .local v22, lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v8, :cond_3

    move-object/from16 v0, v22

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    .line 1598
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v9

    .line 1601
    :cond_3
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move/from16 v17, v0

    .line 1602
    .local v17, gravity:I
    if-gez v17, :cond_4

    .line 1603
    move/from16 v17, v26

    .line 1606
    :cond_4
    and-int/lit8 v2, v17, 0x70

    sparse-switch v2, :sswitch_data_1

    .line 1638
    move/from16 v5, v27

    .line 1642
    .local v5, childTop:I
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1643
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v12, v2

    .line 1646
    :cond_6
    move-object/from16 v0, v22

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v12, v2

    .line 1647
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v4, v12, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1649
    move-object/from16 v0, v22

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v12, v2

    .line 1652
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int v19, v19, v2

    goto/16 :goto_2

    .line 1608
    .end local v5           #childTop:I
    :sswitch_2
    move-object/from16 v0, v22

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v5, v27, v2

    .line 1609
    .restart local v5       #childTop:I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_5

    .line 1610
    const/4 v2, 0x1

    aget v2, v24, v2

    sub-int/2addr v2, v9

    add-int/2addr v5, v2

    goto :goto_3

    .line 1626
    .end local v5           #childTop:I
    :sswitch_3
    sub-int v2, v13, v7

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v27

    move-object/from16 v0, v22

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v22

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v5, v2, v4

    .line 1628
    .restart local v5       #childTop:I
    goto :goto_3

    .line 1631
    .end local v5           #childTop:I
    :sswitch_4
    sub-int v2, v10, v7

    move-object/from16 v0, v22

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v5, v2, v4

    .line 1632
    .restart local v5       #childTop:I
    const/4 v2, -0x1

    if-eq v9, v2, :cond_5

    .line 1633
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v15, v2, v9

    .line 1634
    .local v15, descent:I
    const/4 v2, 0x2

    aget v2, v25, v2

    sub-int/2addr v2, v15

    sub-int/2addr v5, v2

    .line 1635
    goto :goto_3

    .line 1655
    .end local v3           #child:Landroid/view/View;
    .end local v5           #childTop:I
    .end local v6           #childWidth:I
    .end local v7           #childHeight:I
    .end local v9           #childBaseline:I
    .end local v11           #childIndex:I
    .end local v15           #descent:I
    .end local v17           #gravity:I
    .end local v22           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    return-void

    .line 1558
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch

    .line 1606
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method layoutVertical()V
    .locals 21

    .prologue
    .line 1444
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v18, v0

    .line 1450
    .local v18, paddingLeft:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int v19, v1, v4

    .line 1451
    .local v19, width:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPaddingRight:I

    sub-int v8, v19, v1

    .line 1454
    .local v8, childRight:I
    sub-int v1, v19, v18

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mPaddingRight:I

    sub-int v9, v1, v4

    .line 1456
    .local v9, childSpace:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    .line 1458
    .local v11, count:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v16, v1, 0x70

    .line 1459
    .local v16, majorGravity:I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    const v4, 0x800007

    and-int v17, v1, v4

    .line 1461
    .local v17, minorGravity:I
    sparse-switch v16, :sswitch_data_0

    .line 1474
    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/View;->mPaddingTop:I

    .line 1478
    .local v10, childTop:I
    :goto_0
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v11, :cond_4

    .line 1479
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1480
    .local v2, child:Landroid/view/View;
    if-nez v2, :cond_1

    .line 1481
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v10, v1

    .line 1478
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1464
    .end local v2           #child:Landroid/view/View;
    .end local v10           #childTop:I
    .end local v13           #i:I
    :sswitch_0
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mBottom:I

    add-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v10, v1, v4

    .line 1465
    .restart local v10       #childTop:I
    goto :goto_0

    .line 1469
    .end local v10           #childTop:I
    :sswitch_1
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/View;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v20, v0

    sub-int v4, v4, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v20, v0

    sub-int v4, v4, v20

    div-int/lit8 v4, v4, 0x2

    add-int v10, v1, v4

    .line 1470
    .restart local v10       #childTop:I
    goto :goto_0

    .line 1482
    .restart local v2       #child:Landroid/view/View;
    .restart local v13       #i:I
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_0

    .line 1483
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1484
    .local v5, childWidth:I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 1486
    .local v6, childHeight:I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 1489
    .local v15, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget v12, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1490
    .local v12, gravity:I
    if-gez v12, :cond_2

    .line 1491
    move/from16 v12, v17

    .line 1493
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResolvedLayoutDirection()I

    move-result v14

    .line 1494
    .local v14, layoutDirection:I
    invoke-static {v12, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    .line 1495
    .local v7, absoluteGravity:I
    and-int/lit8 v1, v7, 0x7

    sparse-switch v1, :sswitch_data_1

    .line 1507
    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v3, v18, v1

    .line 1511
    .local v3, childLeft:I
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1512
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v10, v1

    .line 1515
    :cond_3
    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v1

    .line 1516
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v4, v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    .line 1518
    iget v1, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v10, v1

    .line 1520
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v13, v1

    goto/16 :goto_2

    .line 1497
    .end local v3           #childLeft:I
    :sswitch_2
    sub-int v1, v9, v5

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, v18

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v3, v1, v4

    .line 1499
    .restart local v3       #childLeft:I
    goto :goto_3

    .line 1502
    .end local v3           #childLeft:I
    :sswitch_3
    sub-int v1, v8, v5

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int v3, v1, v4

    .line 1503
    .restart local v3       #childLeft:I
    goto :goto_3

    .line 1523
    .end local v2           #child:Landroid/view/View;
    .end local v3           #childLeft:I
    .end local v5           #childWidth:I
    .end local v6           #childHeight:I
    .end local v7           #absoluteGravity:I
    .end local v12           #gravity:I
    .end local v14           #layoutDirection:I
    .end local v15           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    return-void

    .line 1461
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 1495
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_2
        0x5 -> :sswitch_3
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 6
    .parameter "child"
    .parameter "childIndex"
    .parameter "widthMeasureSpec"
    .parameter "totalWidth"
    .parameter "heightMeasureSpec"
    .parameter "totalHeight"

    .prologue
    .line 1399
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1401
    return-void
.end method

.method measureHorizontal(II)V
    .locals 46
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 954
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 955
    const/16 v35, 0x0

    .line 956
    .local v35, maxHeight:I
    const/16 v18, 0x0

    .line 957
    .local v18, childState:I
    const/4 v11, 0x0

    .line 958
    .local v11, alternativeMaxHeight:I
    const/16 v42, 0x0

    .line 959
    .local v42, weightedMaxHeight:I
    const/4 v10, 0x1

    .line 960
    .local v10, allFillParent:Z
    const/16 v39, 0x0

    .line 962
    .local v39, totalWeight:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v20

    .line 964
    .local v20, count:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v43

    .line 965
    .local v43, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v25

    .line 967
    .local v25, heightMode:I
    const/16 v31, 0x0

    .line 969
    .local v31, matchHeight:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    if-nez v3, :cond_1

    .line 970
    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    .line 971
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    .line 974
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v33, v0

    .line 975
    .local v33, maxAscent:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v34, v0

    .line 977
    .local v34, maxDescent:[I
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v33, v8

    aput v9, v33, v7

    aput v9, v33, v6

    aput v9, v33, v3

    .line 978
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v34, v8

    aput v9, v34, v7

    aput v9, v34, v6

    aput v9, v34, v3

    .line 980
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 981
    .local v13, baselineAligned:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v40, v0

    .line 983
    .local v40, useLargestChild:Z
    const/high16 v3, 0x4000

    move/from16 v0, v43

    if-ne v0, v3, :cond_2

    const/16 v27, 0x1

    .line 985
    .local v27, isExactly:Z
    :goto_0
    const/high16 v28, -0x8000

    .line 988
    .local v28, largestChildWidth:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    move/from16 v0, v20

    if-ge v5, v0, :cond_14

    .line 989
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 991
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_3

    .line 992
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 988
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 983
    .end local v4           #child:Landroid/view/View;
    .end local v5           #i:I
    .end local v27           #isExactly:Z
    .end local v28           #largestChildWidth:I
    :cond_2
    const/16 v27, 0x0

    goto :goto_0

    .line 996
    .restart local v4       #child:Landroid/view/View;
    .restart local v5       #i:I
    .restart local v27       #isExactly:Z
    .restart local v28       #largestChildWidth:I
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_4

    .line 997
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 998
    goto :goto_2

    .line 1001
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1002
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1005
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 1008
    .local v29, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v39, v39, v3

    .line 1010
    const/high16 v3, 0x4000

    move/from16 v0, v43

    if-ne v0, v3, :cond_a

    move-object/from16 v0, v29

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v3, :cond_a

    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_a

    .line 1014
    if-eqz v27, :cond_9

    .line 1015
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, v29

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1027
    :goto_3
    if-eqz v13, :cond_6

    .line 1028
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 1029
    .local v23, freeSpec:I
    move/from16 v0, v23

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1070
    .end local v23           #freeSpec:I
    :cond_6
    :goto_4
    const/16 v32, 0x0

    .line 1071
    .local v32, matchHeightLocally:Z
    const/high16 v3, 0x4000

    move/from16 v0, v25

    if-eq v0, v3, :cond_7

    move-object/from16 v0, v29

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_7

    .line 1075
    const/16 v31, 0x1

    .line 1076
    const/16 v32, 0x1

    .line 1079
    :cond_7
    move-object/from16 v0, v29

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v30, v3, v6

    .line 1080
    .local v30, margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v30

    .line 1081
    .local v16, childHeight:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v18

    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v18

    .line 1083
    if-eqz v13, :cond_8

    .line 1084
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 1085
    .local v14, childBaseline:I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_8

    .line 1088
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_f

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mGravity:I

    :goto_5
    and-int/lit8 v24, v3, 0x70

    .line 1090
    .local v24, gravity:I
    shr-int/lit8 v3, v24, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v26, v3, 0x1

    .line 1093
    .local v26, index:I
    aget v3, v33, v26

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v33, v26

    .line 1094
    aget v3, v34, v26

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v34, v26

    .line 1098
    .end local v14           #childBaseline:I
    .end local v24           #gravity:I
    .end local v26           #index:I
    :cond_8
    move/from16 v0, v35

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1100
    if-eqz v10, :cond_10

    move-object/from16 v0, v29

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_10

    const/4 v10, 0x1

    .line 1101
    :goto_6
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_12

    .line 1106
    if-eqz v32, :cond_11

    .end local v30           #margin:I
    :goto_7
    move/from16 v0, v42

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 1113
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_2

    .line 1017
    .end local v16           #childHeight:I
    .end local v32           #matchHeightLocally:Z
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v38, v0

    .line 1018
    .local v38, totalLength:I
    move-object/from16 v0, v29

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v3, v3, v38

    move-object/from16 v0, v29

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move/from16 v0, v38

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_3

    .line 1032
    .end local v38           #totalLength:I
    :cond_a
    const/high16 v36, -0x8000

    .line 1034
    .local v36, oldWidth:I
    move-object/from16 v0, v29

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v3, :cond_b

    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_b

    .line 1039
    const/16 v36, 0x0

    .line 1040
    const/4 v3, -0x2

    move-object/from16 v0, v29

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1047
    :cond_b
    const/4 v3, 0x0

    cmpl-float v3, v39, v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_9
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 1051
    const/high16 v3, -0x8000

    move/from16 v0, v36

    if-eq v0, v3, :cond_c

    .line 1052
    move/from16 v0, v36

    move-object/from16 v1, v29

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1055
    :cond_c
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 1056
    .local v19, childWidth:I
    if-eqz v27, :cond_e

    .line 1057
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v6, v6, v19

    move-object/from16 v0, v29

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1065
    :goto_a
    if-eqz v40, :cond_6

    .line 1066
    move/from16 v0, v19

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v28

    goto/16 :goto_4

    .line 1047
    .end local v19           #childWidth:I
    :cond_d
    const/4 v7, 0x0

    goto :goto_9

    .line 1060
    .restart local v19       #childWidth:I
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v38, v0

    .line 1061
    .restart local v38       #totalLength:I
    add-int v3, v38, v19

    move-object/from16 v0, v29

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v38

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_a

    .line 1088
    .end local v19           #childWidth:I
    .end local v36           #oldWidth:I
    .end local v38           #totalLength:I
    .restart local v14       #childBaseline:I
    .restart local v16       #childHeight:I
    .restart local v30       #margin:I
    .restart local v32       #matchHeightLocally:Z
    :cond_f
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_5

    .line 1100
    .end local v14           #childBaseline:I
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_11
    move/from16 v30, v16

    .line 1106
    goto/16 :goto_7

    .line 1109
    :cond_12
    if-eqz v32, :cond_13

    .end local v30           #margin:I
    :goto_b
    move/from16 v0, v30

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_8

    .restart local v30       #margin:I
    :cond_13
    move/from16 v30, v16

    goto :goto_b

    .line 1116
    .end local v4           #child:Landroid/view/View;
    .end local v16           #childHeight:I
    .end local v29           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v30           #margin:I
    .end local v32           #matchHeightLocally:Z
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    if-lez v3, :cond_15

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1117
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1122
    :cond_15
    const/4 v3, 0x1

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_16

    const/4 v3, 0x0

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_16

    const/4 v3, 0x2

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_16

    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_17

    .line 1126
    :cond_16
    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, 0x0

    aget v6, v33, v6

    const/4 v7, 0x1

    aget v7, v33, v7

    const/4 v8, 0x2

    aget v8, v33, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1129
    .local v12, ascent:I
    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, 0x0

    aget v6, v34, v6

    const/4 v7, 0x1

    aget v7, v34, v7

    const/4 v8, 0x2

    aget v8, v34, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1132
    .local v22, descent:I
    add-int v3, v12, v22

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1135
    .end local v12           #ascent:I
    .end local v22           #descent:I
    :cond_17
    if-eqz v40, :cond_1c

    const/high16 v3, -0x8000

    move/from16 v0, v43

    if-eq v0, v3, :cond_18

    if-nez v43, :cond_1c

    .line 1137
    :cond_18
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1139
    const/4 v5, 0x0

    :goto_c
    move/from16 v0, v20

    if-ge v5, v0, :cond_1c

    .line 1140
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1142
    .restart local v4       #child:Landroid/view/View;
    if-nez v4, :cond_19

    .line 1143
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1139
    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 1147
    :cond_19
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1a

    .line 1148
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 1149
    goto :goto_d

    .line 1152
    :cond_1a
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 1154
    .restart local v29       #lp:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v27, :cond_1b

    .line 1155
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v6, v6, v28

    move-object/from16 v0, v29

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_d

    .line 1158
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v38, v0

    .line 1159
    .restart local v38       #totalLength:I
    add-int v3, v38, v28

    move-object/from16 v0, v29

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v38

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_d

    .line 1166
    .end local v4           #child:Landroid/view/View;
    .end local v29           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v38           #totalLength:I
    :cond_1c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1168
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v44, v0

    .line 1171
    .local v44, widthSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v44

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v44

    .line 1174
    const/4 v3, 0x0

    move/from16 v0, v44

    move/from16 v1, p1

    invoke-static {v0, v1, v3}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v45

    .line 1175
    .local v45, widthSizeAndState:I
    const v3, 0xffffff

    and-int v44, v45, v3

    .line 1179
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v21, v44, v3

    .line 1180
    .local v21, delta:I
    if-eqz v21, :cond_2f

    const/4 v3, 0x0

    cmpl-float v3, v39, v3

    if-lez v3, :cond_2f

    .line 1181
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move/from16 v41, v0

    .line 1183
    .local v41, weightSum:F
    :goto_e
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v33, v8

    aput v9, v33, v7

    aput v9, v33, v6

    aput v9, v33, v3

    .line 1184
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, -0x1

    aput v9, v34, v8

    aput v9, v34, v7

    aput v9, v34, v6

    aput v9, v34, v3

    .line 1185
    const/16 v35, -0x1

    .line 1187
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1189
    const/4 v5, 0x0

    :goto_f
    move/from16 v0, v20

    if-ge v5, v0, :cond_2a

    .line 1190
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1192
    .restart local v4       #child:Landroid/view/View;
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1f

    .line 1189
    :cond_1d
    :goto_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .end local v4           #child:Landroid/view/View;
    .end local v41           #weightSum:F
    :cond_1e
    move/from16 v41, v39

    .line 1181
    goto :goto_e

    .line 1196
    .restart local v4       #child:Landroid/view/View;
    .restart local v41       #weightSum:F
    :cond_1f
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 1199
    .restart local v29       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v29

    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1200
    .local v15, childExtra:F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_22

    .line 1202
    move/from16 v0, v21

    int-to-float v3, v0

    mul-float/2addr v3, v15

    div-float v3, v3, v41

    float-to-int v0, v3

    move/from16 v37, v0

    .line 1203
    .local v37, share:I
    sub-float v41, v41, v15

    .line 1204
    sub-int v21, v21, v37

    .line 1206
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v3, v6}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v17

    .line 1213
    .local v17, childHeightMeasureSpec:I
    move-object/from16 v0, v29

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-nez v3, :cond_20

    const/high16 v3, 0x4000

    move/from16 v0, v43

    if-eq v0, v3, :cond_23

    .line 1216
    :cond_20
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v19, v3, v37

    .line 1217
    .restart local v19       #childWidth:I
    if-gez v19, :cond_21

    .line 1218
    const/16 v19, 0x0

    .line 1221
    :cond_21
    const/high16 v3, 0x4000

    move/from16 v0, v19

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    .line 1232
    .end local v19           #childWidth:I
    .end local v37           #share:I
    :goto_11
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    const/high16 v6, -0x100

    and-int/2addr v3, v6

    move/from16 v0, v18

    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v18

    .line 1236
    .end local v17           #childHeightMeasureSpec:I
    :cond_22
    if-eqz v27, :cond_25

    .line 1237
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, v29

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, v29

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1245
    :goto_12
    const/high16 v3, 0x4000

    move/from16 v0, v25

    if-eq v0, v3, :cond_26

    move-object/from16 v0, v29

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_26

    const/16 v32, 0x1

    .line 1248
    .restart local v32       #matchHeightLocally:Z
    :goto_13
    move-object/from16 v0, v29

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v30, v3, v6

    .line 1249
    .restart local v30       #margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v30

    .line 1250
    .restart local v16       #childHeight:I
    move/from16 v0, v35

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1251
    if-eqz v32, :cond_27

    .end local v30           #margin:I
    :goto_14
    move/from16 v0, v30

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1254
    if-eqz v10, :cond_28

    move-object/from16 v0, v29

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_28

    const/4 v10, 0x1

    .line 1256
    :goto_15
    if-eqz v13, :cond_1d

    .line 1257
    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    .line 1258
    .restart local v14       #childBaseline:I
    const/4 v3, -0x1

    if-eq v14, v3, :cond_1d

    .line 1260
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_29

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mGravity:I

    :goto_16
    and-int/lit8 v24, v3, 0x70

    .line 1262
    .restart local v24       #gravity:I
    shr-int/lit8 v3, v24, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v26, v3, 0x1

    .line 1265
    .restart local v26       #index:I
    aget v3, v33, v26

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v33, v26

    .line 1266
    aget v3, v34, v26

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v34, v26

    goto/16 :goto_10

    .line 1226
    .end local v14           #childBaseline:I
    .end local v16           #childHeight:I
    .end local v24           #gravity:I
    .end local v26           #index:I
    .end local v32           #matchHeightLocally:Z
    .restart local v17       #childHeightMeasureSpec:I
    .restart local v37       #share:I
    :cond_23
    if-lez v37, :cond_24

    .end local v37           #share:I
    :goto_17
    const/high16 v3, 0x4000

    move/from16 v0, v37

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v17

    invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V

    goto/16 :goto_11

    .restart local v37       #share:I
    :cond_24
    const/16 v37, 0x0

    goto :goto_17

    .line 1240
    .end local v17           #childHeightMeasureSpec:I
    .end local v37           #share:I
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v38, v0

    .line 1241
    .restart local v38       #totalLength:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v38

    move-object/from16 v0, v29

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v29

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v38

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_12

    .line 1245
    .end local v38           #totalLength:I
    :cond_26
    const/16 v32, 0x0

    goto/16 :goto_13

    .restart local v16       #childHeight:I
    .restart local v30       #margin:I
    .restart local v32       #matchHeightLocally:Z
    :cond_27
    move/from16 v30, v16

    .line 1251
    goto/16 :goto_14

    .line 1254
    .end local v30           #margin:I
    :cond_28
    const/4 v10, 0x0

    goto :goto_15

    .line 1260
    .restart local v14       #childBaseline:I
    :cond_29
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_16

    .line 1273
    .end local v4           #child:Landroid/view/View;
    .end local v14           #childBaseline:I
    .end local v15           #childExtra:F
    .end local v16           #childHeight:I
    .end local v29           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v32           #matchHeightLocally:Z
    :cond_2a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 1278
    const/4 v3, 0x1

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2b

    const/4 v3, 0x0

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2b

    const/4 v3, 0x2

    aget v3, v33, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_2b

    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2c

    .line 1282
    :cond_2b
    const/4 v3, 0x3

    aget v3, v33, v3

    const/4 v6, 0x0

    aget v6, v33, v6

    const/4 v7, 0x1

    aget v7, v33, v7

    const/4 v8, 0x2

    aget v8, v33, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1285
    .restart local v12       #ascent:I
    const/4 v3, 0x3

    aget v3, v34, v3

    const/4 v6, 0x0

    aget v6, v34, v6

    const/4 v7, 0x1

    aget v7, v34, v7

    const/4 v8, 0x2

    aget v8, v34, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1288
    .restart local v22       #descent:I
    add-int v3, v12, v22

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1317
    .end local v12           #ascent:I
    .end local v22           #descent:I
    .end local v41           #weightSum:F
    :cond_2c
    if-nez v10, :cond_2d

    const/high16 v3, 0x4000

    move/from16 v0, v25

    if-eq v0, v3, :cond_2d

    .line 1318
    move/from16 v35, v11

    .line 1321
    :cond_2d
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v6

    add-int v35, v35, v3

    .line 1324
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v35

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 1326
    const/high16 v3, -0x100

    and-int v3, v3, v18

    or-int v3, v3, v45

    shl-int/lit8 v6, v18, 0x10

    move/from16 v0, v35

    move/from16 v1, p2

    invoke-static {v0, v1, v6}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 1330
    if-eqz v31, :cond_2e

    .line 1331
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    .line 1333
    :cond_2e
    return-void

    .line 1291
    :cond_2f
    move/from16 v0, v42

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1295
    if-eqz v40, :cond_2c

    if-nez v43, :cond_2c

    .line 1296
    const/4 v5, 0x0

    :goto_18
    move/from16 v0, v20

    if-ge v5, v0, :cond_2c

    .line 1297
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1299
    .restart local v4       #child:Landroid/view/View;
    if-eqz v4, :cond_30

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_31

    .line 1296
    :cond_30
    :goto_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 1303
    :cond_31
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 1306
    .restart local v29       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v29

    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1307
    .restart local v15       #childExtra:F
    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_30

    .line 1308
    const/high16 v3, 0x4000

    move/from16 v0, v28

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v7, 0x4000

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_19
.end method

.method measureNullChild(I)I
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 1380
    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .locals 37
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 626
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 627
    const/16 v27, 0x0

    .line 628
    .local v27, maxWidth:I
    const/4 v15, 0x0

    .line 629
    .local v15, childState:I
    const/4 v11, 0x0

    .line 630
    .local v11, alternativeMaxWidth:I
    const/16 v35, 0x0

    .line 631
    .local v35, weightedMaxWidth:I
    const/4 v10, 0x1

    .line 632
    .local v10, allFillParent:Z
    const/16 v32, 0x0

    .line 634
    .local v32, totalWeight:F
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v17

    .line 636
    .local v17, count:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v36

    .line 637
    .local v36, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 639
    .local v19, heightMode:I
    const/16 v25, 0x0

    .line 641
    .local v25, matchWidth:Z
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 642
    .local v12, baselineChildIndex:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v33, v0

    .line 644
    .local v33, useLargestChild:Z
    const/high16 v22, -0x8000

    .line 647
    .local v22, largestChildHeight:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move/from16 v0, v17

    if-ge v5, v0, :cond_f

    .line 648
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 650
    .local v4, child:Landroid/view/View;
    if-nez v4, :cond_0

    .line 651
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 647
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 655
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1

    .line 656
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 657
    goto :goto_1

    .line 660
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 661
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 664
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 666
    .local v23, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v32, v32, v3

    .line 668
    const/high16 v3, 0x4000

    move/from16 v0, v19

    if-ne v0, v3, :cond_5

    move-object/from16 v0, v23

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v3, :cond_5

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    .line 672
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v31, v0

    .line 673
    .local v31, totalLength:I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v3, v3, v31

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move/from16 v0, v31

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 712
    :cond_3
    :goto_2
    if-ltz v12, :cond_4

    add-int/lit8 v3, v5, 0x1

    if-ne v12, v3, :cond_4

    .line 713
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    .line 719
    :cond_4
    if-ge v5, v12, :cond_9

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_9

    .line 720
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v6, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 675
    .end local v31           #totalLength:I
    :cond_5
    const/high16 v29, -0x8000

    .line 677
    .local v29, oldHeight:I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v3, :cond_6

    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_6

    .line 682
    const/16 v29, 0x0

    .line 683
    const/4 v3, -0x2

    move-object/from16 v0, v23

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 690
    :cond_6
    const/4 v7, 0x0

    const/4 v3, 0x0

    cmpl-float v3, v32, v3

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_3
    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    .line 694
    const/high16 v3, -0x8000

    move/from16 v0, v29

    if-eq v0, v3, :cond_7

    .line 695
    move/from16 v0, v29

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 698
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 699
    .local v14, childHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v31, v0

    .line 700
    .restart local v31       #totalLength:I
    add-int v3, v31, v14

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v31

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 703
    if-eqz v33, :cond_3

    .line 704
    move/from16 v0, v22

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v22

    goto/16 :goto_2

    .line 690
    .end local v14           #childHeight:I
    .end local v31           #totalLength:I
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 726
    .end local v29           #oldHeight:I
    .restart local v31       #totalLength:I
    :cond_9
    const/16 v26, 0x0

    .line 727
    .local v26, matchWidthLocally:Z
    const/high16 v3, 0x4000

    move/from16 v0, v36

    if-eq v0, v3, :cond_a

    move-object/from16 v0, v23

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_a

    .line 732
    const/16 v25, 0x1

    .line 733
    const/16 v26, 0x1

    .line 736
    :cond_a
    move-object/from16 v0, v23

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v24, v3, v6

    .line 737
    .local v24, margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v28, v3, v24

    .line 738
    .local v28, measuredWidth:I
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 739
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v15, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v15

    .line 741
    if-eqz v10, :cond_b

    move-object/from16 v0, v23

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_b

    const/4 v10, 0x1

    .line 742
    :goto_4
    move-object/from16 v0, v23

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_d

    .line 747
    if-eqz v26, :cond_c

    .end local v24           #margin:I
    :goto_5
    move/from16 v0, v35

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 754
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_1

    .line 741
    .restart local v24       #margin:I
    :cond_b
    const/4 v10, 0x0

    goto :goto_4

    :cond_c
    move/from16 v24, v28

    .line 747
    goto :goto_5

    .line 750
    :cond_d
    if-eqz v26, :cond_e

    .end local v24           #margin:I
    :goto_7
    move/from16 v0, v24

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_6

    .restart local v24       #margin:I
    :cond_e
    move/from16 v24, v28

    goto :goto_7

    .line 757
    .end local v4           #child:Landroid/view/View;
    .end local v23           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v24           #margin:I
    .end local v26           #matchWidthLocally:Z
    .end local v28           #measuredWidth:I
    .end local v31           #totalLength:I
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    if-lez v3, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 758
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 761
    :cond_10
    if-eqz v33, :cond_14

    const/high16 v3, -0x8000

    move/from16 v0, v19

    if-eq v0, v3, :cond_11

    if-nez v19, :cond_14

    .line 763
    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 765
    const/4 v5, 0x0

    :goto_8
    move/from16 v0, v17

    if-ge v5, v0, :cond_14

    .line 766
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 768
    .restart local v4       #child:Landroid/view/View;
    if-nez v4, :cond_12

    .line 769
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 765
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 773
    :cond_12
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_13

    .line 774
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    .line 775
    goto :goto_9

    .line 778
    :cond_13
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 781
    .restart local v23       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v31, v0

    .line 782
    .restart local v31       #totalLength:I
    add-int v3, v31, v22

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v31

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_9

    .line 788
    .end local v4           #child:Landroid/view/View;
    .end local v23           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v31           #totalLength:I
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 790
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v20, v0

    .line 793
    .local v20, heightSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v20

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 796
    const/4 v3, 0x0

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v21

    .line 797
    .local v21, heightSizeAndState:I
    const v3, 0xffffff

    and-int v20, v21, v3

    .line 801
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v18, v20, v3

    .line 802
    .local v18, delta:I
    if-eqz v18, :cond_23

    const/4 v3, 0x0

    cmpl-float v3, v32, v3

    if-lez v3, :cond_23

    .line 803
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move/from16 v34, v0

    .line 805
    .local v34, weightSum:F
    :goto_a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 807
    const/4 v5, 0x0

    :goto_b
    move/from16 v0, v17

    if-ge v5, v0, :cond_1f

    .line 808
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 810
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_16

    .line 807
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .end local v4           #child:Landroid/view/View;
    .end local v34           #weightSum:F
    :cond_15
    move/from16 v34, v32

    .line 803
    goto :goto_a

    .line 814
    .restart local v4       #child:Landroid/view/View;
    .restart local v34       #weightSum:F
    :cond_16
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 816
    .restart local v23       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    iget v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 817
    .local v13, childExtra:F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_19

    .line 819
    move/from16 v0, v18

    int-to-float v3, v0

    mul-float/2addr v3, v13

    div-float v3, v3, v34

    float-to-int v0, v3

    move/from16 v30, v0

    .line 820
    .local v30, share:I
    sub-float v34, v34, v13

    .line 821
    sub-int v18, v18, v30

    .line 823
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v3, v6}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v16

    .line 829
    .local v16, childWidthMeasureSpec:I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v3, :cond_17

    const/high16 v3, 0x4000

    move/from16 v0, v19

    if-eq v0, v3, :cond_1a

    .line 832
    :cond_17
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v14, v3, v30

    .line 833
    .restart local v14       #childHeight:I
    if-gez v14, :cond_18

    .line 834
    const/4 v14, 0x0

    .line 837
    :cond_18
    const/high16 v3, 0x4000

    invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v16

    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    .line 848
    .end local v14           #childHeight:I
    .end local v30           #share:I
    :goto_d
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    and-int/lit16 v3, v3, -0x100

    invoke-static {v15, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v15

    .line 852
    .end local v16           #childWidthMeasureSpec:I
    :cond_19
    move-object/from16 v0, v23

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v24, v3, v6

    .line 853
    .restart local v24       #margin:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v28, v3, v24

    .line 854
    .restart local v28       #measuredWidth:I
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 856
    const/high16 v3, 0x4000

    move/from16 v0, v36

    if-eq v0, v3, :cond_1c

    move-object/from16 v0, v23

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1c

    const/16 v26, 0x1

    .line 859
    .restart local v26       #matchWidthLocally:Z
    :goto_e
    if-eqz v26, :cond_1d

    .end local v24           #margin:I
    :goto_f
    move/from16 v0, v24

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 862
    if-eqz v10, :cond_1e

    move-object/from16 v0, v23

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1e

    const/4 v10, 0x1

    .line 864
    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v31, v0

    .line 865
    .restart local v31       #totalLength:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, v31

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v31

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_c

    .line 842
    .end local v26           #matchWidthLocally:Z
    .end local v28           #measuredWidth:I
    .end local v31           #totalLength:I
    .restart local v16       #childWidthMeasureSpec:I
    .restart local v30       #share:I
    :cond_1a
    if-lez v30, :cond_1b

    .end local v30           #share:I
    :goto_11
    const/high16 v3, 0x4000

    move/from16 v0, v30

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v0, v16

    invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V

    goto :goto_d

    .restart local v30       #share:I
    :cond_1b
    const/16 v30, 0x0

    goto :goto_11

    .line 856
    .end local v16           #childWidthMeasureSpec:I
    .end local v30           #share:I
    .restart local v24       #margin:I
    .restart local v28       #measuredWidth:I
    :cond_1c
    const/16 v26, 0x0

    goto :goto_e

    .restart local v26       #matchWidthLocally:Z
    :cond_1d
    move/from16 v24, v28

    .line 859
    goto :goto_f

    .line 862
    .end local v24           #margin:I
    :cond_1e
    const/4 v10, 0x0

    goto :goto_10

    .line 870
    .end local v4           #child:Landroid/view/View;
    .end local v13           #childExtra:F
    .end local v23           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v26           #matchWidthLocally:Z
    .end local v28           #measuredWidth:I
    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    .line 902
    .end local v34           #weightSum:F
    :cond_20
    if-nez v10, :cond_21

    const/high16 v3, 0x4000

    move/from16 v0, v36

    if-eq v0, v3, :cond_21

    .line 903
    move/from16 v27, v11

    .line 906
    :cond_21
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v6

    add-int v27, v27, v3

    .line 909
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 911
    move/from16 v0, v27

    move/from16 v1, p1

    invoke-static {v0, v1, v15}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 914
    if-eqz v25, :cond_22

    .line 915
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    .line 917
    :cond_22
    return-void

    .line 873
    :cond_23
    move/from16 v0, v35

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 879
    if-eqz v33, :cond_20

    if-nez v36, :cond_20

    .line 880
    const/4 v5, 0x0

    :goto_12
    move/from16 v0, v17

    if-ge v5, v0, :cond_20

    .line 881
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 883
    .restart local v4       #child:Landroid/view/View;
    if-eqz v4, :cond_24

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_25

    .line 880
    :cond_24
    :goto_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 887
    :cond_25
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout$LayoutParams;

    .line 890
    .restart local v23       #lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    iget v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 891
    .restart local v13       #childExtra:F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_24

    .line 892
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x4000

    move/from16 v0, v22

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_13
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 301
    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 305
    :cond_0
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 306
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1428
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1429
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->layoutVertical()V

    .line 1433
    :goto_0
    return-void

    .line 1431
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->layoutHorizontal()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 582
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 583
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    .line 587
    :goto_0
    return-void

    .line 585
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    goto :goto_0
.end method

.method public setBaselineAligned(Z)V
    .locals 0
    .parameter "baselineAligned"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 419
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    .line 420
    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .locals 3
    .parameter "i"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 519
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 520
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    .line 524
    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "divider"

    .prologue
    const/4 v0, 0x0

    .line 251
    iget-object v1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_0

    .line 264
    :goto_0
    return-void

    .line 254
    :cond_0
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 255
    if-eqz p1, :cond_2

    .line 256
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 257
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    .line 262
    :goto_1
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 263
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    goto :goto_0

    .line 259
    :cond_2
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    .line 260
    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    goto :goto_1
.end method

.method public setDividerPadding(I)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 276
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    .line 277
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1696
    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_2

    .line 1697
    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 1698
    const v0, 0x800003

    or-int/2addr p1, v0

    .line 1701
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 1702
    or-int/lit8 p1, p1, 0x30

    .line 1705
    :cond_1
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1706
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1708
    :cond_2
    return-void
.end method

.method public setHorizontalGravity(I)V
    .locals 3
    .parameter "horizontalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const v2, 0x800007

    .line 1712
    and-int v0, p1, v2

    .line 1713
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_0

    .line 1714
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1715
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1717
    :cond_0
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .locals 0
    .parameter "enabled"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 446
    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    .line 447
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 1669
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 1670
    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    .line 1671
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1673
    :cond_0
    return-void
.end method

.method public setShowDividers(I)V
    .locals 1
    .parameter "showDividers"

    .prologue
    .line 226
    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-eq p1, v0, :cond_0

    .line 227
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 229
    :cond_0
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    .line 230
    return-void
.end method

.method public setVerticalGravity(I)V
    .locals 2
    .parameter "verticalGravity"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1721
    and-int/lit8 v0, p1, 0x70

    .line 1722
    .local v0, gravity:I
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_0

    .line 1723
    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    .line 1724
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 1726
    :cond_0
    return-void
.end method

.method public setWeightSum(F)V
    .locals 1
    .parameter "weightSum"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 577
    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    .line 578
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method
