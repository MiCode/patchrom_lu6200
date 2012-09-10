.class Lcom/lge/camera/controller/PreviewPanelController$3;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1579
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$3;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 1581
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$3;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-nez v1, :cond_1

    .line 1621
    :cond_0
    :goto_0
    return-void

    .line 1585
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$3;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v1

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$3;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1589
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1591
    :pswitch_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$3;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v1, :cond_0

    .line 1594
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$3;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    const v2, 0x7f09006e

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1595
    .local v0, initLoading:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 1596
    const-string v1, "CameraApp"

    const-string v2, "mReviewThumbnailClickListener return: loading is visible"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1600
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$3;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1601
    const-string v1, "CameraApp"

    const-string v2, "mReviewThumbnailClickListener return: is capturing.."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1605
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$3;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #getter for: Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z
    invoke-static {v1}, Lcom/lge/camera/controller/PreviewPanelController;->access$300(Lcom/lge/camera/controller/PreviewPanelController;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1606
    const-string v1, "CameraApp"

    const-string v2, "goto gallery"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$3;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    #setter for: Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z
    invoke-static {v1, v3}, Lcom/lge/camera/controller/PreviewPanelController;->access$302(Lcom/lge/camera/controller/PreviewPanelController;Z)Z

    .line 1611
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$3;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v2, "com.lge.camera.command.ShowGallery"

    invoke-virtual {v1, v2}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 1614
    :cond_4
    const-string v1, "CameraApp"

    const-string v2, "Gallery is launching already."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1589
    nop

    :pswitch_data_0
    .packed-switch 0x7f09004b
        :pswitch_0
    .end packed-switch
.end method
