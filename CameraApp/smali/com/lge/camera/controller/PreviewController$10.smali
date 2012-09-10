.class Lcom/lge/camera/controller/PreviewController$10;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewController;->showCamcorderLoadingView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewController;)V
    .locals 0
    .parameter

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$10;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1166
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$10;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 1167
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$10;->this$0:Lcom/lge/camera/controller/PreviewController;

    const v2, 0x7f09006e

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1168
    .local v0, initLoading:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1169
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1171
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "TIME_CHECK video_loading is visible"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    return-void
.end method
