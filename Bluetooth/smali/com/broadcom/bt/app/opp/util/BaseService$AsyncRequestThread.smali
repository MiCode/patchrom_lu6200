.class Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;
.super Ljava/lang/Thread;
.source "BaseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/util/BaseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncRequestThread"
.end annotation


# instance fields
.field public mFinished:Z

.field public mQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/broadcom/bt/app/opp/util/BaseService;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/app/opp/util/BaseService;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0xa

    .line 74
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;->this$0:Lcom/broadcom/bt/app/opp/util/BaseService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;->mFinished:Z

    .line 75
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;->setPriority(I)V

    .line 76
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 77
    return-void
.end method


# virtual methods
.method public declared-synchronized finish()V
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;->mFinished:Z

    .line 94
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized post(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 100
    :try_start_1
    const-string v1, "AsyncRequestThread"

    const-string v2, "Adding request to queue"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 102
    const-string v1, "AsyncRequestThread"

    const-string v2, "Request added to queue"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    :goto_0
    monitor-exit p0

    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "AsyncRequestThread"

    const-string v2, "Unable to add request, error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 98
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 107
    :cond_0
    :try_start_3
    const-string v1, "AsyncRequestThread"

    const-string v2, "Unable to add request...Thread is finishing"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 80
    :goto_0
    iget-boolean v3, p0, Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;->mFinished:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/util/BaseService$AsyncRequestThread;->mQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 83
    .local v1, r:Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 84
    .end local v1           #r:Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 85
    .local v0, ie:Ljava/lang/InterruptedException;
    const-string v3, "AsyncRequestThread"

    const-string v4, "Thread interrupted"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    .end local v0           #ie:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 87
    .local v2, t:Ljava/lang/Throwable;
    const-string v3, "AsyncRequestThread"

    const-string v4, "Error occured"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 90
    .end local v2           #t:Ljava/lang/Throwable;
    :cond_1
    return-void
.end method
