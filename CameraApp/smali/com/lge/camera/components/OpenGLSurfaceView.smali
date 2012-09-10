.class public Lcom/lge/camera/components/OpenGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "OpenGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;
    }
.end annotation


# static fields
.field protected static final MAX_PREVIEW_BUFFER:I = 0x2

.field protected static final PRINT_FUNC_PROFILING:Z = false

.field private static final USE_THREAD:Z = true


# instance fields
.field private isPause:Z

.field protected mCameraDevice:Landroid/hardware/Camera;

.field protected mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

.field protected mFlipH:Z

.field private mIsCompleteFrame:Z

.field protected mOrientation:I

.field protected mOrientationFlip:I

.field private mPreviewCallback:Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

.field private mPreviewCallbackBuffer:[B

.field private mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

.field protected mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

.field private mThread:Lcom/lge/camera/components/ProcessorThread;

.field private previewH:I

.field private previewW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    .line 36
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallback:Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

    .line 37
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    .line 38
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

    .line 39
    iput-boolean v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mFlipH:Z

    .line 40
    iput v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 41
    iput v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mIsCompleteFrame:Z

    .line 45
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 47
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallbackBuffer:[B

    .line 268
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    .line 341
    iput-boolean v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->isPause:Z

    .line 51
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/OpenGLSurfaceView;->setDebugFlags(I)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->createOpenGLYUVRenderer(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    .line 36
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallback:Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

    .line 37
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    .line 38
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

    .line 39
    iput-boolean v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mFlipH:Z

    .line 40
    iput v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 41
    iput v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mIsCompleteFrame:Z

    .line 45
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 47
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallbackBuffer:[B

    .line 268
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    .line 341
    iput-boolean v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->isPause:Z

    .line 57
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->createOpenGLYUVRenderer(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method private detectOpenGLES20(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 99
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 100
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 102
    .local v1, info:Landroid/content/pm/ConfigurationInfo;
    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v3, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v4, 0x2

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private startProcessorThread()V
    .locals 4

    .prologue
    .line 270
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    if-nez v2, :cond_0

    .line 271
    new-instance v2, Lcom/lge/camera/components/ProcessorThread;

    invoke-direct {v2, p0}, Lcom/lge/camera/components/ProcessorThread;-><init>(Lcom/lge/camera/components/OpenGLSurfaceView;)V

    iput-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    .line 272
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isVoiceShutter()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x5

    .line 273
    .local v1, priority:I
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/ProcessorThread;->setPriority(I)V

    .line 275
    .end local v1           #priority:I
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/ProcessorThread;->setCompleteFrame(Z)V

    .line 277
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v2}, Lcom/lge/camera/components/ProcessorThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v2}, Lcom/lge/camera/components/ProcessorThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_1
    :goto_1
    return-void

    .line 272
    :cond_2
    const/16 v1, 0xa

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Ljava/lang/IllegalThreadStateException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    .line 282
    invoke-direct {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->startProcessorThread()V

    goto :goto_1
.end method

.method private stopProcessorThread()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    if-nez v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v0}, Lcom/lge/camera/components/ProcessorThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string v0, "CameraApp"

    const-string v1, "stopPreviewRender(): Thread interrupted!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v0}, Lcom/lge/camera/components/ProcessorThread;->interrupt()V

    .line 294
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v0}, Lcom/lge/camera/components/ProcessorThread;->finish()V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    .line 296
    const-string v0, "CameraApp"

    const-string v1, "stopPreviewRender(): thread joined"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 212
    :cond_0
    return-void
.end method

.method public clearData(Z)V
    .locals 3
    .parameter "bReqeustRender"

    .prologue
    .line 331
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearData() bReqeustRender:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    invoke-virtual {v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->clearYuvData()V

    .line 334
    if-eqz p1, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->requestRender()V

    .line 339
    :cond_0
    return-void
.end method

.method public close(Landroid/hardware/Camera;)V
    .locals 5
    .parameter "camera"

    .prologue
    const/4 v4, 0x0

    .line 307
    const-string v2, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close()-start, camera is null? :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-direct {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->stopProcessorThread()V

    .line 312
    iput-object v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 313
    iput-object v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

    .line 316
    if-eqz p1, :cond_0

    .line 317
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 318
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 319
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 320
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_0
    :goto_1
    iput-object v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallbackBuffer:[B

    .line 326
    iput-object v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    .line 327
    const-string v1, "CameraApp"

    const-string v2, "close()-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    return-void

    .line 307
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CameraApp"

    const-string v2, "close stop:"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public createOpenGLYUVRenderer(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->detectOpenGLES20(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/OpenGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 64
    new-instance v0, Lcom/lge/camera/components/OpenGLYUVRenderer;

    invoke-direct {v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    .line 65
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/OpenGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/OpenGLSurfaceView;->setRenderMode(I)V

    .line 68
    :cond_0
    return-void
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    return v0
.end method

.method public initEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V
    .locals 1
    .parameter "processor"
    .parameter "camera"

    .prologue
    const/4 v0, 0x0

    .line 82
    if-nez p2, :cond_0

    .line 96
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 86
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 87
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 88
    iput-object p1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 89
    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

    .line 91
    invoke-virtual {p0, p2}, Lcom/lge/camera/components/OpenGLSurfaceView;->setPreviewCallback(Landroid/hardware/Camera;)V

    .line 94
    invoke-direct {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->startProcessorThread()V

    goto :goto_0
.end method

.method public initOpenGLSurfaceView(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/OpenGLYUVRenderer;->initOpenGLYUVRenderer(Lcom/lge/camera/Mediator;)V

    .line 74
    :cond_0
    return-void
.end method

.method public isCompleteProcessFrame()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v0}, Lcom/lge/camera/components/ProcessorThread;->getcompleteFrame()Z

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mIsCompleteFrame:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 356
    const-string v0, "CameraApp"

    const-string v1, "OpenGLSurfaceView onDestroy()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0, v2}, Lcom/lge/camera/components/OpenGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 359
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    invoke-virtual {v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->closeYUVRenderer()V

    .line 360
    iput-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    .line 362
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 366
    const-string v0, "CameraApp"

    const-string v1, "OpenGLSurfaceView onPause()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 368
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 348
    const-string v0, "CameraApp"

    const-string v1, "OpenGLSurfaceView onResume()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/OpenGLYUVRenderer;->setNeedCreateTexture(Z)V

    .line 352
    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 353
    return-void
.end method

.method public processPreviewFrame([B)V
    .locals 6
    .parameter "data"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

    if-nez v0, :cond_0

    .line 219
    const-string v0, "CameraApp"

    const-string v1, "mRawContext null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

    iput-object p1, v0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->rawData:[B

    .line 225
    iget-boolean v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mFlipH:Z

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

    iget v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    iput v1, v0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->orientation:I

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    iget-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

    invoke-virtual {v0, v1}, Lcom/lge/olaworks/library/EngineProcessor;->processPreview(Lcom/lge/olaworks/datastruct/Ola_RawContext;)Z

    .line 235
    :cond_1
    array-length v0, p1

    int-to-double v0, v0

    iget v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->previewW:I

    iget v3, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->previewH:I

    mul-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-nez v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    iget v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->previewW:I

    iget v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->previewH:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/lge/camera/components/OpenGLYUVRenderer;->setYuvData([BII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    invoke-virtual {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->requestRender()V

    .line 242
    :cond_2
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->addCallbackBuffer([B)V

    .line 243
    return-void

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

    iget v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    iput v1, v0, Lcom/lge/olaworks/datastruct/Ola_RawContext;->orientation:I

    goto :goto_0
.end method

.method public processPreviewFrameAsync([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/ProcessorThread;->nextFrame([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->addCallbackBuffer([B)V

    .line 206
    :cond_0
    return-void
.end method

.method public releasePreviewCallback(Landroid/hardware/Camera;)V
    .locals 1
    .parameter "camera"

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-direct {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->stopProcessorThread()V

    .line 191
    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 193
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 194
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 196
    :cond_0
    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallbackBuffer:[B

    .line 197
    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    .line 198
    return-void
.end method

.method public setActivityPausing(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 343
    iput-boolean p1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->isPause:Z

    .line 344
    return-void
.end method

.method public setCheckFPS(Z)V
    .locals 1
    .parameter "set"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/ProcessorThread;->setCheckFPS(Z)V

    .line 304
    :cond_0
    return-void
.end method

.method public setEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V
    .locals 1
    .parameter "processor"
    .parameter "camera"

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mIsCompleteFrame:Z

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/components/OpenGLSurfaceView;->initEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V

    .line 79
    return-void
.end method

.method public setFlipHorizontal(Z)V
    .locals 1
    .parameter "flipH"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0, p1}, Lcom/lge/olaworks/library/EngineProcessor;->setFlipHorizontal(Z)V

    .line 112
    :cond_0
    iput-boolean p1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mFlipH:Z

    .line 113
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/OpenGLYUVRenderer;->setflipH(Z)V

    .line 116
    :cond_1
    return-void
.end method

.method public setOrientation(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    rem-int/lit16 p1, p1, 0x168

    .line 121
    const/16 v0, 0x2d

    if-ge p1, v0, :cond_0

    .line 122
    iput v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 123
    iput v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    .line 139
    :goto_0
    return-void

    .line 124
    :cond_0
    const/16 v0, 0x87

    if-ge p1, v0, :cond_1

    .line 125
    iput v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 126
    iput v5, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    goto :goto_0

    .line 127
    :cond_1
    const/16 v0, 0xe1

    if-ge p1, v0, :cond_2

    .line 128
    iput v3, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 129
    iput v3, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    goto :goto_0

    .line 130
    :cond_2
    const/16 v0, 0x13b

    if-ge p1, v0, :cond_3

    .line 131
    iput v5, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 132
    iput v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    goto :goto_0

    .line 134
    :cond_3
    iput v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 135
    iput v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    goto :goto_0
.end method

.method public setPreviewCallback(Landroid/hardware/Camera;)V
    .locals 12
    .parameter "camera"

    .prologue
    .line 153
    const-string v0, "CameraApp"

    const-string v1, "OpenGLSurfaceView - setPreviewCallback"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    .line 157
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    .line 158
    .local v8, param:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 160
    .local v11, previewSize:Landroid/hardware/Camera$Size;
    if-nez v11, :cond_0

    .line 161
    const-string v0, "CameraApp"

    const-string v1, "initEngineProcessor-end. it doesn`t get a previewSize"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v10, Landroid/graphics/PixelFormat;

    invoke-direct {v10}, Landroid/graphics/PixelFormat;-><init>()V

    .line 166
    .local v10, pixelinfo:Landroid/graphics/PixelFormat;
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v9

    .line 167
    .local v9, pixelformat:I
    invoke-static {v9, v10}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 169
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallback:Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;-><init>(Lcom/lge/camera/components/OpenGLSurfaceView;)V

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallback:Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

    .line 173
    :cond_1
    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    iget v1, v11, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    iget v1, v10, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x8

    .line 174
    .local v6, bufSize:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    const/4 v0, 0x2

    if-ge v7, v0, :cond_2

    .line 175
    new-array v0, v6, [B

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallbackBuffer:[B

    .line 176
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallbackBuffer:[B

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 174
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallback:Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 180
    new-instance v0, Lcom/lge/olaworks/datastruct/Ola_RawContext;

    iget v1, v11, Landroid/hardware/Camera$Size;->width:I

    iget v2, v11, Landroid/hardware/Camera$Size;->height:I

    const/16 v3, 0x2a3

    iget v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/lge/olaworks/datastruct/Ola_RawContext;-><init>(IIII[B)V

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/Ola_RawContext;

    .line 182
    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->previewW:I

    .line 183
    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->previewH:I

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 371
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenGLSurfaceView surfaceCreated holder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->isPause:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-boolean v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->isPause:Z

    if-nez v0, :cond_0

    .line 373
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 375
    :cond_0
    return-void
.end method
