.class public Lcom/lge/camera/listeners/CameraContinuousFocusCallback;
.super Ljava/lang/Object;
.source "CameraContinuousFocusCallback.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# static fields
.field private static mPreviousFocusedState:I


# instance fields
.field private mMediator:Lcom/lge/camera/CameraMediator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mPreviousFocusedState:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/CameraMediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    .line 17
    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 7
    .parameter "focusedState"
    .parameter "camera"

    .prologue
    const/16 v6, 0x17

    const/16 v5, 0x9

    const/16 v4, 0x8

    .line 21
    const-string v1, "CameraApp"

    const-string v2, "onContinuousFocus()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    if-nez v1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getPreviewController()Lcom/lge/camera/controller/camera/CameraPreviewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraPreviewController;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->isTouchMoveFocusVisibe()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v0

    .line 36
    .local v0, focusController:Lcom/lge/camera/controller/camera/CameraFocusController;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### onContinuousFocus():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 38
    if-eqz p1, :cond_2

    sget v1, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mPreviousFocusedState:I

    if-eq v1, v5, :cond_3

    :cond_2
    if-nez p1, :cond_4

    sget v1, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mPreviousFocusedState:I

    if-ne v1, v4, :cond_4

    .line 40
    :cond_3
    const/4 v1, 0x0

    sput v1, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mPreviousFocusedState:I

    goto :goto_0

    .line 45
    :cond_4
    if-eqz p1, :cond_6

    .line 46
    invoke-virtual {v0, v5}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    .line 47
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 48
    sput v5, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mPreviousFocusedState:I

    .line 56
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocusVisible()Z

    .line 57
    iget-object v1, p0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mMediator:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->getFocusController()Lcom/lge/camera/controller/camera/CameraFocusController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->updateFocusIndicator()V

    goto :goto_0

    .line 51
    :cond_6
    invoke-virtual {v0, v4}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    .line 52
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 53
    sput v4, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;->mPreviousFocusedState:I

    goto :goto_1
.end method
