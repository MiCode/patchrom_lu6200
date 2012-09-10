.class Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;
.super Ljava/lang/Object;
.source "ShowLiveEffectSubMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/command/ShowLiveEffectSubMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 334
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #calls: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->hide()V
    invoke-static {v2}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$000(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)V

    .line 336
    iget-object v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #setter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackSelectedMenu:I
    invoke-static {v3, v2}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$402(Lcom/lge/camera/command/ShowLiveEffectSubMenu;I)I

    .line 337
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackSelectedMenu:I
    invoke-static {v2}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$400(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I

    move-result v2

    if-nez v2, :cond_0

    .line 338
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #setter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackMenuOffset:I
    invoke-static {v2, v5}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$302(Lcom/lge/camera/command/ShowLiveEffectSubMenu;I)I

    .line 343
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #setter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceMenuOffset:I
    invoke-static {v2, v5}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$202(Lcom/lge/camera/command/ShowLiveEffectSubMenu;I)I

    .line 344
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #setter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I
    invoke-static {v2, v4}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$102(Lcom/lge/camera/command/ShowLiveEffectSubMenu;I)I

    .line 346
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mMenuIndex:I
    invoke-static {v3}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$500(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 348
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_1

    .line 349
    const-string v2, "CameraApp"

    const-string v3, "pref is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :goto_1
    return-void

    .line 340
    .end local v0           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #setter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackMenuOffset:I
    invoke-static {v2, v4}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$302(Lcom/lge/camera/command/ShowLiveEffectSubMenu;I)I

    goto :goto_0

    .line 352
    .restart local v0       #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_1
    const/4 v1, 0x0

    .line 353
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackSelectedMenu:I
    invoke-static {v2}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$400(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 354
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackSelectedMenu:I
    invoke-static {v3}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$400(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$600(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 355
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mMenuIndex:I
    invoke-static {v3}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$500(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackSelectedMenu:I
    invoke-static {v4}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$400(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$600(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuIcon(II)V

    .line 361
    :goto_2
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOnBackEffectClickListener idx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackSelectedMenu:I
    invoke-static {v4}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$400(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceEffectImage:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$600(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", onClick:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_live_effect"

    invoke-virtual {v2, v3, v1}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 365
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "com.lge.camera.command.setting.SetLiveEffect"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 357
    :cond_2
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$2;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mMenuIndex:I
    invoke-static {v3}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$500(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuIcon(II)V

    goto :goto_2
.end method
