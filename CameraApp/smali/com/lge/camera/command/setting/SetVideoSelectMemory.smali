.class public Lcom/lge/camera/command/setting/SetVideoSelectMemory;
.super Lcom/lge/camera/command/setting/CamcorderSettingCommand;
.source "SetVideoSelectMemory.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/lge/camera/command/setting/CamcorderSettingCommand;-><init>(Lcom/lge/camera/Mediator;)V

    .line 11
    return-void
.end method


# virtual methods
.method public execute(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/command/setting/SetVideoSelectMemory;->execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method public execute(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)V
    .locals 2
    .parameter "parameters"
    .parameter "arg"

    .prologue
    .line 19
    const-string v0, "CameraApp"

    const-string v1, "SetVideoSelectMemory "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
