.class public Lcom/lge/camera/command/EditAllPrefGeoTagOn;
.super Lcom/lge/camera/command/Command;
.source "EditAllPrefGeoTagOn.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 17
    return-void
.end method

.method private editPrefValue(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "pref"
    .parameter "strTagLocationSetting"

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "key_camera_tag_location"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 51
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "on"

    .line 24
    .local v1, settingValue:Ljava/lang/String;
    const-string v2, "CameraApp"

    const-string v3, "EditAllPrefGeoTagOn executed"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_1

    .line 27
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "back_camcorder"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28
    invoke-direct {p0, v0, v1}, Lcom/lge/camera/command/EditAllPrefGeoTagOn;->editPrefValue(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "front_camcorder"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 32
    invoke-direct {p0, v0, v1}, Lcom/lge/camera/command/EditAllPrefGeoTagOn;->editPrefValue(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "back_camera"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 36
    invoke-direct {p0, v0, v1}, Lcom/lge/camera/command/EditAllPrefGeoTagOn;->editPrefValue(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "front_camera"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 40
    invoke-direct {p0, v0, v1}, Lcom/lge/camera/command/EditAllPrefGeoTagOn;->editPrefValue(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0
.end method
