.class Lcom/lge/camera/EffectsRecorder$1;
.super Ljava/lang/Object;
.source "EffectsRecorder.java"

# interfaces
.implements Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/EffectsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/EffectsRecorder;


# direct methods
.method constructor <init>(Lcom/lge/camera/EffectsRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V
    .locals 10
    .parameter "source"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    .line 564
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "##### onsurfaceTextureSourceReady callback received: state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mState:I
    invoke-static {v7}, Lcom/lge/camera/EffectsRecorder;->access$000(Lcom/lge/camera/EffectsRecorder;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",source:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v6, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    monitor-enter v6

    .line 566
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v5}, Lcom/lge/camera/EffectsRecorder;->access$100(Lcom/lge/camera/EffectsRecorder;)Landroid/graphics/SurfaceTexture;

    move-result-object v5

    if-ne p1, v5, :cond_0

    .line 567
    const-string v5, "CameraApp"

    const-string v7, "source is same with mTextureSource, return."

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    monitor-exit v6

    .line 651
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #setter for: Lcom/lge/camera/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v5, p1}, Lcom/lge/camera/EffectsRecorder;->access$102(Lcom/lge/camera/EffectsRecorder;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 572
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mState:I
    invoke-static {v5}, Lcom/lge/camera/EffectsRecorder;->access$000(Lcom/lge/camera/EffectsRecorder;)I

    move-result v5

    if-nez v5, :cond_1

    .line 576
    const-string v5, "CameraApp"

    const-string v7, "Ready callback: Already stopped, skipping."

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    monitor-exit v6

    goto :goto_0

    .line 650
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 579
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mState:I
    invoke-static {v5}, Lcom/lge/camera/EffectsRecorder;->access$000(Lcom/lge/camera/EffectsRecorder;)I

    move-result v5

    if-ne v5, v9, :cond_2

    .line 582
    const-string v5, "CameraApp"

    const-string v7, "Ready callback: Already released, skipping."

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    monitor-exit v6

    goto :goto_0

    .line 585
    :cond_2
    if-nez p1, :cond_5

    .line 586
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mState:I
    invoke-static {v5}, Lcom/lge/camera/EffectsRecorder;->access$000(Lcom/lge/camera/EffectsRecorder;)I

    move-result v5

    if-eq v5, v8, :cond_3

    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mState:I
    invoke-static {v5}, Lcom/lge/camera/EffectsRecorder;->access$000(Lcom/lge/camera/EffectsRecorder;)I

    move-result v5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mState:I
    invoke-static {v5}, Lcom/lge/camera/EffectsRecorder;->access$000(Lcom/lge/camera/EffectsRecorder;)I

    move-result v5

    const/4 v7, 0x4

    if-ne v5, v7, :cond_4

    .line 592
    :cond_3
    const-string v5, "CameraApp"

    const-string v7, "### effectrecorder mCameraDevice.stopPreview() and return"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/lge/camera/EffectsRecorder;->access$200(Lcom/lge/camera/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    :try_start_2
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/lge/camera/EffectsRecorder;->access$200(Lcom/lge/camera/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 602
    :cond_4
    :try_start_3
    monitor-exit v6

    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    iget-object v7, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mCurrentEffect:I
    invoke-static {v7}, Lcom/lge/camera/EffectsRecorder;->access$300(Lcom/lge/camera/EffectsRecorder;)I

    move-result v7

    const/4 v8, 0x6

    #calls: Lcom/lge/camera/EffectsRecorder;->sendMessage(II)V
    invoke-static {v5, v7, v8}, Lcom/lge/camera/EffectsRecorder;->access$400(Lcom/lge/camera/EffectsRecorder;II)V

    .line 598
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v7, "Unable to disconnect camera from effect input"

    invoke-direct {v5, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 606
    .end local v0           #e:Ljava/io/IOException;
    :cond_5
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/lge/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 607
    const-string v5, "CameraApp"

    const-string v7, "### effectrecorder mCameraDevice.stopPreview()"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/lge/camera/EffectsRecorder;->access$200(Lcom/lge/camera/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->stopPreview()V

    .line 609
    const-string v5, "CameraApp"

    const-string v7, "Runner active, connecting effects preview"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 611
    :try_start_4
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/lge/camera/EffectsRecorder;->access$200(Lcom/lge/camera/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v5

    iget-object v7, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v7}, Lcom/lge/camera/EffectsRecorder;->access$100(Lcom/lge/camera/EffectsRecorder;)Landroid/graphics/SurfaceTexture;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 616
    :try_start_5
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/lge/camera/EffectsRecorder;->access$200(Lcom/lge/camera/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 617
    .local v2, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 618
    .local v1, oldSizeOnDevice:Landroid/hardware/Camera$Size;
    if-nez v1, :cond_6

    .line 619
    const-string v5, "CameraApp"

    const-string v7, "oldSizeOnDevice is Null"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    monitor-exit v6

    goto/16 :goto_0

    .line 612
    .end local v1           #oldSizeOnDevice:Landroid/hardware/Camera$Size;
    .end local v2           #params:Landroid/hardware/Camera$Parameters;
    :catch_1
    move-exception v0

    .line 613
    .restart local v0       #e:Ljava/io/IOException;
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    iget-object v7, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mCurrentEffect:I
    invoke-static {v7}, Lcom/lge/camera/EffectsRecorder;->access$300(Lcom/lge/camera/EffectsRecorder;)I

    move-result v7

    const/4 v8, 0x6

    #calls: Lcom/lge/camera/EffectsRecorder;->sendMessage(II)V
    invoke-static {v5, v7, v8}, Lcom/lge/camera/EffectsRecorder;->access$400(Lcom/lge/camera/EffectsRecorder;II)V

    .line 614
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v7, "Unable to connect camera to effect input"

    invoke-direct {v5, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 622
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #oldSizeOnDevice:Landroid/hardware/Camera$Size;
    .restart local v2       #params:Landroid/hardware/Camera$Parameters;
    :cond_6
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mCameraFacing:I
    invoke-static {v5}, Lcom/lge/camera/EffectsRecorder;->access$500(Lcom/lge/camera/EffectsRecorder;)I

    move-result v5

    invoke-static {v5}, Lcom/lge/camera/properties/ProjectVariables;->getLiveeffectResolutions(I)Ljava/lang/String;

    move-result-object v4

    .line 623
    .local v4, recordSize:Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v3

    .line 624
    .local v3, previewSizeOnDevice:[I
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->GetProjetCode()I

    move-result v5

    const/16 v7, 0x15

    if-ne v5, v7, :cond_8

    .line 627
    const-string v5, "CameraApp"

    const-string v7, "#### setPreviewSize :960x720"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const/16 v5, 0x3c0

    const/16 v7, 0x2d0

    invoke-virtual {v2, v5, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 637
    :cond_7
    :goto_1
    const-string v5, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "### set video-size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v5, "video-size"

    invoke-virtual {v2, v5, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/lge/camera/EffectsRecorder;->access$200(Lcom/lge/camera/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 641
    const-string v5, "CameraApp"

    const-string v7, "### effectrecorder mCameraDevice.startPreview()"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mCameraDevice:Landroid/hardware/Camera;
    invoke-static {v5}, Lcom/lge/camera/EffectsRecorder;->access$200(Lcom/lge/camera/EffectsRecorder;)Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->startPreview()V

    .line 645
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/lge/camera/EffectsRecorder;->tryEnable3ALocks(Z)Z

    .line 647
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    const/4 v7, 0x3

    #setter for: Lcom/lge/camera/EffectsRecorder;->mState:I
    invoke-static {v5, v7}, Lcom/lge/camera/EffectsRecorder;->access$002(Lcom/lge/camera/EffectsRecorder;I)I

    .line 648
    iget-object v5, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    iget-object v7, p0, Lcom/lge/camera/EffectsRecorder$1;->this$0:Lcom/lge/camera/EffectsRecorder;

    #getter for: Lcom/lge/camera/EffectsRecorder;->mCurrentEffect:I
    invoke-static {v7}, Lcom/lge/camera/EffectsRecorder;->access$300(Lcom/lge/camera/EffectsRecorder;)I

    move-result v7

    const/4 v8, 0x5

    #calls: Lcom/lge/camera/EffectsRecorder;->sendMessage(II)V
    invoke-static {v5, v7, v8}, Lcom/lge/camera/EffectsRecorder;->access$400(Lcom/lge/camera/EffectsRecorder;II)V

    .line 649
    const-string v5, "CameraApp"

    const-string v7, "Start preview/effect switch complete"

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    monitor-exit v6

    goto/16 :goto_0

    .line 630
    :cond_8
    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    const/4 v7, 0x0

    aget v7, v3, v7

    if-ne v5, v7, :cond_9

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    const/4 v7, 0x1

    aget v7, v3, v7

    if-eq v5, v7, :cond_7

    .line 631
    :cond_9
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v7, 0x1

    aget v7, v3, v7

    invoke-virtual {v2, v5, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 632
    const-string v5, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#### reset Preview size :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1
.end method
