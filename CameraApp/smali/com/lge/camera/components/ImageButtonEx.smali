.class public Lcom/lge/camera/components/ImageButtonEx;
.super Landroid/widget/ImageButton;
.source "ImageButtonEx.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;,
        Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;
    }
.end annotation


# static fields
.field public static final BUTTON_STATE_LONG_PRESSED:I = 0x2

.field public static final BUTTON_STATE_NOT_PRESSED:I = 0x0

.field public static final BUTTON_STATE_PRESSED:I = 0x1

.field public static final BUTTON_STATE_RELEASED:I = 0x3

.field public static final IBE_BUTTON_MIN:I = 0x0

.field public static final IBE_BUTTON_PLUS:I = 0x1

.field private static final LONG_PRESS_EVENT_DELAY:J = 0xc8L

.field private static final LONG_PRESS_JUDGE_TIMEOUT:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private mButtonCheckTimer:Ljava/util/Timer;

.field private mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

.field private mButtonStatus:I

.field private mMediator:Lcom/lge/camera/Mediator;

.field private mReleaseArea:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    .line 81
    iput v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    .line 53
    invoke-virtual {p0, p0}, Lcom/lge/camera/components/ImageButtonEx;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ImageButtonEx;->setFocusable(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/lge/camera/components/ImageButtonEx;->initReleaseArea()V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/components/ImageButtonEx;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/lge/camera/components/ImageButtonEx;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/lge/camera/components/ImageButtonEx;)Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    return-object v0
.end method

.method private checkOutRange(Landroid/view/View;IFF)Z
    .locals 3
    .parameter "v"
    .parameter "index"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    .line 127
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    iget v0, v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mTop:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    iget v0, v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mBottom:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    :cond_0
    move v0, v1

    .line 131
    :goto_0
    return v0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    iget v0, v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    iget v0, v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;->mRight:I

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_3

    :cond_2
    move v0, v1

    .line 130
    goto :goto_0

    .line 131
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startTimerTask(Ljava/util/TimerTask;JJ)V
    .locals 6
    .parameter "t"
    .parameter "judge"
    .parameter "interval"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/util/Timer;

    const-string v1, "timer_long_press_check"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    .line 112
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 114
    :cond_0
    return-void
.end method

.method private stopTimerTask()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 119
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonCheckTimer:Ljava/util/Timer;

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public initReleaseArea()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    .line 88
    iget-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v1, :cond_0

    .line 89
    new-instance v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    iget-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0120

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    iget-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a0122

    invoke-static {v1, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    iget-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0a0121

    invoke-static {v1, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    iget-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f0a0123

    invoke-static {v1, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;-><init>(Lcom/lge/camera/components/ImageButtonEx;IIII)V

    .line 96
    .local v0, ra:Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 98
    iget-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v1, :cond_1

    .line 99
    new-instance v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    .end local v0           #ra:Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;
    iget-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0139

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    iget-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0a013a

    invoke-static {v1, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    iget-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0a013b

    invoke-static {v1, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    iget-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f0a013c

    invoke-static {v1, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;-><init>(Lcom/lge/camera/components/ImageButtonEx;IIII)V

    .line 106
    .restart local v0       #ra:Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mReleaseArea:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 107
    return-void

    .line 94
    .end local v0           #ra:Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;
    :cond_0
    new-instance v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    move-object v1, p0

    move v2, v6

    move v3, v6

    move v4, v6

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;-><init>(Lcom/lge/camera/components/ImageButtonEx;IIII)V

    .restart local v0       #ra:Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;
    goto :goto_0

    .line 104
    :cond_1
    new-instance v0, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;

    .end local v0           #ra:Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;
    move-object v1, p0

    move v2, v6

    move v3, v6

    move v4, v6

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;-><init>(Lcom/lge/camera/components/ImageButtonEx;IIII)V

    .restart local v0       #ra:Lcom/lge/camera/components/ImageButtonEx$ReleaseArea;
    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const v5, 0x7f090015

    const v4, 0x7f090014

    const/4 v8, 0x1

    const/4 v1, 0x0

    const v3, 0x7f020009

    .line 139
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 140
    .local v6, x:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 144
    .local v7, y:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v0, v1

    .line 223
    :goto_1
    return v0

    .line 147
    :pswitch_0
    iput v8, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 150
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 154
    :cond_1
    :goto_2
    const-string v0, "CameraApp"

    const-string v1, "ImageButtonEx pressed"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v1, Lcom/lge/camera/components/ImageButtonEx$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/components/ImageButtonEx$1;-><init>(Lcom/lge/camera/components/ImageButtonEx;)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0xc8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/components/ImageButtonEx;->startTimerTask(Ljava/util/TimerTask;JJ)V

    move v0, v8

    .line 178
    goto :goto_1

    .line 151
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f09001a

    if-ne v0, v1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 183
    :pswitch_1
    iget v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 184
    invoke-direct {p0, p1, v8, v6, v7}, Lcom/lge/camera/components/ImageButtonEx;->checkOutRange(Landroid/view/View;IFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 188
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 192
    :cond_3
    :goto_3
    iput v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    .line 193
    const-string v0, "CameraApp"

    const-string v2, "ImageButtonEx released"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/lge/camera/components/ImageButtonEx;->stopTimerTask()V

    .line 195
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;->onChange(I)V

    goto/16 :goto_0

    .line 189
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f09001a

    if-ne v0, v2, :cond_3

    .line 190
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090019

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 207
    :pswitch_2
    iget v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 211
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 215
    :cond_5
    :goto_4
    iput v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I

    .line 216
    const-string v0, "CameraApp"

    const-string v2, "ImageButtonEx released"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/lge/camera/components/ImageButtonEx;->stopTimerTask()V

    .line 218
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;->onChange(I)V

    goto/16 :goto_0

    .line 212
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v2, 0x7f09001a

    if-ne v0, v2, :cond_5

    .line 213
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090019

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setImageButtonExStatusListener(Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    .line 228
    return-void
.end method

.method public setMediator(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/lge/camera/components/ImageButtonEx;->mMediator:Lcom/lge/camera/Mediator;

    .line 136
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-direct {p0}, Lcom/lge/camera/components/ImageButtonEx;->stopTimerTask()V

    .line 236
    iput-object v1, p0, Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    .line 237
    invoke-virtual {p0}, Lcom/lge/camera/components/ImageButtonEx;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 238
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ImageButtonEx;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    invoke-virtual {p0}, Lcom/lge/camera/components/ImageButtonEx;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 240
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ImageButtonEx;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    return-void
.end method
