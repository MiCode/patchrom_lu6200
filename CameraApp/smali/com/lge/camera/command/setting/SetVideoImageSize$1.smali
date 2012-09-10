.class Lcom/lge/camera/command/setting/SetVideoImageSize$1;
.super Ljava/lang/Object;
.source "SetVideoImageSize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetVideoImageSize;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetVideoImageSize;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$1;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$1;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetVideoImageSize;->access$000(Lcom/lge/camera/command/setting/SetVideoImageSize;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$1;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetVideoImageSize;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getIndicatorController()Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateSizeIndicator()V

    .line 40
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$1;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetVideoImageSize;->access$100(Lcom/lge/camera/command/setting/SetVideoImageSize;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$1;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetVideoImageSize;->access$200(Lcom/lge/camera/command/setting/SetVideoImageSize;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$1;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    invoke-virtual {v0}, Lcom/lge/camera/command/setting/SetVideoImageSize;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getFocusController()Lcom/lge/camera/controller/camcorder/CamcorderFocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderFocusController;->showFocus()Z

    .line 44
    :cond_0
    return-void
.end method
