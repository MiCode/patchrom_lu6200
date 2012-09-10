.class Lcom/lge/camera/command/setting/SetCameraShutterSound$1;
.super Ljava/lang/Object;
.source "SetCameraShutterSound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraShutterSound;->onExecuteAlone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraShutterSound;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraShutterSound;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraShutterSound$1;->this$0:Lcom/lge/camera/command/setting/SetCameraShutterSound;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShutterSound$1;->this$0:Lcom/lge/camera/command/setting/SetCameraShutterSound;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraShutterSound;->access$000(Lcom/lge/camera/command/setting/SetCameraShutterSound;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShutterSound$1;->this$0:Lcom/lge/camera/command/setting/SetCameraShutterSound;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraShutterSound;->access$100(Lcom/lge/camera/command/setting/SetCameraShutterSound;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getSoundController()Lcom/lge/camera/controller/SoundController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/SoundController;->playShutterSound()V

    .line 48
    return-void
.end method
