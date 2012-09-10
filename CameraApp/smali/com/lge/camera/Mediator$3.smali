.class Lcom/lge/camera/Mediator$3;
.super Ljava/lang/Object;
.source "Mediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/Mediator;->showProgressDialog()V
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
    .line 2114
    iput-object p1, p0, Lcom/lge/camera/Mediator$3;->this$0:Lcom/lge/camera/Mediator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/lge/camera/Mediator$3;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 2117
    iget-object v0, p0, Lcom/lge/camera/Mediator$3;->this$0:Lcom/lge/camera/Mediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->mDialogController:Lcom/lge/camera/controller/DialogController;

    if-eqz v0, :cond_0

    .line 2118
    iget-object v0, p0, Lcom/lge/camera/Mediator$3;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/DialogController;->showDialogPopup(I)V

    .line 2120
    :cond_0
    return-void
.end method
