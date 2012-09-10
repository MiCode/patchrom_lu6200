.class Lcom/lge/camera/command/setting/SetOlaPanoramaShot$1;
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
    .line 27
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetOlaPanoramaShot$1;->this$0:Lcom/lge/camera/command/setting/SetOlaPanoramaShot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOlaPanoramaShot$1;->this$0:Lcom/lge/camera/command/setting/SetOlaPanoramaShot;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot;->access$000(Lcom/lge/camera/command/setting/SetOlaPanoramaShot;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOlaPanoramaShot$1;->this$0:Lcom/lge/camera/command/setting/SetOlaPanoramaShot;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot;->access$100(Lcom/lge/camera/command/setting/SetOlaPanoramaShot;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSettingController()Lcom/lge/camera/controller/SettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingController;->isNullSettingView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOlaPanoramaShot$1;->this$0:Lcom/lge/camera/command/setting/SetOlaPanoramaShot;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetOlaPanoramaShot;->access$200(Lcom/lge/camera/command/setting/SetOlaPanoramaShot;)Lcom/lge/camera/Mediator;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getPanoramaController()Lcom/lge/camera/controller/camera/PanoramaController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->showPanoramaView()V

    .line 33
    :cond_0
    return-void
.end method
