.class public Lcom/lge/camera/EffectsRecorder;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/EffectsRecorder$EffectsListener;
    }
.end annotation


# static fields
.field public static final EFFECT_ALL:I = 0x3

.field public static final EFFECT_BACKDROPPER:I = 0x2

.field public static final EFFECT_GF_BIG_EYES:I = 0x1

.field public static final EFFECT_GF_BIG_MOUTH:I = 0x2

.field public static final EFFECT_GF_BIG_NOSE:I = 0x4

.field public static final EFFECT_GF_SMALL_EYES:I = 0x5

.field public static final EFFECT_GF_SMALL_MOUTH:I = 0x3

.field public static final EFFECT_GF_SQUEEZE:I = 0x0

.field public static final EFFECT_GOOFY_FACE:I = 0x1

.field public static final EFFECT_MSG_DONE_LEARNING:I = 0x1

.field public static final EFFECT_MSG_EFFECTS_STOPPED:I = 0x3

.field public static final EFFECT_MSG_ERROR:I = 0x6

.field public static final EFFECT_MSG_PREVIEW_DONE:I = 0x5

.field public static final EFFECT_MSG_RECORDING_DONE:I = 0x4

.field public static final EFFECT_MSG_STARTED_LEARNING:I = 0x0

.field public static final EFFECT_MSG_SURFACE_TEARDOWN:I = 0x7

.field public static final EFFECT_MSG_SWITCHING_EFFECT:I = 0x2

.field public static final EFFECT_NONE:I = 0x0

.field public static final EFFECT_STOP_CALL_FROM_RESET_MENU:I = 0x65

.field public static final EFFECT_STOP_CALL_FROM_SWAP_CAMCORDER:I = 0x66

.field public static final EFFECT_STOP_CALL_NORMAL:I = 0x64

.field public static final NUM_OF_GF_EFFECTS:I = 0x6

.field public static final STATE_RECORD:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private final STATE_CONFIGURE:I

.field private final STATE_PREVIEW:I

.field private final STATE_RELEASED:I

.field private final STATE_STARTING_PREVIEW:I

.field private final STATE_WAITING_FOR_SURFACE:I

.field public mCalledFrom:I

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraFacing:I

.field private mCaptureRate:D

.field private mContext:Landroid/content/Context;

.field private mCurrentEffect:I

.field private mEffect:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectsListener:Lcom/lge/camera/EffectsRecorder$EffectsListener;

.field private mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mFd:Ljava/io/FileDescriptor;

.field private mGraphEnv:Landroid/filterfw/GraphEnvironment;

.field private mGraphId:I

.field private mHandler:Landroid/os/Handler;

.field private mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

.field private mMaxDurationMs:I

.field private mMaxFileSize:J

.field private mOldRunner:Landroid/filterfw/core/GraphRunner;

.field private mOrientationHint:I

.field private mOutputFile:Ljava/lang/String;

.field private mPreviewHeight:I

.field private mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mPreviewWidth:I

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

.field private mRunner:Landroid/filterfw/core/GraphRunner;

.field private mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

.field private mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

.field private mState:I

.field private mTextureSource:Landroid/graphics/SurfaceTexture;

.field private mVideoBitrate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/EffectsRecorder;->mCaptureRate:D

    .line 93
    iput v2, p0, Lcom/lge/camera/EffectsRecorder;->mOrientationHint:I

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/EffectsRecorder;->mMaxFileSize:J

    .line 95
    iput v2, p0, Lcom/lge/camera/EffectsRecorder;->mMaxDurationMs:I

    .line 96
    iput v2, p0, Lcom/lge/camera/EffectsRecorder;->mCameraFacing:I

    .line 97
    const v0, 0x1e8480

    iput v0, p0, Lcom/lge/camera/EffectsRecorder;->mVideoBitrate:I

    .line 99
    iput v2, p0, Lcom/lge/camera/EffectsRecorder;->mEffect:I

    .line 100
    iput v2, p0, Lcom/lge/camera/EffectsRecorder;->mCurrentEffect:I

    .line 107
    iput-object v3, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 108
    iput-object v3, p0, Lcom/lge/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 112
    iput v2, p0, Lcom/lge/camera/EffectsRecorder;->STATE_CONFIGURE:I

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/EffectsRecorder;->STATE_WAITING_FOR_SURFACE:I

    .line 114
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/EffectsRecorder;->STATE_STARTING_PREVIEW:I

    .line 115
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/camera/EffectsRecorder;->STATE_PREVIEW:I

    .line 117
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/camera/EffectsRecorder;->STATE_RELEASED:I

    .line 118
    iput v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    .line 120
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/camera/EffectsRecorder;->mCalledFrom:I

    .line 561
    new-instance v0, Lcom/lge/camera/EffectsRecorder$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/EffectsRecorder$1;-><init>(Lcom/lge/camera/EffectsRecorder;)V

    iput-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    .line 654
    new-instance v0, Lcom/lge/camera/EffectsRecorder$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/EffectsRecorder$2;-><init>(Lcom/lge/camera/EffectsRecorder;)V

    iput-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    .line 666
    new-instance v0, Lcom/lge/camera/EffectsRecorder$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/EffectsRecorder$3;-><init>(Lcom/lge/camera/EffectsRecorder;)V

    iput-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    .line 857
    new-instance v0, Lcom/lge/camera/EffectsRecorder$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/EffectsRecorder$4;-><init>(Lcom/lge/camera/EffectsRecorder;)V

    iput-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    .line 142
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EffectsRecorder created ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Lcom/lge/camera/EffectsRecorder;->mContext:Landroid/content/Context;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/EffectsRecorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/lge/camera/EffectsRecorder;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/lge/camera/EffectsRecorder;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/EffectsRecorder;)Lcom/lge/camera/EffectsRecorder$EffectsListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mEffectsListener:Lcom/lge/camera/EffectsRecorder$EffectsListener;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/camera/EffectsRecorder;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lge/camera/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/lge/camera/EffectsRecorder;)Ljava/io/FileDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/camera/EffectsRecorder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/EffectsRecorder;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/EffectsRecorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mCurrentEffect:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/camera/EffectsRecorder;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/EffectsRecorder;->sendMessage(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/camera/EffectsRecorder;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mCameraFacing:I

    return v0
.end method

.method static synthetic access$600(Lcom/lge/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lge/camera/EffectsRecorder;Landroid/filterfw/core/GraphRunner;)Landroid/filterfw/core/GraphRunner;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/lge/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    return-object p1
.end method

.method static synthetic access$800(Lcom/lge/camera/EffectsRecorder;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/lge/camera/EffectsRecorder;->raiseError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$900(Lcom/lge/camera/EffectsRecorder;)Landroid/filterfw/GraphEnvironment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    return-object v0
.end method

.method private declared-synchronized initializeEffect(Z)V
    .locals 10
    .parameter "forceReset"

    .prologue
    const/4 v9, 0x3

    const/4 v2, 0x0

    const/4 v8, 0x2

    .line 424
    monitor-enter p0

    :try_start_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#####  initializeEffect() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    if-nez p1, :cond_0

    iget v4, p0, Lcom/lge/camera/EffectsRecorder;->mCurrentEffect:I

    iget v5, p0, Lcom/lge/camera/EffectsRecorder;->mEffect:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Lcom/lge/camera/EffectsRecorder;->mCurrentEffect:I

    if-ne v4, v8, :cond_5

    .line 426
    :cond_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Effect initializing. Preview size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/EffectsRecorder;->mPreviewWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/EffectsRecorder;->mPreviewHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/EffectsRecorder;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "previewSurface"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/lge/camera/EffectsRecorder;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v7}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "previewWidth"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/lge/camera/EffectsRecorder;->mPreviewWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "previewHeight"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget v7, p0, Lcom/lge/camera/EffectsRecorder;->mPreviewHeight:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "orientation"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget v7, p0, Lcom/lge/camera/EffectsRecorder;->mOrientationHint:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 434
    iget v4, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    if-eq v4, v9, :cond_1

    iget v4, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    if-ne v4, v8, :cond_2

    .line 436
    :cond_1
    iget v4, p0, Lcom/lge/camera/EffectsRecorder;->mCurrentEffect:I

    const/4 v5, 0x2

    invoke-direct {p0, v4, v5}, Lcom/lge/camera/EffectsRecorder;->sendMessage(II)V

    .line 439
    :cond_2
    iget v4, p0, Lcom/lge/camera/EffectsRecorder;->mEffect:I

    packed-switch v4, :pswitch_data_0

    .line 448
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown effect ID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/EffectsRecorder;->mEffect:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 441
    :pswitch_0
    :try_start_1
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder;->mContext:Landroid/content/Context;

    const v6, 0x7f06000c

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/EffectsRecorder;->mGraphId:I

    .line 450
    :goto_0
    iget v4, p0, Lcom/lge/camera/EffectsRecorder;->mEffect:I

    iput v4, p0, Lcom/lge/camera/EffectsRecorder;->mCurrentEffect:I

    .line 452
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    iput-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 453
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget v5, p0, Lcom/lge/camera/EffectsRecorder;->mGraphId:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/GraphEnvironment;->getRunner(II)Landroid/filterfw/core/GraphRunner;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 455
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-nez v4, :cond_3

    .line 456
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error, mGraphEnv.getRunner is null, mGraphId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/EffectsRecorder;->mGraphId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    :goto_1
    monitor-exit p0

    return-void

    .line 444
    :pswitch_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_2
    invoke-direct {p0, v4, v5}, Lcom/lge/camera/EffectsRecorder;->sendMessage(II)V

    .line 445
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder;->mContext:Landroid/content/Context;

    const v6, 0x7f060002

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/lge/camera/EffectsRecorder;->mGraphId:I

    goto :goto_0

    .line 460
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder;->mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    invoke-virtual {v4, v5}, Landroid/filterfw/core/GraphRunner;->setDoneCallback(Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;)V

    .line 461
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New runner: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Old runner: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget v4, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    if-eq v4, v9, :cond_4

    iget v4, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    if-ne v4, v8, :cond_5

    .line 466
    :cond_4
    const-string v4, "CameraApp"

    const-string v5, "### effectrecorder mCameraDevice.stopPreview()"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    :try_start_3
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 473
    :try_start_4
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v4, :cond_5

    .line 474
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 478
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-nez v4, :cond_6

    .line 479
    const-string v4, "CameraApp"

    const-string v5, "mRunner is null !!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 470
    :catch_0
    move-exception v1

    .line 471
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unable to connect camera to effect input"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 483
    .end local v1           #e:Ljava/io/IOException;
    :cond_6
    iget v4, p0, Lcom/lge/camera/EffectsRecorder;->mCurrentEffect:I

    packed-switch v4, :pswitch_data_1

    .line 504
    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/lge/camera/EffectsRecorder;->setFaceDetectOrientation()V

    .line 505
    invoke-direct {p0}, Lcom/lge/camera/EffectsRecorder;->setRecordingOrientation()V

    goto/16 :goto_1

    .line 485
    :pswitch_2
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/lge/camera/EffectsRecorder;->tryEnableVideoStabilization(Z)Z

    .line 486
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v4

    const-string v5, "goofyrenderer"

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v3

    .line 487
    .local v3, goofyFilter:Landroid/filterfw/core/Filter;
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    if-nez v4, :cond_8

    .line 488
    .local v2, effectValue:I
    :goto_3
    if-eqz v3, :cond_7

    .line 489
    const-string v4, "currentEffect"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 487
    .end local v2           #effectValue:I
    :cond_8
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_3

    .line 494
    .end local v3           #goofyFilter:Landroid/filterfw/core/Filter;
    :pswitch_3
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/lge/camera/EffectsRecorder;->tryEnableVideoStabilization(Z)Z

    .line 495
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v4

    const-string v5, "background"

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 496
    .local v0, backgroundSrc:Landroid/filterfw/core/Filter;
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEffectParameter:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    if-eqz v0, :cond_7

    .line 498
    const-string v5, "sourceUrl"

    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 439
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 483
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initializeFilterFramework()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 395
    const-string v0, "CameraApp"

    const-string v1, " initializeFilterFramework()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    if-eqz v0, :cond_0

    .line 397
    iput-object v5, p0, Lcom/lge/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    .line 399
    :cond_0
    new-instance v0, Landroid/filterfw/GraphEnvironment;

    invoke-direct {v0}, Landroid/filterfw/GraphEnvironment;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    .line 400
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    invoke-virtual {v0}, Landroid/filterfw/GraphEnvironment;->createGLEnvironment()V

    .line 402
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### Effects framework initializing. profile size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/EffectsRecorder;->mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/EffectsRecorder;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/EffectsRecorder;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "textureSourceCallback"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder;->mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "recordingWidth"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "recordingHeight"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "recordingProfile"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "learningDoneListener"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "recordingDoneListener"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 415
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 418
    :cond_1
    iput-object v5, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 419
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/EffectsRecorder;->mGraphId:I

    .line 420
    iput v4, p0, Lcom/lge/camera/EffectsRecorder;->mCurrentEffect:I

    .line 421
    return-void
.end method

.method public static isEffectSupported(I)Z
    .locals 2
    .parameter "effectId"

    .prologue
    const/4 v0, 0x0

    .line 128
    packed-switch p0, :pswitch_data_0

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 130
    :pswitch_0
    const-string v0, "com.google.android.filterpacks.facedetect.GoofyRenderFilter"

    invoke-static {v0}, Landroid/filterfw/core/Filter;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 132
    :pswitch_1
    const-string v0, "android.filterpacks.videoproc.BackDropperFilter"

    invoke-static {v0}, Landroid/filterfw/core/Filter;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 134
    :pswitch_2
    const-string v1, "com.google.android.filterpacks.facedetect.GoofyRenderFilter"

    invoke-static {v1}, Landroid/filterfw/core/Filter;->isAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.filterpacks.videoproc.BackDropperFilter"

    invoke-static {v1}, Landroid/filterfw/core/Filter;->isAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private raiseError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 945
    const-string v0, "CameraApp"

    const-string v1, "Error!! raiseError()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mEffectsListener:Lcom/lge/camera/EffectsRecorder$EffectsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/camera/EffectsRecorder$6;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/EffectsRecorder$6;-><init>(Lcom/lge/camera/EffectsRecorder;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 957
    :cond_0
    return-void
.end method

.method private sendMessage(II)V
    .locals 3
    .parameter "effect"
    .parameter "msg"

    .prologue
    .line 934
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sendMessage() effect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mEffectsListener:Lcom/lge/camera/EffectsRecorder$EffectsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/camera/EffectsRecorder$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/EffectsRecorder$5;-><init>(Lcom/lge/camera/EffectsRecorder;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 942
    :cond_0
    return-void
.end method

.method private setFaceDetectOrientation()V
    .locals 5

    .prologue
    .line 305
    iget v3, p0, Lcom/lge/camera/EffectsRecorder;->mCurrentEffect:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 306
    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v3}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v3

    const-string v4, "rotate"

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 307
    .local v2, rotateFilter:Landroid/filterfw/core/Filter;
    iget-object v3, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v3}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v3

    const-string v4, "metarotate"

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 308
    .local v0, metaRotateFilter:Landroid/filterfw/core/Filter;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 309
    const-string v3, "rotation"

    iget v4, p0, Lcom/lge/camera/EffectsRecorder;->mOrientationHint:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    iget v3, p0, Lcom/lge/camera/EffectsRecorder;->mOrientationHint:I

    rsub-int v3, v3, 0x168

    rem-int/lit16 v1, v3, 0x168

    .line 312
    .local v1, reverseDegrees:I
    const-string v3, "rotation"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    .end local v0           #metaRotateFilter:Landroid/filterfw/core/Filter;
    .end local v1           #reverseDegrees:I
    .end local v2           #rotateFilter:Landroid/filterfw/core/Filter;
    :cond_0
    return-void
.end method

.method private setRecordingOrientation()V
    .locals 10

    .prologue
    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 318
    iget v6, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v6, :cond_0

    .line 319
    new-instance v0, Landroid/filterfw/geometry/Point;

    invoke-direct {v0, v8, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 320
    .local v0, bl:Landroid/filterfw/geometry/Point;
    new-instance v1, Landroid/filterfw/geometry/Point;

    invoke-direct {v1, v9, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 321
    .local v1, br:Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Point;

    invoke-direct {v4, v8, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 322
    .local v4, tl:Landroid/filterfw/geometry/Point;
    new-instance v5, Landroid/filterfw/geometry/Point;

    invoke-direct {v5, v9, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 324
    .local v5, tr:Landroid/filterfw/geometry/Point;
    iget v6, p0, Lcom/lge/camera/EffectsRecorder;->mCameraFacing:I

    if-nez v6, :cond_1

    .line 326
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v0, v1, v4, v5}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 338
    .local v3, recordingRegion:Landroid/filterfw/geometry/Quad;
    :goto_0
    iget-object v6, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v6}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v6

    const-string v7, "recorder"

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 339
    .local v2, recorder:Landroid/filterfw/core/Filter;
    if-eqz v2, :cond_0

    .line 340
    const-string v6, "inputRegion"

    invoke-virtual {v2, v6, v3}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    .end local v0           #bl:Landroid/filterfw/geometry/Point;
    .end local v1           #br:Landroid/filterfw/geometry/Point;
    .end local v2           #recorder:Landroid/filterfw/core/Filter;
    .end local v3           #recordingRegion:Landroid/filterfw/geometry/Quad;
    .end local v4           #tl:Landroid/filterfw/geometry/Point;
    .end local v5           #tr:Landroid/filterfw/geometry/Point;
    :cond_0
    return-void

    .line 330
    .restart local v0       #bl:Landroid/filterfw/geometry/Point;
    .restart local v1       #br:Landroid/filterfw/geometry/Point;
    .restart local v4       #tl:Landroid/filterfw/geometry/Point;
    .restart local v5       #tr:Landroid/filterfw/geometry/Point;
    :cond_1
    iget v6, p0, Lcom/lge/camera/EffectsRecorder;->mOrientationHint:I

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/lge/camera/EffectsRecorder;->mOrientationHint:I

    const/16 v7, 0xb4

    if-ne v6, v7, :cond_3

    .line 332
    :cond_2
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v1, v0, v5, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .restart local v3       #recordingRegion:Landroid/filterfw/geometry/Quad;
    goto :goto_0

    .line 335
    .end local v3           #recordingRegion:Landroid/filterfw/geometry/Quad;
    :cond_3
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .restart local v3       #recordingRegion:Landroid/filterfw/geometry/Quad;
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    const-string v0, "CameraApp"

    const-string v1, "EffectsRecorder close "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iput-object v2, p0, Lcom/lge/camera/EffectsRecorder;->mHandler:Landroid/os/Handler;

    .line 151
    iput-object v2, p0, Lcom/lge/camera/EffectsRecorder;->mContext:Landroid/content/Context;

    .line 152
    iput-object v2, p0, Lcom/lge/camera/EffectsRecorder;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    .line 153
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 155
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->close()V

    .line 156
    iput-object v2, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 161
    iput-object v2, p0, Lcom/lge/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 163
    :cond_1
    return-void
.end method

.method enable3ALocks(Z)V
    .locals 2
    .parameter "toggle"

    .prologue
    .line 851
    invoke-virtual {p0, p1}, Lcom/lge/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 853
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempt to lock 3A on camera with no locking support!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 855
    :cond_0
    return-void
.end method

.method public getOrientationHint()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mOrientationHint:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    return v0
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 918
    monitor-enter p0

    :try_start_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "effectrecorder Releasing-start("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 927
    :goto_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    .line 930
    const-string v0, "CameraApp"

    const-string v1, "effectrecorder Releasing-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 931
    monitor-exit p0

    return-void

    .line 924
    :pswitch_0
    const/16 v0, 0x64

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/lge/camera/EffectsRecorder;->stopPreview(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 918
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 920
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCamera(Landroid/hardware/Camera;)V
    .locals 3
    .parameter "cameraDevice"

    .prologue
    .line 170
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 173
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamera cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iput-object p1, p0, Lcom/lge/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    goto :goto_0
.end method

.method public setCameraFacing(I)V
    .locals 3
    .parameter "facing"

    .prologue
    .line 361
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 362
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraFacing cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :goto_0
    return-void

    .line 365
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraFacing facing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iput p1, p0, Lcom/lge/camera/EffectsRecorder;->mCameraFacing:I

    .line 367
    invoke-direct {p0}, Lcom/lge/camera/EffectsRecorder;->setRecordingOrientation()V

    goto :goto_0
.end method

.method public setCaptureRate(D)V
    .locals 3
    .parameter "fps"

    .prologue
    .line 242
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 243
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureRate cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setCaptureRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iput-wide p1, p0, Lcom/lge/camera/EffectsRecorder;->mCaptureRate:D

    goto :goto_0
.end method

.method public setEffect(ILjava/lang/Object;)V
    .locals 3
    .parameter "effect"
    .parameter "effectParameter"

    .prologue
    .line 275
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 277
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_1
    :goto_0
    return-void

    .line 281
    :cond_2
    const-string v1, "CameraApp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setEffect: effect ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", parameter "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mState : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iput p1, p0, Lcom/lge/camera/EffectsRecorder;->mEffect:I

    .line 287
    iput-object p2, p0, Lcom/lge/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    .line 289
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 291
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/camera/EffectsRecorder;->initializeEffect(Z)V

    goto :goto_0

    .line 281
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setEffectsListener(Lcom/lge/camera/EffectsRecorder$EffectsListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/lge/camera/EffectsRecorder;->mEffectsListener:Lcom/lge/camera/EffectsRecorder$EffectsListener;

    .line 302
    return-void
.end method

.method public declared-synchronized setMaxDuration(I)V
    .locals 3
    .parameter "maxDurationMs"

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 232
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxDuration cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :goto_0
    monitor-exit p0

    return-void

    .line 235
    :cond_1
    :try_start_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setMaxDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iput p1, p0, Lcom/lge/camera/EffectsRecorder;->mMaxDurationMs:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxFileSize(J)V
    .locals 3
    .parameter "maxFileSize"

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 217
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxFileSize cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :goto_0
    monitor-exit p0

    return-void

    .line 221
    :cond_1
    :try_start_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setMaxFileSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iput-wide p1, p0, Lcom/lge/camera/EffectsRecorder;->mMaxFileSize:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 3
    .parameter "errorListener"

    .prologue
    .line 385
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 387
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInfoListener cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :goto_0
    return-void

    .line 391
    :cond_1
    iput-object p1, p0, Lcom/lge/camera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    goto :goto_0
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 3
    .parameter "infoListener"

    .prologue
    .line 375
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 377
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInfoListener cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :goto_0
    return-void

    .line 381
    :cond_1
    iput-object p1, p0, Lcom/lge/camera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    goto :goto_0
.end method

.method public setOrientationHint(I)V
    .locals 3
    .parameter "degrees"

    .prologue
    .line 349
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 350
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientationHint cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :goto_0
    return-void

    .line 354
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting orientation hint to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iput p1, p0, Lcom/lge/camera/EffectsRecorder;->mOrientationHint:I

    .line 356
    invoke-direct {p0}, Lcom/lge/camera/EffectsRecorder;->setFaceDetectOrientation()V

    .line 357
    invoke-direct {p0}, Lcom/lge/camera/EffectsRecorder;->setRecordingOrientation()V

    goto :goto_0
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 3
    .parameter "fd"

    .prologue
    .line 200
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 201
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputFile cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :goto_0
    return-void

    .line 204
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileDescriptor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    .line 206
    iput-object p1, p0, Lcom/lge/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    goto :goto_0
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 3
    .parameter "outputFile"

    .prologue
    .line 190
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 191
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputFile cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "outpufile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Lcom/lge/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    goto :goto_0
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;II)V
    .locals 3
    .parameter "previewSurfaceHolder"
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 253
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 254
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewDisplay cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :goto_0
    return-void

    .line 257
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setPreviewDisplay ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iput-object p1, p0, Lcom/lge/camera/EffectsRecorder;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 260
    iput p2, p0, Lcom/lge/camera/EffectsRecorder;->mPreviewWidth:I

    .line 261
    iput p3, p0, Lcom/lge/camera/EffectsRecorder;->mPreviewHeight:I

    .line 263
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 265
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/EffectsRecorder;->startPreview()V

    goto :goto_0

    .line 269
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/camera/EffectsRecorder;->initializeEffect(Z)V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 181
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 182
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProfile cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iput-object p1, p0, Lcom/lge/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    goto :goto_0
.end method

.method public setVideoEncodingBitRate(I)V
    .locals 0
    .parameter "videoEncodingBitRate"

    .prologue
    .line 371
    iput p1, p0, Lcom/lge/camera/EffectsRecorder;->mVideoBitrate:I

    .line 372
    return-void
.end method

.method public declared-synchronized startPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 509
    monitor-enter p0

    :try_start_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Starting preview ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 511
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreview called when already running preview : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 513
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 514
    :cond_3
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreview cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 518
    :cond_4
    :try_start_2
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mEffect:I

    if-nez v0, :cond_5

    .line 520
    const-string v0, "CameraApp"

    const-string v1, "No effect selected!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 524
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mEffectParameter:Ljava/lang/Object;

    if-nez v0, :cond_6

    .line 525
    const-string v0, "CameraApp"

    const-string v1, "No effect selected!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 529
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v0, :cond_7

    .line 530
    const-string v0, "CameraApp"

    const-string v1, "No effect selected!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 534
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_8

    .line 535
    const-string v0, "CameraApp"

    const-string v1, "Passed a null surface holder; waiting for valid one"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    goto :goto_0

    .line 539
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_9

    .line 542
    iget v0, p0, Lcom/lge/camera/EffectsRecorder;->mCurrentEffect:I

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/EffectsRecorder;->sendMessage(II)V

    .line 543
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No camera to record from!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_9
    const-string v0, "CameraApp"

    const-string v1, "Initializing filter graph"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-direct {p0}, Lcom/lge/camera/EffectsRecorder;->initializeFilterFramework()V

    .line 550
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/camera/EffectsRecorder;->initializeEffect(Z)V

    .line 552
    const-string v0, "CameraApp"

    const-string v1, "Starting filter graph"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    .line 555
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized startRecording(Z)V
    .locals 9
    .parameter "beUnmute"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v0, 0x1

    .line 676
    monitor-enter p0

    :try_start_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting recording ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget v4, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    if-eq v4, v7, :cond_0

    iget v4, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    if-ne v4, v8, :cond_1

    .line 679
    :cond_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startRecording cannot be called while "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    :goto_0
    monitor-exit p0

    return-void

    .line 683
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    if-nez v4, :cond_2

    .line 684
    const-string v4, "CameraApp"

    const-string v5, "No output file name or descriptor provided!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 676
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 689
    :cond_2
    :try_start_2
    iget v4, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    if-nez v4, :cond_3

    .line 690
    invoke-virtual {p0}, Lcom/lge/camera/EffectsRecorder;->startPreview()V

    .line 693
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v4

    const-string v5, "recorder"

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v1

    .line 694
    .local v1, recorder:Landroid/filterfw/core/Filter;
    if-eqz v1, :cond_6

    .line 695
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_7

    .line 696
    const-string v4, "outputFileDescriptor"

    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder;->mFd:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 704
    :goto_1
    if-eqz p1, :cond_8

    .line 705
    const-string v4, "audioSource"

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 715
    :goto_2
    const-string v4, "recordingProfile"

    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 716
    const-string v4, "orientationHint"

    iget v5, p0, Lcom/lge/camera/EffectsRecorder;->mOrientationHint:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 721
    iget-wide v4, p0, Lcom/lge/camera/EffectsRecorder;->mCaptureRate:D

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_9

    .line 722
    .local v0, captureTimeLapse:Z
    :goto_3
    if-eqz v0, :cond_a

    .line 723
    const-wide/high16 v4, 0x3ff0

    iget-wide v6, p0, Lcom/lge/camera/EffectsRecorder;->mCaptureRate:D

    div-double v2, v4, v6

    .line 724
    .local v2, timeBetweenFrameCapture:D
    const-string v4, "timelapseRecordingIntervalUs"

    const-wide v5, 0x412e848000000000L

    mul-double/2addr v5, v2

    double-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 730
    .end local v2           #timeBetweenFrameCapture:D
    :goto_4
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    if-eqz v4, :cond_4

    .line 731
    const-string v4, "infoListener"

    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 733
    :cond_4
    iget-object v4, p0, Lcom/lge/camera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    if-eqz v4, :cond_5

    .line 734
    const-string v4, "errorListener"

    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 736
    :cond_5
    const-string v4, "maxFileSize"

    iget-wide v5, p0, Lcom/lge/camera/EffectsRecorder;->mMaxFileSize:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 737
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " #####  effect.maxDurationMs:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/camera/EffectsRecorder;->mMaxDurationMs:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mMaxFileSize: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/lge/camera/EffectsRecorder;->mMaxFileSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " profile:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v4, "maxDurationMs"

    iget v5, p0, Lcom/lge/camera/EffectsRecorder;->mMaxDurationMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 740
    const-string v4, "CameraApp"

    const-string v5, " #####  recorder.setInputValue recording true"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v4, "recording"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 745
    .end local v0           #captureTimeLapse:Z
    :cond_6
    const/4 v4, 0x4

    iput v4, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    goto/16 :goto_0

    .line 698
    :cond_7
    const-string v4, "outputFile"

    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder;->mOutputFile:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 708
    :cond_8
    const-string v4, "audioSource"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 709
    const-string v4, "outputFormat"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 710
    const-string v4, "videoEncoder"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 711
    const-string v4, "videoEncoderBitrate"

    iget v5, p0, Lcom/lge/camera/EffectsRecorder;->mVideoBitrate:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 712
    const-string v4, "width"

    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 713
    const-string v4, "height"

    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 721
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 727
    .restart local v0       #captureTimeLapse:Z
    :cond_a
    const-string v4, "timelapseRecordingIntervalUs"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4
.end method

.method public declared-synchronized stopPreview(I)V
    .locals 4
    .parameter "calledFrom"

    .prologue
    .line 773
    monitor-enter p0

    :try_start_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectsrecorder stopPreview-start ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), mState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iget-object v1, p0, Lcom/lge/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 776
    const-string v1, "CameraApp"

    const-string v2, "effectsrecorder mCameraDevice is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 816
    :goto_0
    monitor-exit p0

    return-void

    .line 780
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    sparse-switch v1, :sswitch_data_0

    .line 792
    iget v1, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 793
    invoke-virtual {p0}, Lcom/lge/camera/EffectsRecorder;->stopRecording()V

    .line 796
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/camera/EffectsRecorder;->mCurrentEffect:I

    .line 797
    iput p1, p0, Lcom/lge/camera/EffectsRecorder;->mCalledFrom:I

    .line 798
    const-string v1, "CameraApp"

    const-string v2, "### effectrecorder mCameraDevice.stopPreview()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v1, p0, Lcom/lge/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 802
    :try_start_2
    iget-object v1, p0, Lcom/lge/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 808
    const/4 v1, 0x0

    :try_start_3
    iput v1, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    .line 809
    iget-object v1, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    iput-object v1, p0, Lcom/lge/camera/EffectsRecorder;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 810
    iget-object v1, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v1}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 812
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 814
    const-string v1, "CameraApp"

    const-string v2, "effectsrecorder stopPreview-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 773
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 782
    :sswitch_0
    :try_start_4
    const-string v1, "CameraApp"

    const-string v2, "effectsrecorder StopPreview called when preview not active!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 785
    :sswitch_1
    const-string v1, "CameraApp"

    const-string v2, "effectsrecorder stopPreview called on released EffectsRecorder!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 803
    :catch_0
    move-exception v0

    .line 804
    .local v0, e:Ljava/io/IOException;
    iget v1, p0, Lcom/lge/camera/EffectsRecorder;->mCurrentEffect:I

    const/4 v2, 0x6

    invoke-direct {p0, v1, v2}, Lcom/lge/camera/EffectsRecorder;->sendMessage(II)V

    .line 805
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to connect camera to effect input"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 780
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public declared-synchronized stopRecording()V
    .locals 4

    .prologue
    .line 749
    monitor-enter p0

    :try_start_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop recording ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget v1, p0, Lcom/lge/camera/EffectsRecorder;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 762
    :pswitch_0
    iget-object v1, p0, Lcom/lge/camera/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v1}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v1

    const-string v2, "recorder"

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 763
    .local v0, recorder:Landroid/filterfw/core/Filter;
    if-eqz v0, :cond_0

    .line 764
    const-string v1, "CameraApp"

    const-string v2, " #####  recorder.setInputValue recording false"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v1, "recording"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 768
    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/lge/camera/EffectsRecorder;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    .end local v0           #recorder:Landroid/filterfw/core/Filter;
    :goto_0
    monitor-exit p0

    return-void

    .line 755
    :pswitch_1
    :try_start_1
    const-string v1, "CameraApp"

    const-string v2, "StopRecording called when recording not active!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 749
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 758
    :pswitch_2
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "stopRecording called on released EffectsRecorder!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 751
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method tryEnable3ALocks(Z)Z
    .locals 2
    .parameter "toggle"

    .prologue
    .line 835
    iget-object v1, p0, Lcom/lge/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 837
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 839
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 840
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 841
    iget-object v1, p0, Lcom/lge/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 842
    const/4 v1, 0x1

    .line 844
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method tryEnableVideoStabilization(Z)Z
    .locals 5
    .parameter "toggle"

    .prologue
    .line 820
    iget-object v2, p0, Lcom/lge/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 822
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v2, "video-stabilization-supported"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, vstabSupported:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 824
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting video stabilization to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v3, "video-stabilization"

    if-eqz p1, :cond_0

    const-string v2, "true"

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v2, p0, Lcom/lge/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 827
    const/4 v2, 0x1

    .line 830
    :goto_1
    return v2

    .line 825
    :cond_0
    const-string v2, "false"

    goto :goto_0

    .line 829
    :cond_1
    const-string v2, "CameraApp"

    const-string v3, "Video stabilization not supported"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const/4 v2, 0x0

    goto :goto_1
.end method
