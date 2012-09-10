.class public abstract Lcom/lge/camera/module/Module;
.super Ljava/lang/Object;
.source "Module.java"


# static fields
.field public static final CONTINUOUS_SHOT:Ljava/lang/String; = "ContinuousShot"

.field public static final DEFAULT_NORMAL_SHOT:Ljava/lang/String; = "DefaultNormalShot"

.field public static final FACE_TRACKING:Ljava/lang/String; = "FaceTracking"

.field public static final HDR_SHOT:Ljava/lang/String; = "HDRShot"

.field public static final PANORAMA_SHOT:Ljava/lang/String; = "PanoramaShot"

.field public static final SMILE_SHOT:Ljava/lang/String; = "SmileShot"

.field public static final TIMER_SHOT:Ljava/lang/String; = "TimerShot"

.field public static final TIME_MACHINE_SHOT:Ljava/lang/String; = "TimeMachineShot"


# instance fields
.field protected mMediator:Lcom/lge/camera/Mediator;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/module/Module;->mMediator:Lcom/lge/camera/Mediator;

    .line 21
    iput-object p1, p0, Lcom/lge/camera/module/Module;->mMediator:Lcom/lge/camera/Mediator;

    .line 22
    return-void
.end method


# virtual methods
.method public abstract doAfterCapture()V
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public abstract isRunning()Z
.end method

.method public abstract takePicture()Z
.end method
