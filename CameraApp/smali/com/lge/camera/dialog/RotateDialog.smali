.class public Lcom/lge/camera/dialog/RotateDialog;
.super Ljava/lang/Object;
.source "RotateDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field protected mMediator:Lcom/lge/camera/Mediator;

.field protected mOrientation:I

.field protected mView:Landroid/view/View;


# direct methods
.method protected constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/dialog/RotateDialog;->mOrientation:I

    .line 26
    iput-object p1, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    .line 27
    return-void
.end method


# virtual methods
.method protected alignButtonLine()V
    .locals 6

    .prologue
    .line 57
    iget-object v4, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    const v5, 0x7f0900bd

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 58
    .local v1, btnOk:Landroid/widget/Button;
    iget-object v4, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    const v5, 0x7f0900bc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 60
    .local v0, btnCancel:Landroid/widget/Button;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {v1}, Landroid/widget/Button;->getLineCount()I

    move-result v3

    .line 65
    .local v3, lineCountBtnOk:I
    invoke-virtual {v0}, Landroid/widget/Button;->getLineCount()I

    move-result v2

    .line 66
    .local v2, lineCountBtnCancel:I
    if-le v3, v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setLines(I)V

    .line 67
    :cond_2
    if-le v2, v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLines(I)V

    goto :goto_0
.end method

.method protected create(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    .line 31
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v2, :cond_0

    .line 54
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const v3, 0x7f09005e

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 36
    .local v1, vg:Landroid/view/ViewGroup;
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 39
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v3, Lcom/lge/camera/dialog/RotateDialog$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/dialog/RotateDialog$1;-><init>(Lcom/lge/camera/dialog/RotateDialog;)V

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 53
    invoke-virtual {p0}, Lcom/lge/camera/dialog/RotateDialog;->showBackcoverAnimation()V

    goto :goto_0
.end method

.method protected hideRotateDialogAnimation()V
    .locals 4

    .prologue
    .line 141
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f09009b

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 142
    .local v0, rl:Lcom/lge/camera/components/RotateLayout;
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/dialog/RotateDialog;->startAlphaAnimation(Landroid/view/View;III)V

    .line 143
    return-void
.end method

.method public onDismiss()V
    .locals 4

    .prologue
    .line 75
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const v3, 0x7f09005e

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 88
    .local v1, vg:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 90
    iget-object v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v0

    .line 91
    .local v0, controller:Lcom/lge/camera/controller/DialogController;
    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->onDismiss()V

    .line 94
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/lge/camera/dialog/RotateDialog;->mOrientation:I

    goto :goto_0
.end method

.method public onPrepare()V
    .locals 0

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/lge/camera/dialog/RotateDialog;->alignButtonLine()V

    .line 72
    return-void
.end method

.method protected showBackcoverAnimation()V
    .locals 4

    .prologue
    .line 129
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 130
    .local v0, rl:Landroid/widget/RelativeLayout;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x320

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/dialog/RotateDialog;->startAlphaAnimation(Landroid/view/View;III)V

    .line 131
    return-void
.end method

.method protected showRotateDialogAnimation()V
    .locals 4

    .prologue
    .line 135
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f09009b

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 136
    .local v0, rl:Lcom/lge/camera/components/RotateLayout;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xc8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/dialog/RotateDialog;->startAlphaAnimation(Landroid/view/View;III)V

    .line 137
    return-void
.end method

.method protected startAlphaAnimation(Landroid/view/View;III)V
    .locals 3
    .parameter "v"
    .parameter "start"
    .parameter "end"
    .parameter "duration"

    .prologue
    .line 123
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 124
    .local v0, anim:Landroid/view/animation/Animation;
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 126
    return-void
.end method

.method public startRotation(I)V
    .locals 5
    .parameter "degree"

    .prologue
    const v4, 0x7f09009b

    .line 98
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RotatableDialog startRotataion(degree) start = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v4}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    iget v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mOrientation:I

    if-ne v1, p1, :cond_2

    .line 108
    const-string v1, "CameraApp"

    const-string v2, "RotatableDialog startRotataion : rotate same."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_2
    iput p1, p0, Lcom/lge/camera/dialog/RotateDialog;->mOrientation:I

    .line 113
    invoke-virtual {p0}, Lcom/lge/camera/dialog/RotateDialog;->hideRotateDialogAnimation()V

    .line 114
    iget-object v1, p0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, v4}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 115
    .local v0, rl:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v0, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 116
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->requestLayout()V

    .line 117
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateLayout;->invalidate()V

    .line 118
    invoke-virtual {p0}, Lcom/lge/camera/dialog/RotateDialog;->showRotateDialogAnimation()V

    .line 119
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RotatableDialog startRotataion(degree) end = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
