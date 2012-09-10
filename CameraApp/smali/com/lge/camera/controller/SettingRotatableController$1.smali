.class Lcom/lge/camera/controller/SettingRotatableController$1;
.super Ljava/lang/Object;
.source "SettingRotatableController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableController;->removeSettingView()V
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
    .line 184
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/4 v4, 0x4

    .line 188
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    const v3, 0x7f0900c9

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    .line 190
    .local v1, rlP:Lcom/lge/camera/components/RotateLayout;
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    const v3, 0x7f0900ca

    invoke-virtual {v2, v3}, Lcom/lge/camera/controller/SettingRotatableController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    .line 192
    .local v0, rlC:Lcom/lge/camera/components/RotateLayout;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v1, v4}, Lcom/lge/camera/components/RotateLayout;->setVisibility(I)V

    .line 194
    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateLayout;->setVisibility(I)V

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/SettingRotatableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v2, v2, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v3, Lcom/lge/camera/controller/SettingRotatableController$1$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/SettingRotatableController$1$1;-><init>(Lcom/lge/camera/controller/SettingRotatableController$1;)V

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 205
    .end local v0           #rlC:Lcom/lge/camera/components/RotateLayout;
    .end local v1           #rlP:Lcom/lge/camera/components/RotateLayout;
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 186
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 185
    return-void
.end method
