.class Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener$1;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->onError(Landroid/media/MediaRecorder;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;)V
    .locals 0
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;

    iget-object v0, v0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;

    iget-object v0, v0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1800(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 652
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;

    iget-object v0, v0, Lcom/lge/camera/controller/camcorder/RecordingController$MediaRecorderListener;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$1900(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->showCameraStoppedAndFinish()V

    .line 654
    :cond_0
    return-void
.end method
