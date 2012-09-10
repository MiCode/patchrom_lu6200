.class public Lcom/lge/camera/command/ShowShotModeSubMenu;
.super Lcom/lge/camera/command/ShowSubMenu;
.source "ShowShotModeSubMenu.java"


# instance fields
.field mQuickFunctionController:Lcom/lge/camera/controller/QuickFunctionController;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/command/ShowSubMenu;-><init>(Lcom/lge/camera/Mediator;)V

    .line 17
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    const/16 v2, 0x11

    .line 21
    const-string v0, "CameraApp"

    const-string v1, "ShowShotModeSubMenu is EXECUTE !!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 31
    :cond_2
    iput v2, p0, Lcom/lge/camera/command/ShowSubMenu;->mSubMenuMode:I

    .line 32
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    const-string v1, "key_camera_shot_mode"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/command/ShowSubMenu;->mIndex:I

    .line 34
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->removePanoramaView()V

    .line 39
    :cond_3
    invoke-super {p0}, Lcom/lge/camera/command/ShowSubMenu;->execute()V

    goto :goto_0
.end method
