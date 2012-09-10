.class Lcom/lge/camera/dialog/EulaPopupRotatableDialog$2;
.super Ljava/lang/Object;
.source "EulaPopupRotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/EulaPopupRotatableDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$2;->this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 57
    const-string v2, "CameraApp"

    const-string v3, "ok button click...."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$2;->this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    iget-boolean v2, v2, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->mDoNotShowAgain:Z

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$2;->this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    iget-object v2, v2, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "EULA_POPUP"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 67
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "EULA_DO_NOT_SHOW"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$2;->this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    invoke-virtual {v2}, Lcom/lge/camera/dialog/EulaPopupRotatableDialog;->onDismiss()V

    .line 74
    iget-object v2, p0, Lcom/lge/camera/dialog/EulaPopupRotatableDialog$2;->this$0:Lcom/lge/camera/dialog/EulaPopupRotatableDialog;

    iget-object v2, v2, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->showDialogPopup(I)V

    .line 75
    return-void
.end method
