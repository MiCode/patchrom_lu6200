.class Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/components/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraPreviewCallback"
.end annotation


# instance fields
.field fcount:I

.field private mCheckFps:Z

.field start:Ljava/util/Date;

.field final synthetic this$0:Lcom/lge/camera/components/CameraPreview;


# direct methods
.method constructor <init>(Lcom/lge/camera/components/CameraPreview;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 178
    iput-object p1, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/CameraPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->mCheckFps:Z

    .line 183
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->start:Ljava/util/Date;

    .line 184
    iput v1, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->fcount:I

    return-void
.end method

.method private printFps()V
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->fcount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->fcount:I

    .line 188
    iget v0, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->fcount:I

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->start:Ljava/util/Date;

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->fcount:I

    .line 194
    :cond_0
    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 7
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 198
    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/CameraPreview;

    iget-object v3, v3, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-nez v3, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 203
    .local v0, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 204
    .local v1, previewSize:Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_2

    .line 205
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v4

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff8

    mul-double/2addr v3, v5

    double-to-int v2, v3

    .line 206
    .local v2, resultWide:I
    if-eqz v1, :cond_2

    array-length v3, p1

    if-ne v2, v3, :cond_0

    .line 212
    .end local v2           #resultWide:I
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/CameraPreview;

    iget-object v3, v3, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v3}, Lcom/lge/olaworks/library/EngineProcessor;->isEmptyEngine()Z

    move-result v3

    if-nez v3, :cond_3

    .line 213
    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v3, p1}, Lcom/lge/camera/components/CameraPreview;->processPreviewFrame([B)V

    .line 214
    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/CameraPreview;

    iget-object v3, v3, Lcom/lge/camera/components/CameraPreview;->mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    if-eqz v3, :cond_3

    .line 215
    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/CameraPreview;

    iget-object v3, v3, Lcom/lge/camera/components/CameraPreview;->mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-interface {v3, p1, p2}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 219
    :cond_3
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 220
    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/CameraPreview;

    const/4 v4, 0x1

    #setter for: Lcom/lge/camera/components/CameraPreview;->mIsCompleteFrame:Z
    invoke-static {v3, v4}, Lcom/lge/camera/components/CameraPreview;->access$002(Lcom/lge/camera/components/CameraPreview;Z)Z

    .line 222
    iget-boolean v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->mCheckFps:Z

    if-eqz v3, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->printFps()V

    goto :goto_0
.end method
