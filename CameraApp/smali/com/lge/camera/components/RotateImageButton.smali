.class public Lcom/lge/camera/components/RotateImageButton;
.super Landroid/widget/ImageButton;
.source "RotateImageButton.java"


# static fields
.field private static final ANIMATION_SPEED:I = 0xf0

.field public static final BASE_TEXT_PADDING_RATE:F = 0.1f

.field public static final BASE_TEXT_SCALE_X_RATE:F = 0.1f

.field private static final DEBUG_ON:Z = false

.field public static final DEFAULT_TEXT_SCALE_X:F = 1.0f

.field public static final DEFAULT_TEXT_SHADOWRADIUS:F = 2.0f

.field public static final DEFAULT_TEXT_SIZE:I = 0x14

.field private static final DIAGONAL_FACTOR:F = 1.41421f

.field public static final ELLIPSIS_STRING:Ljava/lang/String; = "..."

.field public static final GRAVITY_BOTTOM:I = 0x4

.field public static final GRAVITY_CENTER:I = 0x11

.field public static final GRAVITY_CENTER_HORIZONTAL:I = 0x10

.field public static final GRAVITY_CENTER_VERTICAL:I = 0x1

.field public static final GRAVITY_LEFT:I = 0x20

.field public static final GRAVITY_RIGHT:I = 0x40

.field public static final GRAVITY_TOP:I = 0x2

.field public static final MAX_TEXT_LINES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEllipsisEnabled:Z

.field private mExpand4Rotate:I

.field private mPath:[Landroid/graphics/Path;

.field private mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mRotateBgResource:I

.field private mRotateIconOnly:Z

.field private mRotateInsideView:Z

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
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/camera/components/RotateImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v11, 0x11

    const v10, -0x333334

    const/high16 v9, -0x100

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput v7, p0, Lcom/lge/camera/components/RotateImageButton;->mCurrentDegree:I

    .line 30
    iput v7, p0, Lcom/lge/camera/components/RotateImageButton;->mStartDegree:I

    .line 31
    iput v7, p0, Lcom/lge/camera/components/RotateImageButton;->mTargetDegree:I

    .line 33
    iput-boolean v7, p0, Lcom/lge/camera/components/RotateImageButton;->mClockwise:Z

    .line 35
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/lge/camera/components/RotateImageButton;->mAnimationStartTime:J

    .line 36
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/lge/camera/components/RotateImageButton;->mAnimationEndTime:J

    .line 38
    iput v7, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    .line 59
    const/16 v5, 0x14

    iput v5, p0, Lcom/lge/camera/components/RotateImageButton;->mTextSize:I

    .line 60
    iput v10, p0, Lcom/lge/camera/components/RotateImageButton;->mTextColor:I

    .line 61
    iput v7, p0, Lcom/lge/camera/components/RotateImageButton;->mTextPaddingTop:I

    .line 62
    iput v7, p0, Lcom/lge/camera/components/RotateImageButton;->mTextPaddingBottom:I

    .line 63
    iput v7, p0, Lcom/lge/camera/components/RotateImageButton;->mTextPaddingLeft:I

    .line 64
    iput v7, p0, Lcom/lge/camera/components/RotateImageButton;->mTextPaddingRight:I

    .line 65
    iput v11, p0, Lcom/lge/camera/components/RotateImageButton;->mTextGravity:I

    .line 66
    iput v9, p0, Lcom/lge/camera/components/RotateImageButton;->mTextShadowColor:I

    .line 67
    iput v8, p0, Lcom/lge/camera/components/RotateImageButton;->mTextShadowRadius:F

    .line 68
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lge/camera/components/RotateImageButton;->mText:Ljava/lang/String;

    .line 69
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lge/camera/components/RotateImageButton;->mTextLines:[Ljava/lang/String;

    .line 70
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v5, p0, Lcom/lge/camera/components/RotateImageButton;->mTextBuffer:Ljava/lang/StringBuffer;

    .line 71
    const/4 v5, 0x5

    new-array v5, v5, [Landroid/graphics/Path;

    iput-object v5, p0, Lcom/lge/camera/components/RotateImageButton;->mPath:[Landroid/graphics/Path;

    .line 72
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    .line 74
    iput-boolean v7, p0, Lcom/lge/camera/components/RotateImageButton;->mEllipsisEnabled:Z

    .line 75
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/lge/camera/components/RotateImageButton;->mTextScaleX:F

    .line 269
    iput-boolean v7, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateInsideView:Z

    .line 751
    iput-boolean v7, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateIconOnly:Z

    .line 89
    invoke-virtual {p0, v7}, Lcom/lge/camera/components/RotateImageButton;->setFocusable(Z)V

    .line 91
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/lge/camera/R$styleable;->Rotatable:[I

    invoke-virtual {v5, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 92
    .local v3, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 93
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 94
    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 95
    .local v1, attr:I
    packed-switch v1, :pswitch_data_0

    .line 139
    const-string v5, "CameraApp"

    const-string v6, "No matched attr"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :pswitch_0
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 100
    :pswitch_1
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, temp:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 102
    invoke-virtual {p0, v4}, Lcom/lge/camera/components/RotateImageButton;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 106
    .end local v4           #temp:Ljava/lang/String;
    :pswitch_2
    const/16 v5, 0x14

    invoke-virtual {v3, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/lge/camera/components/RotateImageButton;->mTextSize:I

    goto :goto_1

    .line 109
    :pswitch_3
    invoke-virtual {v3, v1, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/lge/camera/components/RotateImageButton;->mTextColor:I

    goto :goto_1

    .line 112
    :pswitch_4
    invoke-virtual {v3, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/lge/camera/components/RotateImageButton;->mTextPaddingTop:I

    goto :goto_1

    .line 115
    :pswitch_5
    invoke-virtual {v3, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/lge/camera/components/RotateImageButton;->mTextPaddingBottom:I

    goto :goto_1

    .line 118
    :pswitch_6
    invoke-virtual {v3, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/lge/camera/components/RotateImageButton;->mTextPaddingLeft:I

    goto :goto_1

    .line 121
    :pswitch_7
    invoke-virtual {v3, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/lge/camera/components/RotateImageButton;->mTextPaddingRight:I

    goto :goto_1

    .line 124
    :pswitch_8
    invoke-virtual {v3, v1, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/lge/camera/components/RotateImageButton;->mTextGravity:I

    goto :goto_1

    .line 127
    :pswitch_9
    invoke-virtual {v3, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/lge/camera/components/RotateImageButton;->mTextShadowColor:I

    goto :goto_1

    .line 130
    :pswitch_a
    invoke-virtual {v3, v1, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/lge/camera/components/RotateImageButton;->mTextShadowRadius:F

    goto :goto_1

    .line 133
    :pswitch_b
    invoke-virtual {v3, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateInsideView:Z

    goto :goto_1

    .line 136
    :pswitch_c
    invoke-virtual {v3, v1, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateIconOnly:Z

    goto :goto_1

    .line 144
    .end local v1           #attr:I
    :cond_1
    iget v5, p0, Lcom/lge/camera/components/RotateImageButton;->mTextSize:I

    int-to-float v5, v5

    const v6, 0x3dcccccd

    mul-float/2addr v5, v6

    iput v5, p0, Lcom/lge/camera/components/RotateImageButton;->mTextBasePadding:F

    .line 145
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
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
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private configureBounds()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 615
    iget-object v1, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 616
    iget-object v1, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 618
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getWidth()I

    move-result v0

    .line 619
    .local v0, longerSide:I
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 620
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getHeight()I

    move-result v0

    .line 622
    :cond_1
    int-to-float v1, v0

    const v2, 0x3fb504d5

    mul-float/2addr v1, v2

    int-to-float v2, v0

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/lge/camera/components/RotateImageButton;->mExpand4Rotate:I

    .line 623
    return-void
.end method

.method private setTextPaint()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 549
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/camera/components/RotateImageButton;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 550
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/camera/components/RotateImageButton;->mTextScaleX:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 551
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/camera/components/RotateImageButton;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 552
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 553
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/camera/components/RotateImageButton;->mTextShadowRadius:F

    iget v2, p0, Lcom/lge/camera/components/RotateImageButton;->mTextShadowColor:I

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 554
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 557
    :cond_0
    return-void
.end method

.method private updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "d"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 601
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/RotateImageButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 603
    :cond_0
    iput-object p1, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 604
    if-eqz p1, :cond_2

    .line 605
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 606
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 609
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/components/RotateImageButton;->configureBounds()V

    .line 612
    :cond_2
    return-void
.end method


# virtual methods
.method public AdjustFontSize(I)I
    .locals 20
    .parameter "size"

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 176
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 177
    .local v14, targetBound:Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 178
    .local v12, sourceBound:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 180
    .local v4, layoutParams:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaddingTop:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextBasePadding:F

    move/from16 v18, v0

    add-float v11, v17, v18

    .line 181
    .local v11, paddingTop:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaddingLeft:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextBasePadding:F

    move/from16 v18, v0

    add-float v9, v17, v18

    .line 182
    .local v9, paddingLeft:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaddingBottom:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextBasePadding:F

    move/from16 v18, v0

    add-float v8, v17, v18

    .line 183
    .local v8, paddingBottom:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaddingRight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextBasePadding:F

    move/from16 v18, v0

    add-float v10, v17, v18

    .line 185
    .local v10, paddingRight:F
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v14, Landroid/graphics/Rect;->left:I

    .line 186
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v14, Landroid/graphics/Rect;->top:I

    .line 187
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

    .line 188
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

    .line 189
    const/4 v4, 0x0

    .line 191
    const/4 v6, 0x0

    .line 192
    .local v6, maxLength:I
    const/4 v7, 0x0

    .line 194
    .local v7, maxString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/components/RotateImageButton;->mTextLines:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v13, v2, v3

    .line 195
    .local v13, strLine:Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v6, :cond_0

    .line 196
    move-object v7, v13

    .line 197
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    .line 194
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    .end local v13           #strLine:Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_5

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v17

    if-lez v17, :cond_5

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v17

    if-lez v17, :cond_5

    .line 202
    move/from16 v16, p1

    .line 203
    .local v16, tmpSize:I
    const/16 v15, 0xa

    .line 205
    .local v15, tmpScaleX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/RotateImageButton;->mTextScaleX:F

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextScaleX:F

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v7, v1, v6, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 210
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 211
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

    .line 213
    :goto_1
    invoke-virtual {v14, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 214
    const/16 v17, 0x7

    move/from16 v0, v17

    if-ge v15, v0, :cond_3

    .line 224
    :cond_2
    :goto_2
    invoke-virtual {v14, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 225
    add-int/lit8 v16, v16, -0x1

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v7, v1, v6, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 228
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2

    .line 217
    :cond_3
    add-int/lit8 v15, v15, -0x1

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    int-to-float v0, v15

    move/from16 v18, v0

    const v19, 0x3dcccccd

    mul-float v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v7, v1, v6, v12}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 220
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 221
    int-to-float v0, v15

    move/from16 v17, v0

    const v18, 0x3dcccccd

    mul-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/RotateImageButton;->mTextScaleX:F

    goto :goto_1

    .line 231
    :cond_4
    if-lez v16, :cond_5

    .line 232
    move/from16 p1, v16

    .line 237
    .end local v15           #tmpScaleX:I
    .end local v16           #tmpSize:I
    :cond_5
    const/4 v14, 0x0

    .line 240
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
    .line 166
    iget v1, p0, Lcom/lge/camera/components/RotateImageButton;->mTextSize:I

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/RotateImageButton;->AdjustFontSize(I)I

    move-result v0

    .line 167
    .local v0, textSize:I
    iget v1, p0, Lcom/lge/camera/components/RotateImageButton;->mTextSize:I

    if-eq v0, v1, :cond_0

    .line 168
    iput v0, p0, Lcom/lge/camera/components/RotateImageButton;->mTextSize:I

    .line 169
    iget v1, p0, Lcom/lge/camera/components/RotateImageButton;->mTextSize:I

    int-to-float v1, v1

    const v2, 0x3dcccccd

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/lge/camera/components/RotateImageButton;->mTextBasePadding:F

    .line 170
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 172
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 626
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 627
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 628
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 631
    :cond_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackgroundResource()I
    .locals 1

    .prologue
    .line 582
    iget v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    return v0
.end method

.method public getDegree()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/lge/camera/components/RotateImageButton;->mTargetDegree:I

    return v0
.end method

.method public getTextPaintHeight()I
    .locals 6

    .prologue
    .line 743
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 744
    .local v0, p:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 745
    .local v1, textBounds:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/lge/camera/components/RotateImageButton;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/camera/components/RotateImageButton;->mText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 746
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 748
    .local v2, textHeight:I
    return v2
.end method

.method public getTextPaintWidth()I
    .locals 4

    .prologue
    .line 736
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 737
    .local v0, p:Landroid/graphics/Paint;
    iget v2, p0, Lcom/lge/camera/components/RotateImageButton;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 738
    iget-object v2, p0, Lcom/lge/camera/components/RotateImageButton;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v1, v2

    .line 739
    .local v1, textWidth:I
    int-to-float v2, v1

    const v3, 0x3dcccccd

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v2, v1

    return v2
.end method

.method public getTextSize()I
    .locals 1

    .prologue
    .line 760
    iget v0, p0, Lcom/lge/camera/components/RotateImageButton;->mTextSize:I

    return v0
.end method

.method public invalidate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 648
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/lge/camera/components/RotateImageButton;->invalidate(IIII)V

    .line 649
    return-void
.end method

.method public invalidate(IIII)V
    .locals 4
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 662
    iget v0, p0, Lcom/lge/camera/components/RotateImageButton;->mExpand4Rotate:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/lge/camera/components/RotateImageButton;->mExpand4Rotate:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/lge/camera/components/RotateImageButton;->mExpand4Rotate:I

    add-int/2addr v2, p3

    iget v3, p0, Lcom/lge/camera/components/RotateImageButton;->mExpand4Rotate:I

    add-int/2addr v3, p4

    invoke-super {p0, v0, v1, v2, v3}, Landroid/widget/ImageButton;->invalidate(IIII)V

    .line 666
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "dirty"

    .prologue
    .line 653
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/lge/camera/components/RotateImageButton;->mExpand4Rotate:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 654
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/lge/camera/components/RotateImageButton;->mExpand4Rotate:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 655
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/lge/camera/components/RotateImageButton;->mExpand4Rotate:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 656
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/lge/camera/components/RotateImageButton;->mExpand4Rotate:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 657
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->invalidate(Landroid/graphics/Rect;)V

    .line 658
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "dr"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 644
    :goto_0
    return-void

    .line 642
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 59
    .parameter "canvas"

    .prologue
    .line 316
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 317
    .local v17, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v17, :cond_1

    .line 546
    .end local v17           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 321
    .restart local v17       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object/from16 v0, v17

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v55, v0

    if-eqz v55, :cond_2

    .line 322
    move-object/from16 v0, v17

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 323
    .local v9, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v55

    if-nez v55, :cond_0

    .line 327
    .end local v9           #bm:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 328
    .local v10, bounds:Landroid/graphics/Rect;
    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v55, v0

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v56, v0

    sub-int v19, v55, v56

    .line 329
    .local v19, drawableWidth:I
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v55, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v56, v0

    sub-int v18, v55, v56

    .line 331
    .local v18, drawableHeight:I
    if-eqz v19, :cond_3

    if-nez v18, :cond_4

    .line 333
    :cond_3
    const-string v55, "CameraApp"

    const-string v56, "drawable width,height is zero, return"

    invoke-static/range {v55 .. v56}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 542
    .end local v10           #bounds:Landroid/graphics/Rect;
    .end local v17           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v18           #drawableHeight:I
    .end local v19           #drawableWidth:I
    :catch_0
    move-exception v20

    .line 543
    .local v20, e:Ljava/lang/Exception;
    const-string v55, "CameraApp"

    const-string v56, "RotateImageButton onDraw exception: %s"

    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput-object v20, v57, v58

    invoke-static/range {v56 .. v57}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 343
    .end local v20           #e:Ljava/lang/Exception;
    .restart local v10       #bounds:Landroid/graphics/Rect;
    .restart local v17       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v18       #drawableHeight:I
    .restart local v19       #drawableWidth:I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/RotateImageButton;->mRotateIconOnly:Z

    move/from16 v55, v0

    if-eqz v55, :cond_5

    .line 344
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 347
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mCurrentDegree:I

    move/from16 v55, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTargetDegree:I

    move/from16 v56, v0

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_a

    const/16 v30, 0x1

    .line 348
    .local v30, needRotate:Z
    :goto_1
    if-eqz v30, :cond_6

    .line 349
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v49

    .line 350
    .local v49, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/camera/components/RotateImageButton;->mAnimationEndTime:J

    move-wide/from16 v55, v0

    cmp-long v55, v49, v55

    if-gez v55, :cond_d

    .line 351
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/camera/components/RotateImageButton;->mAnimationStartTime:J

    move-wide/from16 v55, v0

    sub-long v55, v49, v55

    move-wide/from16 v0, v55

    long-to-int v0, v0

    move/from16 v16, v0

    .line 352
    .local v16, deltaTime:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mStartDegree:I

    move/from16 v55, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/RotateImageButton;->mClockwise:Z

    move/from16 v56, v0

    if-eqz v56, :cond_b

    .end local v16           #deltaTime:I
    :goto_2
    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0xf0

    move/from16 v56, v0

    move/from16 v0, v56

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v56, v0

    add-int v15, v55, v56

    .line 354
    .local v15, degree:I
    if-ltz v15, :cond_c

    rem-int/lit16 v15, v15, 0x168

    .line 355
    :goto_3
    move-object/from16 v0, p0

    iput v15, v0, Lcom/lge/camera/components/RotateImageButton;->mCurrentDegree:I

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 363
    .end local v15           #degree:I
    .end local v49           #time:J
    :cond_6
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageButton;->getWidth()I

    move-result v54

    .line 364
    .local v54, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageButton;->getHeight()I

    move-result v52

    .line 367
    .local v52, viewHeight:I
    div-int/lit8 v7, v54, 0x2

    .line 368
    .local v7, bgCenterX:I
    div-int/lit8 v8, v52, 0x2

    .line 369
    .local v8, bgCenterY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mCurrentDegree:I

    move/from16 v55, v0

    move/from16 v0, v55

    neg-int v0, v0

    move/from16 v55, v0

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    int-to-float v0, v7

    move/from16 v56, v0

    int-to-float v0, v8

    move/from16 v57, v0

    move-object/from16 v0, p1

    move/from16 v1, v55

    move/from16 v2, v56

    move/from16 v3, v57

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 371
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/RotateImageButton;->mRotateInsideView:Z

    move/from16 v55, v0

    if-eqz v55, :cond_7

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 373
    .local v26, imageSrc:Landroid/graphics/drawable/Drawable;
    if-eqz v26, :cond_7

    .line 374
    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v22

    .line 376
    .local v22, imageBounds:Landroid/graphics/Rect;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v55, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v56, v0

    sub-int v27, v55, v56

    .line 377
    .local v27, imageWidth:I
    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v55, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v56, v0

    sub-int v23, v55, v56

    .line 379
    .local v23, imageHeight:I
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v55, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v56, v0

    div-float v24, v55, v56

    .line 380
    .local v24, imageRatio:F
    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v55, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v56, v0

    div-float v53, v55, v56

    .line 382
    .local v53, viewRatio:F
    cmpg-float v55, v53, v24

    if-gez v55, :cond_e

    .line 383
    const/high16 v25, 0x3f80

    .line 384
    .local v25, imageScale:F
    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v55, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v56, v0

    div-float v25, v55, v56

    .line 385
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v55, v0

    mul-float v55, v55, v25

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v23, v0

    .line 386
    move/from16 v27, v54

    .line 396
    .end local v25           #imageScale:F
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mCurrentDegree:I

    move/from16 v55, v0

    move/from16 v0, v55

    int-to-double v0, v0

    move-wide/from16 v55, v0

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v55

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 397
    .local v11, cosA:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mCurrentDegree:I

    move/from16 v55, v0

    rsub-int/lit8 v55, v55, 0x5a

    move/from16 v0, v55

    int-to-double v0, v0

    move-wide/from16 v55, v0

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v55

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    .line 398
    .local v13, cosRevA:D
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v55, v0

    mul-double v55, v55, v11

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->abs(D)D

    move-result-wide v55

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v57, v0

    mul-double v57, v57, v13

    invoke-static/range {v57 .. v58}, Ljava/lang/Math;->abs(D)D

    move-result-wide v57

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    double-to-int v0, v0

    move/from16 v41, v0

    .line 399
    .local v41, rw:I
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v55, v0

    mul-double v55, v55, v13

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->abs(D)D

    move-result-wide v55

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v57, v0

    mul-double v57, v57, v11

    invoke-static/range {v57 .. v58}, Ljava/lang/Math;->abs(D)D

    move-result-wide v57

    add-double v55, v55, v57

    move-wide/from16 v0, v55

    double-to-int v0, v0

    move/from16 v36, v0

    .line 401
    .local v36, rh:I
    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v55, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v56, v0

    div-float v40, v55, v56

    .line 402
    .local v40, rotatedImageScaleW:F
    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v55, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v56, v0

    div-float v39, v55, v56

    .line 404
    .local v39, rotatedImageScaleH:F
    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v55, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v56, v0

    div-float v37, v55, v56

    .line 406
    .local v37, rotateImageRatio:F
    const/high16 v38, 0x3f80

    .line 407
    .local v38, rotatedImageScale:F
    cmpg-float v55, v53, v37

    if-gez v55, :cond_f

    .line 408
    move/from16 v38, v40

    .line 412
    :goto_6
    int-to-float v0, v7

    move/from16 v55, v0

    int-to-float v0, v8

    move/from16 v56, v0

    move-object/from16 v0, p1

    move/from16 v1, v38

    move/from16 v2, v38

    move/from16 v3, v55

    move/from16 v4, v56

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 426
    .end local v11           #cosA:D
    .end local v13           #cosRevA:D
    .end local v22           #imageBounds:Landroid/graphics/Rect;
    .end local v23           #imageHeight:I
    .end local v24           #imageRatio:F
    .end local v26           #imageSrc:Landroid/graphics/drawable/Drawable;
    .end local v27           #imageWidth:I
    .end local v36           #rh:I
    .end local v37           #rotateImageRatio:F
    .end local v38           #rotatedImageScale:F
    .end local v39           #rotatedImageScaleH:F
    .end local v40           #rotatedImageScaleW:F
    .end local v41           #rw:I
    .end local v53           #viewRatio:F
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/RotateImageButton;->mRotateIconOnly:Z

    move/from16 v55, v0

    if-nez v55, :cond_8

    .line 428
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 430
    :cond_8
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mText:Ljava/lang/String;

    move-object/from16 v55, v0

    if-eqz v55, :cond_0

    .line 433
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/components/RotateImageButton;->setTextPaint()V

    .line 435
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaddingTop:I

    move/from16 v55, v0

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextBasePadding:F

    move/from16 v56, v0

    add-float v34, v55, v56

    .line 436
    .local v34, paddingTop:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaddingLeft:I

    move/from16 v55, v0

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextBasePadding:F

    move/from16 v56, v0

    add-float v32, v55, v56

    .line 437
    .local v32, paddingLeft:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaddingBottom:I

    move/from16 v55, v0

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextBasePadding:F

    move/from16 v56, v0

    add-float v31, v55, v56

    .line 438
    .local v31, paddingBottom:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaddingRight:I

    move/from16 v55, v0

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextBasePadding:F

    move/from16 v56, v0

    add-float v33, v55, v56

    .line 440
    .local v33, paddingRight:F
    const/16 v48, 0x0

    .line 441
    .local v48, textWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v45

    .line 443
    .local v45, textHeight:F
    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v55, v0

    sub-float v55, v55, v34

    sub-float v43, v55, v31

    .line 444
    .local v43, textAreaHeight:F
    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v55, v0

    sub-float v55, v55, v32

    sub-float v44, v55, v33

    .line 445
    .local v44, textAreaWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextLines:[Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v55, v0

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    mul-float v51, v45, v55

    .line 447
    .local v51, totalTextLineHeight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/graphics/Paint;->ascent()F

    move-result v55

    move/from16 v0, v55

    neg-float v5, v0

    .line 448
    .local v5, aboveBaseLine:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/graphics/Paint;->descent()F

    move-result v6

    .line 450
    .local v6, belowBaseLine:F
    const/16 v21, 0x0

    .local v21, i:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextLines:[Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v55, v0

    move/from16 v0, v21

    move/from16 v1, v55

    if-ge v0, v1, :cond_0

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextLines:[Ljava/lang/String;

    move-object/from16 v56, v0

    aget-object v56, v56, v21

    invoke-virtual/range {v55 .. v56}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v48

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 453
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/RotateImageButton;->mEllipsisEnabled:Z

    move/from16 v55, v0

    if-eqz v55, :cond_10

    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v55, v0

    add-float v56, v48, v32

    add-float v56, v56, v33

    cmpg-float v55, v55, v56

    if-gez v55, :cond_10

    .line 454
    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v55, v0

    sub-float v55, v55, v32

    sub-float v29, v55, v33

    .line 455
    .local v29, maxWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextLines:[Ljava/lang/String;

    move-object/from16 v56, v0

    aget-object v56, v56, v21

    const/16 v57, 0x1

    const/16 v58, 0x0

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move/from16 v2, v57

    move/from16 v3, v29

    move-object/from16 v4, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v28

    .line 456
    .local v28, length:I
    const/16 v55, 0x2

    move/from16 v0, v28

    move/from16 v1, v55

    if-le v0, v1, :cond_9

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextLines:[Ljava/lang/String;

    move-object/from16 v56, v0

    aget-object v56, v56, v21

    const/16 v57, 0x0

    add-int/lit8 v58, v28, -0x2

    invoke-virtual/range {v56 .. v58}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v55, v0

    const-string v56, "..."

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v55 .. v56}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v48

    .line 465
    .end local v28           #length:I
    .end local v29           #maxWidth:F
    :cond_9
    :goto_8
    const/16 v46, 0x0

    .line 466
    .local v46, textOffsetX:F
    const/16 v47, 0x0

    .line 468
    .local v47, textOffsetY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextGravity:I

    move/from16 v55, v0

    and-int/lit8 v55, v55, 0x2

    if-eqz v55, :cond_11

    .line 469
    add-float v47, v34, v5

    .line 470
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v55, v0

    mul-float v55, v55, v45

    add-float v47, v47, v55

    .line 492
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextGravity:I

    move/from16 v55, v0

    and-int/lit8 v55, v55, 0x20

    if-eqz v55, :cond_13

    .line 493
    move/from16 v46, v32

    .line 503
    :goto_a
    const v55, 0x3dcccccd

    mul-float v35, v48, v55

    .line 505
    .local v35, preventClippingMargin:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mPath:[Landroid/graphics/Path;

    move-object/from16 v55, v0

    aget-object v55, v55, v21

    invoke-virtual/range {v55 .. v55}, Landroid/graphics/Path;->reset()V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mPath:[Landroid/graphics/Path;

    move-object/from16 v55, v0

    aget-object v55, v55, v21

    move-object/from16 v0, v55

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mPath:[Landroid/graphics/Path;

    move-object/from16 v55, v0

    aget-object v55, v55, v21

    add-float v56, v46, v48

    add-float v56, v56, v35

    move-object/from16 v0, v55

    move/from16 v1, v56

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v56, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v55

    move/from16 v2, v46

    move/from16 v3, v47

    move-object/from16 v4, v56

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 450
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_7

    .line 347
    .end local v5           #aboveBaseLine:F
    .end local v6           #belowBaseLine:F
    .end local v7           #bgCenterX:I
    .end local v8           #bgCenterY:I
    .end local v21           #i:I
    .end local v30           #needRotate:Z
    .end local v31           #paddingBottom:F
    .end local v32           #paddingLeft:F
    .end local v33           #paddingRight:F
    .end local v34           #paddingTop:F
    .end local v35           #preventClippingMargin:F
    .end local v43           #textAreaHeight:F
    .end local v44           #textAreaWidth:F
    .end local v45           #textHeight:F
    .end local v46           #textOffsetX:F
    .end local v47           #textOffsetY:F
    .end local v48           #textWidth:F
    .end local v51           #totalTextLineHeight:F
    .end local v52           #viewHeight:I
    .end local v54           #viewWidth:I
    :cond_a
    const/16 v30, 0x0

    goto/16 :goto_1

    .line 352
    .restart local v16       #deltaTime:I
    .restart local v30       #needRotate:Z
    .restart local v49       #time:J
    :cond_b
    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_2

    .line 354
    .end local v16           #deltaTime:I
    .restart local v15       #degree:I
    :cond_c
    rem-int/lit16 v0, v15, 0x168

    move/from16 v55, v0

    move/from16 v0, v55

    add-int/lit16 v15, v0, 0x168

    goto/16 :goto_3

    .line 358
    .end local v15           #degree:I
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTargetDegree:I

    move/from16 v55, v0

    move/from16 v0, v55

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/components/RotateImageButton;->mCurrentDegree:I

    .line 359
    const/16 v30, 0x0

    goto/16 :goto_4

    .line 389
    .end local v49           #time:J
    .restart local v7       #bgCenterX:I
    .restart local v8       #bgCenterY:I
    .restart local v22       #imageBounds:Landroid/graphics/Rect;
    .restart local v23       #imageHeight:I
    .restart local v24       #imageRatio:F
    .restart local v26       #imageSrc:Landroid/graphics/drawable/Drawable;
    .restart local v27       #imageWidth:I
    .restart local v52       #viewHeight:I
    .restart local v53       #viewRatio:F
    .restart local v54       #viewWidth:I
    :cond_e
    const/high16 v42, 0x3f80

    .line 390
    .local v42, scale:F
    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v55, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v56, v0

    div-float v42, v55, v56

    .line 391
    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v55, v0

    mul-float v55, v55, v42

    move/from16 v0, v55

    float-to-int v0, v0

    move/from16 v27, v0

    .line 392
    move/from16 v23, v52

    goto/16 :goto_5

    .line 410
    .end local v42           #scale:F
    .restart local v11       #cosA:D
    .restart local v13       #cosRevA:D
    .restart local v36       #rh:I
    .restart local v37       #rotateImageRatio:F
    .restart local v38       #rotatedImageScale:F
    .restart local v39       #rotatedImageScaleH:F
    .restart local v40       #rotatedImageScaleW:F
    .restart local v41       #rw:I
    :cond_f
    move/from16 v38, v39

    goto/16 :goto_6

    .line 462
    .end local v11           #cosA:D
    .end local v13           #cosRevA:D
    .end local v22           #imageBounds:Landroid/graphics/Rect;
    .end local v23           #imageHeight:I
    .end local v24           #imageRatio:F
    .end local v26           #imageSrc:Landroid/graphics/drawable/Drawable;
    .end local v27           #imageWidth:I
    .end local v36           #rh:I
    .end local v37           #rotateImageRatio:F
    .end local v38           #rotatedImageScale:F
    .end local v39           #rotatedImageScaleH:F
    .end local v40           #rotatedImageScaleW:F
    .end local v41           #rw:I
    .end local v53           #viewRatio:F
    .restart local v5       #aboveBaseLine:F
    .restart local v6       #belowBaseLine:F
    .restart local v21       #i:I
    .restart local v31       #paddingBottom:F
    .restart local v32       #paddingLeft:F
    .restart local v33       #paddingRight:F
    .restart local v34       #paddingTop:F
    .restart local v43       #textAreaHeight:F
    .restart local v44       #textAreaWidth:F
    .restart local v45       #textHeight:F
    .restart local v48       #textWidth:F
    .restart local v51       #totalTextLineHeight:F
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextBuffer:Ljava/lang/StringBuffer;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextLines:[Ljava/lang/String;

    move-object/from16 v56, v0

    aget-object v56, v56, v21

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_8

    .line 472
    .restart local v46       #textOffsetX:F
    .restart local v47       #textOffsetY:F
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextGravity:I

    move/from16 v55, v0

    and-int/lit8 v55, v55, 0x4

    if-eqz v55, :cond_12

    .line 473
    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v55, v0

    sub-float v55, v55, v31

    sub-float v47, v55, v6

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextLines:[Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    array-length v0, v0

    move/from16 v55, v0

    add-int/lit8 v55, v55, -0x1

    sub-int v55, v55, v21

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v55, v0

    mul-float v55, v55, v45

    sub-float v47, v47, v55

    goto/16 :goto_9

    .line 478
    :cond_12
    sub-float v55, v43, v51

    const/high16 v56, 0x4000

    div-float v55, v55, v56

    add-float v55, v55, v34

    add-float v47, v55, v5

    .line 479
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v55, v0

    mul-float v55, v55, v45

    add-float v47, v47, v55

    goto/16 :goto_9

    .line 495
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/RotateImageButton;->mTextGravity:I

    move/from16 v55, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit8 v55, v55, 0x40

    if-eqz v55, :cond_14

    .line 496
    move/from16 v0, v54

    int-to-float v0, v0

    move/from16 v55, v0

    sub-float v55, v55, v48

    sub-float v46, v55, v33

    goto/16 :goto_a

    .line 500
    :cond_14
    sub-float v55, v44, v48

    const/high16 v56, 0x4000

    div-float v55, v55, v56

    add-float v46, v55, v32

    goto/16 :goto_a
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    .line 676
    const/4 v8, 0x0

    .local v8, measuredWidth:I
    const/4 v7, 0x0

    .line 677
    .local v7, measuredHeight:I
    const/4 v3, 0x0

    .local v3, contentWidth:I
    const/4 v2, 0x0

    .line 679
    .local v2, contentHeight:I
    iget-object v9, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_1

    .line 680
    iget-object v9, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 681
    .local v1, bgWidth:I
    iget-object v9, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 683
    .local v0, bgHeight:I
    if-ge v3, v1, :cond_0

    .line 684
    move v3, v1

    .line 686
    :cond_0
    if-ge v2, v0, :cond_1

    .line 687
    move v2, v0

    .line 691
    .end local v0           #bgHeight:I
    .end local v1           #bgWidth:I
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 692
    .local v4, imageDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_3

    .line 693
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    .line 694
    .local v6, imageWidth:I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    .line 696
    .local v5, imageHeight:I
    if-ge v3, v6, :cond_2

    .line 697
    move v3, v6

    .line 699
    :cond_2
    if-ge v2, v5, :cond_3

    .line 700
    move v2, v5

    .line 706
    .end local v5           #imageHeight:I
    .end local v6           #imageWidth:I
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    if-ne v9, v10, :cond_4

    .line 707
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 713
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    if-ne v9, v10, :cond_5

    .line 714
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 721
    :goto_1
    invoke-virtual {p0, v8, v7}, Lcom/lge/camera/components/RotateImageButton;->setMeasuredDimension(II)V

    .line 722
    return-void

    .line 710
    :cond_4
    move v8, v3

    goto :goto_0

    .line 717
    :cond_5
    move v7, v2

    goto :goto_1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 587
    invoke-direct {p0, p1}, Lcom/lge/camera/components/RotateImageButton;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 588
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->requestLayout()V

    .line 590
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 592
    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 6
    .parameter "resId"

    .prologue
    .line 560
    iget v3, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    if-eq v3, p1, :cond_1

    .line 561
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/lge/camera/components/RotateImageButton;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 562
    iput p1, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    .line 564
    const/4 v0, 0x0

    .line 565
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v3, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    if-eqz v3, :cond_0

    .line 567
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 568
    .local v2, rsrc:Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    iget v3, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 574
    .end local v2           #rsrc:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/lge/camera/components/RotateImageButton;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 576
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->requestLayout()V

    .line 577
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 579
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void

    .line 569
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .line 570
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgResource:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDegree(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 276
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/components/RotateImageButton;->setDegree(IZ)V

    .line 277
    return-void
.end method

.method public setDegree(IZ)V
    .locals 5
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 281
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 282
    :goto_0
    iget v1, p0, Lcom/lge/camera/components/RotateImageButton;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 307
    :goto_1
    return-void

    .line 281
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 286
    :cond_1
    if-eqz p2, :cond_3

    .line 287
    iput p1, p0, Lcom/lge/camera/components/RotateImageButton;->mTargetDegree:I

    .line 288
    iget v1, p0, Lcom/lge/camera/components/RotateImageButton;->mCurrentDegree:I

    iput v1, p0, Lcom/lge/camera/components/RotateImageButton;->mStartDegree:I

    .line 292
    :goto_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lge/camera/components/RotateImageButton;->mAnimationStartTime:J

    .line 294
    iget v1, p0, Lcom/lge/camera/components/RotateImageButton;->mTargetDegree:I

    iget v2, p0, Lcom/lge/camera/components/RotateImageButton;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 295
    .local v0, diff:I
    if-ltz v0, :cond_4

    .line 299
    :goto_3
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 301
    :cond_2
    if-ltz v0, :cond_5

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Lcom/lge/camera/components/RotateImageButton;->mClockwise:Z

    .line 303
    iget-wide v1, p0, Lcom/lge/camera/components/RotateImageButton;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0xf0

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/lge/camera/components/RotateImageButton;->mAnimationEndTime:J

    .line 306
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    goto :goto_1

    .line 290
    .end local v0           #diff:I
    :cond_3
    iput p1, p0, Lcom/lge/camera/components/RotateImageButton;->mCurrentDegree:I

    iput p1, p0, Lcom/lge/camera/components/RotateImageButton;->mStartDegree:I

    iput p1, p0, Lcom/lge/camera/components/RotateImageButton;->mTargetDegree:I

    goto :goto_2

    .line 295
    .restart local v0       #diff:I
    :cond_4
    add-int/lit16 v0, v0, 0x168

    goto :goto_3

    .line 301
    :cond_5
    const/4 v1, 0x0

    goto :goto_4
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 669
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->setFrame(IIII)Z

    move-result v0

    .line 670
    .local v0, changed:Z
    invoke-direct {p0}, Lcom/lge/camera/components/RotateImageButton;->configureBounds()V

    .line 671
    return v0
.end method

.method public setRotateIconOnly(Z)V
    .locals 1
    .parameter "rotateIconOnly"

    .prologue
    .line 753
    iget-boolean v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateIconOnly:Z

    if-eq v0, p1, :cond_0

    .line 754
    iput-boolean p1, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateIconOnly:Z

    .line 755
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 757
    :cond_0
    return-void
.end method

.method public setRotateInsideView(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateInsideView:Z

    .line 272
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 273
    return-void
.end method

.method public setRotated(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 725
    if-lez p1, :cond_0

    .line 726
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/lge/camera/components/RotateImageButton;->mCurrentDegree:I

    .line 730
    :goto_0
    iput p1, p0, Lcom/lge/camera/components/RotateImageButton;->mTargetDegree:I

    .line 731
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 732
    return-void

    .line 728
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/components/RotateImageButton;->mCurrentDegree:I

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 148
    if-nez p1, :cond_1

    .line 149
    const-string v1, ""

    iput-object v1, p0, Lcom/lge/camera/components/RotateImageButton;->mText:Ljava/lang/String;

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/components/RotateImageButton;->mText:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/components/RotateImageButton;->mTextLines:[Ljava/lang/String;

    .line 156
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/components/RotateImageButton;->mTextLines:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/lge/camera/components/RotateImageButton;->mPath:[Landroid/graphics/Path;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/lge/camera/components/RotateImageButton;->mPath:[Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    aput-object v2, v1, v0

    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 152
    .end local v0           #i:I
    :cond_1
    iput-object p1, p0, Lcom/lge/camera/components/RotateImageButton;->mText:Ljava/lang/String;

    goto :goto_0

    .line 161
    .restart local v0       #i:I
    :cond_2
    invoke-direct {p0}, Lcom/lge/camera/components/RotateImageButton;->setTextPaint()V

    .line 162
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 163
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 250
    iput p1, p0, Lcom/lge/camera/components/RotateImageButton;->mTextColor:I

    .line 251
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 252
    return-void
.end method

.method public setTextGravity(I)V
    .locals 0
    .parameter "gravity"

    .prologue
    .line 255
    iput p1, p0, Lcom/lge/camera/components/RotateImageButton;->mTextGravity:I

    .line 256
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 257
    return-void
.end method

.method public setTextShadowColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 260
    iput p1, p0, Lcom/lge/camera/components/RotateImageButton;->mTextShadowColor:I

    .line 261
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 262
    return-void
.end method

.method public setTextShadowRadius(F)V
    .locals 0
    .parameter "radius"

    .prologue
    .line 265
    iput p1, p0, Lcom/lge/camera/components/RotateImageButton;->mTextShadowRadius:F

    .line 266
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 267
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/RotateImageButton;->AdjustFontSize(I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/RotateImageButton;->mTextSize:I

    .line 245
    iget v0, p0, Lcom/lge/camera/components/RotateImageButton;->mTextSize:I

    int-to-float v0, v0

    const v1, 0x3dcccccd

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/RotateImageButton;->mTextBasePadding:F

    .line 246
    invoke-virtual {p0}, Lcom/lge/camera/components/RotateImageButton;->invalidate()V

    .line 247
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/lge/camera/components/RotateImageButton;->mRotateBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
