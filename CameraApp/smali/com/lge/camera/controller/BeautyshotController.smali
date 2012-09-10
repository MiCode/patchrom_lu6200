.class public Lcom/lge/camera/controller/BeautyshotController;
.super Lcom/lge/camera/controller/Controller;
.source "BeautyshotController.java"


# instance fields
.field private mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/Mediator;)V

    .line 18
    return-void
.end method


# virtual methods
.method public initController()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 22
    const-string v0, "CameraApp"

    const-string v1, "BeautyshotController init()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 24
    const v0, 0x7f090064

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/BeautyshotController;->inflateStub(I)Landroid/view/View;

    .line 25
    const v0, 0x7f090009

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/BeautyshotController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/BeautyshotBar;

    iput-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    .line 26
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/BeautyshotBar;->initBeautyshotBar(Lcom/lge/camera/Mediator;)V

    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/BeautyshotBar;->setListener(Z)V

    .line 28
    iput-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 30
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 79
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BeautyshotBar;->unbind()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    .line 83
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BeautyshotBar;->stopTimerTask()V

    .line 73
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    goto :goto_0
.end method

.method public refreshController()V
    .locals 2

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/BeautyshotBar;->initBeautyshotBar(Lcom/lge/camera/Mediator;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 54
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 57
    const/4 v0, 0x4

    .line 58
    .local v0, value:I
    iget-object v1, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/BeautyshotBar;->resetValue(I)V

    .line 60
    iget-object v1, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/BeautyshotBar;->resetCursor(I)V

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "key_beautyshot"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 64
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "com.lge.camera.command.setting.SetBeautyshot"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetDisplayTimeout()V
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BeautyshotBar;->resetDisplayTimeout()V

    goto :goto_0
.end method

.method public showControl(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/BeautyshotBar;->showControl(Z)V

    goto :goto_0
.end method

.method public startRotation(IZ)V
    .locals 1
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BeautyshotController;->mBeautyshotBar:Lcom/lge/camera/components/BeautyshotBar;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/components/BeautyshotBar;->startRotation(IZ)V

    goto :goto_0
.end method
