.class Lcom/lge/camera/controller/PreviewController$11$1;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewController$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/PreviewController$11;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewController$11;)V
    .locals 0
    .parameter

    .prologue
    .line 1238
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$11$1;->this$1:Lcom/lge/camera/controller/PreviewController$11;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$11$1;->this$1:Lcom/lge/camera/controller/PreviewController$11;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 1241
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$11$1;->this$1:Lcom/lge/camera/controller/PreviewController$11;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController$11;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->showCameraErrorAndFinish()V

    .line 1242
    return-void
.end method
