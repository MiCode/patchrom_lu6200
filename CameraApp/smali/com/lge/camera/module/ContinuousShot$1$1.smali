.class Lcom/lge/camera/module/ContinuousShot$1$1;
.super Ljava/lang/Object;
.source "ContinuousShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/ContinuousShot$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/module/ContinuousShot$1;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/ContinuousShot$1;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/lge/camera/module/ContinuousShot$1$1;->this$1:Lcom/lge/camera/module/ContinuousShot$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot$1$1;->this$1:Lcom/lge/camera/module/ContinuousShot$1;

    iget-object v0, v0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v0}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot$1$1;->this$1:Lcom/lge/camera/module/ContinuousShot$1;

    iget-object v0, v0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v0}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot$1$1;->this$1:Lcom/lge/camera/module/ContinuousShot$1;

    iget-object v0, v0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v0}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot$1$1;->this$1:Lcom/lge/camera/module/ContinuousShot$1;

    iget-object v0, v0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    #getter for: Lcom/lge/camera/module/ContinuousShot;->mCameraMediator:Lcom/lge/camera/CameraMediator;
    invoke-static {v0}, Lcom/lge/camera/module/ContinuousShot;->access$300(Lcom/lge/camera/module/ContinuousShot;)Lcom/lge/camera/CameraMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CameraMediator;->showProgressDialog()V

    .line 198
    :cond_0
    return-void
.end method
