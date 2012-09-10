.class public Lcom/lge/camera/components/PanoramaHelper;
.super Ljava/lang/Object;
.source "PanoramaHelper.java"


# static fields
.field public static final MAX_PHOTO:I = 0x3

.field public static final PANORAMA_SHOT_INTERVAL:I = 0x64


# instance fields
.field public mCurrentCaptureCount:I

.field public mPanoramaTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/PanoramaHelper;->mCurrentCaptureCount:I

    return-void
.end method


# virtual methods
.method public clearTimer()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/camera/components/PanoramaHelper;->mPanoramaTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/lge/camera/components/PanoramaHelper;->mPanoramaTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 28
    iget-object v0, p0, Lcom/lge/camera/components/PanoramaHelper;->mPanoramaTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 30
    :cond_0
    return-void
.end method

.method public initPanorama()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/PanoramaHelper;->mCurrentCaptureCount:I

    .line 15
    return-void
.end method

.method public setPanorama(Ljava/util/TimerTask;)V
    .locals 6
    .parameter "t"

    .prologue
    const-wide/16 v2, 0x64

    .line 19
    new-instance v0, Ljava/util/Timer;

    const-string v1, "panorama"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/components/PanoramaHelper;->mPanoramaTimer:Ljava/util/Timer;

    .line 20
    iget-object v0, p0, Lcom/lge/camera/components/PanoramaHelper;->mPanoramaTimer:Ljava/util/Timer;

    move-object v1, p1

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 21
    return-void
.end method
