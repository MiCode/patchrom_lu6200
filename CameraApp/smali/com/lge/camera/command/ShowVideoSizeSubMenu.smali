.class public Lcom/lge/camera/command/ShowVideoSizeSubMenu;
.super Lcom/lge/camera/command/ShowSubMenu;
.source "ShowVideoSizeSubMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/lge/camera/command/ShowSubMenu;-><init>(Lcom/lge/camera/Mediator;)V

    .line 11
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 15
    const-string v0, "CameraApp"

    const-string v1, "ShowVideoSizeSubMenu is EXECUTE !!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 25
    :goto_0
    return-void

    .line 21
    :cond_0
    iput v2, p0, Lcom/lge/camera/command/ShowSubMenu;->mSubMenuMode:I

    .line 22
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    const-string v1, "key_preview_size_on_device"

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/command/ShowSubMenu;->mIndex:I

    .line 24
    invoke-super {p0}, Lcom/lge/camera/command/ShowSubMenu;->execute()V

    goto :goto_0
.end method
