.class public Lcom/lge/camera/controller/ZoomController;
.super Lcom/lge/camera/controller/Controller;
.source "ZoomController.java"


# static fields
.field private static mZoomMaxValue:F


# instance fields
.field private mZoomBar:Lcom/lge/camera/components/ZoomBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput v0, Lcom/lge/camera/controller/ZoomController;->mZoomMaxValue:F

    return-void
.end method

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
.method public endZoomInOut()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 74
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_0

    .line 80
    :goto_0
    return v0

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    iput-boolean v0, v1, Lcom/lge/camera/components/ZoomBar;->mZoomKeyPressed:Z

    .line 79
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/ZoomBar;->stopTimerTask()V

    .line 80
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getZoomBar()Lcom/lge/camera/components/ZoomBar;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    return-object v0
.end method

.method public getZoomCursorMaxStep()I
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    const/16 v0, 0xf

    .line 58
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v0

    goto :goto_0
.end method

.method public getZoomMaxValue()F
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/lge/camera/controller/ZoomController;->mZoomMaxValue:F

    return v0
.end method

.method public initController()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 26
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    if-nez v0, :cond_0

    .line 28
    const v0, 0x7f090062

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/ZoomController;->inflateStub(I)Landroid/view/View;

    .line 29
    const v0, 0x7f0900df

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/ZoomController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ZoomBar;

    iput-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/ZoomBar;->initZoomBar(Lcom/lge/camera/Mediator;)V

    .line 32
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/ZoomBar;->setListener(Z)V

    .line 33
    iput-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 35
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 122
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/ZoomBar;->unbind()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    .line 126
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 105
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_0

    .line 117
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/ZoomController;->getZoomMaxValue()F

    move-result v2

    float-to-int v0, v2

    .line 108
    .local v0, zoomMaxValue:I
    iget-object v2, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v2}, Lcom/lge/camera/components/ZoomBar;->getValue()I

    move-result v1

    .line 109
    .local v1, zoomValue:I
    iget-object v2, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v2}, Lcom/lge/camera/components/ZoomBar;->getCursorMaxStep()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    .line 110
    mul-int v2, v1, v0

    div-int/lit8 v1, v2, 0xf

    .line 112
    :cond_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zoombar : mValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v4}, Lcom/lge/camera/components/ZoomBar;->getValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_zoom"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 115
    iget-object v2, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v2}, Lcom/lge/camera/components/ZoomBar;->stopTimerTask()V

    .line 116
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    goto :goto_0
.end method

.method public refreshController()V
    .locals 2

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/ZoomBar;->initZoomBar(Lcom/lge/camera/Mediator;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 5

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/lge/camera/controller/ZoomController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_zoom"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 89
    .local v0, preference:Lcom/lge/camera/setting/ListPreference;
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_zoom"

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getDefaultValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 93
    .local v1, value:I
    iget-object v2, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/ZoomBar;->resetValue(I)V

    .line 94
    iget-object v2, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/ZoomBar;->resetCursor(I)V

    .line 96
    .end local v1           #value:I
    :cond_0
    return-void
.end method

.method public resetDisplayTimeout()V
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0}, Lcom/lge/camera/components/ZoomBar;->resetDisplayTimeout()V

    goto :goto_0
.end method

.method public setZoomCursorMaxStep(I)V
    .locals 1
    .parameter "step"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/ZoomBar;->setCursorMaxStep(I)V

    goto :goto_0
.end method

.method public setZoomMaxValue(F)V
    .locals 0
    .parameter "max"

    .prologue
    .line 44
    sput p1, Lcom/lge/camera/controller/ZoomController;->mZoomMaxValue:F

    .line 45
    return-void
.end method

.method public showControl(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/ZoomBar;->showControl(Z)V

    .line 64
    if-nez p1, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/lge/camera/controller/ZoomController;->endZoomInOut()Z

    goto :goto_0
.end method

.method public startRotation(IZ)V
    .locals 1
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/ZoomController;->mZoomBar:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/components/ZoomBar;->startRotation(IZ)V

    goto :goto_0
.end method
