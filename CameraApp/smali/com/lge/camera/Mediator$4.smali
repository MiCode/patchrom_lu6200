.class Lcom/lge/camera/Mediator$4;
.super Ljava/lang/Object;
.source "Mediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/Mediator;->deleteProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/Mediator;


# direct methods
.method constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter

    .prologue
    .line 2129
    iput-object p1, p0, Lcom/lge/camera/Mediator$4;->this$0:Lcom/lge/camera/Mediator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2131
    iget-object v0, p0, Lcom/lge/camera/Mediator$4;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 2132
    iget-object v0, p0, Lcom/lge/camera/Mediator$4;->this$0:Lcom/lge/camera/Mediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    if-eqz v0, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/lge/camera/Mediator$4;->this$0:Lcom/lge/camera/Mediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/DialogController;->onDismissRotateDialog()V

    .line 2135
    :cond_0
    return-void
.end method
