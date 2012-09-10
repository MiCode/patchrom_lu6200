.class Lcom/lge/camera/command/SetVoiceShutterMode$1;
.super Ljava/lang/Object;
.source "SetVoiceShutterMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/SetVoiceShutterMode;->execute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/SetVoiceShutterMode;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/SetVoiceShutterMode;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/lge/camera/command/SetVoiceShutterMode$1;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/camera/command/SetVoiceShutterMode$1;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/lge/camera/command/SetVoiceShutterMode$1;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/lge/camera/command/SetVoiceShutterMode$1;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/lge/camera/command/SetVoiceShutterMode$1;->this$0:Lcom/lge/camera/command/SetVoiceShutterMode;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    check-cast v0, Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getIndicatorController()Lcom/lge/camera/controller/camera/CameraIndicatorController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateVoiceIndicator(Z)V

    .line 72
    :cond_0
    return-void
.end method
