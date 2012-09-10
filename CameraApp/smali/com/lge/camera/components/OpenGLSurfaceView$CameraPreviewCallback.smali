.class Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;
.super Ljava/lang/Object;
.source "OpenGLSurfaceView.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/components/OpenGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraPreviewCallback"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CameraPreviewCallback"


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/OpenGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/lge/camera/components/OpenGLSurfaceView;)V
    .locals 0
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 251
    const-string v0, "CameraPreviewCallback"

    const-string v1, "OnPreview With NULL data"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->processPreviewFrameAsync([B)V

    goto :goto_0
.end method
