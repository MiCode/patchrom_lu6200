.class Lcom/lge/camera/command/setting/SetLiveEffect$1;
.super Ljava/lang/Object;
.source "SetLiveEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetLiveEffect;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetLiveEffect;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetLiveEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 63
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v2}, Lcom/lge/camera/command/setting/SetLiveEffect;->access$000(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_live_effect"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, mMenuIndex:I
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v2}, Lcom/lge/camera/command/setting/SetLiveEffect;->access$100(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v2}, Lcom/lge/camera/command/setting/SetLiveEffect;->access$200(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;

    move-result-object v2

    const-string v3, "key_live_effect"

    const-string v4, "off"

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 66
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v2}, Lcom/lge/camera/command/setting/SetLiveEffect;->access$300(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuIcon(II)V

    .line 67
    const-string v2, "CameraApp"

    const-string v3, "setting rollback to off. no Previewing now"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v2}, Lcom/lge/camera/command/setting/SetLiveEffect;->access$400(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v1

    .line 71
    .local v1, video_state:I
    if-eqz v1, :cond_2

    .line 72
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v2}, Lcom/lge/camera/command/setting/SetLiveEffect;->access$500(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;

    move-result-object v2

    const-string v3, "key_live_effect"

    const-string v4, "off"

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 73
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting rollback to off. video is not idle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v2}, Lcom/lge/camera/command/setting/SetLiveEffect;->access$600(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuIcon(II)V

    goto :goto_0

    .line 78
    :cond_2
    const-string v2, "CameraApp"

    const-string v3, "resetting EffectParameter in previewing!!!! "

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v2}, Lcom/lge/camera/command/setting/SetLiveEffect;->access$700(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewController;->updateEffectSelection()Z

    .line 80
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v2}, Lcom/lge/camera/command/setting/SetLiveEffect;->access$800(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/lge/camera/command/setting/SetLiveEffect$1;->this$0:Lcom/lge/camera/command/setting/SetLiveEffect;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v2}, Lcom/lge/camera/command/setting/SetLiveEffect;->access$900(Lcom/lge/camera/command/setting/SetLiveEffect;)Lcom/lge/camera/Mediator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButtonVisibility()V

    goto :goto_0
.end method
