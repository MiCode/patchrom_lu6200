.class public Lcom/lge/camera/command/SnapshotEffect;
.super Lcom/lge/camera/command/Command;
.source "SnapshotEffect.java"


# instance fields
.field private capturedImageAniListener:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 27
    new-instance v0, Lcom/lge/camera/command/SnapshotEffect$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/command/SnapshotEffect$1;-><init>(Lcom/lge/camera/command/SnapshotEffect;)V

    iput-object v0, p0, Lcom/lge/camera/command/SnapshotEffect;->capturedImageAniListener:Landroid/view/animation/Animation$AnimationListener;

    .line 18
    return-void
.end method

.method private startAnimation(Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;)V
    .locals 3
    .parameter "aniListener"
    .parameter "captureImageView"

    .prologue
    .line 40
    const/4 v1, -0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 41
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 43
    const/4 v0, 0x0

    .line 46
    .local v0, aa:Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0           #aa:Landroid/view/animation/AlphaAnimation;
    const/high16 v1, 0x3f40

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 47
    .restart local v0       #aa:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 48
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 49
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 50
    invoke-virtual {p2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 51
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    .line 22
    const-string v1, "CameraApp"

    const-string v2, "SnapshotEffect"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const v1, 0x7f090091

    invoke-virtual {p0, v1}, Lcom/lge/camera/command/SnapshotEffect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 24
    .local v0, mOnDelayOffView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/lge/camera/command/SnapshotEffect;->capturedImageAniListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, v1, v0}, Lcom/lge/camera/command/SnapshotEffect;->startAnimation(Landroid/view/animation/Animation$AnimationListener;Landroid/view/View;)V

    .line 25
    return-void
.end method
