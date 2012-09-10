.class Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;
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
    .line 300
    iput-object p1, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

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

    .line 303
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #calls: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->hide()V
    invoke-static {v2}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$000(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)V

    .line 305
    iget-object v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    #setter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I
    invoke-static {v3, v2}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$102(Lcom/lge/camera/command/ShowLiveEffectSubMenu;I)I

    .line 306
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I
    invoke-static {v2}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$100(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I

    move-result v2

    if-nez v2, :cond_0

    .line 307
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #setter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceMenuOffset:I
    invoke-static {v2, v5}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$202(Lcom/lge/camera/command/ShowLiveEffectSubMenu;I)I

    .line 312
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #setter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackMenuOffset:I
    invoke-static {v2, v5}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$302(Lcom/lge/camera/command/ShowLiveEffectSubMenu;I)I

    .line 313
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #setter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mBackSelectedMenu:I
    invoke-static {v2, v4}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$402(Lcom/lge/camera/command/ShowLiveEffectSubMenu;I)I

    .line 315
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mMenuIndex:I
    invoke-static {v3}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$500(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 316
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    const/4 v1, 0x0

    .line 318
    .local v1, value:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 319
    const-string v2, "CameraApp"

    const-string v3, "pref is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :goto_1
    return-void

    .line 309
    .end local v0           #pref:Lcom/lge/camera/setting/ListPreference;
    .end local v1           #value:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #setter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceMenuOffset:I
    invoke-static {v2, v4}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$202(Lcom/lge/camera/command/ShowLiveEffectSubMenu;I)I

    goto :goto_0

    .line 322
    .restart local v0       #pref:Lcom/lge/camera/setting/ListPreference;
    .restart local v1       #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I
    invoke-static {v3}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$100(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 323
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOnFaceEffectClickListener idx:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I
    invoke-static {v4}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$100(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I

    move-result v4

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

    .line 324
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "key_live_effect"

    invoke-virtual {v2, v3, v1}, Lcom/lge/camera/Mediator;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 325
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getQuickFunctionController()Lcom/lge/camera/controller/QuickFunctionController;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mMenuIndex:I
    invoke-static {v3}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$500(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    #getter for: Lcom/lge/camera/command/ShowLiveEffectSubMenu;->mFaceSelectedMenu:I
    invoke-static {v4}, Lcom/lge/camera/command/ShowLiveEffectSubMenu;->access$100(Lcom/lge/camera/command/ShowLiveEffectSubMenu;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/controller/QuickFunctionController;->setMenuIcon(II)V

    .line 327
    iget-object v2, p0, Lcom/lge/camera/command/ShowLiveEffectSubMenu$1;->this$0:Lcom/lge/camera/command/ShowLiveEffectSubMenu;

    iget-object v2, v2, Lcom/lge/camera/command/Command;->mMediator:Lcom/lge/camera/Mediator;

    const-string v3, "com.lge.camera.command.setting.SetLiveEffect"

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->doCommandUi(Ljava/lang/String;)V

    goto :goto_1
.end method
