.class Lcom/lge/camera/controller/PreviewController$16;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewController;)V
    .locals 0
    .parameter

    .prologue
    .line 2136
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$16;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$16;->this$0:Lcom/lge/camera/controller/PreviewController;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PreviewController;->checkStartPreviewCallback()V

    .line 2139
    return-void
.end method
