.class Lcom/lge/camera/command/ExitZoomBrightnessInteraction$2;
.super Ljava/lang/Object;
.source "ExitZoomBrightnessInteraction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/ExitZoomBrightnessInteraction;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/ExitZoomBrightnessInteraction;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/ExitZoomBrightnessInteraction;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/lge/camera/command/ExitZoomBrightnessInteraction$2;->this$0:Lcom/lge/camera/command/ExitZoomBrightnessInteraction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lge/camera/command/ExitZoomBrightnessInteraction$2;->this$0:Lcom/lge/camera/command/ExitZoomBrightnessInteraction;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/lge/camera/command/ExitZoomBrightnessInteraction$2;->this$0:Lcom/lge/camera/command/ExitZoomBrightnessInteraction;

    iget-object v0, v0, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getFocusController()Lcom/lge/camera/controller/FocusController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    .line 46
    return-void
.end method
