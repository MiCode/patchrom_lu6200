.class public Lcom/lge/camera/command/setting/SetSceneMode;
.super Lcom/lge/camera/command/setting/CameraSettingCommand;
.source "SetSceneMode.java"


# instance fields
.field private newSelectedSceneMode:Ljava/lang/String;

.field private oldSceneModeValue:Ljava/lang/String;

.field private showColorEffectChangedMsg:Z

.field private showISOChangedMsg:Z

.field private showWBChangedMsg:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 2
    .parameter "mediator"

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/CameraSettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/command/setting/SetSceneMode;->oldSceneModeValue:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/command/setting/SetSceneMode;->newSelectedSceneMode:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lcom/lge/camera/command/setting/SetSceneMode;->showISOChangedMsg:Z

    .line 21
    iput-boolean v1, p0, Lcom/lge/camera/command/setting/SetSceneMode;->showWBChangedMsg:Z

    .line 22
    iput-boolean v1, p0, Lcom/lge/camera/command/setting/SetSceneMode;->showColorEffectChangedMsg:Z

    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/camera/command/setting/SetSceneMode;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSceneMode;->oldSceneModeValue:Ljava/lang/String;

    return-object v0
.end method

.method private setAllSettingsDefault(Landroid/hardware/Camera$Parameters;)V
    .locals 11
    .parameter "parameters"

    .prologue
    const v10, 0x7f0b0139

    const v9, 0x7f0b00b8

    const v8, 0x7f0b0134

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 121
    const-string v1, "key_camera_whitebalance"

    invoke-virtual {p0, v1}, Lcom/lge/camera/command/setting/SetSceneMode;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetSceneMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    const-string v2, "key_camera_whitebalance"

    const-string v3, "auto"

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 123
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 124
    iput-boolean v7, p0, Lcom/lge/camera/command/setting/SetSceneMode;->showWBChangedMsg:Z

    .line 127
    :cond_0
    const-string v1, "key_camera_coloreffect"

    invoke-virtual {p0, v1}, Lcom/lge/camera/command/setting/SetSceneMode;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetSceneMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    const-string v2, "key_camera_coloreffect"

    const-string v3, "none"

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 129
    const-string v1, "none"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 130
    iput-boolean v7, p0, Lcom/lge/camera/command/setting/SetSceneMode;->showColorEffectChangedMsg:Z

    .line 132
    :cond_1
    const-string v1, "key_iso"

    invoke-virtual {p0, v1}, Lcom/lge/camera/command/setting/SetSceneMode;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v1

    if-nez v1, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetSceneMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    const-string v2, "key_iso"

    const-string v3, "auto"

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 134
    const-string v1, "iso"

    const-string v2, "auto"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iput-boolean v7, p0, Lcom/lge/camera/command/setting/SetSceneMode;->showISOChangedMsg:Z

    .line 139
    :cond_2
    iget-boolean v1, p0, Lcom/lge/camera/command/setting/SetSceneMode;->showISOChangedMsg:Z

    if-eqz v1, :cond_3

    .line 140
    iget-boolean v1, p0, Lcom/lge/camera/command/setting/SetSceneMode;->showWBChangedMsg:Z

    if-eqz v1, :cond_6

    .line 141
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetSceneMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetSceneMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    const v4, 0x7f0b013a

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetSceneMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/lge/camera/CameraMediator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->toast(Ljava/lang/String;)V

    .line 142
    iput-boolean v6, p0, Lcom/lge/camera/command/setting/SetSceneMode;->showWBChangedMsg:Z

    .line 151
    :goto_0
    iput-boolean v6, p0, Lcom/lge/camera/command/setting/SetSceneMode;->showISOChangedMsg:Z

    .line 154
    :cond_3
    iget-boolean v1, p0, Lcom/lge/camera/command/setting/SetSceneMode;->showWBChangedMsg:Z

    if-eqz v1, :cond_4

    .line 155
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetSceneMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    const v2, 0x7f0b013a

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->toast(I)V

    .line 156
    iput-boolean v6, p0, Lcom/lge/camera/command/setting/SetSceneMode;->showWBChangedMsg:Z

    .line 159
    :cond_4
    iget-boolean v1, p0, Lcom/lge/camera/command/setting/SetSceneMode;->showColorEffectChangedMsg:Z

    if-eqz v1, :cond_5

    .line 160
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 161
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetSceneMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->toast(Ljava/lang/String;)V

    .line 162
    iput-boolean v6, p0, Lcom/lge/camera/command/setting/SetSceneMode;->showColorEffectChangedMsg:Z

    .line 164
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_5
    return-void

    .line 143
    :cond_6
    iget-boolean v1, p0, Lcom/lge/camera/command/setting/SetSceneMode;->showColorEffectChangedMsg:Z

    if-eqz v1, :cond_7

    .line 144
    iget-object v1, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 145
    .restart local v0       #r:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetSceneMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetSceneMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/lge/camera/CameraMediator;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->toast(Ljava/lang/String;)V

    .line 146
    iput-boolean v6, p0, Lcom/lge/camera/command/setting/SetSceneMode;->showColorEffectChangedMsg:Z

    goto/16 :goto_0

    .line 149
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_7
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetSceneMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/lge/camera/CameraMediator;->toast(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetSceneMode;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 6
    .parameter "parameters"
    .parameter "arg"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 30
    const-string v2, "CameraApp"

    const-string v3, "SetSceneMode"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/command/setting/SetSceneMode;->oldSceneModeValue:Ljava/lang/String;

    .line 32
    const-string v2, "key_scene_mode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/command/setting/SetSceneMode;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/command/setting/SetSceneMode;->newSelectedSceneMode:Ljava/lang/String;

    .line 34
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetSceneMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v3, Lcom/lge/camera/command/setting/SetSceneMode$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/command/setting/SetSceneMode$1;-><init>(Lcom/lge/camera/command/setting/SetSceneMode;)V

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 51
    :cond_0
    const-string v2, "key_scene_mode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/command/setting/SetSceneMode;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "key_scene_mode"

    invoke-virtual {p0, v2}, Lcom/lge/camera/command/setting/SetSceneMode;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "not found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 53
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SetSceneMode;->setAllSettingsDefault(Landroid/hardware/Camera$Parameters;)V

    .line 56
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, shotMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "shotmode_panorama"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "shotmode_continuous"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "shotmode_hdr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 63
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 64
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_beautyshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 67
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_flash"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    .line 82
    .end local v0           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSceneMode;->oldSceneModeValue:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSceneMode;->oldSceneModeValue:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/camera/command/setting/SetSceneMode;->newSelectedSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 83
    :cond_4
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "####### scene mode set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->newSelectedSceneMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/lge/camera/command/setting/SetSceneMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v2

    const-string v3, "key_scene_mode"

    iget-object v4, p0, Lcom/lge/camera/command/setting/SetSceneMode;->newSelectedSceneMode:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/CameraMediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 85
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetSceneMode;->newSelectedSceneMode:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 87
    :cond_5
    return-void

    .line 70
    :cond_6
    const-string v2, "shotmode_normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "not found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v2

    if-nez v2, :cond_3

    .line 74
    :cond_7
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 75
    .restart local v0       #pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_beautyshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 78
    iget-object v2, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_flash"

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/Mediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onExecuteAlone()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v1, Lcom/lge/camera/command/setting/SetSceneMode$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/command/setting/SetSceneMode$2;-><init>(Lcom/lge/camera/command/setting/SetSceneMode;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method
