.class Lcom/lge/camera/controller/PreviewController$8;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewController;->hideLoadingView()V
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
    .line 1138
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$8;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 1140
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$8;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v1, v1, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 1141
    const-string v1, "CameraApp"

    const-string v2, "TIME_CHECK cam,video_loading is invisible"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController$8;->this$0:Lcom/lge/camera/controller/PreviewController;

    const v2, 0x7f09006e

    invoke-virtual {v1, v2}, Lcom/lge/camera/controller/PreviewController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1143
    .local v0, initLoading:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 1144
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    :cond_0
    return-void
.end method
