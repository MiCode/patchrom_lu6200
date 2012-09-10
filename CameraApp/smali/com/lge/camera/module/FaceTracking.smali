.class public Lcom/lge/camera/module/FaceTracking;
.super Lcom/lge/camera/module/Module;
.source "FaceTracking.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/Mediator;)V

    .line 9
    return-void
.end method


# virtual methods
.method public doAfterCapture()V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public takePicture()Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method
