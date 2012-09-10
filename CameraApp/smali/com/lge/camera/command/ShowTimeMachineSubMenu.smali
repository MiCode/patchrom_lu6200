.class public Lcom/lge/camera/command/ShowTimeMachineSubMenu;
.super Lcom/lge/camera/command/ShowSubMenu;
.source "ShowTimeMachineSubMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/lge/camera/command/ShowSubMenu;-><init>(Lcom/lge/camera/Mediator;)V

    .line 12
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    .line 16
    const-string v0, "CameraApp"

    const-string v1, "ShowTimeMachineSubMenu is EXECUTE !!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 26
    :goto_0
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 22
    iput v2, p0, Lcom/lge/camera/command/ShowSubMenu;->mSubMenuMode:I

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    const-string v1, "key_time_machine"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/command/ShowSubMenu;->mIndex:I

    .line 25
    invoke-super {p0}, Lcom/lge/camera/command/ShowSubMenu;->execute()V

    goto :goto_0
.end method
