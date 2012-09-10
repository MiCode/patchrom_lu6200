.class public Lcom/lge/camera/command/setting/CamcorderSettingCommand;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "CamcorderSettingCommand.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getMediator()Lcom/lge/camera/CamcorderMediator;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CamcorderMediator;

    return-object v0
.end method

.method public bridge synthetic getMediator()Lcom/lge/camera/Mediator;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/CamcorderSettingCommand;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getSettingMenu()Lcom/lge/camera/setting/SettingMenu;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/CamcorderSettingCommand;->getSettingMenu()Lcom/lge/camera/setting/VideoSettingMenu;

    move-result-object v0

    return-object v0
.end method

.method protected getSettingMenu()Lcom/lge/camera/setting/VideoSettingMenu;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/setting/VideoSettingMenu;

    return-object v0
.end method
