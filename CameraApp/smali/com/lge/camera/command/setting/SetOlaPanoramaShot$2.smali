.class Lcom/lge/camera/command/setting/SetOlaPanoramaShot$2;
.super Ljava/lang/Object;
.source "SetOlaPanoramaShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetOlaPanoramaShot;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetOlaPanoramaShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetOlaPanoramaShot;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetOlaPanoramaShot$2;->this$0:Lcom/lge/camera/command/setting/SetOlaPanoramaShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 49
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOlaPanoramaShot$2;->this$0:Lcom/lge/camera/command/setting/SetOlaPanoramaShot;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot;->access$300(Lcom/lge/camera/command/setting/SetOlaPanoramaShot;)Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 50
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOlaPanoramaShot$2;->this$0:Lcom/lge/camera/command/setting/SetOlaPanoramaShot;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot;->access$400(Lcom/lge/camera/command/setting/SetOlaPanoramaShot;)Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->isNullSettingView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOlaPanoramaShot$2;->this$0:Lcom/lge/camera/command/setting/SetOlaPanoramaShot;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot;->access$500(Lcom/lge/camera/command/setting/SetOlaPanoramaShot;)Lcom/lge/camera/Mediator;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->showPanoramaView()V

    .line 56
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOlaPanoramaShot$2;->this$0:Lcom/lge/camera/command/setting/SetOlaPanoramaShot;

    invoke-virtual {v1}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot;->getMediator()Lcom/lge/camera/CameraMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    .line 57
    .local v0, controller:Lcom/lge/camera/controller/camera/PanoramaController;
    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->setEngine()V

    .line 58
    return-void

    .line 53
    .end local v0           #controller:Lcom/lge/camera/controller/camera/PanoramaController;
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/command/setting/SetOlaPanoramaShot$2;->this$0:Lcom/lge/camera/command/setting/SetOlaPanoramaShot;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v1}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot;->access$600(Lcom/lge/camera/command/setting/SetOlaPanoramaShot;)Lcom/lge/camera/Mediator;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->removePanoramaView()V

    goto :goto_0
.end method
