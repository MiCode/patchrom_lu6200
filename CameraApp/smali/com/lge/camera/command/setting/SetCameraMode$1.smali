.class Lcom/lge/camera/command/setting/SetCameraMode$1;
.super Ljava/lang/Object;
.source "SetCameraMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraMode;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraMode;

.field final synthetic val$allSetting:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraMode;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iput-boolean p2, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->val$allSetting:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setQFLCamera()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 58
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetCameraMode;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraMode;->access$900(Lcom/lge/camera/command/setting/SetCameraMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    const-string v1, "key_camera_shot_mode"

    #calls: Lcom/lge/camera/command/setting/SetCameraMode;->setQFLMenuEnable(ILjava/lang/String;Z)V
    invoke-static {v0, v3, v1, v2}, Lcom/lge/camera/command/setting/SetCameraMode;->access$400(Lcom/lge/camera/command/setting/SetCameraMode;ILjava/lang/String;Z)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraMode;->access$1000(Lcom/lge/camera/command/setting/SetCameraMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    const-string v1, "key_camera_shot_mode"

    const/4 v2, 0x1

    #calls: Lcom/lge/camera/command/setting/SetCameraMode;->setQFLMenuEnable(ILjava/lang/String;Z)V
    invoke-static {v0, v3, v1, v2}, Lcom/lge/camera/command/setting/SetCameraMode;->access$400(Lcom/lge/camera/command/setting/SetCameraMode;ILjava/lang/String;Z)V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraMode;->access$1100(Lcom/lge/camera/command/setting/SetCameraMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isMMSIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    const-string v1, "key_live_effect"

    #calls: Lcom/lge/camera/command/setting/SetCameraMode;->setQFLMenuEnable(ILjava/lang/String;Z)V
    invoke-static {v0, v3, v1, v2}, Lcom/lge/camera/command/setting/SetCameraMode;->access$400(Lcom/lge/camera/command/setting/SetCameraMode;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method private setQFLMainAndFrontCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 74
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraMode;->access$1200(Lcom/lge/camera/command/setting/SetCameraMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getCameraMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 75
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    const-string v1, "key_zoom"

    #calls: Lcom/lge/camera/command/setting/SetCameraMode;->setQFLMenuEnable(ILjava/lang/String;Z)V
    invoke-static {v0, v3, v1, v4}, Lcom/lge/camera/command/setting/SetCameraMode;->access$400(Lcom/lge/camera/command/setting/SetCameraMode;ILjava/lang/String;Z)V

    .line 76
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    const/4 v1, 0x2

    const-string v2, "key_brightness"

    #calls: Lcom/lge/camera/command/setting/SetCameraMode;->setQFLMenuEnable(ILjava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/lge/camera/command/setting/SetCameraMode;->access$400(Lcom/lge/camera/command/setting/SetCameraMode;ILjava/lang/String;Z)V

    .line 77
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    const-string v1, "key_flash"

    #calls: Lcom/lge/camera/command/setting/SetCameraMode;->setQFLMenuEnable(ILjava/lang/String;Z)V
    invoke-static {v0, v5, v1, v4}, Lcom/lge/camera/command/setting/SetCameraMode;->access$400(Lcom/lge/camera/command/setting/SetCameraMode;ILjava/lang/String;Z)V

    .line 78
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    const-string v1, "key_focus"

    #calls: Lcom/lge/camera/command/setting/SetCameraMode;->setQFLMenuEnable(ILjava/lang/String;Z)V
    invoke-static {v0, v5, v1, v4}, Lcom/lge/camera/command/setting/SetCameraMode;->access$400(Lcom/lge/camera/command/setting/SetCameraMode;ILjava/lang/String;Z)V

    .line 79
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    const-string v1, "key_beautyshot"

    #calls: Lcom/lge/camera/command/setting/SetCameraMode;->setQFLMenuEnable(ILjava/lang/String;Z)V
    invoke-static {v0, v5, v1, v3}, Lcom/lge/camera/command/setting/SetCameraMode;->access$400(Lcom/lge/camera/command/setting/SetCameraMode;ILjava/lang/String;Z)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraMode;->access$1300(Lcom/lge/camera/command/setting/SetCameraMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    const-string v1, "key_zoom"

    #calls: Lcom/lge/camera/command/setting/SetCameraMode;->setQFLMenuEnable(ILjava/lang/String;Z)V
    invoke-static {v0, v3, v1, v3}, Lcom/lge/camera/command/setting/SetCameraMode;->access$400(Lcom/lge/camera/command/setting/SetCameraMode;ILjava/lang/String;Z)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraMode;->access$1400(Lcom/lge/camera/command/setting/SetCameraMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 84
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsLiveEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraMode;->access$1500(Lcom/lge/camera/command/setting/SetCameraMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->isUsingGalleryVideoForLiveEffect()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    const-string v1, "key_zoom"

    #calls: Lcom/lge/camera/command/setting/SetCameraMode;->setQFLMenuEnable(ILjava/lang/String;Z)V
    invoke-static {v0, v3, v1, v4}, Lcom/lge/camera/command/setting/SetCameraMode;->access$400(Lcom/lge/camera/command/setting/SetCameraMode;ILjava/lang/String;Z)V

    goto :goto_0

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    const-string v1, "key_zoom"

    #calls: Lcom/lge/camera/command/setting/SetCameraMode;->setQFLMenuEnable(ILjava/lang/String;Z)V
    invoke-static {v0, v3, v1, v3}, Lcom/lge/camera/command/setting/SetCameraMode;->access$400(Lcom/lge/camera/command/setting/SetCameraMode;ILjava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 33
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraMode;->access$000(Lcom/lge/camera/command/setting/SetCameraMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 34
    iget-boolean v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->val$allSetting:Z

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraMode;->access$100(Lcom/lge/camera/command/setting/SetCameraMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getStorageController()Lcom/lge/camera/controller/StorageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/StorageController;->isStorageFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraMode;->access$200(Lcom/lge/camera/command/setting/SetCameraMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    const-string v1, "StorageControllerLockKey"

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable(Ljava/lang/String;)V

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetCameraMode;->access$300(Lcom/lge/camera/command/setting/SetCameraMode;)Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_swap"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "key_swap"

    #calls: Lcom/lge/camera/command/setting/SetCameraMode;->setQFLMenuEnable(ILjava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/lge/camera/command/setting/SetCameraMode;->access$400(Lcom/lge/camera/command/setting/SetCameraMode;ILjava/lang/String;Z)V

    .line 41
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetCameraMode;->access$500(Lcom/lge/camera/command/setting/SetCameraMode;)Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v1

    const-string v2, "key_setting"

    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "key_setting"

    #calls: Lcom/lge/camera/command/setting/SetCameraMode;->setQFLMenuEnable(ILjava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/lge/camera/command/setting/SetCameraMode;->access$400(Lcom/lge/camera/command/setting/SetCameraMode;ILjava/lang/String;Z)V

    .line 43
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraMode$1;->setQFLMainAndFrontCamera()V

    .line 44
    invoke-direct {p0}, Lcom/lge/camera/command/setting/SetCameraMode$1;->setQFLCamera()V

    .line 46
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraMode;->access$600(Lcom/lge/camera/command/setting/SetCameraMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->setAllMenuIcons()V

    .line 47
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraMode;->access$700(Lcom/lge/camera/command/setting/SetCameraMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/QuickFunctionController;->refresh()V

    .line 49
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetCameraMode;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetCameraMode;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    const-string v1, "com.lge.camera.command.SelectDuration"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraMode;->access$800(Lcom/lge/camera/command/setting/SetCameraMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->applyCameraChange()V

    .line 54
    const-string v0, "CameraApp"

    const-string v1, "SetCameraMode-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method
