.class Lcom/lge/camera/controller/SettingController$3;
.super Ljava/lang/Object;
.source "SettingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingController;->setTimeMachineLimit(Z)V
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
    .line 346
    iput-object p1, p0, Lcom/lge/camera/controller/SettingController$3;->this$0:Lcom/lge/camera/controller/SettingController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 348
    const-string v1, "CameraApp"

    const-string v2, "setTimeMachineLimit updateSizeIndicator"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController$3;->this$0:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 350
    iget-object v1, p0, Lcom/lge/camera/controller/SettingController$3;->this$0:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v1}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/camera/CameraIndicatorController;

    .line 351
    .local v0, controller:Lcom/lge/camera/controller/camera/CameraIndicatorController;
    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateSizeIndicator()V

    .line 352
    return-void
.end method
