.class Lcom/lge/camera/command/setting/SetSceneMode$2;
.super Ljava/lang/Object;
.source "SetSceneMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetSceneMode;->onExecuteAlone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetSceneMode;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetSceneMode;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetSceneMode;->access$500(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetSceneMode;->access$600(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getCameraId()I

    move-result v1

    if-nez v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    invoke-virtual {v1}, Lcom/lge/camera/command/setting/SetSceneMode;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    const-string v2, "key_scene_mode"

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, currentSceneMode:Ljava/lang/String;
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetSceneMode;->access$700(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;

    move-result-object v1

    const-string v2, "key_camera_shot_mode"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shotmode_normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetSceneMode;->access$800(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isTimeMachineModeOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    #getter for: Lcom/lge/camera/command/setting/SetSceneMode;->oldSceneModeValue:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetSceneMode;->access$900(Lcom/lge/camera/command/setting/SetSceneMode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Smart shutter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    #getter for: Lcom/lge/camera/command/setting/SetSceneMode;->oldSceneModeValue:Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetSceneMode;->access$900(Lcom/lge/camera/command/setting/SetSceneMode;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Smart shutter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Smart shutter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetSceneMode$2;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetSceneMode;->access$1000(Lcom/lge/camera/command/setting/SetSceneMode;)Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/PreviewController;->restartPreview()V

    .line 115
    .end local v0           #currentSceneMode:Ljava/lang/String;
    :cond_1
    return-void
.end method
