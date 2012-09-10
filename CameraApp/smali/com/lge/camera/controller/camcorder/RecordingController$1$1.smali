.class Lcom/lge/camera/controller/camcorder/RecordingController$1$1;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/RecordingController$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/camcorder/RecordingController$1;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/RecordingController$1;)V
    .locals 0
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    #getter for: Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->access$200(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 442
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController$1$1;->this$1:Lcom/lge/camera/controller/camcorder/RecordingController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/camcorder/RecordingController$1;->this$0:Lcom/lge/camera/controller/camcorder/RecordingController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->doAfterRecordingProcess()V

    .line 443
    return-void
.end method
