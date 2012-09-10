.class Lcom/lge/camera/listeners/OnKeyEventListener$1;
.super Ljava/lang/Object;
.source "OnKeyEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/listeners/OnKeyEventListener;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/listeners/OnKeyEventListener;


# direct methods
.method constructor <init>(Lcom/lge/camera/listeners/OnKeyEventListener;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/lge/camera/listeners/OnKeyEventListener$1;->this$0:Lcom/lge/camera/listeners/OnKeyEventListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener$1;->this$0:Lcom/lge/camera/listeners/OnKeyEventListener;

    #getter for: Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/listeners/OnKeyEventListener;->access$000(Lcom/lge/camera/listeners/OnKeyEventListener;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/lge/camera/listeners/OnKeyEventListener$1;->this$0:Lcom/lge/camera/listeners/OnKeyEventListener;

    #getter for: Lcom/lge/camera/listeners/OnKeyEventListener;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/listeners/OnKeyEventListener;->access$000(Lcom/lge/camera/listeners/OnKeyEventListener;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mLiveEffectInformationMessage:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    return-void
.end method
