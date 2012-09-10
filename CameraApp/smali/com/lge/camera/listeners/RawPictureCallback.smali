.class public Lcom/lge/camera/listeners/RawPictureCallback;
.super Ljava/lang/Object;
.source "RawPictureCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


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
    iput-object p1, p0, Lcom/lge/camera/listeners/RawPictureCallback;->mMediator:Lcom/lge/camera/Mediator;

    .line 15
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "rawData"
    .parameter "camera"

    .prologue
    .line 18
    const-string v0, "CameraApp"

    const-string v1, "SHOT RawPictureCallback()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method
