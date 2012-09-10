.class Lcom/lge/camera/command/setting/SetCameraImageSize$1;
.super Ljava/lang/Object;
.source "SetCameraImageSize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraImageSize;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

.field final synthetic val$parameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraImageSize;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$1;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    iput-object p2, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$1;->val$parameters:Landroid/hardware/Camera$Parameters;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$1;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraImageSize;->access$000(Lcom/lge/camera/command/setting/SetCameraImageSize;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$1;->this$0:Lcom/lge/camera/command/setting/SetCameraImageSize;

    #getter for: Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraImageSize;->access$100(Lcom/lge/camera/command/setting/SetCameraImageSize;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/command/setting/SetCameraImageSize$1;->val$parameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/PreviewController;->restartPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 145
    return-void
.end method
