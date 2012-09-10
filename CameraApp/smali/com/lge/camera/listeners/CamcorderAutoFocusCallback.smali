.class public Lcom/lge/camera/listeners/CamcorderAutoFocusCallback;
.super Ljava/lang/Object;
.source "CamcorderAutoFocusCallback.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# direct methods
.method public constructor <init>(Lcom/lge/camera/CamcorderMediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 17
    const-string v0, "CameraApp"

    const-string v1, "AutoFocusCallback()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method
