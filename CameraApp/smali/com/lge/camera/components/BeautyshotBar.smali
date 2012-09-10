.class public Lcom/lge/camera/components/BeautyshotBar;
.super Landroid/widget/RelativeLayout;
.source "BeautyshotBar.java"


# static fields
.field public static final CURSOR_MAX_STEP:I = 0x8

.field public static final CURSOR_ONE_STEP_MINUS:I = -0x1

.field public static final CURSOR_ONE_STEP_PLUS:I = 0x1

.field private static CURSOR_POS_WIDTH:I = 0x0

.field private static CURSOR_WIDTH:F = 0.0f

.field private static final LONG_PRESS_EVENT_DELAY:J = 0xc8L

.field private static final LONG_PRESS_JUDGE_TIMEOUT:J = 0x3e8L

.field private static MAX_CURSOR_POS:I

.field private static MIN_CURSOR_POS:I

.field private static RELEASE_EXPAND_BOTTOM:I

.field private static RELEASE_EXPAND_LEFT:I

.field private static RELEASE_EXPAND_RIGHT:I

.field private static RELEASE_EXPAND_TOP:I


# instance fields
.field private mButtonCheckTimer:Ljava/util/Timer;

.field private mMediator:Lcom/lge/camera/Mediator;

.field private mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnLineTouchListener:Landroid/view/View$OnTouchListener;

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput v0, Lcom/lge/camera/components/BeautyshotBar;->RELEASE_EXPAND_LEFT:I

    .line 39
    sput v0, Lcom/lge/camera/components/BeautyshotBar;->RELEASE_EXPAND_TOP:I

    .line 40
    sput v0, Lcom/lge/camera/components/BeautyshotBar;->RELEASE_EXPAND_RIGHT:I

    .line 41
    sput v0, Lcom/lge/camera/components/BeautyshotBar;->RELEASE_EXPAND_BOTTOM:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 382
    new-instance v0, Lcom/lge/camera/components/BeautyshotBar$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BeautyshotBar$4;-><init>(Lcom/lge/camera/components/BeautyshotBar;)V

    iput-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 407
    new-instance v0, Lcom/lge/camera/components/BeautyshotBar$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BeautyshotBar$5;-><init>(Lcom/lge/camera/components/BeautyshotBar;)V

    iput-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 382
    new-instance v0, Lcom/lge/camera/components/BeautyshotBar$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BeautyshotBar$4;-><init>(Lcom/lge/camera/components/BeautyshotBar;)V

    iput-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 407
    new-instance v0, Lcom/lge/camera/components/BeautyshotBar$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BeautyshotBar$5;-><init>(Lcom/lge/camera/components/BeautyshotBar;)V

    iput-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 382
    new-instance v0, Lcom/lge/camera/components/BeautyshotBar$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BeautyshotBar$4;-><init>(Lcom/lge/camera/components/BeautyshotBar;)V

    iput-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 407
    new-instance v0, Lcom/lge/camera/components/BeautyshotBar$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BeautyshotBar$5;-><init>(Lcom/lge/camera/components/BeautyshotBar;)V

    iput-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/components/BeautyshotBar;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/components/BeautyshotBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mValue:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/components/BeautyshotBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lge/camera/components/BeautyshotBar;->setCursor(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/camera/components/BeautyshotBar;Landroid/view/View;ILandroid/view/MotionEvent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/camera/components/BeautyshotBar;->updateBeautyshotWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;Z)V

    return-void
.end method

.method static synthetic access$400()F
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/lge/camera/components/BeautyshotBar;->CURSOR_WIDTH:F

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/lge/camera/components/BeautyshotBar;->CURSOR_POS_WIDTH:I

    return v0
.end method

.method static synthetic access$600(Lcom/lge/camera/components/BeautyshotBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lge/camera/components/BeautyshotBar;->updateBeautyshotWithValue(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/camera/components/BeautyshotBar;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/BeautyshotBar;->isTouchUpAreaOfButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/lge/camera/components/BeautyshotBar;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/BeautyshotBar;->isTouchable(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private getPixelFromDimens(I)I
    .locals 1
    .parameter "resId"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method private isTouchUpAreaOfButton(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 452
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget v1, Lcom/lge/camera/components/BeautyshotBar;->RELEASE_EXPAND_LEFT:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sget v2, Lcom/lge/camera/components/BeautyshotBar;->RELEASE_EXPAND_RIGHT:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sget v1, Lcom/lge/camera/components/BeautyshotBar;->RELEASE_EXPAND_TOP:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sget v2, Lcom/lge/camera/components/BeautyshotBar;->RELEASE_EXPAND_BOTTOM:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 456
    const/4 v0, 0x1

    .line 459
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchable(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    .line 345
    const/4 v0, 0x1

    .line 347
    .local v0, touchArea:Z
    const-string v1, "CameraApp"

    const-string v2, "isTouchable x: %d, width: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    cmpg-float v1, v1, v6

    if-ltz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpg-float v1, v1, v6

    if-ltz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 351
    :cond_0
    const/4 v0, 0x0

    .line 354
    :cond_1
    return v0
.end method

.method private setCursor(I)V
    .locals 7
    .parameter "value"

    .prologue
    .line 274
    sget v3, Lcom/lge/camera/components/BeautyshotBar;->MIN_CURSOR_POS:I

    int-to-float v4, p1

    sget v5, Lcom/lge/camera/components/BeautyshotBar;->CURSOR_POS_WIDTH:I

    int-to-float v5, v5

    const/high16 v6, 0x4100

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 275
    .local v2, position:I
    sget v3, Lcom/lge/camera/components/BeautyshotBar;->MAX_CURSOR_POS:I

    if-le v2, v3, :cond_0

    .line 276
    sget v2, Lcom/lge/camera/components/BeautyshotBar;->MAX_CURSOR_POS:I

    .line 277
    :cond_0
    sget v3, Lcom/lge/camera/components/BeautyshotBar;->MIN_CURSOR_POS:I

    if-ge v2, v3, :cond_1

    .line 278
    sget v2, Lcom/lge/camera/components/BeautyshotBar;->MIN_CURSOR_POS:I

    .line 280
    :cond_1
    const v3, 0x7f09000e

    invoke-virtual {p0, v3}, Lcom/lge/camera/components/BeautyshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 281
    .local v0, cursor:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 282
    .local v1, param:Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 283
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    return-void
.end method

.method private setDisplayTimeout()V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 264
    return-void
.end method

.method private setImageToIndexBar(I)V
    .locals 2
    .parameter "resId"

    .prologue
    const v1, 0x7f09000c

    .line 242
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BeautyshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BeautyshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    :cond_0
    return-void
.end method

.method private setLayoutDimension()V
    .locals 2

    .prologue
    .line 115
    const v0, 0x7f0a0117

    invoke-direct {p0, v0}, Lcom/lge/camera/components/BeautyshotBar;->getPixelFromDimens(I)I

    move-result v0

    sput v0, Lcom/lge/camera/components/BeautyshotBar;->MIN_CURSOR_POS:I

    .line 116
    const v0, 0x7f0a0116

    invoke-direct {p0, v0}, Lcom/lge/camera/components/BeautyshotBar;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/lge/camera/components/BeautyshotBar;->CURSOR_WIDTH:F

    .line 117
    const v0, 0x7f0a0118

    invoke-direct {p0, v0}, Lcom/lge/camera/components/BeautyshotBar;->getPixelFromDimens(I)I

    move-result v0

    sput v0, Lcom/lge/camera/components/BeautyshotBar;->CURSOR_POS_WIDTH:I

    .line 118
    sget v0, Lcom/lge/camera/components/BeautyshotBar;->MIN_CURSOR_POS:I

    sget v1, Lcom/lge/camera/components/BeautyshotBar;->CURSOR_POS_WIDTH:I

    add-int/2addr v0, v1

    sput v0, Lcom/lge/camera/components/BeautyshotBar;->MAX_CURSOR_POS:I

    .line 120
    const v0, 0x7f0a0139

    invoke-direct {p0, v0}, Lcom/lge/camera/components/BeautyshotBar;->getPixelFromDimens(I)I

    move-result v0

    sput v0, Lcom/lge/camera/components/BeautyshotBar;->RELEASE_EXPAND_LEFT:I

    .line 121
    const v0, 0x7f0a013a

    invoke-direct {p0, v0}, Lcom/lge/camera/components/BeautyshotBar;->getPixelFromDimens(I)I

    move-result v0

    sput v0, Lcom/lge/camera/components/BeautyshotBar;->RELEASE_EXPAND_TOP:I

    .line 122
    const v0, 0x7f0a013b

    invoke-direct {p0, v0}, Lcom/lge/camera/components/BeautyshotBar;->getPixelFromDimens(I)I

    move-result v0

    sput v0, Lcom/lge/camera/components/BeautyshotBar;->RELEASE_EXPAND_RIGHT:I

    .line 123
    const v0, 0x7f0a013c

    invoke-direct {p0, v0}, Lcom/lge/camera/components/BeautyshotBar;->getPixelFromDimens(I)I

    move-result v0

    sput v0, Lcom/lge/camera/components/BeautyshotBar;->RELEASE_EXPAND_BOTTOM:I

    .line 124
    return-void
.end method

.method private startTimerTask(Ljava/util/TimerTask;JJLandroid/view/View;)V
    .locals 6
    .parameter "t"
    .parameter "judge"
    .parameter "interval"
    .parameter "v"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mButtonCheckTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p6}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    new-instance v0, Ljava/util/Timer;

    const-string v1, "timer_long_press_check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mButtonCheckTimer:Ljava/util/Timer;

    .line 222
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mButtonCheckTimer:Ljava/util/Timer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private updateBeautyshot(IZ)V
    .locals 4
    .parameter "step"
    .parameter "isLongTouch"

    .prologue
    .line 139
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget v1, p0, Lcom/lge/camera/components/BeautyshotBar;->mValue:I

    add-int v0, v1, p1

    .line 145
    .local v0, updatedValue:I
    const/16 v1, 0x8

    if-le v0, v1, :cond_2

    .line 146
    const/16 v0, 0x8

    .line 149
    :cond_2
    if-gez v0, :cond_3

    .line 150
    const/4 v0, 0x0

    .line 153
    :cond_3
    iget v1, p0, Lcom/lge/camera/components/BeautyshotBar;->mValue:I

    if-eq v0, v1, :cond_0

    .line 155
    iput v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mValue:I

    .line 157
    iget-object v1, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v2, Lcom/lge/camera/components/BeautyshotBar$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/components/BeautyshotBar$1;-><init>(Lcom/lge/camera/components/BeautyshotBar;)V

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 163
    if-eqz p2, :cond_4

    .line 164
    iget-object v1, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "key_beautyshot"

    iget v3, p0, Lcom/lge/camera/components/BeautyshotBar;->mValue:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 165
    iget-object v1, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "com.lge.camera.command.setting.SetBeautyshot"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 177
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/components/BeautyshotBar;->resetDisplayTimeout()V

    goto :goto_0

    .line 167
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v2, Lcom/lge/camera/components/BeautyshotBar$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/components/BeautyshotBar$2;-><init>(Lcom/lge/camera/components/BeautyshotBar;)V

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private updateBeautyshotWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;Z)V
    .locals 7
    .parameter "v"
    .parameter "step"
    .parameter "event"
    .parameter "isLongTouch"

    .prologue
    .line 202
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-direct {p0, p2, p4}, Lcom/lge/camera/components/BeautyshotBar;->updateBeautyshot(IZ)V

    .line 208
    new-instance v1, Lcom/lge/camera/components/BeautyshotBar$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/lge/camera/components/BeautyshotBar$3;-><init>(Lcom/lge/camera/components/BeautyshotBar;Landroid/view/View;ILandroid/view/MotionEvent;)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0xc8

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/components/BeautyshotBar;->startTimerTask(Ljava/util/TimerTask;JJLandroid/view/View;)V

    goto :goto_0
.end method

.method private updateBeautyshotWithValue(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/16 v1, 0x8

    .line 182
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 186
    :cond_0
    iput p1, p0, Lcom/lge/camera/components/BeautyshotBar;->mValue:I

    .line 188
    iget v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mValue:I

    if-le v0, v1, :cond_1

    .line 189
    iput v1, p0, Lcom/lge/camera/components/BeautyshotBar;->mValue:I

    .line 192
    :cond_1
    iget v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mValue:I

    invoke-direct {p0, v0}, Lcom/lge/camera/components/BeautyshotBar;->setCursor(I)V

    .line 194
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_beautyshot"

    iget v2, p0, Lcom/lge/camera/components/BeautyshotBar;->mValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 195
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.setting.SetBeautyshot"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/lge/camera/components/BeautyshotBar;->resetDisplayTimeout()V

    goto :goto_0
.end method


# virtual methods
.method public initBeautyshotBar(Lcom/lge/camera/Mediator;)V
    .locals 6
    .parameter "mediator"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 67
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/lge/camera/components/BeautyshotBar;->setVisibility(I)V

    .line 69
    iput-object p1, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    .line 72
    invoke-direct {p0}, Lcom/lge/camera/components/BeautyshotBar;->setLayoutDimension()V

    .line 74
    const v2, 0x7f09000e

    invoke-virtual {p0, v2}, Lcom/lge/camera/components/BeautyshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 76
    iput v5, p0, Lcom/lge/camera/components/BeautyshotBar;->mValue:I

    .line 77
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 79
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_beautyshot"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 80
    .local v1, preference:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 81
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_beautyshot"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/lge/camera/components/BeautyshotBar;->mValue:I

    .line 84
    .end local v1           #preference:Lcom/lge/camera/setting/ListPreference;
    :cond_0
    iget v2, p0, Lcom/lge/camera/components/BeautyshotBar;->mValue:I

    invoke-direct {p0, v2}, Lcom/lge/camera/components/BeautyshotBar;->setCursor(I)V

    .line 85
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 87
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_beautyshot"

    iget v4, p0, Lcom/lge/camera/components/BeautyshotBar;->mValue:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "com.lge.camera.command.setting.SetBeautyshot"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v0

    .line 94
    .local v0, degree:I
    invoke-virtual {p0, v0, v5}, Lcom/lge/camera/components/BeautyshotBar;->startRotation(IZ)V

    .line 96
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    const v3, 0x7f09000b

    invoke-virtual {v2, v3, v0, v5}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 97
    iget-object v2, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    const v3, 0x7f090010

    invoke-virtual {v2, v3, v0, v5}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 98
    return-void
.end method

.method public resetCursor(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/lge/camera/components/BeautyshotBar;->setCursor(I)V

    .line 288
    return-void
.end method

.method public resetDisplayTimeout()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0}, Lcom/lge/camera/components/BeautyshotBar;->setDisplayTimeout()V

    .line 271
    :cond_0
    return-void
.end method

.method public resetValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 291
    iput p1, p0, Lcom/lge/camera/components/BeautyshotBar;->mValue:I

    .line 292
    return-void
.end method

.method public setListener(Z)V
    .locals 4
    .parameter "set"

    .prologue
    const v0, 0x7f09000f

    const v3, 0x7f09000d

    const v2, 0x7f09000a

    const/4 v1, 0x0

    .line 101
    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BeautyshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/components/BeautyshotBar;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/BeautyshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/components/BeautyshotBar;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    invoke-virtual {p0, v3}, Lcom/lge/camera/components/BeautyshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/components/BeautyshotBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 112
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BeautyshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/BeautyshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    invoke-virtual {p0, v3}, Lcom/lge/camera/components/BeautyshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public showControl(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    const/4 v1, 0x0

    .line 248
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BeautyshotBar;->setVisibility(I)V

    .line 249
    if-eqz p1, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/lge/camera/components/BeautyshotBar;->setDisplayTimeout()V

    .line 259
    :goto_1
    return-void

    .line 248
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/components/BeautyshotBar;->stopTimerTask()V

    .line 254
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BeautyshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 255
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BeautyshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 256
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BeautyshotBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1
.end method

.method public startRotation(IZ)V
    .locals 8
    .parameter "degree"
    .parameter "animation"

    .prologue
    const v7, 0x7f090010

    const v6, 0x7f09000b

    const/16 v5, 0xb4

    .line 297
    sparse-switch p1, :sswitch_data_0

    .line 305
    const v1, 0x7f0200d7

    .line 310
    .local v1, resId:I
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    const v4, 0x7f090008

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateLayout;

    .line 312
    .local v2, rl:Lcom/lge/camera/components/RotateLayout;
    if-eqz v2, :cond_2

    .line 313
    if-eqz p1, :cond_0

    const/16 v3, 0x5a

    if-ne p1, v3, :cond_3

    .line 314
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3, v6, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 315
    iget-object v3, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3, v7, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 316
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 324
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 325
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_5

    .line 326
    const v3, 0x7f0a0114

    invoke-direct {p0, v3}, Lcom/lge/camera/components/BeautyshotBar;->getPixelFromDimens(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 331
    :goto_2
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateLayout;->requestLayout()V

    .line 332
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateLayout;->invalidate()V

    .line 341
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-direct {p0, v1}, Lcom/lge/camera/components/BeautyshotBar;->setImageToIndexBar(I)V

    .line 342
    return-void

    .line 300
    .end local v1           #resId:I
    .end local v2           #rl:Lcom/lge/camera/components/RotateLayout;
    :sswitch_0
    const v1, 0x7f0200d8

    .line 301
    .restart local v1       #resId:I
    goto :goto_0

    .line 318
    .restart local v2       #rl:Lcom/lge/camera/components/RotateLayout;
    :cond_3
    if-eq p1, v5, :cond_4

    const/16 v3, 0x10e

    if-ne p1, v3, :cond_1

    .line 319
    :cond_4
    invoke-virtual {v2, v5}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 320
    iget-object v3, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    add-int/lit16 v4, p1, 0xb4

    invoke-virtual {v3, v6, v4, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 321
    iget-object v3, p0, Lcom/lge/camera/components/BeautyshotBar;->mMediator:Lcom/lge/camera/Mediator;

    add-int/lit16 v4, p1, 0xb4

    invoke-virtual {v3, v7, v4, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    goto :goto_1

    .line 328
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    const v3, 0x7f0a0115

    invoke-direct {p0, v3}, Lcom/lge/camera/components/BeautyshotBar;->getPixelFromDimens(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    .line 297
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public stopTimerTask()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mButtonCheckTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 230
    iget-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mButtonCheckTimer:Ljava/util/Timer;

    .line 233
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 61
    iput-object v0, p0, Lcom/lge/camera/components/BeautyshotBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BeautyshotBar;->setListener(Z)V

    .line 64
    return-void
.end method
