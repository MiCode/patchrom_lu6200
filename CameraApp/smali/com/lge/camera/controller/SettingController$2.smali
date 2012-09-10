.class Lcom/lge/camera/controller/SettingController$2;
.super Ljava/lang/Object;
.source "SettingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingController;->setLiveeffectLimit()Ljava/lang/String;
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
    .line 276
    iput-object p1, p0, Lcom/lge/camera/controller/SettingController$2;->this$0:Lcom/lge/camera/controller/SettingController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 278
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController$2;->this$0:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 279
    const-string v3, "CameraApp"

    const-string v4, "setLiveeffectLimit updateSizeIndicator"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController$2;->this$0:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;

    .line 281
    .local v1, controller:Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;
    invoke-virtual {v1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateSizeIndicator()V

    .line 282
    invoke-virtual {v1}, Lcom/lge/camera/controller/camcorder/CamcorderIndicatorController;->updateGpsIndicator()V

    .line 284
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController$2;->this$0:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/lge/camera/controller/PreviewController;->setLimitationToLiveeffect(Z)V

    .line 286
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController$2;->this$0:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getPreviewController()Lcom/lge/camera/controller/PreviewController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/camera/controller/PreviewController;->getPreviousEffectType()I

    move-result v3

    if-nez v3, :cond_0

    .line 287
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController$2;->this$0:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0b0217

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 288
    .local v2, sizeChangeMsg:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController$2;->this$0:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const v4, 0x7f0b0215

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, changedEntryValue:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/SettingController$2;->this$0:Lcom/lge/camera/controller/SettingController;

    invoke-virtual {v3}, Lcom/lge/camera/controller/SettingController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/Mediator;->toast(Ljava/lang/String;)V

    .line 291
    .end local v0           #changedEntryValue:Ljava/lang/String;
    .end local v2           #sizeChangeMsg:Ljava/lang/String;
    :cond_0
    return-void
.end method
