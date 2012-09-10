.class public Lcom/lge/camera/module/TimerShot;
.super Lcom/lge/camera/module/Module;
.source "TimerShot.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/Mediator;)V

    .line 10
    return-void
.end method


# virtual methods
.method public doAfterCapture()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public takePicture()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    return v0
.end method
