.class Lcom/lge/camera/controller/SettingRotatableController$1$1;
.super Ljava/lang/Object;
.source "SettingRotatableController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingRotatableController$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/SettingRotatableController$1;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingRotatableController$1;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/lge/camera/controller/SettingRotatableController$1$1;->this$1:Lcom/lge/camera/controller/SettingRotatableController$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$1$1;->this$1:Lcom/lge/camera/controller/SettingRotatableController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$1$1;->this$1:Lcom/lge/camera/controller/SettingRotatableController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/lge/camera/controller/SettingRotatableController$1$1;->this$1:Lcom/lge/camera/controller/SettingRotatableController$1;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingRotatableController$1;->this$0:Lcom/lge/camera/controller/SettingRotatableController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/SettingRotatableController;->removeSettingViewAll()V

    .line 202
    :cond_0
    return-void
.end method
