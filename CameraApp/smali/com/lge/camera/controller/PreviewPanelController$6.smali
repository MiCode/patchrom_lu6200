.class Lcom/lge/camera/controller/PreviewPanelController$6;
.super Ljava/util/TimerTask;
.source "PreviewPanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonLongPressed(Lcom/lge/camera/components/ShutterButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;)V
    .locals 0
    .parameter

    .prologue
    .line 1890
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$6;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1893
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$6;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_0

    .line 1894
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$6;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1899
    :cond_0
    :goto_0
    return-void

    .line 1897
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$6;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$6;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewPanelController;->access$400(Lcom/lge/camera/controller/PreviewPanelController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
