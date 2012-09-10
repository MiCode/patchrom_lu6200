.class Lcom/lge/camera/listeners/AudioRecogEngineCallback$2;
.super Ljava/lang/Object;
.source "AudioRecogEngineCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/listeners/AudioRecogEngineCallback;->onAudioRecogResultCallback(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/listeners/AudioRecogEngineCallback;


# direct methods
.method constructor <init>(Lcom/lge/camera/listeners/AudioRecogEngineCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback$2;->this$0:Lcom/lge/camera/listeners/AudioRecogEngineCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback$2;->this$0:Lcom/lge/camera/listeners/AudioRecogEngineCallback;

    #getter for: Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->access$000(Lcom/lge/camera/listeners/AudioRecogEngineCallback;)Lcom/lge/camera/Mediator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback$2;->this$0:Lcom/lge/camera/listeners/AudioRecogEngineCallback;

    #getter for: Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->access$000(Lcom/lge/camera/listeners/AudioRecogEngineCallback;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback$2;->this$0:Lcom/lge/camera/listeners/AudioRecogEngineCallback;

    #getter for: Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->access$000(Lcom/lge/camera/listeners/AudioRecogEngineCallback;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback$2;->this$0:Lcom/lge/camera/listeners/AudioRecogEngineCallback;

    #getter for: Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->access$000(Lcom/lge/camera/listeners/AudioRecogEngineCallback;)Lcom/lge/camera/Mediator;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateVoiceIndicator(Z)V

    .line 109
    :cond_0
    return-void
.end method
