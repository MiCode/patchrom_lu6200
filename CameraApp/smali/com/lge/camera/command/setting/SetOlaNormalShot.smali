.class public Lcom/lge/camera/command/setting/SetOlaNormalShot;
.super Lcom/lge/camera/command/setting/CameraSettingCommand;
.source "SetOlaNormalShot.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/CameraSettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 12
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetOlaNormalShot;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 2
    .parameter "parameters"
    .parameter "arg"

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetOlaNormalShot;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    instance-of v0, v0, Lcom/lge/camera/module/DefaultNormalShot;

    if-eqz v0, :cond_0

    .line 22
    :goto_0
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "DefaultNormalShot"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->setModule(Ljava/lang/String;)V

    goto :goto_0
.end method
