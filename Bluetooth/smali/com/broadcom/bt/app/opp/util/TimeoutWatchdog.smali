.class public Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;
.super Ljava/lang/Object;
.source "TimeoutWatchdog.java"


# instance fields
.field mIsStarted:Z

.field mLastPetDateTimeMS:J

.field mLastState:Ljava/lang/Object;

.field mTimeoutMS:I

.field mWatchdogHandler:Lcom/broadcom/bt/app/opp/util/IWatchdogHandler;

.field mWatchdogThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastState()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 43
    const-string v0, "TimeoutWatchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getLastState()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mLastState:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized isStarted()Z
    .locals 3

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    const-string v0, "TimeoutWatchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isStarted()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mIsStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mIsStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pet(ILjava/lang/Object;)V
    .locals 3
    .parameter "newTimeoutMS"
    .parameter "stateObject"

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    const-string v0, "TimeoutWatchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pet(newTimeout)= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mLastPetDateTimeMS:J

    .line 58
    iput p1, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mTimeoutMS:I

    .line 59
    iput-object p2, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mLastState:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pet(Ljava/lang/Object;)V
    .locals 3
    .parameter "stateObject"

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    const-string v0, "TimeoutWatchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pet()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mLastPetDateTimeMS:J

    .line 50
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mLastState:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized restart(ILcom/broadcom/bt/app/opp/util/IWatchdogHandler;Ljava/lang/Object;)V
    .locals 3
    .parameter "timeoutMS"
    .parameter "watchdogHandler"
    .parameter "initialState"

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mIsStarted:Z

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "TimeoutWatchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "restart(timeoutMS)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput p1, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mTimeoutMS:I

    .line 75
    iput-object p2, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mWatchdogHandler:Lcom/broadcom/bt/app/opp/util/IWatchdogHandler;

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mLastPetDateTimeMS:J

    .line 77
    iput-object p3, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mLastState:Ljava/lang/Object;

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(ILcom/broadcom/bt/app/opp/util/IWatchdogHandler;Ljava/lang/Object;)V
    .locals 5
    .parameter "timeoutMS"
    .parameter "watchdogHandler"
    .parameter "initialState"

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    const-string v0, "TimeoutWatchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "start(timeoutMS)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iput p1, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mTimeoutMS:I

    .line 91
    iput-object p2, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mWatchdogHandler:Lcom/broadcom/bt/app/opp/util/IWatchdogHandler;

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mLastPetDateTimeMS:J

    .line 93
    iput-object p3, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mLastState:Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog$1;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog$1;-><init>(Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeoutWatchdog-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mWatchdogThread:Ljava/lang/Thread;

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mIsStarted:Z

    .line 140
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mWatchdogThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startOrRestartWatchdog(ILcom/broadcom/bt/app/opp/util/IWatchdogHandler;Ljava/lang/Object;)V
    .locals 1
    .parameter "timeoutMS"
    .parameter "watchdogHandler"
    .parameter "initialState"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0, p1, p2, p3}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->restart(ILcom/broadcom/bt/app/opp/util/IWatchdogHandler;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :goto_0
    monitor-exit p0

    return-void

    .line 151
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->start(ILcom/broadcom/bt/app/opp/util/IWatchdogHandler;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    const-string v0, "TimeoutWatchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "stop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/TimeoutWatchdog;->mIsStarted:Z

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
