.class public Lcom/android/internal/policy/impl/PointTouchUnlockFrame;
.super Landroid/widget/FrameLayout;
.source "PointTouchUnlockFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PointTouchUnlockFrame$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final BUTTON_DRAWING_STATE_BLINK:I = 0x1

.field private static final BUTTON_DRAWING_STATE_IDLE:I = 0x0

.field private static final BUTTON_DRAWING_STATE_SHINING:I = 0x2

.field private static final VIBRATE_LONG:J = 0x28L

.field private static final VIBRATE_SHORT:J = 0x1eL


# instance fields
.field private DEBUG_ON:Z

.field private TAG:Ljava/lang/String;

.field private mBlinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mBlinkingField:Landroid/widget/ImageView;

.field private mButtonDrawingState:I

.field private mIsButtonPressed:Z

.field private mIsUnlocked:Z

.field private mOnTriggerListener:Lcom/android/internal/policy/impl/PointTouchUnlockFrame$OnTriggerListener;

.field private mPadLock:Landroid/widget/ImageView;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->DEBUG_ON:Z

    .line 73
    new-instance v0, Ljava/lang/String;

    const-string v1, "PointTouchUnlockFrame"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->TAG:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    .line 79
    iput-object v2, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mBlinkingField:Landroid/widget/ImageView;

    .line 82
    iput-object v2, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mBlinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 85
    iput v3, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mButtonDrawingState:I

    .line 88
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mIsButtonPressed:Z

    .line 91
    iput-object v2, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mOnTriggerListener:Lcom/android/internal/policy/impl/PointTouchUnlockFrame$OnTriggerListener;

    .line 94
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mIsUnlocked:Z

    .line 97
    iput-object v2, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mVibrator:Landroid/os/Vibrator;

    .line 101
    iput-object v2, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mPowerManager:Landroid/os/PowerManager;

    .line 115
    const-string v0, "PointTouchUnlockFrame"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 117
    const-string v0, "PointTouchUnlockFrame"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private isButtonPressed(FF)Z
    .locals 4
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    .line 220
    const-string v2, "isButtonPressed"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, pressed:Z
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 226
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 229
    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    const/4 v0, 0x1

    .line 235
    :cond_0
    const-string v2, "isButtonPressed"

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 236
    return v0
.end method

.method private onButtonPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 406
    const-string v0, "onButtonPressed"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 408
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mIsButtonPressed:Z

    .line 411
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->stopButtonBlink()V

    .line 414
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->setButtonShining(Z)V

    .line 417
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->vibrate(J)V

    .line 419
    const-string v0, "onButtonPressed"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method private onButtonReleased(Z)V
    .locals 2
    .parameter "haspressed"

    .prologue
    const/4 v1, 0x0

    .line 426
    const-string v0, "onButtonReleased"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 428
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mIsButtonPressed:Z

    .line 431
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 434
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->unLockScreen()V

    .line 445
    :goto_0
    const-string v0, "onButtonReleased"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 446
    return-void

    .line 438
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->setButtonShining(Z)V

    .line 441
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->startButtonBlink()V

    goto :goto_0
.end method

.method private setButtonDisabled()V
    .locals 2

    .prologue
    .line 384
    const-string v0, "setButtonDisabled"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 387
    iget v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mButtonDrawingState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 390
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->stopButtonBlink()V

    .line 399
    :cond_0
    :goto_0
    const-string v0, "setButtonDisabled"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 400
    return-void

    .line 392
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mButtonDrawingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 395
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->setButtonShining(Z)V

    goto :goto_0
.end method

.method private setButtonShining(Z)V
    .locals 2
    .parameter "shining"

    .prologue
    .line 355
    const-string v0, "setButtonShining"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mBlinkingField:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 359
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mBlinkingField:Landroid/widget/ImageView;

    const v1, 0x2020111

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 363
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mButtonDrawingState:I

    .line 377
    :goto_0
    const-string v0, "setButtonShining"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 378
    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mBlinkingField:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mButtonDrawingState:I

    goto :goto_0

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->TAG:Ljava/lang/String;

    const-string v1, "PointTouchUnlockFrame.setButtonShining(): mBlinkingField is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startButtonBlink()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 282
    const-string v0, "startButtonBlink"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mPowerManager:Landroid/os/PowerManager;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eq v0, v2, :cond_1

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPowerManager.isScreenOn()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceLog(Ljava/lang/String;)V

    .line 291
    const-string v0, "startButtonBlink"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 325
    :goto_0
    return-void

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mBlinkingField:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 299
    iget v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mButtonDrawingState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->setButtonShining(Z)V

    .line 305
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mBlinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_4

    .line 306
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mBlinkingField:Landroid/widget/ImageView;

    const/high16 v1, 0x204

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mBlinkingField:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mBlinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 312
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mBlinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mBlinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 316
    iput v2, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mButtonDrawingState:I

    .line 324
    :cond_3
    :goto_2
    const-string v0, "startButtonBlink"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mBlinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_1

    .line 320
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->TAG:Ljava/lang/String;

    const-string v1, "PointTouchUnlockFrame.startButtonBlink(): mBlinkingField is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private stopButtonBlink()V
    .locals 2

    .prologue
    .line 331
    const-string v0, "stopButtonBlink"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mBlinkingField:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mBlinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mBlinkAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 338
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mButtonDrawingState:I

    .line 348
    :goto_0
    const-string v0, "stopButtonBlink"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 349
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->TAG:Ljava/lang/String;

    const-string v1, "PointTouchUnlockFrame.stopButtonBlink(): mBlinkAnimation is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->TAG:Ljava/lang/String;

    const-string v1, "PointTouchUnlockFrame.stopButtonBlink(): mBlinkingField is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private traceIn(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   <<<<< IN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceLog(Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method private traceLog(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->DEBUG_ON:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PointTouchUnlockFrame."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    return-void
.end method

.method private traceOut(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   >>>>> OUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceLog(Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method private unLockScreen()V
    .locals 2

    .prologue
    .line 452
    const-string v0, "unLockScreen"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    const v1, 0x20201d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 462
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mIsUnlocked:Z

    .line 464
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mOnTriggerListener:Lcom/android/internal/policy/impl/PointTouchUnlockFrame$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mOnTriggerListener:Lcom/android/internal/policy/impl/PointTouchUnlockFrame$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame$OnTriggerListener;->onScreenTimeOutExtended()V

    .line 470
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mOnTriggerListener:Lcom/android/internal/policy/impl/PointTouchUnlockFrame$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame$OnTriggerListener;->onUnlocked()V

    .line 478
    :goto_1
    const-wide/16 v0, 0x28

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->vibrate(J)V

    .line 480
    const-string v0, "unLockScreen"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 481
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->TAG:Ljava/lang/String;

    const-string v1, "PointTouchUnlockFrame.unLockScreen(): mPadLock is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->TAG:Ljava/lang/String;

    const-string v1, "PointTouchUnlockFrame.unLockScreen(): mOnTriggerListener is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private declared-synchronized vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 487
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mVibrator:Landroid/os/Vibrator;

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    monitor-exit p0

    return-void

    .line 487
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public initFrame()V
    .locals 2

    .prologue
    .line 246
    const-string v0, "initFrame"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 250
    const v0, 0x209005c

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    .line 251
    const v0, 0x209005b

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mBlinkingField:Landroid/widget/ImageView;

    .line 254
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    const v1, 0x20201d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 259
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mIsUnlocked:Z

    .line 262
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->startButtonBlink()V

    .line 264
    const-string v0, "initFrame"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 518
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 521
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->setButtonDisabled()V

    .line 523
    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 524
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 498
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    const v1, 0x20201d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 506
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mIsUnlocked:Z

    .line 509
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->startButtonBlink()V

    .line 511
    const-string v0, "onResume"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 161
    const-string v4, "onTouchEvent"

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 163
    const/4 v1, 0x0

    .line 165
    .local v1, bret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 166
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 167
    .local v2, positionX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 169
    .local v3, positionY:F
    packed-switch v0, :pswitch_data_0

    .line 203
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 207
    :goto_0
    const-string v4, "onTouchEvent"

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 208
    return v1

    .line 172
    :pswitch_0
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mIsUnlocked:Z

    if-nez v4, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->onButtonPressed()V

    .line 176
    :cond_0
    const/4 v1, 0x1

    .line 177
    goto :goto_0

    .line 181
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mIsButtonPressed:Z

    if-ne v4, v5, :cond_1

    .line 184
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->onButtonReleased(Z)V

    .line 186
    :cond_1
    const/4 v1, 0x1

    .line 187
    goto :goto_0

    .line 191
    :pswitch_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mIsButtonPressed:Z

    if-ne v4, v5, :cond_2

    .line 194
    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->isButtonPressed(FF)Z

    move-result v4

    if-nez v4, :cond_2

    .line 196
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->onButtonReleased(Z)V

    .line 199
    :cond_2
    const/4 v1, 0x1

    .line 200
    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasWindowFocus"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    const-string v0, "onWindowFocusChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 129
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 131
    if-ne p1, v1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mPadLock:Landroid/widget/ImageView;

    const v1, 0x20201d3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mIsUnlocked:Z

    .line 142
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->startButtonBlink()V

    .line 156
    :goto_0
    const-string v0, "onWindowFocusChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 157
    return-void

    .line 147
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mIsButtonPressed:Z

    if-ne v0, v1, :cond_2

    .line 149
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->onButtonReleased(Z)V

    .line 153
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->setButtonDisabled()V

    goto :goto_0
.end method

.method public setOnTriggerListener(Lcom/android/internal/policy/impl/PointTouchUnlockFrame$OnTriggerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 271
    const-string v0, "setOnTriggerListener"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceIn(Ljava/lang/String;)V

    .line 273
    iput-object p1, p0, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->mOnTriggerListener:Lcom/android/internal/policy/impl/PointTouchUnlockFrame$OnTriggerListener;

    .line 275
    const-string v0, "setOnTriggerListener"

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/PointTouchUnlockFrame;->traceOut(Ljava/lang/String;)V

    .line 276
    return-void
.end method
