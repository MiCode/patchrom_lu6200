.class public Lcom/lge/camera/components/BrightnessBar;
.super Landroid/widget/RelativeLayout;
.source "BrightnessBar.java"


# static fields
.field public static final CURSOR_MAX_STEP:I = 0xc

.field public static final CURSOR_MIN_STEP:I = 0x0

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

    .line 36
    sput v0, Lcom/lge/camera/components/BrightnessBar;->RELEASE_EXPAND_LEFT:I

    .line 37
    sput v0, Lcom/lge/camera/components/BrightnessBar;->RELEASE_EXPAND_TOP:I

    .line 38
    sput v0, Lcom/lge/camera/components/BrightnessBar;->RELEASE_EXPAND_RIGHT:I

    .line 39
    sput v0, Lcom/lge/camera/components/BrightnessBar;->RELEASE_EXPAND_BOTTOM:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 354
    new-instance v0, Lcom/lge/camera/components/BrightnessBar$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BrightnessBar$4;-><init>(Lcom/lge/camera/components/BrightnessBar;)V

    iput-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 379
    new-instance v0, Lcom/lge/camera/components/BrightnessBar$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BrightnessBar$5;-><init>(Lcom/lge/camera/components/BrightnessBar;)V

    iput-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 354
    new-instance v0, Lcom/lge/camera/components/BrightnessBar$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BrightnessBar$4;-><init>(Lcom/lge/camera/components/BrightnessBar;)V

    iput-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 379
    new-instance v0, Lcom/lge/camera/components/BrightnessBar$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BrightnessBar$5;-><init>(Lcom/lge/camera/components/BrightnessBar;)V

    iput-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 354
    new-instance v0, Lcom/lge/camera/components/BrightnessBar$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BrightnessBar$4;-><init>(Lcom/lge/camera/components/BrightnessBar;)V

    iput-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 379
    new-instance v0, Lcom/lge/camera/components/BrightnessBar$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/BrightnessBar$5;-><init>(Lcom/lge/camera/components/BrightnessBar;)V

    iput-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/components/BrightnessBar;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/components/BrightnessBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/lge/camera/components/BrightnessBar;->mValue:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/components/BrightnessBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/components/BrightnessBar;->setCursor(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/camera/components/BrightnessBar;Landroid/view/View;ILandroid/view/MotionEvent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/camera/components/BrightnessBar;->updateBrightnessWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;Z)V

    return-void
.end method

.method static synthetic access$400()F
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/lge/camera/components/BrightnessBar;->CURSOR_WIDTH:F

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/lge/camera/components/BrightnessBar;->CURSOR_POS_WIDTH:I

    return v0
.end method

.method static synthetic access$600(Lcom/lge/camera/components/BrightnessBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/lge/camera/components/BrightnessBar;->updateBrightnessWithValue(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/camera/components/BrightnessBar;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/components/BrightnessBar;->isTouchUpAreaOfButton(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private getPixelFromDimens(I)I
    .locals 1
    .parameter "resId"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

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
    .line 423
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    sget v1, Lcom/lge/camera/components/BrightnessBar;->RELEASE_EXPAND_LEFT:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sget v2, Lcom/lge/camera/components/BrightnessBar;->RELEASE_EXPAND_RIGHT:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sget v1, Lcom/lge/camera/components/BrightnessBar;->RELEASE_EXPAND_TOP:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    sget v2, Lcom/lge/camera/components/BrightnessBar;->RELEASE_EXPAND_BOTTOM:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 427
    const/4 v0, 0x1

    .line 430
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCursor(I)V
    .locals 7
    .parameter "value"

    .prologue
    .line 258
    sget v3, Lcom/lge/camera/components/BrightnessBar;->MIN_CURSOR_POS:I

    int-to-float v4, p1

    sget v5, Lcom/lge/camera/components/BrightnessBar;->CURSOR_POS_WIDTH:I

    int-to-float v5, v5

    const/high16 v6, 0x4140

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v2, v3, v4

    .line 259
    .local v2, position:I
    sget v3, Lcom/lge/camera/components/BrightnessBar;->MAX_CURSOR_POS:I

    if-le v2, v3, :cond_0

    .line 260
    sget v2, Lcom/lge/camera/components/BrightnessBar;->MAX_CURSOR_POS:I

    .line 261
    :cond_0
    sget v3, Lcom/lge/camera/components/BrightnessBar;->MIN_CURSOR_POS:I

    if-ge v2, v3, :cond_1

    .line 262
    sget v2, Lcom/lge/camera/components/BrightnessBar;->MIN_CURSOR_POS:I

    .line 264
    :cond_1
    const v3, 0x7f090018

    invoke-virtual {p0, v3}, Lcom/lge/camera/components/BrightnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 265
    .local v0, cursor:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 266
    .local v1, param:Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 267
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    return-void
.end method

.method private setDisplayTimeout()V
    .locals 4

    .prologue
    .line 246
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    .line 248
    return-void
.end method

.method private setImageToIndexBar(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 229
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BrightnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 230
    return-void
.end method

.method private setLayoutDimension()V
    .locals 2

    .prologue
    .line 105
    const v0, 0x7f0a0117

    invoke-direct {p0, v0}, Lcom/lge/camera/components/BrightnessBar;->getPixelFromDimens(I)I

    move-result v0

    sput v0, Lcom/lge/camera/components/BrightnessBar;->MIN_CURSOR_POS:I

    .line 106
    const v0, 0x7f0a0116

    invoke-direct {p0, v0}, Lcom/lge/camera/components/BrightnessBar;->getPixelFromDimens(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/lge/camera/components/BrightnessBar;->CURSOR_WIDTH:F

    .line 107
    const v0, 0x7f0a0118

    invoke-direct {p0, v0}, Lcom/lge/camera/components/BrightnessBar;->getPixelFromDimens(I)I

    move-result v0

    sput v0, Lcom/lge/camera/components/BrightnessBar;->CURSOR_POS_WIDTH:I

    .line 108
    sget v0, Lcom/lge/camera/components/BrightnessBar;->MIN_CURSOR_POS:I

    sget v1, Lcom/lge/camera/components/BrightnessBar;->CURSOR_POS_WIDTH:I

    add-int/2addr v0, v1

    sput v0, Lcom/lge/camera/components/BrightnessBar;->MAX_CURSOR_POS:I

    .line 110
    const v0, 0x7f0a0139

    invoke-direct {p0, v0}, Lcom/lge/camera/components/BrightnessBar;->getPixelFromDimens(I)I

    move-result v0

    sput v0, Lcom/lge/camera/components/BrightnessBar;->RELEASE_EXPAND_LEFT:I

    .line 111
    const v0, 0x7f0a013a

    invoke-direct {p0, v0}, Lcom/lge/camera/components/BrightnessBar;->getPixelFromDimens(I)I

    move-result v0

    sput v0, Lcom/lge/camera/components/BrightnessBar;->RELEASE_EXPAND_TOP:I

    .line 112
    const v0, 0x7f0a013b

    invoke-direct {p0, v0}, Lcom/lge/camera/components/BrightnessBar;->getPixelFromDimens(I)I

    move-result v0

    sput v0, Lcom/lge/camera/components/BrightnessBar;->RELEASE_EXPAND_RIGHT:I

    .line 113
    const v0, 0x7f0a013c

    invoke-direct {p0, v0}, Lcom/lge/camera/components/BrightnessBar;->getPixelFromDimens(I)I

    move-result v0

    sput v0, Lcom/lge/camera/components/BrightnessBar;->RELEASE_EXPAND_BOTTOM:I

    .line 114
    return-void
.end method

.method private startTimerTask(Ljava/util/TimerTask;JJLandroid/view/View;)V
    .locals 6
    .parameter "t"
    .parameter "judge"
    .parameter "interval"
    .parameter "v"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mButtonCheckTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p6}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    new-instance v0, Ljava/util/Timer;

    const-string v1, "timer_long_press_check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mButtonCheckTimer:Ljava/util/Timer;

    .line 210
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mButtonCheckTimer:Ljava/util/Timer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private updateBrightness(IZ)V
    .locals 4
    .parameter "step"
    .parameter "isLongTouch"

    .prologue
    .line 129
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget v1, p0, Lcom/lge/camera/components/BrightnessBar;->mValue:I

    add-int v0, v1, p1

    .line 135
    .local v0, updatedValue:I
    const/16 v1, 0xc

    if-le v0, v1, :cond_2

    .line 136
    const/16 v0, 0xc

    .line 139
    :cond_2
    if-gez v0, :cond_3

    .line 140
    const/4 v0, 0x0

    .line 143
    :cond_3
    iget v1, p0, Lcom/lge/camera/components/BrightnessBar;->mValue:I

    if-eq v0, v1, :cond_0

    .line 145
    iput v0, p0, Lcom/lge/camera/components/BrightnessBar;->mValue:I

    .line 147
    iget-object v1, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v2, Lcom/lge/camera/components/BrightnessBar$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/components/BrightnessBar$1;-><init>(Lcom/lge/camera/components/BrightnessBar;)V

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 153
    if-eqz p2, :cond_4

    .line 154
    iget-object v1, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "key_brightness"

    iget v3, p0, Lcom/lge/camera/components/BrightnessBar;->mValue:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 155
    iget-object v1, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "com.lge.camera.command.setting.SetBrightness"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 167
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/components/BrightnessBar;->resetDisplayTimeout()V

    goto :goto_0

    .line 157
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v2, Lcom/lge/camera/components/BrightnessBar$2;

    invoke-direct {v2, p0}, Lcom/lge/camera/components/BrightnessBar$2;-><init>(Lcom/lge/camera/components/BrightnessBar;)V

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private updateBrightnessWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;Z)V
    .locals 7
    .parameter "v"
    .parameter "step"
    .parameter "event"
    .parameter "isLongTouch"

    .prologue
    .line 194
    invoke-direct {p0, p2, p4}, Lcom/lge/camera/components/BrightnessBar;->updateBrightness(IZ)V

    .line 196
    new-instance v1, Lcom/lge/camera/components/BrightnessBar$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/lge/camera/components/BrightnessBar$3;-><init>(Lcom/lge/camera/components/BrightnessBar;Landroid/view/View;ILandroid/view/MotionEvent;)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0xc8

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/components/BrightnessBar;->startTimerTask(Ljava/util/TimerTask;JJLandroid/view/View;)V

    .line 202
    return-void
.end method

.method private updateBrightnessWithValue(I)V
    .locals 3
    .parameter "value"

    .prologue
    const/16 v1, 0xc

    .line 172
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 176
    :cond_0
    iput p1, p0, Lcom/lge/camera/components/BrightnessBar;->mValue:I

    .line 178
    iget v0, p0, Lcom/lge/camera/components/BrightnessBar;->mValue:I

    if-le v0, v1, :cond_1

    .line 179
    iput v1, p0, Lcom/lge/camera/components/BrightnessBar;->mValue:I

    .line 181
    :cond_1
    iget v0, p0, Lcom/lge/camera/components/BrightnessBar;->mValue:I

    if-gez v0, :cond_2

    .line 182
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/BrightnessBar;->mValue:I

    .line 185
    :cond_2
    iget v0, p0, Lcom/lge/camera/components/BrightnessBar;->mValue:I

    invoke-direct {p0, v0}, Lcom/lge/camera/components/BrightnessBar;->setCursor(I)V

    .line 187
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_brightness"

    iget v2, p0, Lcom/lge/camera/components/BrightnessBar;->mValue:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 188
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.setting.SetBrightness"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/lge/camera/components/BrightnessBar;->resetDisplayTimeout()V

    goto :goto_0
.end method


# virtual methods
.method public initBrightnessBar(Lcom/lge/camera/Mediator;)V
    .locals 4
    .parameter "mediator"

    .prologue
    const/4 v3, 0x0

    .line 65
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BrightnessBar;->setVisibility(I)V

    .line 67
    iput-object p1, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    .line 70
    invoke-direct {p0}, Lcom/lge/camera/components/BrightnessBar;->setLayoutDimension()V

    .line 72
    const v1, 0x7f090018

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/BrightnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 75
    iget-object v1, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "key_brightness"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "not found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iput v3, p0, Lcom/lge/camera/components/BrightnessBar;->mValue:I

    .line 80
    :goto_0
    iget v1, p0, Lcom/lge/camera/components/BrightnessBar;->mValue:I

    invoke-direct {p0, v1}, Lcom/lge/camera/components/BrightnessBar;->setCursor(I)V

    .line 82
    iget-object v1, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v0

    .line 84
    .local v0, degree:I
    invoke-virtual {p0, v0, v3}, Lcom/lge/camera/components/BrightnessBar;->startRotation(IZ)V

    .line 86
    iget-object v1, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f090015

    invoke-virtual {v1, v2, v0, v3}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 87
    iget-object v1, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f09001a

    invoke-virtual {v1, v2, v0, v3}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 88
    return-void

    .line 78
    .end local v0           #degree:I
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "key_brightness"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lge/camera/components/BrightnessBar;->mValue:I

    goto :goto_0
.end method

.method public resetCursor(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/lge/camera/components/BrightnessBar;->setCursor(I)V

    .line 272
    return-void
.end method

.method public resetDisplayTimeout()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.ExitZoomBrightnessInteraction"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->removeScheduledCommand(Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lcom/lge/camera/components/BrightnessBar;->setDisplayTimeout()V

    .line 255
    :cond_0
    return-void
.end method

.method public resetValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 275
    iput p1, p0, Lcom/lge/camera/components/BrightnessBar;->mValue:I

    .line 276
    return-void
.end method

.method public setListener(Z)V
    .locals 4
    .parameter "set"

    .prologue
    const v0, 0x7f090019

    const v3, 0x7f090017

    const v2, 0x7f090014

    const/4 v1, 0x0

    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BrightnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/components/BrightnessBar;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 93
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/BrightnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/components/BrightnessBar;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    invoke-virtual {p0, v3}, Lcom/lge/camera/components/BrightnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/components/BrightnessBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BrightnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/BrightnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    invoke-virtual {p0, v3}, Lcom/lge/camera/components/BrightnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public showControl(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    const/4 v1, 0x0

    .line 233
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BrightnessBar;->setVisibility(I)V

    .line 234
    if-eqz p1, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/lge/camera/components/BrightnessBar;->setDisplayTimeout()V

    .line 243
    :goto_1
    return-void

    .line 233
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/components/BrightnessBar;->stopTimerTask()V

    .line 239
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BrightnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 240
    const v0, 0x7f090019

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BrightnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 241
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BrightnessBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1
.end method

.method public startRotation(IZ)V
    .locals 8
    .parameter "degree"
    .parameter "animation"

    .prologue
    const v7, 0x7f09001a

    const v6, 0x7f090015

    const/16 v5, 0xb4

    .line 282
    sparse-switch p1, :sswitch_data_0

    .line 290
    const v1, 0x7f0200d7

    .line 295
    .local v1, resId:I
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    const v4, 0x7f090012

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateLayout;

    .line 297
    .local v2, rl:Lcom/lge/camera/components/RotateLayout;
    if-eqz v2, :cond_2

    .line 298
    if-eqz p1, :cond_0

    const/16 v3, 0x5a

    if-ne p1, v3, :cond_3

    .line 299
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3, v6, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 300
    iget-object v3, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3, v7, p1, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 301
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 309
    :cond_1
    :goto_1
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 310
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_5

    .line 311
    const v3, 0x7f0a0114

    invoke-direct {p0, v3}, Lcom/lge/camera/components/BrightnessBar;->getPixelFromDimens(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 316
    :goto_2
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateLayout;->requestLayout()V

    .line 317
    invoke-virtual {v2}, Lcom/lge/camera/components/RotateLayout;->invalidate()V

    .line 325
    .end local v0           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-direct {p0, v1}, Lcom/lge/camera/components/BrightnessBar;->setImageToIndexBar(I)V

    .line 326
    return-void

    .line 285
    .end local v1           #resId:I
    .end local v2           #rl:Lcom/lge/camera/components/RotateLayout;
    :sswitch_0
    const v1, 0x7f0200d8

    .line 286
    .restart local v1       #resId:I
    goto :goto_0

    .line 303
    .restart local v2       #rl:Lcom/lge/camera/components/RotateLayout;
    :cond_3
    if-eq p1, v5, :cond_4

    const/16 v3, 0x10e

    if-ne p1, v3, :cond_1

    .line 304
    :cond_4
    invoke-virtual {v2, v5}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 305
    iget-object v3, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    add-int/lit16 v4, p1, 0xb4

    invoke-virtual {v3, v6, v4, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    .line 306
    iget-object v3, p0, Lcom/lge/camera/components/BrightnessBar;->mMediator:Lcom/lge/camera/Mediator;

    add-int/lit16 v4, p1, 0xb4

    invoke-virtual {v3, v7, v4, p2}, Lcom/lge/camera/Mediator;->setDegree(IIZ)V

    goto :goto_1

    .line 313
    .restart local v0       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    const v3, 0x7f0a0115

    invoke-direct {p0, v3}, Lcom/lge/camera/components/BrightnessBar;->getPixelFromDimens(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    .line 282
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public stopTimerTask()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mButtonCheckTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 218
    iget-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mButtonCheckTimer:Ljava/util/Timer;

    .line 221
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mOnButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 59
    iput-object v0, p0, Lcom/lge/camera/components/BrightnessBar;->mOnLineTouchListener:Landroid/view/View$OnTouchListener;

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/BrightnessBar;->setListener(Z)V

    .line 62
    return-void
.end method
