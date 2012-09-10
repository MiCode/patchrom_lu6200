.class public Lcom/lge/camera/command/SetVoiceShutterMode;
.super Lcom/lge/camera/command/Command;
.source "SetVoiceShutterMode.java"


# instance fields
.field private mVoiceShutterValueOn:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/Mediator;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/command/SetVoiceShutterMode;->mVoiceShutterValueOn:Z

    .line 21
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lge/camera/command/SetVoiceShutterMode;->execute(Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public execute(Ljava/lang/Object;)V
    .locals 8
    .parameter "arg"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 31
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 32
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "subMenuClicked"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 34
    .local v1, subMenuClicked:Z
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v4, "key_voiceshutter"

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, value:Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "## SetVoiceShutterMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isVoiceShutter()Z

    move-result v3

    if-nez v3, :cond_2

    .line 41
    iput-boolean v6, p0, Lcom/lge/camera/command/SetVoiceShutterMode;->mVoiceShutterValueOn:Z

    .line 42
    const-string v3, "CameraApp"

    const-string v4, "SetVoiceShutterMode : model is not supported."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v3, :cond_4

    .line 47
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_3

    .line 48
    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 50
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7, v6}, Lcom/lge/camera/util/Common;->setAudioFocus(Landroid/content/Context;ZZ)V

    .line 52
    iput-boolean v7, p0, Lcom/lge/camera/command/SetVoiceShutterMode;->mVoiceShutterValueOn:Z

    .line 54
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->setAudioRecogEngineStart()V

    .line 64
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v4, Lcom/lge/camera/command/SetVoiceShutterMode$1;

    invoke-direct {v4, p0}, Lcom/lge/camera/command/SetVoiceShutterMode$1;-><init>(Lcom/lge/camera/command/SetVoiceShutterMode;)V

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 76
    :cond_4
    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/lge/camera/command/SetVoiceShutterMode;->onExecuteAlone()V

    goto :goto_0

    .line 56
    :cond_5
    const-string v3, "not found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 57
    iput-boolean v6, p0, Lcom/lge/camera/command/SetVoiceShutterMode;->mVoiceShutterValueOn:Z

    .line 59
    iget-object v3, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->setAudioRecogEngineStop()V

    goto :goto_1
.end method

.method protected onExecuteAlone()V
    .locals 8

    .prologue
    .line 82
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetVoiceShutterMode - Show Toast Message : mVoiceShutterValueOn is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/lge/camera/command/SetVoiceShutterMode;->mVoiceShutterValueOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isVoiceShutter()Z

    move-result v5

    if-nez v5, :cond_0

    .line 117
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v6, "voice_photo"

    const/16 v7, 0x1d

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/Mediator;->showHelpGuidePopup(Ljava/lang/String;I)Z

    .line 90
    iget-boolean v5, p0, Lcom/lge/camera/command/SetVoiceShutterMode;->mVoiceShutterValueOn:Z

    if-eqz v5, :cond_2

    .line 91
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const v6, 0x7f0b00f6

    invoke-virtual {v5, v6}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, voiceShutterSayMsg:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const v6, 0x7f0b00f3

    invoke-virtual {v5, v6}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, word:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->voiceShutterKind()I

    move-result v5

    if-nez v5, :cond_1

    .line 95
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const v6, 0x7f0b00f4

    invoke-virtual {v5, v6}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 97
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getToastController()Lcom/lge/camera/controller/ToastController;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lge/camera/controller/ToastController;->showShortToast(Ljava/lang/String;)V

    .line 100
    .end local v3           #voiceShutterSayMsg:Ljava/lang/String;
    .end local v4           #word:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v5

    if-nez v5, :cond_3

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v5

    if-nez v5, :cond_4

    .line 103
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v5

    const-string v6, "key_voiceshutter"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    .line 104
    .local v1, prefIndex:I
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getFrontPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 110
    :goto_1
    if-eqz v0, :cond_3

    .line 111
    iget-boolean v5, p0, Lcom/lge/camera/command/SetVoiceShutterMode;->mVoiceShutterValueOn:Z

    if-eqz v5, :cond_5

    const-string v2, "on"

    .line 112
    .local v2, value:Ljava/lang/String;
    :goto_2
    invoke-virtual {v0, v2}, Lcom/lge/camera/setting/ListPreference;->setValue(Ljava/lang/String;)V

    .line 113
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SetVoiceShutterMode : value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .end local v0           #pref:Lcom/lge/camera/setting/ListPreference;
    .end local v1           #prefIndex:I
    .end local v2           #value:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/QuickFunctionController;->reset()V

    goto/16 :goto_0

    .line 106
    .restart local v0       #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v5

    const-string v6, "key_voiceshutter"

    invoke-virtual {v5, v6}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    .line 107
    .restart local v1       #prefIndex:I
    iget-object v5, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getBackPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    goto :goto_1

    .line 111
    :cond_5
    const-string v2, "off"

    goto :goto_2
.end method
