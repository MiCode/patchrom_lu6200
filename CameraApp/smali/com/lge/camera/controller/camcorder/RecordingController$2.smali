.class Lcom/lge/camera/controller/camcorder/RecordingController$2;
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


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V
    .locals 0
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 520
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$2;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->resetRecTime()V

    .line 522
    :cond_0
    return-void
.end method
