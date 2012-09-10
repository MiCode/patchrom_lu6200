.class Lcom/lge/camera/controller/camcorder/RecordingController$1;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/RecordingController;->stopRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/RecordingController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 423
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetFunctionUITimer()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    #setter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J
    invoke-static {v0, v1, v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$002(Lcom/lge/camera/controller/camcorder/RecordingController;J)J

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$100(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/VideoFile;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J
    invoke-static {v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$000(Lcom/lge/camera/controller/camcorder/RecordingController;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/VideoFile;->setRecordingTime_end(J)V

    .line 429
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->stopRecordingEffect()V

    .line 431
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;->waitStopRecordingEffectThreadDone()V

    .line 436
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/SoundController;->playRecordingSound(Z)V

    .line 439
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    new-instance v1, Lcom/lge/camera/controller/camcorder/RecordingController$1$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camcorder/RecordingController$1$1;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController$1;)V

    #calls: Lcom/lge/camera/controller/camcorder/RecordingController;->runOnUiThread(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$300(Lcom/lge/camera/controller/camcorder/RecordingController;Ljava/lang/Runnable;)V

    .line 445
    return-void

    .line 433
    :cond_1
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    goto :goto_0
.end method
