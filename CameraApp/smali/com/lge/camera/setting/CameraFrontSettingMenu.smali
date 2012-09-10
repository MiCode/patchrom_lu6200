.class public Lcom/lge/camera/setting/CameraFrontSettingMenu;
.super Lcom/lge/camera/setting/CameraSettingMenu;
.source "CameraFrontSettingMenu.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;Landroid/content/Context;Lcom/lge/camera/setting/CameraSetting;)V
    .locals 2
    .parameter "mediator"
    .parameter "context"
    .parameter "setting"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/setting/CameraSettingMenu;-><init>(Lcom/lge/camera/Mediator;Landroid/content/Context;Lcom/lge/camera/setting/CameraSetting;)V

    .line 16
    invoke-virtual {p1}, Lcom/lge/camera/Mediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 17
    iget-object v0, p0, Lcom/lge/camera/setting/SettingMenu;->mSetting:Lcom/lge/camera/setting/Setting;

    iget-object v1, p0, Lcom/lge/camera/setting/SettingMenu;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/Setting;->setPreferenceGroup(Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 18
    invoke-virtual {p0}, Lcom/lge/camera/setting/CameraFrontSettingMenu;->initMenu()V

    .line 19
    return-void
.end method
