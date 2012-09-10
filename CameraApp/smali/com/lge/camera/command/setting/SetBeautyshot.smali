.class public Lcom/lge/camera/command/setting/SetBeautyshot;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "SetBeautyshot.java"


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


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    .line 20
    const-string v2, "CameraApp"

    const-string v3, "SetBeautyshot"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 24
    const/4 v1, 0x0

    .line 26
    .local v1, value:I
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_beautyshot"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 27
    .local v0, preference:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 28
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_beautyshot"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v2, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v2, v1}, Lcom/lge/camera/CameraMediator;->setFaceBeutyShotParameter(I)V

    .line 32
    .end local v0           #preference:Lcom/lge/camera/setting/ListPreference;
    .end local v1           #value:I
    :cond_1
    return-void
.end method
