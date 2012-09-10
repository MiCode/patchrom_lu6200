.class Lcom/lge/camera/command/ShowSubMenu$2$1;
.super Ljava/lang/Object;
.source "ShowSubMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/ShowSubMenu$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/command/ShowSubMenu$2;

.field final synthetic val$pref:Lcom/lge/camera/setting/ListPreference;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/ShowSubMenu$2;Lcom/lge/camera/setting/ListPreference;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->this$1:Lcom/lge/camera/command/ShowSubMenu$2;

    iput-object p2, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->val$pref:Lcom/lge/camera/setting/ListPreference;

    iput-object p3, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->val$v:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 228
    iget-object v2, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->this$1:Lcom/lge/camera/command/ShowSubMenu$2;

    iget-object v2, v2, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 230
    iget-object v2, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->this$1:Lcom/lge/camera/command/ShowSubMenu$2;

    iget-object v2, v2, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getInCaptureProgress()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->this$1:Lcom/lge/camera/command/ShowSubMenu$2;

    iget-object v2, v2, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->clearSubMenu()V

    .line 234
    iget-object v2, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->this$1:Lcom/lge/camera/command/ShowSubMenu$2;

    iget-object v2, v2, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2, v5}, Lcom/lge/camera/Mediator;->enableInput(Z)V

    .line 235
    iget-object v2, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->val$pref:Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->val$pref:Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.lge.camera.command.SetTimeMachineMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 238
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "subMenuClicked"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    iget-object v2, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->this$1:Lcom/lge/camera/command/ShowSubMenu$2;

    iget-object v2, v2, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v3, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->val$pref:Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    .end local v1           #bundle:Landroid/os/Bundle;
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->this$1:Lcom/lge/camera/command/ShowSubMenu$2;

    iget-object v2, v2, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2, v5}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 244
    iget-object v2, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->this$1:Lcom/lge/camera/command/ShowSubMenu$2;

    iget-object v2, v2, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v3

    iget-object v2, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->this$1:Lcom/lge/camera/command/ShowSubMenu$2;

    iget-object v2, v2, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget v4, v2, Lcom/lge/camera/command/ShowSubMenu;->mIndex:I

    iget-object v2, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuIcon(II)V

    .line 245
    iget-object v2, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->val$v:Landroid/view/View;

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    iget-object v3, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->val$pref:Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getMenuIconResources()[I

    move-result-object v4

    iget-object v3, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->val$v:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget v3, v4, v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 247
    iget-object v2, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->this$1:Lcom/lge/camera/command/ShowSubMenu$2;

    iget-object v2, v2, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->this$1:Lcom/lge/camera/command/ShowSubMenu$2;

    iget-object v3, v3, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget v3, v3, Lcom/lge/camera/command/ShowSubMenu;->mIndex:I

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/QuickFunctionController;->getAnimationView(I)Landroid/view/View;

    move-result-object v0

    .line 248
    .local v0, animationView:Landroid/view/View;
    iget-object v2, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->this$1:Lcom/lge/camera/command/ShowSubMenu$2;

    iget-object v2, v2, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v3, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->this$1:Lcom/lge/camera/command/ShowSubMenu$2;

    iget-object v3, v3, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v3, v3, Lcom/lge/camera/command/ShowSubMenu;->AnimationListener:Landroid/view/animation/Animation$AnimationListener;

    iget-object v4, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->this$1:Lcom/lge/camera/command/ShowSubMenu$2;

    iget-object v4, v4, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget v4, v4, Lcom/lge/camera/command/ShowSubMenu;->mIndex:I

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/lge/camera/command/ShowSubMenu;->showMenu(Landroid/view/animation/Animation$AnimationListener;ILandroid/view/View;Z)V

    goto/16 :goto_0

    .line 241
    .end local v0           #animationView:Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->this$1:Lcom/lge/camera/command/ShowSubMenu$2;

    iget-object v2, v2, Lcom/lge/camera/command/ShowSubMenu$2;->this$0:Lcom/lge/camera/command/ShowSubMenu;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    iget-object v3, p0, Lcom/lge/camera/command/ShowSubMenu$2$1;->val$pref:Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {v3}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_1
.end method
