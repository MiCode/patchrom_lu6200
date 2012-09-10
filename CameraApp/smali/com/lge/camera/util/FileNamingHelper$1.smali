.class Lcom/lge/camera/util/FileNamingHelper$1;
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

.field final synthetic val$useTimeMachine:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/util/FileNamingHelper;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    iput-boolean p2, p0, Lcom/lge/camera/util/FileNamingHelper$1;->val$useTimeMachine:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 396
    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mInCheckImage:Z
    invoke-static {v6, v11}, Lcom/lge/camera/util/FileNamingHelper;->access$002(Lcom/lge/camera/util/FileNamingHelper;Z)Z

    .line 397
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startCheckFileName image with thread : file count ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J
    invoke-static {v8}, Lcom/lge/camera/util/FileNamingHelper;->access$100(Lcom/lge/camera/util/FileNamingHelper;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 400
    .local v4, startTime:J
    iget-boolean v6, p0, Lcom/lge/camera/util/FileNamingHelper$1;->val$useTimeMachine:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumberForTMS:J
    invoke-static {v6}, Lcom/lge/camera/util/FileNamingHelper;->access$200(Lcom/lge/camera/util/FileNamingHelper;)J

    move-result-wide v2

    .line 401
    .local v2, imageFileNumber:J
    :goto_0
    #calls: Lcom/lge/camera/util/FileNamingHelper;->makePictureFileName(J)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/lge/camera/util/FileNamingHelper;->access$300(J)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, fileName:Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mFileDirectory:Ljava/lang/String;
    invoke-static {v7}, Lcom/lge/camera/util/FileNamingHelper;->access$400(Lcom/lge/camera/util/FileNamingHelper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 403
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 404
    #calls: Lcom/lge/camera/util/FileNamingHelper;->makePictureFileName(J)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/lge/camera/util/FileNamingHelper;->access$300(J)Ljava/lang/String;

    move-result-object v1

    .line 406
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z
    invoke-static {v6}, Lcom/lge/camera/util/FileNamingHelper;->access$500(Lcom/lge/camera/util/FileNamingHelper;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 407
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z
    invoke-static {v6, v11}, Lcom/lge/camera/util/FileNamingHelper;->access$502(Lcom/lge/camera/util/FileNamingHelper;Z)Z

    .line 411
    :cond_2
    iget-boolean v6, p0, Lcom/lge/camera/util/FileNamingHelper$1;->val$useTimeMachine:Z

    if-eqz v6, :cond_5

    .line 412
    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumberForTMS:J
    invoke-static {v6, v2, v3}, Lcom/lge/camera/util/FileNamingHelper;->access$202(Lcom/lge/camera/util/FileNamingHelper;J)J

    .line 416
    :goto_1
    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z
    invoke-static {v6}, Lcom/lge/camera/util/FileNamingHelper;->access$500(Lcom/lge/camera/util/FileNamingHelper;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 417
    const-string v6, "CameraApp"

    const-string v7, "startCheckFileName thread interrupted!"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mInCheckImage:Z
    invoke-static {v6, v10}, Lcom/lge/camera/util/FileNamingHelper;->access$002(Lcom/lge/camera/util/FileNamingHelper;Z)Z

    .line 419
    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z
    invoke-static {v6, v10}, Lcom/lge/camera/util/FileNamingHelper;->access$502(Lcom/lge/camera/util/FileNamingHelper;Z)Z

    .line 433
    :cond_3
    :goto_2
    return-void

    .line 400
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #imageFileNumber:J
    :cond_4
    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J
    invoke-static {v6}, Lcom/lge/camera/util/FileNamingHelper;->access$100(Lcom/lge/camera/util/FileNamingHelper;)J

    move-result-wide v2

    goto :goto_0

    .line 414
    .restart local v1       #fileName:Ljava/lang/String;
    .restart local v2       #imageFileNumber:J
    :cond_5
    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    iget-object v7, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J
    invoke-static {v7, v2, v3}, Lcom/lge/camera/util/FileNamingHelper;->access$102(Lcom/lge/camera/util/FileNamingHelper;J)J

    move-result-wide v7

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumberForTMS:J
    invoke-static {v6, v7, v8}, Lcom/lge/camera/util/FileNamingHelper;->access$202(Lcom/lge/camera/util/FileNamingHelper;J)J

    goto :goto_1

    .line 422
    :cond_6
    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mImageFileName:Ljava/lang/String;
    invoke-static {v6, v1}, Lcom/lge/camera/util/FileNamingHelper;->access$602(Lcom/lge/camera/util/FileNamingHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 423
    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mImageFileStatus:I
    invoke-static {v6, v11}, Lcom/lge/camera/util/FileNamingHelper;->access$702(Lcom/lge/camera/util/FileNamingHelper;I)I

    .line 424
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "image file is ready "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mImageFileName:Ljava/lang/String;
    invoke-static {v8}, Lcom/lge/camera/util/FileNamingHelper;->access$600(Lcom/lge/camera/util/FileNamingHelper;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startCheckFileName is finished with thread (elapse time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mInCheckImage:Z
    invoke-static {v6, v10}, Lcom/lge/camera/util/FileNamingHelper;->access$002(Lcom/lge/camera/util/FileNamingHelper;Z)Z

    .line 427
    iget-boolean v6, p0, Lcom/lge/camera/util/FileNamingHelper$1;->val$useTimeMachine:Z

    if-nez v6, :cond_3

    .line 428
    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mContext:Ljava/lang/ref/WeakReference;
    invoke-static {v6}, Lcom/lge/camera/util/FileNamingHelper;->access$800(Lcom/lge/camera/util/FileNamingHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 429
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_3

    .line 430
    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mStorage:I
    invoke-static {v6}, Lcom/lge/camera/util/FileNamingHelper;->access$900(Lcom/lge/camera/util/FileNamingHelper;)I

    move-result v6

    iget-object v7, p0, Lcom/lge/camera/util/FileNamingHelper$1;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mImageFileNumber:J
    invoke-static {v7}, Lcom/lge/camera/util/FileNamingHelper;->access$100(Lcom/lge/camera/util/FileNamingHelper;)J

    move-result-wide v7

    invoke-static {v0, v6, v7, v8}, Lcom/lge/camera/util/Common;->saveAccumulatedPictureCount(Landroid/content/Context;IJ)V

    goto/16 :goto_2
.end method
