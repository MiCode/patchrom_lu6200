.class Lcom/lge/camera/controller/PreviewPanelController$5;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewPanelController;
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
    .line 1846
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$5;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$5;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_0

    .line 1849
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$5;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 1850
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$5;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v0, :cond_0

    .line 1851
    const-string v0, "CameraApp"

    const-string v1, "mShutterButtonRunnable : click"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$5;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$5;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    .line 1855
    :cond_0
    return-void
.end method
