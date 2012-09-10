.class Lcom/lge/camera/dialog/HelpLiveEffectPopupRotatableDialog$1;
.super Ljava/lang/Object;
.source "HelpLiveEffectPopupRotatableDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/dialog/HelpLiveEffectPopupRotatableDialog;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/dialog/HelpLiveEffectPopupRotatableDialog;


# direct methods
.method constructor <init>(Lcom/lge/camera/dialog/HelpLiveEffectPopupRotatableDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lge/camera/dialog/HelpLiveEffectPopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/HelpLiveEffectPopupRotatableDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 39
    const-string v2, "CameraApp"

    const-string v3, "ok button click...."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v2, p0, Lcom/lge/camera/dialog/HelpLiveEffectPopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/HelpLiveEffectPopupRotatableDialog;

    iget-object v2, v2, Lcom/lge/camera/dialog/RotateDialog;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "Main_CameraAppConfig"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 42
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 44
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "live_effect"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    iget-object v2, p0, Lcom/lge/camera/dialog/HelpLiveEffectPopupRotatableDialog$1;->this$0:Lcom/lge/camera/dialog/HelpLiveEffectPopupRotatableDialog;

    invoke-virtual {v2}, Lcom/lge/camera/dialog/HelpLiveEffectPopupRotatableDialog;->onDismiss()V

    .line 48
    return-void
.end method
