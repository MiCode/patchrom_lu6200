.class public Lcom/lge/camera/util/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/util/CameraHolder$MyHandler;
    }
.end annotation


# static fields
.field private static final RELEASE_CAMERA:I = 0x1

.field private static sHolder:Lcom/lge/camera/util/CameraHolder;


# instance fields
.field private checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mKeepBeforeTime:J

.field private mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mUsers:I


# direct methods
.method private constructor <init>()V
    .locals 8

    .prologue
    .line 98
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/lge/camera/util/CameraHolder;->mKeepBeforeTime:J

    .line 53
    const/4 v6, 0x0

    iput v6, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    .line 61
    const/4 v6, -0x1

    iput v6, p0, Lcom/lge/camera/util/CameraHolder;->mCameraId:I

    .line 64
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    .line 99
    new-instance v1, Landroid/os/HandlerThread;

    const-string v6, "CameraHolder"

    invoke-direct {v1, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, ht:Landroid/os/HandlerThread;
    const/4 v3, 0x0

    .line 101
    .local v3, lp:Landroid/os/Looper;
    const/4 v4, 0x0

    .line 102
    .local v4, myHandler:Lcom/lge/camera/util/CameraHolder$MyHandler;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 105
    :try_start_0
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 106
    if-nez v3, :cond_0

    .line 107
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "pref is null at method CameraHolder::CameraHolder(): lp = ht.getLooper();"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "CameraApp"

    const-string v7, "looper is null"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    .end local v0           #e:Ljava/lang/Exception;
    :goto_0
    iput-object v4, p0, Lcom/lge/camera/util/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 118
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v6

    iput v6, p0, Lcom/lge/camera/util/CameraHolder;->mNumberOfCameras:I

    .line 120
    iget v6, p0, Lcom/lge/camera/util/CameraHolder;->mNumberOfCameras:I

    new-array v6, v6, [Landroid/hardware/Camera$CameraInfo;

    iput-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 121
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v6, p0, Lcom/lge/camera/util/CameraHolder;->mNumberOfCameras:I

    if-ge v2, v6, :cond_1

    .line 122
    iget-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v7, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v7}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v7, v6, v2

    .line 123
    iget-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v6, v6, v2

    invoke-static {v2, v6}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 109
    .end local v2           #i:I
    :cond_0
    :try_start_1
    new-instance v5, Lcom/lge/camera/util/CameraHolder$MyHandler;

    invoke-direct {v5, p0, v3}, Lcom/lge/camera/util/CameraHolder$MyHandler;-><init>(Lcom/lge/camera/util/CameraHolder;Landroid/os/Looper;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4           #myHandler:Lcom/lge/camera/util/CameraHolder$MyHandler;
    .local v5, myHandler:Lcom/lge/camera/util/CameraHolder$MyHandler;
    move-object v4, v5

    .line 115
    .end local v5           #myHandler:Lcom/lge/camera/util/CameraHolder$MyHandler;
    .restart local v4       #myHandler:Lcom/lge/camera/util/CameraHolder$MyHandler;
    goto :goto_0

    .line 125
    .restart local v2       #i:I
    :cond_1
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 250
    if-nez p0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 253
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/util/CameraHolder;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/lge/camera/util/CameraHolder;->mKeepBeforeTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/lge/camera/util/CameraHolder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lge/camera/util/CameraHolder;->releaseCamera()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized instance()Lcom/lge/camera/util/CameraHolder;
    .locals 2

    .prologue
    .line 70
    const-class v1, Lcom/lge/camera/util/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lge/camera/util/CameraHolder;->sHolder:Lcom/lge/camera/util/CameraHolder;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/lge/camera/util/CameraHolder;

    invoke-direct {v0}, Lcom/lge/camera/util/CameraHolder;-><init>()V

    sput-object v0, Lcom/lge/camera/util/CameraHolder;->sHolder:Lcom/lge/camera/util/CameraHolder;

    .line 73
    :cond_0
    sget-object v0, Lcom/lge/camera/util/CameraHolder;->sHolder:Lcom/lge/camera/util/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized releaseCamera()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 305
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 306
    .local v0, now:J
    iget-wide v3, p0, Lcom/lge/camera/util/CameraHolder;->mKeepBeforeTime:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    .line 307
    iget-object v2, p0, Lcom/lge/camera/util/CameraHolder;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/lge/camera/util/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/lge/camera/util/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :cond_0
    const/4 v2, 0x0

    .line 322
    :cond_1
    :goto_0
    monitor-exit p0

    return v2

    .line 311
    :cond_2
    const-wide/16 v3, 0x0

    :try_start_1
    iput-wide v3, p0, Lcom/lge/camera/util/CameraHolder;->mKeepBeforeTime:J

    .line 313
    iget-object v3, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v3, :cond_3

    .line 314
    const-string v3, "CameraApp"

    const-string v4, "#### mCameraDevice.release()-check"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v3, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->release()V

    .line 316
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 318
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_1

    .line 319
    iget-object v3, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 320
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 305
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetUseDeviceKeepForChangeMode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 346
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 342
    :cond_1
    :try_start_1
    const-string v0, "CameraApp"

    const-string v1, "keep-cancel"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/util/CameraHolder;->mKeepBeforeTime:J

    .line 344
    iget-object v0, p0, Lcom/lge/camera/util/CameraHolder;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/lge/camera/util/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCameraInfo()[Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/camera/util/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/lge/camera/util/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method public getOneShotSetPreviewNull()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public getRealCameraId()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/lge/camera/util/CameraHolder;->mCameraId:I

    return v0
.end method

.method public getUsers()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    return v0
.end method

.method public declared-synchronized keep()V
    .locals 4

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetUseDeviceKeepForChangeMode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 336
    :goto_0
    monitor-exit p0

    return-void

    .line 334
    :cond_0
    :try_start_1
    const-string v0, "CameraApp"

    const-string v1, "keep-check"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lge/camera/util/CameraHolder;->mKeepBeforeTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(I)Landroid/hardware/Camera;
    .locals 8
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/camera/exception/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 146
    monitor-enter p0

    :try_start_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KDH before open mUsers = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], mCameraDevice:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCameraId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lge/camera/util/CameraHolder;->mCameraId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", cameraId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v4, 0x0

    .line 150
    .local v4, retryCount:I
    const/4 v0, 0x0

    .line 152
    .local v0, deviceOpenFail:Z
    iget v5, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/lge/camera/util/CameraHolder;->mCameraId:I

    if-eq v5, p1, :cond_1

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/util/CameraHolder;->release()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 154
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 155
    const/4 v5, -0x1

    iput v5, p0, Lcom/lge/camera/util/CameraHolder;->mCameraId:I

    .line 158
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_8

    .line 160
    :try_start_1
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#### android.hardware.Camera.open():cameraId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 168
    iput p1, p0, Lcom/lge/camera/util/CameraHolder;->mCameraId:I

    .line 169
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v5, :cond_3

    .line 217
    iget-object v5, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/util/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 233
    :cond_3
    :goto_0
    iget v5, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    .line 234
    invoke-virtual {p0}, Lcom/lge/camera/util/CameraHolder;->cancel()V

    .line 236
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KDH after open mUsers = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v5, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v5

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, e:Ljava/lang/RuntimeException;
    const/4 v0, 0x1

    .line 174
    :try_start_3
    iget-object v5, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    if-eqz v5, :cond_4

    .line 175
    iget-object v5, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 176
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    .line 179
    :cond_4
    if-eqz v0, :cond_2

    .line 180
    add-int/lit8 v4, v4, 0x1

    .line 181
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to retry connect Camera. retryCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    const-wide/16 v5, 0xc8

    :try_start_4
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 188
    :goto_1
    :try_start_5
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#### android.hardware.Camera.open()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    .line 190
    iput p1, p0, Lcom/lge/camera/util/CameraHolder;->mCameraId:I

    .line 191
    iget-object v5, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    if-nez v5, :cond_5

    .line 192
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v5, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 194
    :cond_5
    const/4 v0, 0x0

    .line 201
    :goto_2
    if-eqz v0, :cond_4

    const/16 v5, 0x1e

    if-lt v4, v5, :cond_4

    .line 204
    const/4 v0, 0x1

    .line 205
    :try_start_6
    iget-object v5, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v5, :cond_7

    .line 206
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isOMAP4Chipset()Z

    move-result v5

    if-nez v5, :cond_6

    .line 207
    const-string v5, "CameraApp"

    const-string v6, "#### mCameraDevice.stopPreview()"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v5, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->stopPreview()V

    .line 210
    :cond_6
    invoke-direct {p0}, Lcom/lge/camera/util/CameraHolder;->releaseCamera()Z

    .line 212
    :cond_7
    new-instance v5, Lcom/lge/camera/exception/CameraHardwareException;

    invoke-direct {v5, v1}, Lcom/lge/camera/exception/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 146
    .end local v0           #deviceOpenFail:Z
    .end local v1           #e:Ljava/lang/RuntimeException;
    .end local v4           #retryCount:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 184
    .restart local v0       #deviceOpenFail:Z
    .restart local v1       #e:Ljava/lang/RuntimeException;
    .restart local v4       #retryCount:I
    :catch_1
    move-exception v3

    .line 185
    .local v3, ie:Ljava/lang/InterruptedException;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 195
    .end local v3           #ie:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v2

    .line 196
    .local v2, e2:Ljava/lang/RuntimeException;
    const-string v5, "CameraApp"

    const-string v6, "RuntimeException : "

    invoke-static {v5, v6, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 197
    const/4 v0, 0x1

    goto :goto_2

    .line 220
    .end local v1           #e:Ljava/lang/RuntimeException;
    .end local v2           #e2:Ljava/lang/RuntimeException;
    :cond_8
    :try_start_8
    const-string v5, "CameraApp"

    const-string v6, "#### mCameraDevice.reconnect()"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v5, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->reconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 228
    :try_start_9
    iget-object v5, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v6, p0, Lcom/lge/camera/util/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 229
    :catch_3
    move-exception v1

    .line 230
    .restart local v1       #e:Ljava/lang/RuntimeException;
    :try_start_a
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setParameters failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    .end local v1           #e:Ljava/lang/RuntimeException;
    :catch_4
    move-exception v1

    .line 223
    .local v1, e:Ljava/io/IOException;
    const-string v5, "CameraApp"

    const-string v6, "reconnect failed."

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v5, Lcom/lge/camera/exception/CameraHardwareException;

    invoke-direct {v5, v1}, Lcom/lge/camera/exception/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public declared-synchronized release()Z
    .locals 4

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KDH before release mUsers = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget v1, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, ret_val:Z
    iget v1, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    if-gez v1, :cond_0

    .line 290
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 295
    const-string v1, "CameraApp"

    const-string v2, "### mCameraDevice.stopPreview()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/lge/camera/util/CameraHolder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 297
    invoke-direct {p0}, Lcom/lge/camera/util/CameraHolder;->releaseCamera()Z

    move-result v0

    .line 299
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KDH after release mUsers = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], ret_val:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit p0

    return v0

    .line 286
    .end local v0           #ret_val:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setOneShotSetPreviewNull()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/util/CameraHolder;->checkOneShotSetPreviewNull:Ljava/util/concurrent/CountDownLatch;

    .line 137
    return-void
.end method

.method public declared-synchronized tryOpen()Landroid/hardware/Camera;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 261
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/lge/camera/util/CameraHolder;->mCameraId:I

    invoke-virtual {p0, v2}, Lcom/lge/camera/util/CameraHolder;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/lge/camera/exception/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 268
    :cond_0
    monitor-exit p0

    return-object v1

    .line 262
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Lcom/lge/camera/exception/CameraHardwareException;
    :try_start_1
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    .end local v0           #e:Lcom/lge/camera/exception/CameraHardwareException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized tryOpen(I)Landroid/hardware/Camera;
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v1, 0x0

    .line 274
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/lge/camera/util/CameraHolder;->mUsers:I

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/lge/camera/util/CameraHolder;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/lge/camera/exception/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 281
    :cond_0
    monitor-exit p0

    return-object v1

    .line 275
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Lcom/lge/camera/exception/CameraHardwareException;
    :try_start_1
    const-string v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    .end local v0           #e:Lcom/lge/camera/exception/CameraHardwareException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
