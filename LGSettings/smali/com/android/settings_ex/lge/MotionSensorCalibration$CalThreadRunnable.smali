.class Lcom/android/settings_ex/lge/MotionSensorCalibration$CalThreadRunnable;
.super Ljava/lang/Object;
.source "MotionSensorCalibration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/lge/MotionSensorCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalThreadRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/lge/MotionSensorCalibration;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$CalThreadRunnable;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/lge/MotionSensorCalibration;Lcom/android/settings_ex/lge/MotionSensorCalibration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/lge/MotionSensorCalibration$CalThreadRunnable;-><init>(Lcom/android/settings_ex/lge/MotionSensorCalibration;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1f4

    .line 142
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$CalThreadRunnable;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    #getter for: Lcom/android/settings_ex/lge/MotionSensorCalibration;->mThread:Ljava/lang/Thread;
    invoke-static {v6}, Lcom/android/settings_ex/lge/MotionSensorCalibration;->access$300(Lcom/android/settings_ex/lge/MotionSensorCalibration;)Ljava/lang/Thread;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$CalThreadRunnable;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    #getter for: Lcom/android/settings_ex/lge/MotionSensorCalibration;->mTesting:Ljava/lang/Boolean;
    invoke-static {v6}, Lcom/android/settings_ex/lge/MotionSensorCalibration;->access$100(Lcom/android/settings_ex/lge/MotionSensorCalibration;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 148
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 150
    .local v4, testTime:J
    const/4 v3, 0x0

    .line 151
    .local v3, result:I
    const/4 v2, 0x1

    .line 152
    .local v2, resWriteToFile:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v6, 0x2

    if-ge v0, v6, :cond_0

    iget-object v6, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$CalThreadRunnable;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    invoke-virtual {v6}, Lcom/android/settings_ex/lge/MotionSensorCalibration;->WriteToFile()Z

    move-result v2

    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    if-eqz v2, :cond_2

    :cond_0
    if-nez v2, :cond_4

    const-string v6, "MPL"

    const-string v7, "Write error."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$CalThreadRunnable;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    iget-object v6, v6, Lcom/android/settings_ex/lge/MotionSensorCalibration;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .end local v0           #i:I
    .end local v2           #resWriteToFile:Z
    .end local v3           #result:I
    .end local v4           #testTime:J
    :cond_1
    return-void

    .line 152
    .restart local v0       #i:I
    .restart local v2       #resWriteToFile:Z
    .restart local v3       #result:I
    .restart local v4       #testTime:J
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    .local v1, res:I
    :cond_3
    const-string v6, "MPL"

    const-string v7, "Do nothing"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 167
    .end local v1           #res:I
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x2710

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    const-string v6, "MPL"

    const-string v7, "Time out"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$CalThreadRunnable;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    iget-object v6, v6, Lcom/android/settings_ex/lge/MotionSensorCalibration;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .end local v0           #i:I
    .end local v2           #resWriteToFile:Z
    .end local v3           #result:I
    .end local v4           #testTime:J
    :cond_5
    :goto_2
    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 175
    .restart local v0       #i:I
    .restart local v2       #resWriteToFile:Z
    .restart local v3       #result:I
    .restart local v4       #testTime:J
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$CalThreadRunnable;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    invoke-virtual {v6}, Lcom/android/settings_ex/lge/MotionSensorCalibration;->ReadIntFromFile()I

    move-result v1

    .restart local v1       #res:I
    if-nez v1, :cond_7

    const-string v6, "MPL"

    const-string v7, "pass"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$CalThreadRunnable;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    iget-object v6, v6, Lcom/android/settings_ex/lge/MotionSensorCalibration;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_7
    const/4 v6, 0x1

    if-ne v1, v6, :cond_3

    const-string v6, "MPL"

    const-string v7, "fail"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/android/settings_ex/lge/MotionSensorCalibration$CalThreadRunnable;->this$0:Lcom/android/settings_ex/lge/MotionSensorCalibration;

    iget-object v6, v6, Lcom/android/settings_ex/lge/MotionSensorCalibration;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method
