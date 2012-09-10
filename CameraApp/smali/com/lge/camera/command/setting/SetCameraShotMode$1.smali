.class Lcom/lge/camera/command/setting/SetCameraShotMode$1;
.super Ljava/lang/Object;
.source "SetCameraShotMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraShotMode;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraShotMode;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v1, "key_camera_shot_mode"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/CameraMediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    .line 76
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraShotMode$1;->this$0:Lcom/lge/camera/command/setting/SetCameraShotMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraShotMode;->mCameraMediator:Lcom/lge/camera/CameraMediator;

    const-string v1, "key_time_machine"

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/CameraMediator;->setPreferenceMenuEnable(Ljava/lang/String;Z)V

    .line 77
    return-void
.end method
