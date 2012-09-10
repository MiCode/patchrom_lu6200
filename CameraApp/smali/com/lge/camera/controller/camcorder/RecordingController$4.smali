.class Lcom/lge/camera/controller/camcorder/RecordingController$4;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/RecordingController;->stopRecordingByPausing()V
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
    .line 773
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/CamcorderMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 776
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$4;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getMediator()Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/SoundController;->playRecordingSound(Z)V

    .line 777
    return-void
.end method
