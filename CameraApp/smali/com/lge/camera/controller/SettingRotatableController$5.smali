.class Lcom/lge/camera/controller/SettingRotatableController$5;
.super Ljava/lang/Object;
.source "SettingRotatableController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableController;->showAnimation()V
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
    .line 355
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableController$5;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 368
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 367
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 357
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$5;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$5;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$5;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mParentSettingListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController$5;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenuIndex()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 360
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$5;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$5;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController$5;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingRotatableController;->getCurrentSettingMenu()Lcom/lge/camera/setting/SettingMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/setting/SettingMenu;->getCurrentMenu()Lcom/lge/camera/setting/SettingMenuItem;

    move-result-object v1

    iget v1, v1, Lcom/lge/camera/setting/SettingMenuItem;->selectedChildPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$5;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v1, p0, Lcom/lge/camera/controller/SettingRotatableController$5;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    #getter for: Lcom/lge/camera/controller/SettingRotatableController;->mDegree:I
    invoke-static {v1}, Lcom/lge/camera/controller/SettingRotatableController;->access$000(Lcom/lge/camera/controller/SettingRotatableController;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/SettingRotatableController;->setChildMenuLocation(IZ)V

    .line 366
    return-void
.end method
