.class public Lcom/lge/camera/command/setting/SetZoom;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetZoom.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 18
    return-void
.end method

.method private scaleParameter(ILandroid/hardware/Camera$Parameters;)I
    .locals 6
    .parameter "value"
    .parameter "params"

    .prologue
    const/4 v5, 0x0

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, max:F
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v3

    int-to-float v1, v3

    .line 88
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v3

    const/16 v4, 0x19

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    cmpl-float v3, v1, v5

    if-eqz v3, :cond_0

    .line 91
    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    .line 95
    :cond_0
    cmpl-float v3, v1, v5

    if-lez v3, :cond_2

    .line 96
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lge/camera/controller/ZoomController;->setZoomMaxValue(F)V

    .line 101
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/ZoomController;->getZoomCursorMaxStep()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v1, v3

    .line 103
    .local v0, compensationFactor:F
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compensationFactor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", max = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    int-to-float v3, p1

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 105
    .local v2, scaledValue:I
    int-to-float v3, v2

    cmpl-float v3, v3, v1

    if-lez v3, :cond_1

    .line 106
    float-to-int v2, v1

    .line 108
    :cond_1
    return v2

    .line 98
    .end local v0           #compensationFactor:F
    .end local v2           #scaledValue:I
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/ZoomController;->getZoomMaxValue()F

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetZoom;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 9
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v8, 0x1

    .line 27
    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    .line 28
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "mValue"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 30
    .local v1, mZoomValue:I
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v6, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v6

    if-eq v6, v8, :cond_0

    .line 40
    if-nez v1, :cond_4

    .line 41
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v7, "key_zoom"

    invoke-virtual {v6, v7}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    .local v3, stringValue:Ljava/lang/String;
    const-string v6, "not found"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 43
    const-string v6, "CameraApp"

    const-string v7, "Need to check string whether it is convertable or not."

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_2
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v7, "key_zoom"

    invoke-virtual {v6, v7}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 49
    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getZoomController()Lcom/lge/camera/controller/ZoomController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/camera/controller/ZoomController;->getZoomCursorMaxStep()I

    move-result v5

    .line 50
    .local v5, zoomCursorMaxStep:I
    const/4 v2, 0x0

    .line 51
    .local v2, max:I
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    .line 56
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v6

    const/16 v7, 0x19

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v6}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v6

    if-ne v6, v8, :cond_3

    if-eqz v2, :cond_3

    .line 59
    div-int/lit8 v2, v2, 0x2

    .line 63
    :cond_3
    const/16 v6, 0xf

    if-ne v5, v6, :cond_4

    if-lez v2, :cond_4

    .line 64
    mul-int/lit8 v6, v1, 0xf

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 68
    .end local v2           #max:I
    .end local v3           #stringValue:Ljava/lang/String;
    .end local v5           #zoomCursorMaxStep:I
    :cond_4
    if-gez v1, :cond_5

    .line 69
    const/4 v1, 0x0

    .line 71
    :cond_5
    invoke-direct {p0, v1, p1}, Lcom/lge/camera/command/setting/SetZoom;->scaleParameter(ILandroid/hardware/Camera$Parameters;)I

    move-result v4

    .line 72
    .local v4, valueOfParameter:I
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "zoom value to parameter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    goto/16 :goto_0
.end method
