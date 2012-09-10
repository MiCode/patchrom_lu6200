.class public Lcom/lge/camera/listeners/ShutterCallback;
.super Ljava/lang/Object;
.source "ShutterCallback.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# instance fields
.field mMediator:Lcom/lge/camera/Mediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/lge/camera/listeners/ShutterCallback;->mMediator:Lcom/lge/camera/Mediator;

    .line 15
    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 19
    const-string v2, "CameraApp"

    const-string v3, "SHOT ShutterCallback()"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v2, p0, Lcom/lge/camera/listeners/ShutterCallback;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->isPausing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    const-string v2, "CameraApp"

    const-string v3, "ShutterCallback():: (mMediator.isPausing() == true)"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/listeners/ShutterCallback;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getApplicationMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 27
    const-string v2, "CameraApp"

    const-string v3, "ShutterCallback(): (mMediator.getApplicationMode() == MODE_CAMCORDER)"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_2
    sget-wide v2, Lcom/lge/camera/properties/ProjectVariables;->mCaptureStartTime:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_3

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/lge/camera/properties/ProjectVariables;->mCaptureStartTime:J

    sub-long v0, v2, v4

    .line 34
    .local v0, mShutterLag:J
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mShutterLag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    sput-wide v6, Lcom/lge/camera/properties/ProjectVariables;->mCaptureStartTime:J

    .line 38
    .end local v0           #mShutterLag:J
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsEnableNativeSound()Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/lge/camera/listeners/ShutterCallback;->mMediator:Lcom/lge/camera/Mediator;

    new-instance v3, Lcom/lge/camera/listeners/ShutterCallback$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/listeners/ShutterCallback$1;-><init>(Lcom/lge/camera/listeners/ShutterCallback;)V

    invoke-virtual {v2, v3}, Lcom/lge/camera/Mediator;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
