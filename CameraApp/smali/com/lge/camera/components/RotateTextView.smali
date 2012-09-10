.class public Lcom/lge/camera/components/RotateTextView;
.super Landroid/widget/ImageButton;
.source "RotateTextView.java"


# static fields
.field private static final ANIMATION_SPEED:I = 0xf0

.field public static final BASE_TEXT_PADDING_RATE:F = 0.1f

.field public static final BASE_TEXT_SCALE_X_RATE:F = 0.1f

.field private static final DEBUG_ON:Z = false

.field public static final DEFAULT_TEXT_SCALE_X:F = 1.0f

.field public static final DEFAULT_TEXT_SHADOWRADIUS:F = 2.0f

.field public static final DEFAULT_TEXT_SIZE:I = 0x14

.field public static final ELLIPSIS_STRING:Ljava/lang/String; = "..."

.field public static final GRAVITY_BOTTOM:I = 0x4

.field public static final GRAVITY_CENTER:I = 0x11

.field public static final GRAVITY_CENTER_HORIZONTAL:I = 0x10

.field public static final GRAVITY_CENTER_VERTICAL:I = 0x1

.field public static final GRAVITY_LEFT:I = 0x20

.field public static final GRAVITY_RIGHT:I = 0x40

.field public static final GRAVITY_TOP:I = 0x2

.field public static final MAX_TEXT_LINES:I = 0x5

.field public static final PIVOT_CENTER:I = 0x7fffffff

.field public static final PORTRAIT_TEXT_WIDTH_CORRECTION_RATE:F = 0.09f

.field private static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEllipsisEnabled:Z

.field private mExpand4Rotate:I

.field private mLandscapeTextLines:[Ljava/lang/String;

.field private mPath:[Landroid/graphics/Path;

.field private mPortrait:Z

.field private mPortraitTextLines:[Ljava/lang/String;

.field private mRotatePivotLeft:I

.field private mRotatePivotTop:I

.field private mStartDegree:I

.field private mTargetDegree:I

.field private mText:Ljava/lang/String;

.field private mTextBasePadding:F

.field private mTextBuffer:Ljava/lang/StringBuffer;

.field private mTextColor:I

.field private mTextGravity:I

.field private mTextLines:[Ljava/lang/String;

.field private mTextPaddingBottom:I

.field private mTextPaddingLeft:I

.field private mTextPaddingRight:I

.field private mTextPaddingTop:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextScaleX:F

.field private mTextShadowColor:I

.field private mTextShadowRadius:F

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/camera/components/RotateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/camera/components/RotateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/high16 v10, -0x100

    const/high16 v9, 0x4000

    const/4 v8, 0x0

    const v7, 0x7fffffff

    const/4 v6, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput v6, p0, Lcom/lge/camera/components/RotateTextView;->mCurrentDegree:I

    .line 27
    iput v6, p0, Lcom/lge/camera/components/RotateTextView;->mStartDegree:I

    .line 28
    iput v6, p0, Lcom/lge/camera/components/RotateTextView;->mTargetDegree:I

    .line 30
    iput-boolean v6, p0, Lcom/lge/camera/components/RotateTextView;->mClockwise:Z

    .line 32
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/lge/camera/components/RotateTextView;->mAnimationStartTime:J

    .line 33
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/lge/camera/components/RotateTextView;->mAnimationEndTime:J

    .line 35
    iput v6, p0, Lcom/lge/camera/components/RotateTextView;->mExpand4Rotate:I

    .line 57
    const/16 v4, 0x14

    iput v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextSize:I

    .line 58
    const v4, -0x333334

    iput v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextColor:I

    .line 59
    iput v6, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingTop:I

    .line 60
    iput v6, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingBottom:I

    .line 61
    iput v6, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingLeft:I

    .line 62
    iput v6, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingRight:I

    .line 63
    const/16 v4, 0x11

    iput v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextGravity:I

    .line 64
    iput v10, p0, Lcom/lge/camera/components/RotateTextView;->mTextShadowColor:I

    .line 65
    iput v9, p0, Lcom/lge/camera/components/RotateTextView;->mTextShadowRadius:F

    .line 66
    iput-object v8, p0, Lcom/lge/camera/components/RotateTextView;->mText:Ljava/lang/String;

    .line 67
    iput-object v8, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    .line 68
    iput-object v8, p0, Lcom/lge/camera/components/RotateTextView;->mLandscapeTextLines:[Ljava/lang/String;

    .line 69
    iput-object v8, p0, Lcom/lge/camera/components/RotateTextView;->mPortraitTextLines:[Ljava/lang/String;

    .line 70
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextBuffer:Ljava/lang/StringBuffer;

    .line 71
    const/4 v4, 0x5

    new-array v4, v4, [Landroid/graphics/Path;

    iput-object v4, p0, Lcom/lge/camera/components/RotateTextView;->mPath:[Landroid/graphics/Path;

    .line 72
    iput v7, p0, Lcom/lge/camera/components/RotateTextView;->mRotatePivotLeft:I

    .line 73
    iput v7, p0, Lcom/lge/camera/components/RotateTextView;->mRotatePivotTop:I

    .line 74
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    .line 76
    iput-boolean v6, p0, Lcom/lge/camera/components/RotateTextView;->mEllipsisEnabled:Z

    .line 77
    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextScaleX:F

    .line 618
    iput-boolean v6, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    .line 91
    invoke-virtual {p0, v6}, Lcom/lge/camera/components/RotateTextView;->setFocusable(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/lge/camera/R$styleable;->Rotatable:[I

    invoke-virtual {v4, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 94
    .local v3, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 95
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 96
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 97
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 140
    :pswitch_0
    const-string v4, "CameraApp"

    const-string v5, "No matched attr"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :pswitch_1
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 100
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/lge/camera/components/RotateTextView;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :pswitch_2
    const/16 v4, 0x14

    invoke-virtual {v3, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextSize:I

    goto :goto_1

    .line 107
    :pswitch_3
    const v4, -0x333334

    invoke-virtual {v3, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextColor:I

    goto :goto_1

    .line 110
    :pswitch_4
    invoke-virtual {v3, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingTop:I

    goto :goto_1

    .line 113
    :pswitch_5
    invoke-virtual {v3, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingBottom:I

    goto :goto_1

    .line 116
    :pswitch_6
    invoke-virtual {v3, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingLeft:I

    goto :goto_1

    .line 119
    :pswitch_7
    invoke-virtual {v3, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingRight:I

    goto :goto_1

    .line 122
    :pswitch_8
    const/16 v4, 0x11

    invoke-virtual {v3, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextGravity:I

    goto :goto_1

    .line 125
    :pswitch_9
    invoke-virtual {v3, v1, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextShadowColor:I

    goto :goto_1

    .line 128
    :pswitch_a
    invoke-virtual {v3, v1, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextShadowRadius:F

    goto :goto_1

    .line 131
    :pswitch_b
    invoke-virtual {v3, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateTextView;->mRotatePivotLeft:I

    goto :goto_1

    .line 134
    :pswitch_c
    invoke-virtual {v3, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/components/RotateTextView;->mRotatePivotTop:I

    goto :goto_1

    .line 137
    :pswitch_d
    invoke-virtual {v3, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/lge/camera/components/RotateTextView;->mEllipsisEnabled:Z

    goto :goto_1

    .line 145
    .end local v1           #attr:I
    :cond_1
    iget v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextSize:I

    int-to-float v4, v4

    const v5, 0x3dcccccd

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    .line 146
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private getDesiredHeight()I
    .locals 4

    .prologue
    .line 608
    iget-object v2, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v0

    .line 609
    .local v0, textHeight:F
    const/4 v1, 0x0

    .line 610
    .local v1, totalTextLineHeight:F
    iget-object v2, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 611
    iget-object v2, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    array-length v2, v2

    int-to-float v2, v2

    mul-float v1, v0, v2

    .line 612
    iget v2, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingTop:I

    int-to-float v2, v2

    iget v3, p0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingBottom:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 615
    :cond_0
    float-to-int v2, v1

    return v2
.end method

.method private getDesiredWidth()I
    .locals 5

    .prologue
    .line 594
    const/4 v2, 0x0

    .line 595
    .local v2, width:F
    iget-object v3, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 596
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 597
    iget-object v3, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 598
    .local v1, textWidth:F
    const v3, 0x3db851ec

    mul-float/2addr v3, v1

    add-float/2addr v1, v3

    .line 599
    iget v3, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingRight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    add-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 600
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    .end local v0           #i:I
    .end local v1           #textWidth:F
    :cond_0
    float-to-int v3, v2

    return v3
.end method

.method private mergeStrings([Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 3
    .parameter "strings"

    .prologue
    .line 647
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 648
    .local v1, mergedText:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 649
    if-eqz v0, :cond_0

    .line 650
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 652
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 648
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 655
    :cond_1
    return-object v1
.end method

.method private setTextLines([Ljava/lang/String;)V
    .locals 3
    .parameter "textLines"

    .prologue
    .line 634
    if-eqz p1, :cond_1

    .line 635
    iput-object p1, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    .line 636
    iget-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 637
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 638
    iget-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mPath:[Landroid/graphics/Path;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mPath:[Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    aput-object v2, v1, v0

    .line 637
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 644
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method private setTextPaint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 481
    iget-object v0, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/camera/components/RotateTextView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 482
    iget-object v0, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/camera/components/RotateTextView;->mTextScaleX:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 483
    iget-object v0, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/camera/components/RotateTextView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 484
    iget-object v0, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 485
    iget-object v0, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/camera/components/RotateTextView;->mTextShadowRadius:F

    iget v2, p0, Lcom/lge/camera/components/RotateTextView;->mTextShadowColor:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 486
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateTextView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 489
    :cond_0
    return-void
.end method

.method private wordWrap(I)[Ljava/lang/String;
    .locals 14
    .parameter "maxWidth"

    .prologue
    const/16 v13, 0x20

    const/4 v12, 0x5

    const/4 v11, 0x0

    .line 659
    iget-object v8, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/lge/camera/components/RotateTextView;->mergeStrings([Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 660
    .local v4, mergedText:Ljava/lang/StringBuffer;
    int-to-float v8, p1

    iget v9, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingLeft:I

    int-to-float v9, v9

    iget v10, p0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingRight:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int p1, v8

    .line 661
    int-to-float v8, p1

    int-to-float v9, p1

    const v10, 0x3db851ec

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int p1, v8

    .line 662
    const/4 v2, 0x0

    .line 663
    .local v2, lineLength:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v7, textLines:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_2

    if-ge v1, v12, :cond_2

    .line 665
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_0

    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v8

    if-ne v8, v13, :cond_0

    .line 666
    invoke-virtual {v4, v11}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 668
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 670
    .local v5, remainText:Ljava/lang/String;
    new-array v3, v12, [F

    .line 672
    .local v3, measuredWidth:[F
    add-int/lit8 p1, p1, 0x14

    .line 673
    iget-object v8, p0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    int-to-float v10, p1

    invoke-virtual {v8, v5, v9, v10, v3}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v2

    .line 675
    invoke-virtual {v4, v11, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, currentLine:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 677
    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 678
    if-gez v2, :cond_1

    .line 679
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 682
    :cond_1
    invoke-virtual {v4, v11, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-virtual {v4, v11, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 664
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 686
    .end local v0           #currentLine:Ljava/lang/String;
    .end local v3           #measuredWidth:[F
    .end local v5           #remainText:Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v6, v8, [Ljava/lang/String;

    .line 687
    .local v6, result:[Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 688
    return-object v6
.end method


# virtual methods
.method public AdjustFontSize(I)I
    .locals 20
    .parameter "size"

    .prologue
    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 180
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 181
    .local v14, targetBound:Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 182
    .local v12, sourceBound:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 184
    .local v4, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingTop:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    move/from16 v18, v0

    add-float v11, v17, v18

    .line 185
    .local v11, paddingTop:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingLeft:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    move/from16 v18, v0

    add-float v9, v17, v18

    .line 186
    .local v9, paddingLeft:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingBottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    move/from16 v18, v0

    add-float v8, v17, v18

    .line 187
    .local v8, paddingBottom:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingRight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    move/from16 v18, v0

    add-float v10, v17, v18

    .line 189
    .local v10, paddingRight:F
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v14, Landroid/graphics/Rect;->left:I

    .line 190
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v14, Landroid/graphics/Rect;->top:I

    .line 191
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v18, v9, v10

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Landroid/graphics/Rect;->right:I

    .line 192
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v18, v11, v8

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Landroid/graphics/Rect;->bottom:I

    .line 193
    const/4 v4, 0x0

    .line 195
    const/4 v6, 0x0

    .line 196
    .local v6, maxLength:I
    const/4 v7, 0x0

    .line 198
    .local v7, maxString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v13, v2, v3

    .line 199
    .local v13, strLine:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v6, :cond_0

    .line 200
    move-object v7, v13

    .line 201
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    .line 198
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    .end local v13           #strLine:Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_5

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v17

    if-lez v17, :cond_5

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v17

    if-lez v17, :cond_5

    .line 206
    move/from16 v16, p1

    .line 207
    .local v16, tmpSize:I
    const/16 v15, 0xa

    .line 209
    .local v15, tmpScaleX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/RotateTextView;->mTextScaleX:F

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextScaleX:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v7, v1, v6, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 214
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 215
    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3dcccccd

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 217
    :goto_1
    invoke-virtual {v14, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 218
    const/16 v17, 0x7

    move/from16 v0, v17

    if-ge v15, v0, :cond_3

    .line 228
    :cond_2
    :goto_2
    invoke-virtual {v14, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 229
    add-int/lit8 v16, v16, -0x1

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v7, v1, v6, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 232
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2

    .line 221
    :cond_3
    add-int/lit8 v15, v15, -0x1

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    int-to-float v0, v15

    move/from16 v18, v0

    const v19, 0x3dcccccd

    mul-float v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v7, v1, v6, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 224
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 225
    int-to-float v0, v15

    move/from16 v17, v0

    const v18, 0x3dcccccd

    mul-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/RotateTextView;->mTextScaleX:F

    goto :goto_1

    .line 235
    :cond_4
    if-lez v16, :cond_5

    .line 236
    move/from16 p1, v16

    .line 241
    .end local v15           #tmpScaleX:I
    .end local v16           #tmpSize:I
    :cond_5
    const/4 v14, 0x0

    .line 244
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #layoutParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #len$:I
    .end local v6           #maxLength:I
    .end local v7           #maxString:Ljava/lang/String;
    .end local v8           #paddingBottom:F
    .end local v9           #paddingLeft:F
    .end local v10           #paddingRight:F
    .end local v11           #paddingTop:F
    .end local v12           #sourceBound:Landroid/graphics/Rect;
    .end local v14           #targetBound:Landroid/graphics/Rect;
    :cond_6
    return p1
.end method

.method public AdjustFontSize()V
    .locals 3

    .prologue
    .line 170
    iget v1, p0, Lcom/lge/camera/components/RotateTextView;->mTextSize:I

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/RotateTextView;->AdjustFontSize(I)I

    move-result v0

    .line 171
    .local v0, textSize:I
    iget v1, p0, Lcom/lge/camera/components/RotateTextView;->mTextSize:I

    if-eq v0, v1, :cond_0

    .line 172
    iput v0, p0, Lcom/lge/camera/components/RotateTextView;->mTextSize:I

    .line 173
    iget v1, p0, Lcom/lge/camera/components/RotateTextView;->mTextSize:I

    int-to-float v1, v1

    const v2, 0x3dcccccd

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    .line 174
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateTextView;->invalidate()V

    .line 176
    :cond_0
    return-void
.end method

.method public getDegree()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/lge/camera/components/RotateTextView;->mTargetDegree:I

    return v0
.end method

.method public getTextPaintHeight()I
    .locals 6

    .prologue
    .line 520
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 521
    .local v0, p:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 522
    .local v1, textBounds:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/lge/camera/components/RotateTextView;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/camera/components/RotateTextView;->mText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 523
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 525
    .local v2, textHeight:I
    return v2
.end method

.method public getTextPaintWidth()I
    .locals 2

    .prologue
    .line 514
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 515
    .local v0, p:Landroid/graphics/Paint;
    iget v1, p0, Lcom/lge/camera/components/RotateTextView;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 516
    iget-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    return v1
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 529
    iget v0, p0, Lcom/lge/camera/components/RotateTextView;->mTextSize:I

    return v0
.end method

.method public invalidate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 493
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/camera/components/RotateTextView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/lge/camera/components/RotateTextView;->invalidate(IIII)V

    .line 494
    return-void
.end method

.method public invalidate(IIII)V
    .locals 4
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 507
    iget v0, p0, Lcom/lge/camera/components/RotateTextView;->mExpand4Rotate:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/lge/camera/components/RotateTextView;->mExpand4Rotate:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/lge/camera/components/RotateTextView;->mExpand4Rotate:I

    add-int/2addr v2, p3

    iget v3, p0, Lcom/lge/camera/components/RotateTextView;->mExpand4Rotate:I

    add-int/2addr v3, p4

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/ImageButton;->invalidate(IIII)V

    .line 511
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "dirty"

    .prologue
    .line 498
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/lge/camera/components/RotateTextView;->mExpand4Rotate:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 499
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/lge/camera/components/RotateTextView;->mExpand4Rotate:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 500
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/lge/camera/components/RotateTextView;->mExpand4Rotate:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 501
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/lge/camera/components/RotateTextView;->mExpand4Rotate:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 502
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->invalidate(Landroid/graphics/Rect;)V

    .line 503
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 36
    .parameter "canvas"

    .prologue
    .line 319
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mCurrentDegree:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTargetDegree:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_4

    const/4 v13, 0x1

    .line 320
    .local v13, needRotate:Z
    :goto_0
    if-eqz v13, :cond_0

    .line 321
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v27

    .line 322
    .local v27, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/camera/components/RotateTextView;->mAnimationEndTime:J

    move-wide/from16 v32, v0

    cmp-long v32, v27, v32

    if-gez v32, :cond_7

    .line 323
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/camera/components/RotateTextView;->mAnimationStartTime:J

    move-wide/from16 v32, v0

    sub-long v32, v27, v32

    move-wide/from16 v0, v32

    long-to-int v8, v0

    .line 324
    .local v8, deltaTime:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mStartDegree:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/RotateTextView;->mClockwise:Z

    move/from16 v33, v0

    if-eqz v33, :cond_5

    .end local v8           #deltaTime:I
    :goto_1
    mul-int/lit16 v0, v8, 0xf0

    move/from16 v33, v0

    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v33, v0

    add-int v7, v32, v33

    .line 326
    .local v7, degree:I
    if-ltz v7, :cond_6

    rem-int/lit16 v7, v7, 0x168

    .line 327
    :goto_2
    move-object/from16 v0, p0

    iput v7, v0, Lcom/lge/camera/components/RotateTextView;->mCurrentDegree:I

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateTextView;->invalidate()V

    .line 335
    .end local v7           #degree:I
    .end local v27           #time:J
    :cond_0
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateTextView;->getWidth()I

    move-result v31

    .line 336
    .local v31, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateTextView;->getHeight()I

    move-result v30

    .line 337
    .local v30, viewHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mRotatePivotLeft:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v18, v0

    .line 338
    .local v18, pivotX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mRotatePivotTop:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v19, v0

    .line 340
    .local v19, pivotY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mRotatePivotLeft:I

    move/from16 v32, v0

    const v33, 0x7fffffff

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    .line 341
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x4000

    div-float v18, v32, v33

    .line 344
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mRotatePivotTop:I

    move/from16 v32, v0

    const v33, 0x7fffffff

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    .line 345
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x4000

    div-float v19, v32, v33

    .line 355
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mCurrentDegree:I

    move/from16 v32, v0

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 357
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mText:Ljava/lang/String;

    move-object/from16 v32, v0

    if-eqz v32, :cond_9

    .line 360
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/components/RotateTextView;->setTextPaint()V

    .line 362
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingTop:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    move/from16 v33, v0

    add-float v17, v32, v33

    .line 363
    .local v17, paddingTop:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingLeft:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    move/from16 v33, v0

    add-float v15, v32, v33

    .line 364
    .local v15, paddingLeft:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingBottom:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    move/from16 v33, v0

    add-float v14, v32, v33

    .line 365
    .local v14, paddingBottom:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaddingRight:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    move/from16 v33, v0

    add-float v16, v32, v33

    .line 367
    .local v16, paddingRight:F
    const/16 v26, 0x0

    .line 368
    .local v26, textWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v23

    .line 370
    .local v23, textHeight:F
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v32, v17

    sub-float v21, v32, v14

    .line 371
    .local v21, textAreaHeight:F
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v32, v15

    sub-float v22, v32, v16

    .line 372
    .local v22, textAreaWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v29, v23, v32

    .line 374
    .local v29, totalTextLineHeight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Paint;->ascent()F

    move-result v32

    move/from16 v0, v32

    neg-float v5, v0

    .line 375
    .local v5, aboveBaseLine:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Paint;->descent()F

    move-result v6

    .line 377
    .local v6, belowBaseLine:F
    const/4 v10, 0x0

    .local v10, i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v10, v0, :cond_9

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    move-object/from16 v33, v0

    aget-object v33, v33, v10

    invoke-virtual/range {v32 .. v33}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v26

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 380
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/RotateTextView;->mEllipsisEnabled:Z

    move/from16 v32, v0

    if-eqz v32, :cond_8

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v33, v26, v15

    add-float v33, v33, v16

    cmpg-float v32, v32, v33

    if-gez v32, :cond_8

    .line 381
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v32, v15

    sub-float v12, v32, v16

    .line 382
    .local v12, maxWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    move-object/from16 v33, v0

    aget-object v33, v33, v10

    const/16 v34, 0x1

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v12, v3}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v11

    .line 383
    .local v11, length:I
    const/16 v32, 0x2

    move/from16 v0, v32

    if-le v11, v0, :cond_3

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    move-object/from16 v33, v0

    aget-object v33, v33, v10

    const/16 v34, 0x0

    add-int/lit8 v35, v11, -0x2

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v32, v0

    const-string v33, "..."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v26

    .line 393
    .end local v11           #length:I
    .end local v12           #maxWidth:F
    :cond_3
    :goto_5
    const/16 v24, 0x0

    .line 394
    .local v24, textOffsetX:F
    const/16 v25, 0x0

    .line 396
    .local v25, textOffsetY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextGravity:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x2

    if-eqz v32, :cond_a

    .line 397
    add-float v25, v17, v5

    .line 398
    int-to-float v0, v10

    move/from16 v32, v0

    mul-float v32, v32, v23

    add-float v25, v25, v32

    .line 420
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextGravity:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x20

    if-eqz v32, :cond_c

    .line 421
    move/from16 v24, v15

    .line 435
    :goto_7
    const v32, 0x3e4ccccd

    mul-float v20, v26, v32

    .line 437
    .local v20, preventClippingMargin:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mPath:[Landroid/graphics/Path;

    move-object/from16 v32, v0

    aget-object v32, v32, v10

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Path;->reset()V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mPath:[Landroid/graphics/Path;

    move-object/from16 v32, v0

    aget-object v32, v32, v10

    move-object/from16 v0, v32

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mPath:[Landroid/graphics/Path;

    move-object/from16 v32, v0

    aget-object v32, v32, v10

    add-float v33, v24, v26

    add-float v33, v33, v20

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 377
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 319
    .end local v5           #aboveBaseLine:F
    .end local v6           #belowBaseLine:F
    .end local v10           #i:I
    .end local v13           #needRotate:Z
    .end local v14           #paddingBottom:F
    .end local v15           #paddingLeft:F
    .end local v16           #paddingRight:F
    .end local v17           #paddingTop:F
    .end local v18           #pivotX:F
    .end local v19           #pivotY:F
    .end local v20           #preventClippingMargin:F
    .end local v21           #textAreaHeight:F
    .end local v22           #textAreaWidth:F
    .end local v23           #textHeight:F
    .end local v24           #textOffsetX:F
    .end local v25           #textOffsetY:F
    .end local v26           #textWidth:F
    .end local v29           #totalTextLineHeight:F
    .end local v30           #viewHeight:I
    .end local v31           #viewWidth:I
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 324
    .restart local v8       #deltaTime:I
    .restart local v13       #needRotate:Z
    .restart local v27       #time:J
    :cond_5
    neg-int v8, v8

    goto/16 :goto_1

    .line 326
    .end local v8           #deltaTime:I
    .restart local v7       #degree:I
    :cond_6
    rem-int/lit16 v0, v7, 0x168

    move/from16 v32, v0

    move/from16 v0, v32

    add-int/lit16 v7, v0, 0x168

    goto/16 :goto_2

    .line 330
    .end local v7           #degree:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTargetDegree:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/RotateTextView;->mCurrentDegree:I

    .line 331
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 390
    .end local v27           #time:J
    .restart local v5       #aboveBaseLine:F
    .restart local v6       #belowBaseLine:F
    .restart local v10       #i:I
    .restart local v14       #paddingBottom:F
    .restart local v15       #paddingLeft:F
    .restart local v16       #paddingRight:F
    .restart local v17       #paddingTop:F
    .restart local v18       #pivotX:F
    .restart local v19       #pivotY:F
    .restart local v21       #textAreaHeight:F
    .restart local v22       #textAreaWidth:F
    .restart local v23       #textHeight:F
    .restart local v26       #textWidth:F
    .restart local v29       #totalTextLineHeight:F
    .restart local v30       #viewHeight:I
    .restart local v31       #viewWidth:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    move-object/from16 v33, v0

    aget-object v33, v33, v10

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 474
    .end local v5           #aboveBaseLine:F
    .end local v6           #belowBaseLine:F
    .end local v10           #i:I
    .end local v13           #needRotate:Z
    .end local v14           #paddingBottom:F
    .end local v15           #paddingLeft:F
    .end local v16           #paddingRight:F
    .end local v17           #paddingTop:F
    .end local v18           #pivotX:F
    .end local v19           #pivotY:F
    .end local v21           #textAreaHeight:F
    .end local v22           #textAreaWidth:F
    .end local v23           #textHeight:F
    .end local v26           #textWidth:F
    .end local v29           #totalTextLineHeight:F
    .end local v30           #viewHeight:I
    .end local v31           #viewWidth:I
    :catch_0
    move-exception v9

    .line 475
    .local v9, e:Ljava/lang/Exception;
    const-string v32, "CameraApp"

    const-string v33, "RotateTextView onDraw exception: %s"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object v9, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 478
    .end local v9           #e:Ljava/lang/Exception;
    :cond_9
    return-void

    .line 400
    .restart local v5       #aboveBaseLine:F
    .restart local v6       #belowBaseLine:F
    .restart local v10       #i:I
    .restart local v13       #needRotate:Z
    .restart local v14       #paddingBottom:F
    .restart local v15       #paddingLeft:F
    .restart local v16       #paddingRight:F
    .restart local v17       #paddingTop:F
    .restart local v18       #pivotX:F
    .restart local v19       #pivotY:F
    .restart local v21       #textAreaHeight:F
    .restart local v22       #textAreaWidth:F
    .restart local v23       #textHeight:F
    .restart local v24       #textOffsetX:F
    .restart local v25       #textOffsetY:F
    .restart local v26       #textWidth:F
    .restart local v29       #totalTextLineHeight:F
    .restart local v30       #viewHeight:I
    .restart local v31       #viewWidth:I
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextGravity:I

    move/from16 v32, v0

    and-int/lit8 v32, v32, 0x4

    if-eqz v32, :cond_b

    .line 401
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v32, v14

    sub-float v25, v32, v6

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    add-int/lit8 v32, v32, -0x1

    sub-int v32, v32, v10

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    mul-float v32, v32, v23

    sub-float v25, v25, v32

    goto/16 :goto_6

    .line 406
    :cond_b
    sub-float v32, v21, v29

    const/high16 v33, 0x4000

    div-float v32, v32, v33

    add-float v32, v32, v17

    add-float v25, v32, v5

    .line 407
    int-to-float v0, v10

    move/from16 v32, v0

    mul-float v32, v32, v23

    add-float v25, v25, v32

    goto/16 :goto_6

    .line 423
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateTextView;->mTextGravity:I

    move/from16 v32, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit8 v32, v32, 0x40

    if-eqz v32, :cond_d

    .line 424
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v32, v32, v26

    sub-float v24, v32, v16

    goto/16 :goto_7

    .line 428
    :cond_d
    sub-float v32, v22, v26

    const/high16 v33, 0x4000

    div-float v32, v32, v33

    add-float v24, v32, v15

    goto/16 :goto_7
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v8, 0x4000

    const/high16 v7, -0x8000

    .line 534
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 535
    .local v4, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 536
    .local v1, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 537
    .local v5, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 541
    .local v2, heightSize:I
    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->setTextPaint()V

    .line 543
    if-ne v4, v8, :cond_2

    .line 545
    move v3, v5

    .line 567
    .local v3, width:I
    :cond_0
    :goto_0
    if-ne v1, v8, :cond_5

    .line 569
    move v0, v2

    .line 590
    .local v0, height:I
    :cond_1
    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/lge/camera/components/RotateTextView;->setMeasuredDimension(II)V

    .line 591
    return-void

    .line 547
    .end local v0           #height:I
    .end local v3           #width:I
    :cond_2
    iget-boolean v6, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    if-eqz v6, :cond_4

    .line 548
    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->getDesiredHeight()I

    move-result v3

    .line 554
    .restart local v3       #width:I
    :goto_2
    if-ne v4, v7, :cond_0

    .line 555
    iget-boolean v6, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    if-nez v6, :cond_3

    .line 556
    if-le v3, v5, :cond_3

    .line 557
    invoke-direct {p0, v5}, Lcom/lge/camera/components/RotateTextView;->wordWrap(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/components/RotateTextView;->mLandscapeTextLines:[Ljava/lang/String;

    .line 558
    iget-object v6, p0, Lcom/lge/camera/components/RotateTextView;->mLandscapeTextLines:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/lge/camera/components/RotateTextView;->setTextLines([Ljava/lang/String;)V

    .line 559
    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->getDesiredWidth()I

    move-result v3

    .line 563
    :cond_3
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 551
    .end local v3           #width:I
    :cond_4
    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->getDesiredWidth()I

    move-result v3

    .restart local v3       #width:I
    goto :goto_2

    .line 571
    :cond_5
    iget-boolean v6, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    if-eqz v6, :cond_7

    .line 572
    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->getDesiredWidth()I

    move-result v0

    .line 578
    .restart local v0       #height:I
    :goto_3
    if-ne v1, v7, :cond_1

    .line 579
    iget-boolean v6, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    if-eqz v6, :cond_6

    .line 580
    if-le v0, v2, :cond_6

    .line 581
    invoke-direct {p0, v2}, Lcom/lge/camera/components/RotateTextView;->wordWrap(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/components/RotateTextView;->mPortraitTextLines:[Ljava/lang/String;

    .line 582
    iget-object v6, p0, Lcom/lge/camera/components/RotateTextView;->mPortraitTextLines:[Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/lge/camera/components/RotateTextView;->setTextLines([Ljava/lang/String;)V

    .line 583
    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->getDesiredWidth()I

    move-result v0

    .line 586
    :cond_6
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 575
    .end local v0           #height:I
    :cond_7
    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->getDesiredHeight()I

    move-result v0

    .restart local v0       #height:I
    goto :goto_3
.end method

.method public setDegree(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 274
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/components/RotateTextView;->setDegree(IZ)V

    .line 275
    return-void
.end method

.method public setDegree(IZ)V
    .locals 5
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 279
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 280
    :goto_0
    iget v1, p0, Lcom/lge/camera/components/RotateTextView;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 305
    :goto_1
    return-void

    .line 279
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 284
    :cond_1
    if-eqz p2, :cond_3

    .line 285
    iput p1, p0, Lcom/lge/camera/components/RotateTextView;->mTargetDegree:I

    .line 286
    iget v1, p0, Lcom/lge/camera/components/RotateTextView;->mCurrentDegree:I

    iput v1, p0, Lcom/lge/camera/components/RotateTextView;->mStartDegree:I

    .line 290
    :goto_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lge/camera/components/RotateTextView;->mAnimationStartTime:J

    .line 292
    iget v1, p0, Lcom/lge/camera/components/RotateTextView;->mTargetDegree:I

    iget v2, p0, Lcom/lge/camera/components/RotateTextView;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 293
    .local v0, diff:I
    if-ltz v0, :cond_4

    .line 297
    :goto_3
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 299
    :cond_2
    if-ltz v0, :cond_5

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Lcom/lge/camera/components/RotateTextView;->mClockwise:Z

    .line 301
    iget-wide v1, p0, Lcom/lge/camera/components/RotateTextView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0xf0

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/lge/camera/components/RotateTextView;->mAnimationEndTime:J

    .line 304
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateTextView;->invalidate()V

    goto :goto_1

    .line 288
    .end local v0           #diff:I
    :cond_3
    iput p1, p0, Lcom/lge/camera/components/RotateTextView;->mCurrentDegree:I

    iput p1, p0, Lcom/lge/camera/components/RotateTextView;->mStartDegree:I

    iput p1, p0, Lcom/lge/camera/components/RotateTextView;->mTargetDegree:I

    goto :goto_2

    .line 293
    .restart local v0       #diff:I
    :cond_4
    add-int/lit16 v0, v0, 0x168

    goto :goto_3

    .line 299
    :cond_5
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public setPortrait(Z)V
    .locals 1
    .parameter "portrait"

    .prologue
    .line 620
    if-eqz p1, :cond_1

    .line 621
    iget-object v0, p0, Lcom/lge/camera/components/RotateTextView;->mPortraitTextLines:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/camera/components/RotateTextView;->setTextLines([Ljava/lang/String;)V

    .line 627
    :goto_0
    iget-boolean v0, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    if-eq v0, p1, :cond_0

    .line 628
    iput-boolean p1, p0, Lcom/lge/camera/components/RotateTextView;->mPortrait:Z

    .line 629
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateTextView;->invalidate()V

    .line 631
    :cond_0
    return-void

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/RotateTextView;->mLandscapeTextLines:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lge/camera/components/RotateTextView;->setTextLines([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 149
    if-nez p1, :cond_1

    .line 150
    const-string v1, ""

    iput-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mText:Ljava/lang/String;

    .line 155
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mText:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mPath:[Landroid/graphics/Path;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mPath:[Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    aput-object v2, v1, v0

    .line 157
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    .end local v0           #i:I
    :cond_1
    iput-object p1, p0, Lcom/lge/camera/components/RotateTextView;->mText:Ljava/lang/String;

    goto :goto_0

    .line 162
    .restart local v0       #i:I
    :cond_2
    invoke-direct {p0}, Lcom/lge/camera/components/RotateTextView;->setTextPaint()V

    .line 164
    iget-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mTextLines:[Ljava/lang/String;

    iput-object v1, p0, Lcom/lge/camera/components/RotateTextView;->mLandscapeTextLines:[Ljava/lang/String;

    .line 166
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateTextView;->invalidate()V

    .line 167
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 254
    iput p1, p0, Lcom/lge/camera/components/RotateTextView;->mTextColor:I

    .line 255
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateTextView;->invalidate()V

    .line 256
    return-void
.end method

.method public setTextGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 259
    iput p1, p0, Lcom/lge/camera/components/RotateTextView;->mTextGravity:I

    .line 260
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateTextView;->invalidate()V

    .line 261
    return-void
.end method

.method public setTextShadowColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 264
    iput p1, p0, Lcom/lge/camera/components/RotateTextView;->mTextShadowColor:I

    .line 265
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateTextView;->invalidate()V

    .line 266
    return-void
.end method

.method public setTextShadowRadius(F)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 269
    iput p1, p0, Lcom/lge/camera/components/RotateTextView;->mTextShadowRadius:F

    .line 270
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateTextView;->invalidate()V

    .line 271
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 248
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/RotateTextView;->AdjustFontSize(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/RotateTextView;->mTextSize:I

    .line 249
    iget v0, p0, Lcom/lge/camera/components/RotateTextView;->mTextSize:I

    int-to-float v0, v0

    const v1, 0x3dcccccd

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/RotateTextView;->mTextBasePadding:F

    .line 250
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateTextView;->invalidate()V

    .line 251
    return-void
.end method
