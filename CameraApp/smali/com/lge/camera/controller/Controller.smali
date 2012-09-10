.class public abstract Lcom/lge/camera/controller/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field protected mInit:Z

.field protected mMediator:Lcom/lge/camera/Mediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 19
    iput-object p1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    .line 20
    return-void
.end method


# virtual methods
.method protected clearAnimation(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/Controller;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Animation;->cancel()V

    .line 73
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 75
    :cond_0
    return-void
.end method

.method protected findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p1}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getMediator()Lcom/lge/camera/Mediator;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method protected getPixelFromDimens(I)I
    .locals 1
    .parameter "id"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method protected getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p1}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected inflateStub(I)Landroid/view/View;
    .locals 5
    .parameter "id"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/Controller;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 44
    .local v1, viewStub:Landroid/view/ViewStub;
    const/4 v0, 0x0

    .line 45
    .local v0, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 47
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inflated view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    return-object v0
.end method

.method protected inflateView(I)Landroid/view/View;
    .locals 1
    .parameter "resource"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p1}, Lcom/lge/camera/Mediator;->inflateView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public initController()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    .line 92
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 63
    :cond_0
    return-void
.end method

.method protected toast(I)V
    .locals 1
    .parameter "resource"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p1}, Lcom/lge/camera/Mediator;->toast(I)V

    .line 57
    :cond_0
    return-void
.end method
