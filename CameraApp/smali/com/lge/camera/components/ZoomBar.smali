.class public Lcom/lge/camera/components/ZoomBar;
.super Landroid/widget/RelativeLayout;
.source "ZoomBar.java"


# static fields
.field public static final CURSOR_MAX_STEP:I = 0xf

.field public static final CURSOR_ONE_STEP_MINUS:I = -0x2

.field public static final CURSOR_ONE_STEP_PLUS:I = 0x2

.field private static CURSOR_POS_WIDTH:I = 0x0

.field private static CURSOR_WIDTH:F = 0.0f

.field private static final LONG_PRESS_EVENT_DELAY:J = 0x32L

.field private static final LONG_PRESS_JUDGE_TIMEOUT:J = 0x1f4L

.field private static MAX_CURSOR_POS:I

.field private static MIN_CURSOR_POS:I

.field private static RELEASE_EXPAND_BOTTOM:F

.field private static RELEASE_EXPAND_LEFT:F

.field private static RELEASE_EXPAND_RIGHT:F

.field private static RELEASE_EXPAND_TOP:F


# instance fields
.field private mButtonCheckTimer:Ljava/util/Timer;

.field private mCursorMaxStep:I

.field private mMediator:Lcom/lge/camera/Mediator;

.field private mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnLineTouchListener:Landroid/view/View$OnTouchListener;

.field private mValue:I

.field private mZoomBar:Lcom/lge/camera/components/ZoomBar;

.field public mZoomKeyPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/ZoomBar;->mZoomKeyPressed:Z

    .line 57
    const/16 v0, 0xf

    iput v0, p0, Lcom/lge/camera/components/ZoomBar;->mCursorMaxStep:I

    .line 430
    new-instance v0, Lcom/lge/camera/components/ZoomBar$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/ZoomBar$3;-><init>(Lcom/lge/camera/components/ZoomBar;)V

    iput-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 458
    new-instance v0, Lcom/lge/camera/components/ZoomBar$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/ZoomBar$4;-><init>(Lcom/lge/camera/components/ZoomBar;)V

    iput-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/ZoomBar;->mZoomKeyPressed:Z

    .line 57
    const/16 v0, 0xf

    iput v0, p0, Lcom/lge/camera/components/ZoomBar;->mCursorMaxStep:I

    .line 430
    new-instance v0, Lcom/lge/camera/components/ZoomBar$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/ZoomBar$3;-><init>(Lcom/lge/camera/components/ZoomBar;)V

    iput-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 458
    new-instance v0, Lcom/lge/camera/components/ZoomBar$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/ZoomBar$4;-><init>(Lcom/lge/camera/components/ZoomBar;)V

    iput-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/ZoomBar;->mZoomKeyPressed:Z

    .line 57
    const/16 v0, 0xf

    iput v0, p0, Lcom/lge/camera/components/ZoomBar;->mCursorMaxStep:I

    .line 430
    new-instance v0, Lcom/lge/camera/components/ZoomBar$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/ZoomBar$3;-><init>(Lcom/lge/camera/components/ZoomBar;)V

    iput-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 458
    new-instance v0, Lcom/lge/camera/components/ZoomBar$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/ZoomBar$4;-><init>(Lcom/lge/camera/components/ZoomBar;)V

    iput-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/components/ZoomBar;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/lge/camera/components/ZoomBar;->MIN_CURSOR_POS:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/lge/camera/components/ZoomBar;->CURSOR_POS_WIDTH:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/lge/camera/components/ZoomBar;->MAX_CURSOR_POS:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/camera/components/ZoomBar;)Lcom/lge/camera/components/ZoomBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    return-object v0
.end method

.method static synthetic access$500()F
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/lge/camera/components/ZoomBar;->CURSOR_WIDTH:F

    return v0
.end method

.method static synthetic access$600(Lcom/lge/camera/components/ZoomBar;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/ZoomBar;->isTouchable(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/lge/camera/components/ZoomBar;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/ZoomBar;->isTouchUpAreaOfButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private getPixelFromDimens(I)I
    .locals 1
    .parameter "resId"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

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
    .line 394
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget v1, Lcom/lge/camera/components/ZoomBar;->RELEASE_EXPAND_LEFT:F

    neg-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/lge/camera/components/ZoomBar;->RELEASE_EXPAND_RIGHT:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sget v1, Lcom/lge/camera/components/ZoomBar;->RELEASE_EXPAND_TOP:F

    neg-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/lge/camera/components/ZoomBar;->RELEASE_EXPAND_BOTTOM:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 398
    const/4 v0, 0x1

    .line 401
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

    .line 381
    const/4 v0, 0x1

    .line 383
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

    .line 384
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

    .line 387
    :cond_0
    const/4 v0, 0x0

    .line 390
    :cond_1
    return v0
.end method

.method private setCursor(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/components/ZoomBar$2;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/components/ZoomBar$2;-><init>(Lcom/lge/camera/components/ZoomBar;I)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 348
    return-void
.end method

.method private setLayoutDemension()V
    .locals 2

    .prologue
    .line 138
    const v0, 0x7f0a010e

    invoke-direct {p0, v0}, Lcom/lge/camera/components/ZoomBar;->getPixelFromDimens(I)I

    move-result v0

    sput v0, Lcom/lge/camera/components/ZoomBar;->MIN_CURSOR_POS:I

    .line 139
    const v0, 0x7f0a010d

    invoke-direct {p0, v0}, Lcom/lge/camera/components/ZoomBar;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/lge/camera/components/ZoomBar;->CURSOR_WIDTH:F

    .line 140
    const v0, 0x7f0a010f

    invoke-direct {p0, v0}, Lcom/lge/camera/components/ZoomBar;->getPixelFromDimens(I)I

    move-result v0

    sput v0, Lcom/lge/camera/components/ZoomBar;->CURSOR_POS_WIDTH:I

    .line 141
    sget v0, Lcom/lge/camera/components/ZoomBar;->MIN_CURSOR_POS:I

    sget v1, Lcom/lge/camera/components/ZoomBar;->CURSOR_POS_WIDTH:I

    add-int/2addr v0, v1

    sput v0, Lcom/lge/camera/components/ZoomBar;->MAX_CURSOR_POS:I

    .line 142
    const v0, 0x7f0a00ed

    invoke-direct {p0, v0}, Lcom/lge/camera/components/ZoomBar;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/lge/camera/components/ZoomBar;->RELEASE_EXPAND_LEFT:F

    .line 143
    const v0, 0x7f0a00ef

    invoke-direct {p0, v0}, Lcom/lge/camera/components/ZoomBar;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/lge/camera/components/ZoomBar;->RELEASE_EXPAND_TOP:F

    .line 144
    const v0, 0x7f0a00ee

    invoke-direct {p0, v0}, Lcom/lge/camera/components/ZoomBar;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/lge/camera/components/ZoomBar;->RELEASE_EXPAND_RIGHT:F

    .line 145
    const v0, 0x7f0a00f0

    invoke-direct {p0, v0}, Lcom/lge/camera/components/ZoomBar;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/lge/camera/components/ZoomBar;->RELEASE_EXPAND_BOTTOM:F

    .line 146
    return-void
.end method

.method private startTimerTask(Ljava/util/TimerTask;JJLandroid/view/View;)V
    .locals 6
    .parameter "t"
    .parameter "delay"
    .parameter "period"
    .parameter "v"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mButtonCheckTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 364
    if-eqz p6, :cond_1

    invoke-virtual {p6}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    new-instance v0, Ljava/util/Timer;

    const-string v1, "timer_long_press_check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mButtonCheckTimer:Ljava/util/Timer;

    .line 368
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mButtonCheckTimer:Ljava/util/Timer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method


# virtual methods
.method public getCursorMaxStep()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/lge/camera/components/ZoomBar;->mCursorMaxStep:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    return v0
.end method

.method public initZoomBar(Lcom/lge/camera/Mediator;)V
    .locals 6
    .parameter "mediator"

    .prologue
    const/4 v5, 0x0

    .line 79
    iput-object p0, p0, Lcom/lge/camera/components/ZoomBar;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    .line 80
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/ZoomBar;->setVisibility(I)V

    .line 81
    iput-object p1, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    .line 83
    invoke-direct {p0}, Lcom/lge/camera/components/ZoomBar;->setLayoutDemension()V

    .line 85
    const v3, 0x7f0900e5

    invoke-virtual {p0, v3}, Lcom/lge/camera/components/ZoomBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 88
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_zoom"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "not found"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    iput v5, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    .line 115
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v0

    .line 117
    .local v0, degree:I
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    const v4, 0x7f0900e7

    invoke-virtual {v3, v4, v0, v5}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 118
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    const v4, 0x7f0900e1

    invoke-virtual {v3, v4, v0, v5}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 120
    iget v3, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    invoke-direct {p0, v3}, Lcom/lge/camera/components/ZoomBar;->setCursor(I)V

    .line 121
    return-void

    .line 91
    .end local v0           #degree:I
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_zoom"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    .line 93
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/ZoomController;->getZoomCursorMaxStep()I

    move-result v2

    .line 94
    .local v2, zoomCursorMaxStep:I
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, max:I
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    .line 102
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v3

    const/16 v4, 0x19

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    if-eqz v1, :cond_2

    .line 105
    div-int/lit8 v1, v1, 0x2

    .line 109
    :cond_2
    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    if-lez v1, :cond_0

    .line 110
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ZoomBar;->setCursorMaxStep(I)V

    goto :goto_0
.end method

.method public resetCursor(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/lge/camera/components/ZoomBar;->setCursor(I)V

    .line 352
    return-void
.end method

.method public resetDisplayTimeout()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->setDisplayTimeout()V

    .line 329
    :cond_0
    return-void
.end method

.method public resetValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 355
    iput p1, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    .line 356
    return-void
.end method

.method public setCursorMaxStep(I)V
    .locals 0
    .parameter "maxStep"

    .prologue
    .line 161
    iput p1, p0, Lcom/lge/camera/components/ZoomBar;->mCursorMaxStep:I

    .line 162
    return-void
.end method

.method public setDisplayTimeout()V
    .locals 4

    .prologue
    .line 320
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 321
    return-void
.end method

.method public setListener(Z)V
    .locals 4
    .parameter "set"

    .prologue
    const v0, 0x7f0900e6

    const v3, 0x7f0900e2

    const v2, 0x7f0900e0

    const/4 v1, 0x0

    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/ZoomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/components/ZoomBar;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 126
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/ZoomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/components/ZoomBar;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 127
    invoke-virtual {p0, v3}, Lcom/lge/camera/components/ZoomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/components/ZoomBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/ZoomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/ZoomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    invoke-virtual {p0, v3}, Lcom/lge/camera/components/ZoomBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public showControl(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v3, 0x0

    .line 299
    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/ZoomBar;->setVisibility(I)V

    .line 300
    if-eqz p1, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->resetDisplayTimeout()V

    .line 316
    :goto_1
    return-void

    .line 299
    :cond_0
    const/16 v2, 0x8

    goto :goto_0

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->stopTimerTask()V

    .line 304
    const v2, 0x7f0900e6

    invoke-virtual {p0, v2}, Lcom/lge/camera/components/ZoomBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 305
    const v2, 0x7f0900e0

    invoke-virtual {p0, v2}, Lcom/lge/camera/components/ZoomBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 307
    iget-object v2, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/ZoomController;->getZoomMaxValue()F

    move-result v2

    float-to-int v0, v2

    .line 308
    .local v0, zoomMaxValue:I
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getValue()I

    move-result v1

    .line 309
    .local v1, zoomValue:I
    iget-object v2, p0, Lcom/lge/camera/components/ZoomBar;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v2}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    .line 310
    mul-int v2, v1, v0

    div-int/lit8 v1, v2, 0xf

    .line 312
    :cond_2
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zoombar : mValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_zoom"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public startRotation(IZ)V
    .locals 7
    .parameter "degree"
    .parameter "animation"

    .prologue
    const v6, 0x7f0900e7

    const v5, 0x7f0900e1

    const/16 v4, 0xb4

    .line 504
    iget-object v2, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    const v3, 0x7f0900de

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 506
    .local v1, rl:Lcom/lge/camera/components/RotateLayout;
    if-eqz v1, :cond_2

    .line 507
    if-eqz p1, :cond_0

    const/16 v2, 0x5a

    if-ne p1, v2, :cond_3

    .line 508
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2, v6, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 509
    iget-object v2, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2, v5, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 510
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 518
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 519
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_5

    .line 520
    const v2, 0x7f0a00e3

    invoke-direct {p0, v2}, Lcom/lge/camera/components/ZoomBar;->getPixelFromDimens(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 525
    :goto_1
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->requestLayout()V

    .line 526
    invoke-virtual {v1}, Lcom/lge/camera/components/RotateLayout;->invalidate()V

    .line 528
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    return-void

    .line 512
    :cond_3
    if-eq p1, v4, :cond_4

    const/16 v2, 0x10e

    if-ne p1, v2, :cond_1

    .line 513
    :cond_4
    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 514
    iget-object v2, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    add-int/lit16 v3, p1, 0xb4

    invoke-virtual {v2, v6, v3, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 515
    iget-object v2, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    add-int/lit16 v3, p1, 0xb4

    invoke-virtual {v2, v5, v3, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    goto :goto_0

    .line 522
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    const v2, 0x7f0a00e4

    invoke-direct {p0, v2}, Lcom/lge/camera/components/ZoomBar;->getPixelFromDimens(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1
.end method

.method public stopTimerTask()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mButtonCheckTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 375
    iget-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 376
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mButtonCheckTimer:Ljava/util/Timer;

    .line 378
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 73
    iput-object v0, p0, Lcom/lge/camera/components/ZoomBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/ZoomBar;->setListener(Z)V

    .line 76
    return-void
.end method

.method public updateZoom(IZZ)V
    .locals 7
    .parameter "step"
    .parameter "gesture"
    .parameter "actionEnd"

    .prologue
    const/16 v5, 0xf

    .line 169
    iget-object v4, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v4

    if-nez v4, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    iget-object v4, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/controller/ZoomController;->getZoomMaxValue()F

    move-result v4

    float-to-int v2, v4

    .line 176
    .local v2, zoomMaxValue:I
    if-eqz p3, :cond_3

    .line 177
    iget v3, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    .line 178
    .local v3, zoomValue:I
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 179
    mul-int v4, v3, v2

    div-int/lit8 v3, v4, 0xf

    .line 181
    :cond_2
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zoombar : mValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v4, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "key_zoom"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 186
    .end local v3           #zoomValue:I
    :cond_3
    if-eqz p1, :cond_0

    .line 190
    if-eqz p2, :cond_8

    .line 191
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 192
    iget v4, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    mul-int/2addr v4, v2

    div-int/lit8 v4, v4, 0xf

    iput v4, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    .line 194
    :cond_4
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/ZoomBar;->setCursorMaxStep(I)V

    .line 202
    :goto_1
    iget v4, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    add-int v1, v4, p1

    .line 204
    .local v1, updatedValue:I
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v4

    if-le v1, v4, :cond_5

    .line 205
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v1

    .line 208
    :cond_5
    if-gez v1, :cond_6

    .line 209
    const/4 v1, 0x0

    .line 212
    :cond_6
    iget v4, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    if-eq v1, v4, :cond_0

    .line 214
    iput v1, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    .line 215
    iget v4, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    invoke-direct {p0, v4}, Lcom/lge/camera/components/ZoomBar;->setCursor(I)V

    .line 217
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 218
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "mValue"

    iget v5, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    iget v4, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    if-nez v4, :cond_7

    .line 221
    iget-object v4, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "key_zoom"

    iget v6, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 223
    :cond_7
    iget-object v4, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v5, "com.lge.camera.command.setting.SetZoom"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->resetDisplayTimeout()V

    goto/16 :goto_0

    .line 196
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #updatedValue:I
    :cond_8
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v4

    if-le v4, v5, :cond_9

    .line 197
    iget v4, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    mul-int/lit8 v4, v4, 0xf

    div-int/2addr v4, v2

    iput v4, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    .line 199
    :cond_9
    invoke-virtual {p0, v5}, Lcom/lge/camera/components/ZoomBar;->setCursorMaxStep(I)V

    goto :goto_1
.end method

.method public updateZoomWithTimer(ILandroid/view/View;Landroid/view/MotionEvent;ZZ)V
    .locals 7
    .parameter "step"
    .parameter "v"
    .parameter "event"
    .parameter "volumeKey"
    .parameter "actionEnd"

    .prologue
    .line 278
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    invoke-virtual {p0, p1, p4, p5}, Lcom/lge/camera/components/ZoomBar;->updateZoom(IZZ)V

    .line 284
    if-nez p5, :cond_0

    .line 285
    new-instance v1, Lcom/lge/camera/components/ZoomBar$1;

    invoke-direct {v1, p0, p1, p4, p5}, Lcom/lge/camera/components/ZoomBar$1;-><init>(Lcom/lge/camera/components/ZoomBar;IZZ)V

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x32

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/components/ZoomBar;->startTimerTask(Ljava/util/TimerTask;JJLandroid/view/View;)V

    goto :goto_0
.end method

.method public updateZoomWithValue(IZ)V
    .locals 6
    .parameter "value"
    .parameter "actionEnd"

    .prologue
    const/16 v4, 0xf

    .line 230
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/ZoomController;->getZoomMaxValue()F

    move-result v3

    float-to-int v1, v3

    .line 235
    .local v1, zoomMaxValue:I
    if-eqz p2, :cond_3

    .line 236
    iget v2, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    .line 237
    .local v2, zoomValue:I
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 238
    mul-int v3, v2, v1

    div-int/lit8 v2, v3, 0xf

    .line 240
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_zoom"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 244
    .end local v2           #zoomValue:I
    :cond_3
    iget v3, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    if-eq v3, p1, :cond_0

    .line 248
    iput p1, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    .line 250
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 251
    iget v3, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    mul-int/2addr v3, v1

    div-int/lit8 v3, v3, 0xf

    iput v3, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    .line 253
    :cond_4
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ZoomBar;->setCursorMaxStep(I)V

    .line 255
    iget v3, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v4

    if-le v3, v4, :cond_5

    .line 256
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v3

    iput v3, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    .line 259
    :cond_5
    iget v3, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    if-gez v3, :cond_6

    .line 260
    const/4 v3, 0x0

    iput v3, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    .line 263
    :cond_6
    iget v3, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    invoke-direct {p0, v3}, Lcom/lge/camera/components/ZoomBar;->setCursor(I)V

    .line 265
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 266
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "mValue"

    iget v4, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    iget v3, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    if-nez v3, :cond_7

    .line 269
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_zoom"

    iget v5, p0, Lcom/lge/camera/components/ZoomBar;->mValue:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 271
    :cond_7
    iget-object v3, p0, Lcom/lge/camera/components/ZoomBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "com.lge.camera.command.setting.SetZoom"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    invoke-virtual {p0}, Lcom/lge/camera/components/ZoomBar;->resetDisplayTimeout()V

    goto :goto_0
.end method
