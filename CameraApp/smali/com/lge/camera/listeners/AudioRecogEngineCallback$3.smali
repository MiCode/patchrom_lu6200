.class Lcom/lge/camera/listeners/AudioRecogEngineCallback$3;
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

.field final synthetic val$button:Lcom/lge/camera/components/ShutterButton;


# direct methods
.method constructor <init>(Lcom/lge/camera/listeners/AudioRecogEngineCallback;Lcom/lge/camera/components/ShutterButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback$3;->this$0:Lcom/lge/camera/listeners/AudioRecogEngineCallback;

    iput-object p2, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback$3;->val$button:Lcom/lge/camera/components/ShutterButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback$3;->this$0:Lcom/lge/camera/listeners/AudioRecogEngineCallback;

    #getter for: Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->access$000(Lcom/lge/camera/listeners/AudioRecogEngineCallback;)Lcom/lge/camera/Mediator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback$3;->this$0:Lcom/lge/camera/listeners/AudioRecogEngineCallback;

    #getter for: Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->access$000(Lcom/lge/camera/listeners/AudioRecogEngineCallback;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback$3;->this$0:Lcom/lge/camera/listeners/AudioRecogEngineCallback;

    #getter for: Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->access$000(Lcom/lge/camera/listeners/AudioRecogEngineCallback;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback$3;->val$button:Lcom/lge/camera/components/ShutterButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 116
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback$3;->this$0:Lcom/lge/camera/listeners/AudioRecogEngineCallback;

    #getter for: Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->access$000(Lcom/lge/camera/listeners/AudioRecogEngineCallback;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback$3;->val$button:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    .line 117
    iget-object v0, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback$3;->this$0:Lcom/lge/camera/listeners/AudioRecogEngineCallback;

    #getter for: Lcom/lge/camera/listeners/AudioRecogEngineCallback;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/listeners/AudioRecogEngineCallback;->access$000(Lcom/lge/camera/listeners/AudioRecogEngineCallback;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/listeners/AudioRecogEngineCallback$3;->val$button:Lcom/lge/camera/components/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 119
    :cond_0
    return-void
.end method
