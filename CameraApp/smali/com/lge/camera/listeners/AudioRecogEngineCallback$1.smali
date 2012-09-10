.class Lcom/lge/camera/listeners/AudioRecogEngineCallback$1;
.super Ljava/lang/Object;
.source "AudioRecogEngineCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/listeners/AudioRecogEngineCallback;->restartEngine()V
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
    .line 62
    iput-object p1, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback$1;->this$0:Lcom/lge/camera/listeners/AudioRecogEngineCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback$1;->this$0:Lcom/lge/camera/listeners/AudioRecogEngineCallback;

    #getter for: Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->access$000(Lcom/lge/camera/listeners/AudioRecogEngineCallback;)Lcom/lge/camera/Mediator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback$1;->this$0:Lcom/lge/camera/listeners/AudioRecogEngineCallback;

    #getter for: Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->access$000(Lcom/lge/camera/listeners/AudioRecogEngineCallback;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback$1;->this$0:Lcom/lge/camera/listeners/AudioRecogEngineCallback;

    #getter for: Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->access$000(Lcom/lge/camera/listeners/AudioRecogEngineCallback;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->setAudioRecogEngineStart()V

    .line 68
    :cond_0
    return-void
.end method
