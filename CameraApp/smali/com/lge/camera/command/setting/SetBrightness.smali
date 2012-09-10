.class public Lcom/lge/camera/command/setting/SetBrightness;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetBrightness.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 16
    return-void
.end method

.method private scaleParameter(ILandroid/hardware/Camera$Parameters;)I
    .locals 9
    .parameter "value"
    .parameter "params"

    .prologue
    const/high16 v8, 0x4140

    .line 41
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v5

    const/16 v6, 0x15

    if-ne v5, v6, :cond_0

    .line 42
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v1, v5

    .line 43
    .local v1, max:F
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v2, v5

    .line 44
    .local v2, min:F
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "brightness max : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", min : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sub-float v5, v1, v2

    div-float v0, v5, v8

    .line 46
    .local v0, compensationFactor:F
    int-to-float v5, p1

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    float-to-int v6, v2

    add-int v3, v5, v6

    .local v3, scaledValue:I
    move v4, v3

    .line 54
    .end local v3           #scaledValue:I
    .local v4, scaledValue:I
    :goto_0
    return v4

    .line 49
    .end local v0           #compensationFactor:F
    .end local v1           #max:F
    .end local v2           #min:F
    .end local v4           #scaledValue:I
    :cond_0
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v5

    int-to-float v1, v5

    .line 50
    .restart local v1       #max:F
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v5

    int-to-float v2, v5

    .line 51
    .restart local v2       #min:F
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "brightness max : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", min : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sub-float v5, v1, v2

    div-float v0, v5, v8

    .line 53
    .restart local v0       #compensationFactor:F
    int-to-float v5, p1

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    float-to-int v6, v2

    add-int v3, v5, v6

    .restart local v3       #scaledValue:I
    move v4, v3

    .line 54
    .end local v3           #scaledValue:I
    .restart local v4       #scaledValue:I
    goto :goto_0
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetBrightness;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 6
    .parameter "parameters"
    .parameter "arg"

    .prologue
    .line 24
    const-string v3, "CameraApp"

    const-string v4, "SetBrightness"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_brightness"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, stringValue:Ljava/lang/String;
    const-string v3, "not found"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    const-string v3, "CameraApp"

    const-string v4, "Need to check string whether it is convertable or not."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_brightness"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 34
    .local v1, value:I
    invoke-direct {p0, v1, p1}, Lcom/lge/camera/command/setting/SetBrightness;->scaleParameter(ILandroid/hardware/Camera$Parameters;)I

    move-result v2

    .line 36
    .local v2, valueForParameter:I
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "brightness value to parameter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    goto :goto_0
.end method
