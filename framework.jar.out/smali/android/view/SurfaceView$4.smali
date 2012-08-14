.class Landroid/view/SurfaceView$4;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/S3DSurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SurfaceHolder"


# instance fields
.field private s3d_curr_brightness_val:F

.field private s3d_curr_conv_val:F

.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView;)V
    .locals 1
    .parameter

    .prologue
    .line 726
    iput-object p1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 886
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/SurfaceView$4;->s3d_curr_conv_val:F

    .line 887
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/view/SurfaceView$4;->s3d_curr_brightness_val:F

    return-void
.end method

.method private final internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 10
    .parameter "dirty"

    .prologue
    const/4 v9, 0x0

    .line 811
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-eqz v6, :cond_0

    .line 812
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->extend:I

    and-int/lit16 v7, v7, -0x100

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->extend:I

    .line 813
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->extend:I

    iget-object v8, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v8, v8, Landroid/view/SurfaceView;->mRequestedS3DType:I

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->extend:I

    .line 815
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-boolean v6, v6, Landroid/view/SurfaceView;->mIsDirty:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->extend:I

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x88

    if-ne v6, v7, :cond_0

    .line 817
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput-boolean v9, v6, Landroid/view/SurfaceView;->mIsDirty:Z

    .line 818
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/view/SurfaceView;->mIsUsingCanvas:Z

    .line 819
    invoke-virtual {p0, v9}, Landroid/view/SurfaceView$4;->setS3DType(I)V

    .line 823
    :cond_0
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 828
    const/4 v0, 0x0

    .line 829
    .local v0, c:Landroid/graphics/Canvas;
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-boolean v6, v6, Landroid/view/SurfaceView;->mDrawingStopped:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v6, :cond_3

    .line 830
    if-nez p1, :cond_2

    .line 831
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mTmpDirty:Landroid/graphics/Rect;

    if-nez v6, :cond_1

    .line 832
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v6, Landroid/view/SurfaceView;->mTmpDirty:Landroid/graphics/Rect;

    .line 834
    :cond_1
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mTmpDirty:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v7, v7, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 835
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object p1, v6, Landroid/view/SurfaceView;->mTmpDirty:Landroid/graphics/Rect;

    .line 839
    :cond_2
    :try_start_0
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v6, p1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 846
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 847
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 866
    .end local v0           #c:Landroid/graphics/Canvas;
    :goto_1
    return-object v0

    .line 840
    .restart local v0       #c:Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    .line 841
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SurfaceHolder"

    const-string v7, "Exception locking surface"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 854
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 855
    .local v4, now:J
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-wide v6, v6, Landroid/view/SurfaceView;->mLastLockTime:J

    const-wide/16 v8, 0x64

    add-long v2, v6, v8

    .line 856
    .local v2, nextTime:J
    cmp-long v6, v2, v4

    if-lez v6, :cond_5

    .line 858
    sub-long v6, v2, v4

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 861
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 863
    :cond_5
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput-wide v4, v6, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 864
    iget-object v6, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v6, v6, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 866
    const/4 v0, 0x0

    goto :goto_1

    .line 859
    :catch_1
    move-exception v6

    goto :goto_2
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 736
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 739
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_0
    monitor-exit v1

    .line 743
    return-void

    .line 742
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public compensateS3DBrightness(F)V
    .locals 2
    .parameter "val"

    .prologue
    .line 1008
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-nez v0, :cond_0

    .line 1020
    :goto_0
    return-void

    .line 1010
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v0, :cond_2

    .line 1011
    :cond_1
    const-string v0, "Real3D"

    const-string/jumbo v1, "session is not made"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1015
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowSession;->compensateS3DBrightness(Landroid/view/IWindow;F)V

    .line 1016
    iput p1, p0, Landroid/view/SurfaceView$4;->s3d_curr_brightness_val:F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1017
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getS3DConvergenceDisparity()F
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 957
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-nez v3, :cond_0

    move v0, v2

    .line 971
    :goto_0
    return v0

    .line 959
    :cond_0
    const/4 v0, 0x0

    .line 961
    .local v0, disparity:F
    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v3, v3, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v3, v3, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v3, :cond_2

    .line 962
    :cond_1
    const-string v3, "Real3D"

    const-string/jumbo v4, "session is not made"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 963
    goto :goto_0

    .line 967
    :cond_2
    :try_start_0
    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v3, v3, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v4, v4, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->getS3DConvDisparity(Landroid/view/IWindow;)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 968
    goto :goto_0

    .line 969
    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    move v0, v2

    .line 971
    goto :goto_0
.end method

.method public getS3DInfo()Landroid/view/S3DInfo;
    .locals 3

    .prologue
    .line 927
    invoke-virtual {p0}, Landroid/view/SurfaceView$4;->getS3DType()I

    move-result v1

    .line 929
    .local v1, type:I
    new-instance v0, Landroid/view/S3DInfo;

    invoke-direct {v0}, Landroid/view/S3DInfo;-><init>()V

    .line 930
    .local v0, info:Landroid/view/S3DInfo;
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-nez v2, :cond_0

    .line 937
    :goto_0
    return-object v0

    .line 932
    :cond_0
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1

    .line 933
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/view/S3DInfo;->disableAutoDetection:Z

    .line 934
    :cond_1
    and-int/lit8 v2, v1, 0xf

    iput v2, v0, Landroid/view/S3DInfo;->type:I

    .line 935
    and-int/lit8 v2, v1, 0x70

    iput v2, v0, Landroid/view/S3DInfo;->order:I

    goto :goto_0
.end method

.method public getS3DType()I
    .locals 4

    .prologue
    .line 905
    iget-object v2, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-nez v2, :cond_1

    .line 906
    :cond_0
    const/4 v1, 0x0

    .line 913
    :goto_0
    return v1

    .line 907
    :cond_1
    const/4 v1, 0x0

    .line 909
    .local v1, type:I
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v3, v3, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->getS3DType(Landroid/view/IWindow;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getS3DViewMode()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 991
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-nez v2, :cond_0

    .line 1003
    :goto_0
    return v1

    .line 993
    :cond_0
    iget-object v2, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v2, :cond_2

    .line 994
    :cond_1
    const-string v2, "Real3D"

    const-string/jumbo v3, "session is not made"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 999
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v3, v3, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->getS3DViewMode(Landroid/view/IWindow;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1000
    .local v1, viewMode:I
    goto :goto_0

    .line 1001
    .end local v1           #viewMode:I
    :catch_0
    move-exception v0

    .line 1003
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isCreating()Z
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 801
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/SurfaceView$4;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1
    .parameter "dirty"

    .prologue
    .line 805
    invoke-direct {p0, p1}, Landroid/view/SurfaceView$4;->internalLockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 746
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 747
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 748
    monitor-exit v1

    .line 749
    return-void

    .line 748
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFixedSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 752
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, p2, :cond_1

    .line 753
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 754
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p2, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 755
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 757
    :cond_1
    return-void
.end method

.method public setFormat(I)V
    .locals 2
    .parameter "format"

    .prologue
    const/4 v1, 0x0

    .line 767
    sparse-switch p1, :sswitch_data_0

    .line 779
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 780
    const/4 p1, 0x4

    .line 782
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 783
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #calls: Landroid/view/SurfaceView;->updateWindow(ZZ)V
    invoke-static {v0, v1, v1}, Landroid/view/SurfaceView;->access$000(Landroid/view/SurfaceView;ZZ)V

    .line 786
    :cond_1
    :goto_0
    return-void

    .line 772
    :sswitch_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->setStereoscopic3DFormat(I)V

    goto :goto_0

    .line 767
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x80000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setKeepScreenOn(Z)V
    .locals 3
    .parameter "screenOn"

    .prologue
    const/4 v1, 0x1

    .line 795
    iget-object v2, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 796
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 797
    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 798
    return-void

    .line 796
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setS3DConvergenceDisparity(F)V
    .locals 2
    .parameter "disparity"

    .prologue
    .line 941
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-nez v0, :cond_0

    .line 954
    :goto_0
    return-void

    .line 943
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v0, :cond_2

    .line 944
    :cond_1
    const-string v0, "Real3D"

    const-string/jumbo v1, "session is not made"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 949
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowSession;->setS3DConvDisparity(Landroid/view/IWindow;F)V

    .line 950
    iput p1, p0, Landroid/view/SurfaceView$4;->s3d_curr_conv_val:F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 951
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setS3DInfo(Landroid/view/S3DInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 917
    if-nez p1, :cond_1

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-eqz v1, :cond_0

    .line 922
    iget-boolean v1, p1, Landroid/view/S3DInfo;->disableAutoDetection:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x80

    :goto_1
    iget v2, p1, Landroid/view/S3DInfo;->type:I

    or-int/2addr v1, v2

    iget v2, p1, Landroid/view/S3DInfo;->order:I

    or-int v0, v1, v2

    .line 923
    .local v0, type:I
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView$4;->setS3DType(I)V

    goto :goto_0

    .line 922
    .end local v0           #type:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setS3DType(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 890
    and-int/lit8 v0, p1, 0xf

    .line 891
    .local v0, t:I
    if-gez v0, :cond_1

    const/16 v1, 0x8

    if-le v0, v1, :cond_1

    .line 892
    const-string v1, "SurfaceView"

    const-string v2, "Invalid surface type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 895
    :cond_1
    sget-boolean v1, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-eqz v1, :cond_0

    .line 897
    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput p1, v1, Landroid/view/SurfaceView;->mRequestedS3DType:I

    .line 899
    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v1, :cond_0

    .line 900
    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    #calls: Landroid/view/SurfaceView;->updateWindow(ZZ)V
    invoke-static {v1, v2, v2}, Landroid/view/SurfaceView;->access$000(Landroid/view/SurfaceView;ZZ)V

    goto :goto_0
.end method

.method public setS3DViewMode(I)V
    .locals 2
    .parameter "viewMode"

    .prologue
    .line 976
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_REAL3D:Z

    if-nez v0, :cond_0

    .line 988
    :goto_0
    return-void

    .line 978
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v0, :cond_2

    .line 979
    :cond_1
    const-string v0, "Real3D"

    const-string/jumbo v1, "session is not made"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 984
    :cond_2
    :try_start_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v0, v1, p1}, Landroid/view/IWindowSession;->setS3DViewMode(Landroid/view/IWindow;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 985
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSizeFromLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 760
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v2, :cond_1

    .line 761
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v1, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iput v2, v1, Landroid/view/SurfaceView;->mRequestedHeight:I

    iput v2, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 762
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 764
    :cond_1
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 792
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 871
    if-eqz p1, :cond_0

    .line 872
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 873
    iget-object v0, p0, Landroid/view/SurfaceView$4;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 876
    :cond_0
    return-void
.end method
