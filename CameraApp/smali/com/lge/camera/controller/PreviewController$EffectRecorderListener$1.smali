.class Lcom/lge/camera/controller/PreviewController$EffectRecorderListener$1;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->onEffectsUpdate(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1731
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener$1;->this$1:Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1733
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener$1;->this$1:Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 1734
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener$1;->this$1:Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mLiveEffectInformationMessage:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener$1;->this$1:Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mLiveEffectInformationMessage:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1737
    :cond_0
    return-void
.end method
