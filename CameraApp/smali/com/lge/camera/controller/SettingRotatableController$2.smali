.class Lcom/lge/camera/controller/SettingRotatableController$2;
.super Ljava/lang/Object;
.source "SettingRotatableController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableController;->removeChildSettingView()V
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
    .line 270
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableController$2;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$2;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$2;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController;->mChildSettingListView:Landroid/widget/ListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 277
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 272
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 271
    return-void
.end method
