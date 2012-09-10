.class Lcom/lge/camera/controller/FocusController$1;
.super Ljava/lang/Object;
.source "FocusController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/FocusController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/FocusController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/FocusController;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lge/camera/controller/FocusController$1;->this$0:Lcom/lge/camera/controller/FocusController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController$1;->this$0:Lcom/lge/camera/controller/FocusController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController$1;->this$0:Lcom/lge/camera/controller/FocusController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController$1;->this$0:Lcom/lge/camera/controller/FocusController;

    iget-object v0, v0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController$1;->this$0:Lcom/lge/camera/controller/FocusController;

    iget-object v0, v0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraFocusView;->getRectangle()Lcom/lge/camera/components/FocusRectangle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController$1;->this$0:Lcom/lge/camera/controller/FocusController;

    iget-object v0, v0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraFocusView;->getRectangle()Lcom/lge/camera/components/FocusRectangle;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/FocusRectangle;->setState(I)V

    .line 102
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController$1;->this$0:Lcom/lge/camera/controller/FocusController;

    iget-object v0, v0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraFocusView;->getRectangle()Lcom/lge/camera/components/FocusRectangle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/components/FocusRectangle;->invalidate()V

    .line 104
    :cond_1
    return-void
.end method
