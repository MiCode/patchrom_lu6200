.class Lcom/lge/camera/controller/camcorder/RecordingController$3;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/RecordingController;->doAfterRecordingProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

.field final synthetic val$savedUriForThread:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    iput-object p2, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->val$savedUriForThread:Landroid/net/Uri;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 541
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 543
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->val$savedUriForThread:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/controller/PreviewPanelController;->setLastThumb(Landroid/net/Uri;Z)V

    .line 544
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v1

    const-string v2, "com.lge.camera.command.OnDelayOff"

    invoke-virtual {v1, v2}, Lcom/lge/camera/CamcorderMediator;->doCommandUi(Ljava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$3;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/camera/CamcorderMediator;->setBackKeyRecStop(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 546
    :catch_0
    move-exception v0

    .line 548
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "catch Exception"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
