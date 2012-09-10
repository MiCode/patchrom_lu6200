.class public Lcom/lge/camera/setting/VideoMainSettingMenu;
.super Lcom/lge/camera/setting/VideoSettingMenu;
.source "VideoMainSettingMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;Landroid/content/Context;Lcom/lge/camera/setting/VideoSetting;)V
    .locals 3
    .parameter "mediator"
    .parameter "context"
    .parameter "setting"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/setting/VideoSettingMenu;-><init>(Lcom/lge/camera/Mediator;Landroid/content/Context;Lcom/lge/camera/setting/VideoSetting;)V

    .line 15
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 17
    invoke-virtual {p0}, Lcom/lge/camera/setting/VideoMainSettingMenu;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isMMSIntent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/setting/VideoMainSettingMenu;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getMmsResolutionsLength()I

    move-result v0

    if-nez v0, :cond_1

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->setPreferenceGroup(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/setting/VideoMainSettingMenu;->initMenu()V

    .line 23
    return-void

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    invoke-virtual {p0}, Lcom/lge/camera/setting/VideoMainSettingMenu;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/setting/SettingMenu;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v1, v2}, Lcom/lge/camera/CamcorderMediator;->addMMSTexture(Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->setPreferenceGroup(Lcom/lge/camera/setting/PreferenceGroup;)V

    goto :goto_0
.end method
