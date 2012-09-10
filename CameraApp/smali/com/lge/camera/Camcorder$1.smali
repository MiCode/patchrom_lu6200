.class Lcom/lge/camera/Camcorder$1;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/Camcorder;->onCancelBackgroundMessage(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/lge/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/lge/camera/Camcorder$1;->this$0:Lcom/lge/camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/lge/camera/Camcorder$1;->this$0:Lcom/lge/camera/Camcorder;

    #getter for: Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;
    invoke-static {v0}, Lcom/lge/camera/Camcorder;->access$100(Lcom/lge/camera/Camcorder;)Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/CamcorderMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 599
    iget-object v0, p0, Lcom/lge/camera/Camcorder$1;->this$0:Lcom/lge/camera/Camcorder;

    #getter for: Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;
    invoke-static {v0}, Lcom/lge/camera/Camcorder;->access$100(Lcom/lge/camera/Camcorder;)Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mLiveEffectInformationMessage:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/lge/camera/Camcorder$1;->this$0:Lcom/lge/camera/Camcorder;

    #getter for: Lcom/lge/camera/Camcorder;->mMediator:Lcom/lge/camera/CamcorderMediator;
    invoke-static {v0}, Lcom/lge/camera/Camcorder;->access$100(Lcom/lge/camera/Camcorder;)Lcom/lge/camera/CamcorderMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/CamcorderMediator;->getPreviewController()Lcom/lge/camera/controller/camcorder/CamcorderPreviewController;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mLiveEffectInformationMessage:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 602
    :cond_0
    return-void
.end method
