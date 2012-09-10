.class Lcom/lge/camera/controller/PreviewController$14;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewController;)V
    .locals 0
    .parameter

    .prologue
    .line 2045
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$14;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2047
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$14;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$14;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2049
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$14;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const v2, 0x7f090093

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ShutterButton;

    .line 2050
    .local v0, button:Lcom/lge/camera/components/ShutterButton;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2051
    const-string v1, "CameraApp"

    const-string v2, "mDoSnapRunnable"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$14;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    .line 2055
    .end local v0           #button:Lcom/lge/camera/components/ShutterButton;
    :cond_0
    return-void
.end method
