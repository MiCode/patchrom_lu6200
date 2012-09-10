.class Lcom/lge/camera/command/setting/SetCameraGeoTag$2;
.super Ljava/lang/Object;
.source "SetCameraGeoTag.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraGeoTag;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraGeoTag;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraGeoTag;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag$2;->this$0:Lcom/lge/camera/command/setting/SetCameraGeoTag;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag$2;->this$0:Lcom/lge/camera/command/setting/SetCameraGeoTag;

    #getter for: Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->access$000(Lcom/lge/camera/command/setting/SetCameraGeoTag;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag$2;->this$0:Lcom/lge/camera/command/setting/SetCameraGeoTag;

    #getter for: Lcom/lge/camera/command/setting/SetCameraGeoTag;->mMediator:Lcom/lge/camera/Mediator;
    invoke-static {v0}, Lcom/lge/camera/command/setting/SetCameraGeoTag;->access$000(Lcom/lge/camera/command/setting/SetCameraGeoTag;)Lcom/lge/camera/Mediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/IndicatorController;->updateGpsIndicator()V

    .line 93
    return-void
.end method
