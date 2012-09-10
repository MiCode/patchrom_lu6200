.class public Lcom/lge/camera/components/ProcessorThread;
.super Ljava/lang/Thread;
.source "ProcessorThread.java"


# static fields
.field private static final QUEUE_SIZE:I = 0x3

.field private static final THREAD:Ljava/lang/String; = "ProcessorThread"


# instance fields
.field fcount:I

.field fcount1:I

.field private mCheckFps:Z

.field private mCompleteFrame:Z

.field private mFrameQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private openGLSurfaceView:Lcom/lge/camera/components/OpenGLSurfaceView;

.field start:Ljava/util/Date;

.field start1:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/lge/camera/components/OpenGLSurfaceView;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/ProcessorThread;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    .line 15
    iput-boolean v1, p0, Lcom/lge/camera/components/ProcessorThread;->mCompleteFrame:Z

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/ProcessorThread;->openGLSurfaceView:Lcom/lge/camera/components/OpenGLSurfaceView;

    .line 96
    iput-boolean v1, p0, Lcom/lge/camera/components/ProcessorThread;->mCheckFps:Z

    .line 97
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/ProcessorThread;->start:Ljava/util/Date;

    .line 98
    iput v1, p0, Lcom/lge/camera/components/ProcessorThread;->fcount:I

    .line 100
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/ProcessorThread;->start1:Ljava/util/Date;

    .line 101
    iput v1, p0, Lcom/lge/camera/components/ProcessorThread;->fcount1:I

    .line 20
    iput-object p1, p0, Lcom/lge/camera/components/ProcessorThread;->openGLSurfaceView:Lcom/lge/camera/components/OpenGLSurfaceView;

    .line 21
    invoke-virtual {p0}, Lcom/lge/camera/components/ProcessorThread;->start()V

    .line 22
    return-void
.end method

.method private printFps()V
    .locals 8

    .prologue
    .line 104
    iget v2, p0, Lcom/lge/camera/components/ProcessorThread;->fcount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/camera/components/ProcessorThread;->fcount:I

    .line 105
    iget v2, p0, Lcom/lge/camera/components/ProcessorThread;->fcount:I

    rem-int/lit8 v2, v2, 0x64

    if-nez v2, :cond_0

    .line 106
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/lge/camera/components/ProcessorThread;->start:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-double v0, v2

    .line 107
    .local v0, ms:D
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/components/ProcessorThread;->fcount:I

    int-to-double v4, v4

    const-wide v6, 0x408f400000000000L

    div-double v6, v0, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/lge/camera/components/ProcessorThread;->start:Ljava/util/Date;

    .line 109
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/camera/components/ProcessorThread;->fcount:I

    .line 111
    .end local v0           #ms:D
    :cond_0
    return-void
.end method


# virtual methods
.method public clearThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/lge/camera/components/ProcessorThread;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/components/ProcessorThread;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/lge/camera/components/ProcessorThread;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 70
    iput-object v1, p0, Lcom/lge/camera/components/ProcessorThread;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/ProcessorThread;->openGLSurfaceView:Lcom/lge/camera/components/OpenGLSurfaceView;

    if-eqz v0, :cond_1

    .line 73
    iput-object v1, p0, Lcom/lge/camera/components/ProcessorThread;->openGLSurfaceView:Lcom/lge/camera/components/OpenGLSurfaceView;

    .line 75
    :cond_1
    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/lge/camera/components/ProcessorThread;->clearThread()V

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/components/ProcessorThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getcompleteFrame()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/lge/camera/components/ProcessorThread;->mCompleteFrame:Z

    return v0
.end method

.method public nextFrame([B)Z
    .locals 4
    .parameter "frame"

    .prologue
    const/4 v1, 0x1

    .line 54
    iget-object v2, p0, Lcom/lge/camera/components/ProcessorThread;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/components/ProcessorThread;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "CameraApp"

    const-string v3, "ProcessorThread stop:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized run()V
    .locals 3

    .prologue
    .line 26
    monitor-enter p0

    :try_start_0
    const-string v1, "ProcessorThread"

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/ProcessorThread;->setName(Ljava/lang/String;)V

    .line 28
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/ProcessorThread;->isInterrupted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    const-string v1, "CameraApp"

    const-string v2, "Thread is interrupted."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 33
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/components/ProcessorThread;->openGLSurfaceView:Lcom/lge/camera/components/OpenGLSurfaceView;

    if-eqz v1, :cond_3

    .line 34
    iget-object v2, p0, Lcom/lge/camera/components/ProcessorThread;->openGLSurfaceView:Lcom/lge/camera/components/OpenGLSurfaceView;

    iget-object v1, p0, Lcom/lge/camera/components/ProcessorThread;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->processPreviewFrame([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 44
    :cond_3
    :try_start_2
    invoke-static {}, Lcom/lge/camera/components/ProcessorThread;->yield()V

    .line 45
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/components/ProcessorThread;->mCompleteFrame:Z

    .line 46
    iget-boolean v1, p0, Lcom/lge/camera/components/ProcessorThread;->mCheckFps:Z

    if-eqz v1, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/lge/camera/components/ProcessorThread;->printFps()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v1, "CameraApp"

    const-string v2, "ProcessorThread stop:"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    iget-object v1, p0, Lcom/lge/camera/components/ProcessorThread;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v1, :cond_1

    .line 40
    iget-object v1, p0, Lcom/lge/camera/components/ProcessorThread;->mFrameQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setCheckFPS(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/lge/camera/components/ProcessorThread;->mCheckFps:Z

    .line 85
    return-void
.end method

.method public setCompleteFrame(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/lge/camera/components/ProcessorThread;->mCompleteFrame:Z

    .line 79
    return-void
.end method
