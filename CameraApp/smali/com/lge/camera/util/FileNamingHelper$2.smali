.class Lcom/lge/camera/util/FileNamingHelper$2;
.super Ljava/lang/Object;
.source "FileNamingHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/util/FileNamingHelper;->startCheckFileName(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/util/FileNamingHelper;


# direct methods
.method constructor <init>(Lcom/lge/camera/util/FileNamingHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, Lcom/lge/camera/util/FileNamingHelper$2;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 479
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$2;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mInCheckVideo:Z
    invoke-static {v4, v6}, Lcom/lge/camera/util/FileNamingHelper;->access$1002(Lcom/lge/camera/util/FileNamingHelper;Z)Z

    .line 480
    const-string v4, "CameraApp"

    const-string v5, "startCheckFileName video with thread"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 482
    .local v2, startTime:J
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$2;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J
    invoke-static {v4}, Lcom/lge/camera/util/FileNamingHelper;->access$1100(Lcom/lge/camera/util/FileNamingHelper;)J

    move-result-wide v4

    #calls: Lcom/lge/camera/util/FileNamingHelper;->makeVideoFileName(J)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/lge/camera/util/FileNamingHelper;->access$1200(J)Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, fileName:Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/camera/util/FileNamingHelper$2;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mFileDirectory:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/camera/util/FileNamingHelper;->access$400(Lcom/lge/camera/util/FileNamingHelper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".3gp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/camera/util/FileNamingHelper$2;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mFileDirectory:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/camera/util/FileNamingHelper;->access$400(Lcom/lge/camera/util/FileNamingHelper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 486
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$2;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    invoke-static {v4}, Lcom/lge/camera/util/FileNamingHelper;->access$1108(Lcom/lge/camera/util/FileNamingHelper;)J

    .line 487
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$2;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J
    invoke-static {v4}, Lcom/lge/camera/util/FileNamingHelper;->access$1100(Lcom/lge/camera/util/FileNamingHelper;)J

    move-result-wide v4

    #calls: Lcom/lge/camera/util/FileNamingHelper;->makeVideoFileName(J)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/lge/camera/util/FileNamingHelper;->access$1200(J)Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$2;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z
    invoke-static {v4}, Lcom/lge/camera/util/FileNamingHelper;->access$500(Lcom/lge/camera/util/FileNamingHelper;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 490
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$2;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z
    invoke-static {v4, v6}, Lcom/lge/camera/util/FileNamingHelper;->access$502(Lcom/lge/camera/util/FileNamingHelper;Z)Z

    .line 495
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$2;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z
    invoke-static {v4}, Lcom/lge/camera/util/FileNamingHelper;->access$500(Lcom/lge/camera/util/FileNamingHelper;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 496
    const-string v4, "CameraApp"

    const-string v5, "startCheckFileName thread interrupted!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$2;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mInCheckVideo:Z
    invoke-static {v4, v8}, Lcom/lge/camera/util/FileNamingHelper;->access$1002(Lcom/lge/camera/util/FileNamingHelper;Z)Z

    .line 498
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$2;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z
    invoke-static {v4, v8}, Lcom/lge/camera/util/FileNamingHelper;->access$502(Lcom/lge/camera/util/FileNamingHelper;Z)Z

    .line 512
    :cond_4
    :goto_0
    return-void

    .line 501
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$2;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mVideoFileName:Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/lge/camera/util/FileNamingHelper;->access$1302(Lcom/lge/camera/util/FileNamingHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 502
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$2;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mVideoFileStatus:I
    invoke-static {v4, v6}, Lcom/lge/camera/util/FileNamingHelper;->access$1402(Lcom/lge/camera/util/FileNamingHelper;I)I

    .line 503
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video file is ready "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$2;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mVideoFileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/lge/camera/util/FileNamingHelper;->access$1300(Lcom/lge/camera/util/FileNamingHelper;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startCheckFileName is finished with thread (elapse time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$2;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mInCheckVideo:Z
    invoke-static {v4, v8}, Lcom/lge/camera/util/FileNamingHelper;->access$1002(Lcom/lge/camera/util/FileNamingHelper;Z)Z

    .line 508
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$2;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mContext:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lcom/lge/camera/util/FileNamingHelper;->access$800(Lcom/lge/camera/util/FileNamingHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 509
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_4

    .line 510
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$2;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mStorage:I
    invoke-static {v4}, Lcom/lge/camera/util/FileNamingHelper;->access$900(Lcom/lge/camera/util/FileNamingHelper;)I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamingHelper$2;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mVideoFileNumber:J
    invoke-static {v5}, Lcom/lge/camera/util/FileNamingHelper;->access$1100(Lcom/lge/camera/util/FileNamingHelper;)J

    move-result-wide v5

    invoke-static {v0, v4, v5, v6}, Lcom/lge/camera/util/Common;->saveAccumulatedVideoCount(Landroid/content/Context;IJ)V

    goto :goto_0
.end method
