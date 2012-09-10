.class public Lcom/lge/camera/controller/BrightnessController;
.super Lcom/lge/camera/controller/Controller;
.source "BrightnessController.java"


# instance fields
.field private mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/Mediator;)V

    .line 17
    return-void
.end method


# virtual methods
.method public initController()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 21
    const-string v0, "CameraApp"

    const-string v1, "BrightnessController init()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 23
    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/BrightnessController;->inflateStub(I)Landroid/view/View;

    .line 24
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/BrightnessController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/BrightnessBar;

    iput-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    .line 25
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/BrightnessBar;->initBrightnessBar(Lcom/lge/camera/Mediator;)V

    .line 26
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/BrightnessBar;->setListener(Z)V

    .line 27
    iput-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 29
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 72
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BrightnessBar;->unbind()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    .line 76
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BrightnessBar;->stopTimerTask()V

    .line 66
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    goto :goto_0
.end method

.method public refreshController()V
    .locals 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 35
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/BrightnessBar;->initBrightnessBar(Lcom/lge/camera/Mediator;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 5

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/lge/camera/controller/BrightnessController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_brightness"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 54
    .local v0, preference:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 55
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_brightness"

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 56
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 57
    .local v1, value:I
    iget-object v2, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/BrightnessBar;->resetValue(I)V

    .line 58
    iget-object v2, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/BrightnessBar;->resetCursor(I)V

    .line 60
    .end local v1           #value:I
    :cond_0
    return-void
.end method

.method public resetDisplayTimeout()V
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/BrightnessBar;->resetDisplayTimeout()V

    goto :goto_0
.end method

.method public showControl(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/BrightnessBar;->showControl(Z)V

    goto :goto_0
.end method

.method public startRotation(IZ)V
    .locals 1
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/BrightnessController;->mBrightnessBar:Lcom/lge/camera/components/BrightnessBar;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/components/BrightnessBar;->startRotation(IZ)V

    goto :goto_0
.end method
