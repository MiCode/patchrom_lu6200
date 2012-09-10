.class Lcom/lge/camera/controller/SettingRotatableController$7;
.super Ljava/lang/Object;
.source "SettingRotatableController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/SettingRotatableController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingRotatableController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableController;)V
    .locals 0
    .parameter

    .prologue
    .line 732
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableController$7;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 735
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableController$7;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v5, v5, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableController$7;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v5, v5, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 775
    :cond_0
    :goto_0
    return-void

    .line 739
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableController$7;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v5, v5, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v5, :cond_0

    .line 740
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OnItemClickListener position["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableController$7;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v5}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v4

    .line 743
    .local v4, settingMenu:Lcom/lge/camera/setting/SettingMenu;
    invoke-virtual {v4, p3}, Lcom/lge/camera/setting/SettingMenu;->setSelectedChild(I)Z

    .line 744
    invoke-virtual {v4}, Lcom/lge/camera/setting/SettingMenu;->getSelectedChild()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v0

    .line 746
    .local v0, childMenuItem:Lcom/lge/camera/setting/SettingMenuItem;
    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getCommand()Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, className:Ljava/lang/String;
    if-eqz v1, :cond_9

    const-string v5, "com.lge.camera.command.ShowHelpGuidePopup"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 749
    invoke-virtual {v0}, Lcom/lge/camera/setting/SettingMenuItem;->getParameterValue()Ljava/lang/String;

    move-result-object v3

    .line 750
    .local v3, helpGuide:Ljava/lang/String;
    if-eqz v3, :cond_9

    .line 751
    const/4 v2, 0x0

    .line 752
    .local v2, dialog_id:I
    const-string v5, "hdr"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 753
    const/16 v2, 0x18

    .line 768
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableController$7;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v5, v5, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5, v2}, Lcom/lge/camera/Mediator;->showDialogPopup(I)V

    goto :goto_0

    .line 754
    :cond_3
    const-string v5, "panorama"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 755
    const/16 v2, 0x19

    goto :goto_1

    .line 756
    :cond_4
    const-string v5, "timemachine"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 757
    const/16 v2, 0x1a

    goto :goto_1

    .line 758
    :cond_5
    const-string v5, "continuous"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 759
    const/16 v2, 0x1b

    goto :goto_1

    .line 760
    :cond_6
    const-string v5, "beauty_shot"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 761
    const/16 v2, 0x1c

    goto :goto_1

    .line 762
    :cond_7
    const-string v5, "voice_photo"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 763
    const/16 v2, 0x1d

    goto :goto_1

    .line 764
    :cond_8
    const-string v5, "live_effect"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 765
    const/16 v2, 0x1e

    goto :goto_1

    .line 772
    .end local v2           #dialog_id:I
    .end local v3           #helpGuide:Ljava/lang/String;
    :cond_9
    iget-object v5, p0, Lcom/lge/camera/controller/SettingRotatableController$7;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v5, v5, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v5, v1}, Lcom/lge/camera/Mediator;->doCommand(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
