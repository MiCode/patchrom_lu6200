.class Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;
.super Ljava/lang/Object;
.source "InitializeConfigRotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 37
    const-string v0, "CameraApp"

    const-string v1, "ok button click...."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsLiveEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.ResetMenuPrepared"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;->onDismiss()V

    .line 46
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/dialog/InitializeConfigRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/InitializeConfigRotatableDialog;

    iget-object v0, v0, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const-string v1, "com.lge.camera.command.ResetMenu"

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    goto :goto_0
.end method
