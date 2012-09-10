.class public Lcom/lge/camera/command/ResetMenuPrepared;
.super Lcom/lge/camera/command/setting/SettingCommand;
.source "ResetMenuPrepared.java"


# instance fields
.field private prefGroup:Lcom/lge/camera/setting/PreferenceGroup;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/SettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 15
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "parameters"

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/lge/camera/command/ResetMenuPrepared;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/command/ResetMenuPrepared;->prefGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 22
    iget-object v0, p0, Lcom/lge/camera/command/ResetMenuPrepared;->prefGroup:Lcom/lge/camera/setting/PreferenceGroup;

    if-nez v0, :cond_0

    .line 23
    const-string v0, "CameraApp"

    const-string v1, "prefGroup null error"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :goto_0
    return-void

    .line 29
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "ResetMenuPrepared - liveeffect oooooooooff"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/lge/camera/EffectsRecorder;->stopPreview(I)V

    goto :goto_0
.end method
