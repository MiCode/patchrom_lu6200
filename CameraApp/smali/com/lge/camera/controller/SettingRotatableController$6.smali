.class Lcom/lge/camera/controller/SettingRotatableController$6;
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
    .line 651
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v8, 0x64

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 653
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getDialogController()Lcom/lge/camera/controller/DialogController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/DialogController;->getDialogID()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wheel itemIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getVideoState()I

    move-result v2

    if-eqz v2, :cond_2

    .line 657
    const-string v2, "CameraApp"

    const-string v3, "return because of recording staus"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenuIndex()I

    move-result v2

    if-ne v2, p3, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 663
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    if-eqz v2, :cond_3

    .line 664
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 666
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingRotatableController;->removeChildSettingView()V

    goto :goto_0

    .line 669
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/lge/camera/setting/SettingMenu;->setCurrentMenu(I)Z

    .line 672
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2}, Lcom/lge/camera/setting/SettingMenuAdapter;->update()V

    .line 674
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    add-int/lit8 v3, p3, 0x5

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 676
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_restore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 677
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    if-eqz v2, :cond_5

    .line 678
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 680
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingRotatableController;->removeChildSettingView()V

    .line 681
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->showDialogPopup(I)V

    goto/16 :goto_0

    .line 684
    :cond_6
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_brightness"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 685
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    if-eqz v2, :cond_7

    .line 686
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 688
    :cond_7
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingRotatableController;->removeChildSettingView()V

    .line 690
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2, v5}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 691
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 692
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "showAll"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 693
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "com.lge.camera.command.RemoveSettingMenu"

    invoke-virtual {v2, v3, v0, v8, v9}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 694
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/controller/QuickFunctionController;->show()V

    .line 695
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "com.lge.camera.command.ShowBrightness"

    invoke-virtual {v2, v3, v8, v9}, Lcom/lge/camera/Mediator;->doCommandDelayed(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 699
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_camera_shutter_sound"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 700
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 705
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mParentAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v6}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowChild(Z)V

    .line 706
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget v3, v3, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_LEFT:I

    iget-object v4, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget v4, v4, Lcom/lge/camera/controller/SettingRotatableController;->CHILD_SETTING_VIEW_MARGIN_TOP:I

    #calls: Lcom/lge/camera/controller/SettingRotatableController;->updateChildSettingListHeight(III)V
    invoke-static {v2, p3, v3, v4}, Lcom/lge/camera/controller/SettingRotatableController;->access$100(Lcom/lge/camera/controller/SettingRotatableController;III)V

    .line 707
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v3, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    #getter for: Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I
    invoke-static {v3}, Lcom/lge/camera/controller/SettingRotatableController;->access$000(Lcom/lge/camera/controller/SettingRotatableController;)I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/lge/camera/controller/SettingRotatableController;->setChildMenuLocation(IZ)V

    .line 708
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v2}, Lcom/lge/camera/controller/SettingRotatableController;->showChildSettingView()V

    .line 710
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 711
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v6}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowSelectedChild(Z)V

    .line 712
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_help_guide"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 713
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/SettingMenuAdapter;->setShowSelectedChild(Z)V

    .line 714
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setSelected(Z)V

    .line 715
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildAdapter:Lcom/lge/camera/setting/SettingMenuAdapter;

    invoke-virtual {v2}, Lcom/lge/camera/setting/SettingMenuAdapter;->update()V

    goto/16 :goto_0

    .line 702
    :cond_9
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    goto :goto_1

    .line 719
    :cond_a
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$6;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$6$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$6$1;-><init>(Lcom/lge/camera/controller/SettingRotatableController$6;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
