.class Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog$1;
.super Ljava/lang/Object;
.source "TimeoutWatchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->start(ILcom/broadcom/bt/app/opp/util/IWatchdogHandler;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog$1;->this$0:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 97
    const-string v3, "TimeoutWatchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "running watchdog thread...."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, timedOut:Z
    :goto_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog$1;->this$0:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    iget-boolean v3, v3, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mIsStarted:Z

    if-eqz v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog$1;->this$0:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    monitor-enter v3

    .line 106
    :try_start_0
    const-string v4, "TimeoutWatchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Going to sleep for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog$1;->this$0:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    iget v6, v6, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mTimeoutMS:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog$1;->this$0:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog$1;->this$0:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    iget v5, v5, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mTimeoutMS:I

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 110
    const-string v4, "TimeoutWatchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Woke up!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog$1;->this$0:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    iget-wide v5, v5, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mLastPetDateTimeMS:J

    sub-long/2addr v3, v5

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog$1;->this$0:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    iget v5, v5, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mTimeoutMS:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :goto_2
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v4, "TimeoutWatchdog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "TimeoutWatchdog unable to go to sleep"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 117
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    move v1, v2

    .line 118
    goto :goto_2

    .line 121
    :cond_1
    const-string v3, "TimeoutWatchdog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Exiting watchdog loop. timedOut = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsStarted = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog$1;->this$0:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    iget-boolean v5, v5, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mIsStarted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog$1;->this$0:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    iget-boolean v3, v3, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mIsStarted:Z

    if-eqz v3, :cond_2

    .line 126
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog$1;->this$0:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    iput-boolean v2, v3, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mIsStarted:Z

    .line 127
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog$1;->this$0:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    iget-object v2, v2, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mWatchdogHandler:Lcom/broadcom/bt/app/opp/util/IWatchdogHandler;

    if-eqz v2, :cond_2

    .line 128
    if-eqz v1, :cond_3

    .line 129
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog$1;->this$0:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    iget-object v2, v2, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mWatchdogHandler:Lcom/broadcom/bt/app/opp/util/IWatchdogHandler;

    invoke-interface {v2}, Lcom/broadcom/bt/app/opp/util/IWatchdogHandler;->onTimeout()V

    .line 137
    :cond_2
    :goto_3
    return-void

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog$1;->this$0:Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;

    iget-object v2, v2, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mWatchdogHandler:Lcom/broadcom/bt/app/opp/util/IWatchdogHandler;

    invoke-interface {v2}, Lcom/broadcom/bt/app/opp/util/IWatchdogHandler;->onSuccess()V

    goto :goto_3
.end method
