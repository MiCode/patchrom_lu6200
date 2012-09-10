.class Lcom/lge/camera/util/FileNamingHelper$3;
.super Ljava/lang/Object;
.source "FileNamingHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/util/FileNamingHelper;->startCheckFileName_DCF(IZZ)V
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
    .line 586
    iput-object p1, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    iput-boolean p2, p0, Lcom/lge/camera/util/FileNamingHelper$3;->val$useTimeMachine:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 588
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mInCheckDCF:Z
    invoke-static {v4, v9}, Lcom/lge/camera/util/FileNamingHelper;->access$1502(Lcom/lge/camera/util/FileNamingHelper;Z)Z

    .line 589
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startCheckFileName_DCF with thread : file count ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I
    invoke-static {v6}, Lcom/lge/camera/util/FileNamingHelper;->access$1600(Lcom/lge/camera/util/FileNamingHelper;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J
    invoke-static {v6}, Lcom/lge/camera/util/FileNamingHelper;->access$1700(Lcom/lge/camera/util/FileNamingHelper;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 592
    .local v2, startTime:J
    const/4 v1, 0x0

    .line 593
    .local v1, fileName:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->val$useTimeMachine:Z

    if-eqz v4, :cond_5

    .line 594
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumberForTMS:I
    invoke-static {v4}, Lcom/lge/camera/util/FileNamingHelper;->access$1800(Lcom/lge/camera/util/FileNamingHelper;)I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mDigitnumForTMS:I
    invoke-static {v5}, Lcom/lge/camera/util/FileNamingHelper;->access$1900(Lcom/lge/camera/util/FileNamingHelper;)I

    move-result v5

    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mDCFNumberForTMS:J
    invoke-static {v6}, Lcom/lge/camera/util/FileNamingHelper;->access$2000(Lcom/lge/camera/util/FileNamingHelper;)J

    move-result-wide v6

    #calls: Lcom/lge/camera/util/FileNamingHelper;->makeFileNameByDCFRule(IIJ)Ljava/lang/String;
    invoke-static {v4, v5, v6, v7}, Lcom/lge/camera/util/FileNamingHelper;->access$2100(IIJ)Ljava/lang/String;

    move-result-object v1

    .line 600
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mFileDirectory:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/camera/util/FileNamingHelper;->access$400(Lcom/lge/camera/util/FileNamingHelper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

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

    iget-object v5, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

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

    .line 601
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    iget-boolean v5, p0, Lcom/lge/camera/util/FileNamingHelper$3;->val$useTimeMachine:Z

    #calls: Lcom/lge/camera/util/FileNamingHelper;->addDCFCount(Z)V
    invoke-static {v4, v5}, Lcom/lge/camera/util/FileNamingHelper;->access$2300(Lcom/lge/camera/util/FileNamingHelper;Z)V

    .line 602
    iget-boolean v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->val$useTimeMachine:Z

    if-eqz v4, :cond_6

    .line 603
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumberForTMS:I
    invoke-static {v4}, Lcom/lge/camera/util/FileNamingHelper;->access$1800(Lcom/lge/camera/util/FileNamingHelper;)I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mDigitnumForTMS:I
    invoke-static {v5}, Lcom/lge/camera/util/FileNamingHelper;->access$1900(Lcom/lge/camera/util/FileNamingHelper;)I

    move-result v5

    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mDCFNumberForTMS:J
    invoke-static {v6}, Lcom/lge/camera/util/FileNamingHelper;->access$2000(Lcom/lge/camera/util/FileNamingHelper;)J

    move-result-wide v6

    #calls: Lcom/lge/camera/util/FileNamingHelper;->makeFileNameByDCFRule(IIJ)Ljava/lang/String;
    invoke-static {v4, v5, v6, v7}, Lcom/lge/camera/util/FileNamingHelper;->access$2100(IIJ)Ljava/lang/String;

    move-result-object v1

    .line 608
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z
    invoke-static {v4}, Lcom/lge/camera/util/FileNamingHelper;->access$500(Lcom/lge/camera/util/FileNamingHelper;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 609
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z
    invoke-static {v4, v9}, Lcom/lge/camera/util/FileNamingHelper;->access$502(Lcom/lge/camera/util/FileNamingHelper;Z)Z

    .line 614
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z
    invoke-static {v4}, Lcom/lge/camera/util/FileNamingHelper;->access$500(Lcom/lge/camera/util/FileNamingHelper;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 615
    const-string v4, "CameraApp"

    const-string v5, "startCheckFileName_DCF thread interrupted!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mInCheckDCF:Z
    invoke-static {v4, v8}, Lcom/lge/camera/util/FileNamingHelper;->access$1502(Lcom/lge/camera/util/FileNamingHelper;Z)Z

    .line 617
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mStopThread:Z
    invoke-static {v4, v8}, Lcom/lge/camera/util/FileNamingHelper;->access$502(Lcom/lge/camera/util/FileNamingHelper;Z)Z

    .line 638
    :cond_4
    :goto_2
    return-void

    .line 596
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I
    invoke-static {v4}, Lcom/lge/camera/util/FileNamingHelper;->access$1600(Lcom/lge/camera/util/FileNamingHelper;)I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I
    invoke-static {v5}, Lcom/lge/camera/util/FileNamingHelper;->access$2200(Lcom/lge/camera/util/FileNamingHelper;)I

    move-result v5

    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J
    invoke-static {v6}, Lcom/lge/camera/util/FileNamingHelper;->access$1700(Lcom/lge/camera/util/FileNamingHelper;)J

    move-result-wide v6

    #calls: Lcom/lge/camera/util/FileNamingHelper;->makeFileNameByDCFRule(IIJ)Ljava/lang/String;
    invoke-static {v4, v5, v6, v7}, Lcom/lge/camera/util/FileNamingHelper;->access$2100(IIJ)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 605
    :cond_6
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I
    invoke-static {v4}, Lcom/lge/camera/util/FileNamingHelper;->access$1600(Lcom/lge/camera/util/FileNamingHelper;)I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I
    invoke-static {v5}, Lcom/lge/camera/util/FileNamingHelper;->access$2200(Lcom/lge/camera/util/FileNamingHelper;)I

    move-result v5

    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J
    invoke-static {v6}, Lcom/lge/camera/util/FileNamingHelper;->access$1700(Lcom/lge/camera/util/FileNamingHelper;)J

    move-result-wide v6

    #calls: Lcom/lge/camera/util/FileNamingHelper;->makeFileNameByDCFRule(IIJ)Ljava/lang/String;
    invoke-static {v4, v5, v6, v7}, Lcom/lge/camera/util/FileNamingHelper;->access$2100(IIJ)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 620
    :cond_7
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    iget-object v5, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mDCFFileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/camera/util/FileNamingHelper;->access$2500(Lcom/lge/camera/util/FileNamingHelper;)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mCurrFileName:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/lge/camera/util/FileNamingHelper;->access$2402(Lcom/lge/camera/util/FileNamingHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 621
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mDCFFileName:Ljava/lang/String;
    invoke-static {v4, v1}, Lcom/lge/camera/util/FileNamingHelper;->access$2502(Lcom/lge/camera/util/FileNamingHelper;Ljava/lang/String;)Ljava/lang/String;

    .line 622
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mDCFFileStatus:I
    invoke-static {v4, v9}, Lcom/lge/camera/util/FileNamingHelper;->access$2602(Lcom/lge/camera/util/FileNamingHelper;I)I

    .line 623
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "next dcf file is ready "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mCurrFileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/lge/camera/util/FileNamingHelper;->access$2400(Lcom/lge/camera/util/FileNamingHelper;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mDCFFileName:Ljava/lang/String;
    invoke-static {v6}, Lcom/lge/camera/util/FileNamingHelper;->access$2500(Lcom/lge/camera/util/FileNamingHelper;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startCheckFileName_DCF is finished with thread (elapse time = "

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

    .line 626
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #setter for: Lcom/lge/camera/util/FileNamingHelper;->mInCheckDCF:Z
    invoke-static {v4, v8}, Lcom/lge/camera/util/FileNamingHelper;->access$1502(Lcom/lge/camera/util/FileNamingHelper;Z)Z

    .line 628
    iget-boolean v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->val$useTimeMachine:Z

    if-nez v4, :cond_4

    .line 629
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mContext:Ljava/lang/ref/WeakReference;
    invoke-static {v4}, Lcom/lge/camera/util/FileNamingHelper;->access$800(Lcom/lge/camera/util/FileNamingHelper;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 630
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_8

    .line 631
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mDCFNumber:J
    invoke-static {v4}, Lcom/lge/camera/util/FileNamingHelper;->access$1700(Lcom/lge/camera/util/FileNamingHelper;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/lge/camera/util/Common;->saveAccumulatedDCFCount(Landroid/content/Context;J)V

    .line 632
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mDCFFirstNumber:I
    invoke-static {v4}, Lcom/lge/camera/util/FileNamingHelper;->access$1600(Lcom/lge/camera/util/FileNamingHelper;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/lge/camera/util/Common;->saveAccumulatedDCFFirstCount(Landroid/content/Context;I)V

    .line 633
    iget-object v4, p0, Lcom/lge/camera/util/FileNamingHelper$3;->this$0:Lcom/lge/camera/util/FileNamingHelper;

    #getter for: Lcom/lge/camera/util/FileNamingHelper;->mDigitnum:I
    invoke-static {v4}, Lcom/lge/camera/util/FileNamingHelper;->access$2200(Lcom/lge/camera/util/FileNamingHelper;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/lge/camera/util/Common;->saveAccumulatedDCFDigit(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 635
    :cond_8
    const-string v4, "CameraApp"

    const-string v5, "Cannot accumulate DCF because context is null"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
