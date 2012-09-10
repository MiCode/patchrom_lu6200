.class public Lcom/lge/camera/components/FocusRectangle;
.super Landroid/widget/ImageView;
.source "FocusRectangle.java"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final COLOR_FOCUS_GREEN:I = 0x0

.field private static final FACE_MODIFY_RATE:F = 1.0f

.field private static FOCUS_CONTINUOUS:I = 0x0

.field private static FOCUS_NORAML:I = 0x0

.field private static FOCUS_TOUCH:I = 0x0

.field public static final OUTLINE_FIX_LEFTUP:I = 0x3

.field public static final OUTLINE_FIX_RIGHTDOWN:I = 0x2

.field public static final STATE_CLEAR:I = 0x0

.field public static final STATE_CONTINUOUS:I = 0x5

.field public static final STATE_CONTINUOUS_SUCCESS:I = 0x6

.field public static final STATE_FAIL:I = 0x3

.field public static final STATE_NORMAL:I = 0x1

.field public static final STATE_RECT_SUCCESS:I = 0x4

.field public static final STATE_SUCCESS:I = 0x2


# instance fields
.field private final CENTER_RECTANGLE_HEIGHT:I

.field private final CENTER_RECTANGLE_MARGINE_LEFT:I

.field private final CENTER_RECTANGLE_MARGINE_TOP:I

.field private final CENTER_RECTANGLE_WIDTH:I

.field private RECT_HEIGHT:I

.field private RECT_WIDTH:I

.field private mCenterFocusFailDrawable:Landroid/graphics/drawable/Drawable;

.field private mCenterFocusSucceedDrawable:Landroid/graphics/drawable/Drawable;

.field private mCenterFocusSucceedTAFDrawable:Landroid/graphics/drawable/Drawable;

.field private mCenterFocusingDrawable:Landroid/graphics/drawable/Drawable;

.field private mCenterFocusingTAFDrawable:Landroid/graphics/drawable/Drawable;

.field private mCenterPoint:Landroid/graphics/Point;

.field private mFaceFocusRect:Landroid/graphics/Rect;

.field private mInit:Z

.field private mNormalFocusRect:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mState:I

.field private mTaf:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    const/16 v0, 0x16

    const/16 v1, 0xe2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/lge/camera/components/FocusRectangle;->COLOR_FOCUS_GREEN:I

    .line 200
    sput v2, Lcom/lge/camera/components/FocusRectangle;->FOCUS_NORAML:I

    .line 201
    const/4 v0, 0x1

    sput v0, Lcom/lge/camera/components/FocusRectangle;->FOCUS_CONTINUOUS:I

    .line 202
    const/4 v0, 0x2

    sput v0, Lcom/lge/camera/components/FocusRectangle;->FOCUS_TOUCH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x7f0a0182

    const v3, 0x7f0a0181

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_WIDTH:I

    .line 29
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_HEIGHT:I

    .line 30
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0183

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_LEFT:I

    .line 31
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0184

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_TOP:I

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterPoint:Landroid/graphics/Point;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mNormalFocusRect:Landroid/graphics/Rect;

    .line 52
    iput-object v2, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object v2, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    iput-object v2, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusFailDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    iput-object v2, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingTAFDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    iput-object v2, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedTAFDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->RECT_WIDTH:I

    .line 60
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->RECT_HEIGHT:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/FocusRectangle;->mInit:Z

    .line 203
    sget v0, Lcom/lge/camera/components/FocusRectangle;->FOCUS_NORAML:I

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->mTaf:I

    .line 78
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->init()V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v4, 0x7f0a0182

    const v3, 0x7f0a0181

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_WIDTH:I

    .line 29
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_HEIGHT:I

    .line 30
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0183

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_LEFT:I

    .line 31
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0184

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_TOP:I

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterPoint:Landroid/graphics/Point;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mNormalFocusRect:Landroid/graphics/Rect;

    .line 52
    iput-object v2, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object v2, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    iput-object v2, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusFailDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    iput-object v2, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingTAFDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    iput-object v2, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedTAFDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->RECT_WIDTH:I

    .line 60
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->RECT_HEIGHT:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/FocusRectangle;->mInit:Z

    .line 203
    sget v0, Lcom/lge/camera/components/FocusRectangle;->FOCUS_NORAML:I

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->mTaf:I

    .line 73
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->init()V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v4, 0x7f0a0182

    const v3, 0x7f0a0181

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_WIDTH:I

    .line 29
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_HEIGHT:I

    .line 30
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0183

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_LEFT:I

    .line 31
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0184

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_TOP:I

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterPoint:Landroid/graphics/Point;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mNormalFocusRect:Landroid/graphics/Rect;

    .line 52
    iput-object v2, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object v2, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    iput-object v2, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusFailDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    iput-object v2, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingTAFDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    iput-object v2, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedTAFDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->RECT_WIDTH:I

    .line 60
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->RECT_HEIGHT:I

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/FocusRectangle;->mInit:Z

    .line 203
    sget v0, Lcom/lge/camera/components/FocusRectangle;->FOCUS_NORAML:I

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->mTaf:I

    .line 68
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->init()V

    .line 69
    return-void
.end method

.method private initFocusResources()V
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusFailDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingTAFDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020166

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedTAFDrawable:Landroid/graphics/drawable/Drawable;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/FocusRectangle;->setCallbackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/FocusRectangle;->setCallbackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusFailDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/FocusRectangle;->setCallbackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingTAFDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/FocusRectangle;->setCallbackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedTAFDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/FocusRectangle;->setCallbackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 341
    iget-boolean v0, p0, Lcom/lge/camera/components/FocusRectangle;->mInit:Z

    if-eqz v0, :cond_0

    .line 342
    iput-object v1, p0, Lcom/lge/camera/components/FocusRectangle;->mPaint:Landroid/graphics/Paint;

    .line 343
    iput-object v1, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterPoint:Landroid/graphics/Point;

    .line 344
    iput-object v1, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    .line 345
    iput-object v1, p0, Lcom/lge/camera/components/FocusRectangle;->mNormalFocusRect:Landroid/graphics/Rect;

    .line 346
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 347
    iput-object v1, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingDrawable:Landroid/graphics/drawable/Drawable;

    .line 348
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 349
    iput-object v1, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedDrawable:Landroid/graphics/drawable/Drawable;

    .line 350
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusFailDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 351
    iput-object v1, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusFailDrawable:Landroid/graphics/drawable/Drawable;

    .line 352
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingTAFDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 353
    iput-object v1, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingTAFDrawable:Landroid/graphics/drawable/Drawable;

    .line 354
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedTAFDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 355
    iput-object v1, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedTAFDrawable:Landroid/graphics/drawable/Drawable;

    .line 357
    :cond_0
    return-void
.end method

.method public getFocusRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mNormalFocusRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 82
    const-string v0, "CameraApp"

    const-string v1, "FocusRectangle init()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-boolean v0, p0, Lcom/lge/camera/components/FocusRectangle;->mInit:Z

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/lge/camera/components/FocusRectangle;->initFocusResources()V

    .line 85
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->setFocusResources()V

    .line 87
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/FocusRectangle;->mInit:Z

    .line 88
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/high16 v8, 0x4040

    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    .line 277
    iget v0, p0, Lcom/lge/camera/components/FocusRectangle;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 338
    :goto_0
    return-void

    .line 279
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 283
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 287
    :pswitch_2
    iget v0, p0, Lcom/lge/camera/components/FocusRectangle;->mTaf:I

    sget v1, Lcom/lge/camera/components/FocusRectangle;->FOCUS_TOUCH:I

    if-ne v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingTAFDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 295
    :pswitch_3
    iget v0, p0, Lcom/lge/camera/components/FocusRectangle;->mTaf:I

    sget v1, Lcom/lge/camera/components/FocusRectangle;->FOCUS_TOUCH:I

    if-ne v0, v1, :cond_1

    .line 296
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedTAFDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 303
    :pswitch_4
    iget v0, p0, Lcom/lge/camera/components/FocusRectangle;->mTaf:I

    sget v1, Lcom/lge/camera/components/FocusRectangle;->FOCUS_TOUCH:I

    if-ne v0, v1, :cond_2

    .line 304
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingTAFDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 306
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 311
    :pswitch_5
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 313
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/lge/camera/components/FocusRectangle;->COLOR_FOCUS_GREEN:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 314
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 315
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float v1, v0, v6

    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float v2, v0, v6

    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float v3, v0, v6

    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float v4, v0, v6

    iget-object v5, p0, Lcom/lge/camera/components/FocusRectangle;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 319
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 320
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 322
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    sub-float v1, v0, v8

    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    sub-float v2, v0, v8

    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    add-float v3, v0, v7

    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    add-float v4, v0, v7

    iget-object v5, p0, Lcom/lge/camera/components/FocusRectangle;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 327
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    add-float v1, v0, v7

    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    add-float v2, v0, v7

    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    sub-float v3, v0, v8

    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    sub-float v4, v0, v8

    iget-object v5, p0, Lcom/lge/camera/components/FocusRectangle;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCallbackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "callbackDrawable"

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 170
    :cond_0
    return-void
.end method

.method public setFocusResources()V
    .locals 6

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 110
    const-string v0, "CameraApp"

    const-string v1, "this.getContext() is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_1

    .line 114
    const-string v0, "CameraApp"

    const-string v1, "getResources() is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 119
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_LEFT:I

    iget v2, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_TOP:I

    iget v3, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_LEFT:I

    iget v4, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_WIDTH:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_TOP:I

    iget v5, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_HEIGHT:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_LEFT:I

    iget v2, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_TOP:I

    iget v3, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_LEFT:I

    iget v4, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_WIDTH:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_TOP:I

    iget v5, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_HEIGHT:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusFailDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusFailDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_LEFT:I

    iget v2, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_TOP:I

    iget v3, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_LEFT:I

    iget v4, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_WIDTH:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_TOP:I

    iget v5, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_HEIGHT:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingTAFDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 141
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingTAFDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_LEFT:I

    iget v2, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_TOP:I

    iget v3, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_LEFT:I

    iget v4, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_WIDTH:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_TOP:I

    iget v5, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_HEIGHT:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedTAFDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    .line 149
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedTAFDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_LEFT:I

    iget v2, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_TOP:I

    iget v3, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_LEFT:I

    iget v4, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_WIDTH:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_TOP:I

    iget v5, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_HEIGHT:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 156
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/components/FocusRectangle;->clearAnimation()V

    .line 158
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mNormalFocusRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_LEFT:I

    iget v2, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_TOP:I

    iget v3, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_LEFT:I

    iget v4, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_WIDTH:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_TOP:I

    iget v5, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_HEIGHT:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 163
    sget v0, Lcom/lge/camera/components/FocusRectangle;->FOCUS_NORAML:I

    iput v0, p0, Lcom/lge/camera/components/FocusRectangle;->mTaf:I

    goto/16 :goto_0
.end method

.method public setMoveNormalFocusRect(II)V
    .locals 17
    .parameter "x"
    .parameter "y"

    .prologue
    .line 206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusFailDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingTAFDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedTAFDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a017e

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v13

    .line 215
    .local v13, previewWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a017f

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v12

    .line 216
    .local v12, previewHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/FocusRectangle;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0185

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v14

    .line 219
    .local v14, qflMargin:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/camera/components/FocusRectangle;->RECT_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int v16, p2, v4

    .line 220
    .local v16, top:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/camera/components/FocusRectangle;->RECT_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    sub-int v10, p1, v4

    .line 221
    .local v10, left:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/camera/components/FocusRectangle;->RECT_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    add-int v15, p1, v4

    .line 222
    .local v15, right:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/camera/components/FocusRectangle;->RECT_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    add-int v9, p2, v4

    .line 224
    .local v9, bottom:I
    if-gtz v16, :cond_2

    .line 225
    const/16 v16, 0x0

    .line 226
    move-object/from16 v0, p0

    iget v9, v0, Lcom/lge/camera/components/FocusRectangle;->RECT_HEIGHT:I

    .line 228
    :cond_2
    if-lt v9, v12, :cond_3

    .line 229
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/camera/components/FocusRectangle;->RECT_HEIGHT:I

    sub-int v16, v12, v4

    .line 230
    move v9, v12

    .line 232
    :cond_3
    if-gt v10, v14, :cond_4

    .line 233
    move v10, v14

    .line 234
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/camera/components/FocusRectangle;->RECT_WIDTH:I

    add-int v15, v14, v4

    .line 236
    :cond_4
    if-lt v15, v13, :cond_5

    .line 237
    move v15, v13

    .line 238
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/camera/components/FocusRectangle;->RECT_WIDTH:I

    sub-int v10, v13, v4

    .line 241
    :cond_5
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "move to top = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", left = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", right = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bottom = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v0, v16

    invoke-virtual {v4, v10, v0, v15, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v0, v16

    invoke-virtual {v4, v10, v0, v15, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 245
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusFailDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v0, v16

    invoke-virtual {v4, v10, v0, v15, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusingTAFDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v0, v16

    invoke-virtual {v4, v10, v0, v15, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/components/FocusRectangle;->mCenterFocusSucceedTAFDrawable:Landroid/graphics/drawable/Drawable;

    move/from16 v0, v16

    invoke-virtual {v4, v10, v0, v15, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/components/FocusRectangle;->mNormalFocusRect:Landroid/graphics/Rect;

    move/from16 v0, v16

    invoke-virtual {v4, v10, v0, v15, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/FocusRectangle;->postInvalidate()V

    .line 259
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/camera/components/FocusRectangle;->mState:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_6

    const/high16 v2, 0x3fc0

    .line 260
    .local v2, scaleStart:F
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/camera/components/FocusRectangle;->mState:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    const/high16 v3, 0x3f80

    .line 261
    .local v3, scaleEnd:F
    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/camera/components/FocusRectangle;->mState:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_8

    sget v4, Lcom/lge/camera/components/FocusRectangle;->FOCUS_CONTINUOUS:I

    :goto_3
    move-object/from16 v0, p0

    iput v4, v0, Lcom/lge/camera/components/FocusRectangle;->mTaf:I

    .line 263
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    move/from16 v0, p1

    int-to-float v6, v0

    move/from16 v0, p2

    int-to-float v7, v0

    move v4, v2

    move v5, v3

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 264
    .local v1, mAniFocusScale:Landroid/view/animation/ScaleAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3e80

    const/high16 v5, 0x3f80

    invoke-direct {v11, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 266
    .local v11, mAniFocusAlpha:Landroid/view/animation/AlphaAnimation;
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v8, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 267
    .local v8, aniSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 268
    invoke-virtual {v8, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 269
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 270
    const-wide/16 v4, 0x12c

    invoke-virtual {v8, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 271
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v8, v4}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 272
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/lge/camera/components/FocusRectangle;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 259
    .end local v1           #mAniFocusScale:Landroid/view/animation/ScaleAnimation;
    .end local v2           #scaleStart:F
    .end local v3           #scaleEnd:F
    .end local v8           #aniSet:Landroid/view/animation/AnimationSet;
    .end local v11           #mAniFocusAlpha:Landroid/view/animation/AlphaAnimation;
    :cond_6
    const/high16 v2, 0x3f80

    goto :goto_1

    .line 260
    .restart local v2       #scaleStart:F
    :cond_7
    const v3, 0x3f170a3d

    goto :goto_2

    .line 261
    .restart local v3       #scaleEnd:F
    :cond_8
    sget v4, Lcom/lge/camera/components/FocusRectangle;->FOCUS_TOUCH:I

    goto :goto_3
.end method

.method public setMoveNormalFocusRectCenter()V
    .locals 4

    .prologue
    .line 360
    iget v2, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_LEFT:I

    iget v3, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 361
    .local v0, x:I
    iget v2, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_MARGINE_TOP:I

    iget v3, p0, Lcom/lge/camera/components/FocusRectangle;->CENTER_RECTANGLE_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 362
    .local v1, y:I
    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/components/FocusRectangle;->setMoveNormalFocusRect(II)V

    .line 363
    return-void
.end method

.method public setRect(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 188
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 189
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 190
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 191
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterPoint:Landroid/graphics/Point;

    add-int v1, p1, p3

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 192
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterPoint:Landroid/graphics/Point;

    add-int v1, p2, p4

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 193
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Center point = ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public setRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "rect"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 179
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 180
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 181
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mFaceFocusRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 182
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterPoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 183
    iget-object v0, p0, Lcom/lge/camera/components/FocusRectangle;->mCenterPoint:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 184
    return-void
.end method

.method public setState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 173
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iput p1, p0, Lcom/lge/camera/components/FocusRectangle;->mState:I

    .line 175
    return-void
.end method
