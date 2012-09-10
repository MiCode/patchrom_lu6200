.class Lcom/lge/camera/command/setting/SetFlashMode$1;
.super Ljava/lang/Object;
.source "SetFlashMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetFlashMode;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetFlashMode;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetFlashMode;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetFlashMode$1;->this$0:Lcom/lge/camera/command/setting/SetFlashMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetFlashMode$1;->this$0:Lcom/lge/camera/command/setting/SetFlashMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetFlashMode;->access$000(Lcom/lge/camera/command/setting/SetFlashMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetFlashMode$1;->this$0:Lcom/lge/camera/command/setting/SetFlashMode;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetFlashMode;->access$100(Lcom/lge/camera/command/setting/SetFlashMode;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->updateFlashIndicator()V

    .line 63
    return-void
.end method
