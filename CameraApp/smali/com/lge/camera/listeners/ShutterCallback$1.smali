.class Lcom/lge/camera/listeners/ShutterCallback$1;
.super Ljava/lang/Object;
.source "ShutterCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/listeners/ShutterCallback;->onShutter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/listeners/ShutterCallback;


# direct methods
.method constructor <init>(Lcom/lge/camera/listeners/ShutterCallback;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lge/camera/listeners/ShutterCallback$1;->this$0:Lcom/lge/camera/listeners/ShutterCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/camera/listeners/ShutterCallback$1;->this$0:Lcom/lge/camera/listeners/ShutterCallback;

    iget-object v0, v0, Lcom/lge/camera/listeners/ShutterCallback;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/lge/camera/listeners/ShutterCallback$1;->this$0:Lcom/lge/camera/listeners/ShutterCallback;

    iget-object v0, v0, Lcom/lge/camera/listeners/ShutterCallback;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->playShutterSound()V

    .line 43
    iget-object v0, p0, Lcom/lge/camera/listeners/ShutterCallback$1;->this$0:Lcom/lge/camera/listeners/ShutterCallback;

    iget-object v0, v0, Lcom/lge/camera/listeners/ShutterCallback;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->clearFocusState()V

    .line 44
    iget-object v0, p0, Lcom/lge/camera/listeners/ShutterCallback$1;->this$0:Lcom/lge/camera/listeners/ShutterCallback;

    iget-object v0, v0, Lcom/lge/camera/listeners/ShutterCallback;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->hideFocus()Z

    .line 48
    return-void
.end method
