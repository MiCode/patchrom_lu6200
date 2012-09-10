.class Lcom/lge/camera/command/UpdateThumbnailButton$1;
.super Ljava/lang/Object;
.source "UpdateThumbnailButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/UpdateThumbnailButton;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/UpdateThumbnailButton;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/UpdateThumbnailButton;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lge/camera/command/UpdateThumbnailButton$1;->this$0:Lcom/lge/camera/command/UpdateThumbnailButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lge/camera/command/UpdateThumbnailButton$1;->this$0:Lcom/lge/camera/command/UpdateThumbnailButton;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/lge/camera/command/UpdateThumbnailButton$1;->this$0:Lcom/lge/camera/command/UpdateThumbnailButton;

    invoke-virtual {v0}, Lcom/lge/camera/command/UpdateThumbnailButton;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButtonVisibility()V

    .line 40
    iget-object v0, p0, Lcom/lge/camera/command/UpdateThumbnailButton$1;->this$0:Lcom/lge/camera/command/UpdateThumbnailButton;

    invoke-virtual {v0}, Lcom/lge/camera/command/UpdateThumbnailButton;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewPanelController()Lcom/lge/camera/controller/PreviewPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewPanelController;->getThumbnailAndUpdateButton()V

    .line 41
    return-void
.end method
