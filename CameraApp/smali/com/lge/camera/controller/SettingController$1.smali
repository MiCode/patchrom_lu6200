.class Lcom/lge/camera/controller/SettingController$1;
.super Ljava/lang/Object;
.source "SettingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingController;->setMmsLimit(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingController;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/lge/camera/controller/SettingController$1;->this$0:Lcom/lge/camera/controller/SettingController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 238
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController$1;->this$0:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 239
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController$1;->this$0:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    .line 240
    .local v0, controller:Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;
    invoke-virtual {v0}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateSizeIndicator()V

    .line 241
    return-void
.end method
