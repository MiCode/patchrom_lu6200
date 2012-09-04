.class public Lcom/broadcom/bt/util/io/FileCleaningTracker;
.super Ljava/lang/Object;
.source "FileCleaningTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/util/io/FileCleaningTracker$Tracker;,
        Lcom/broadcom/bt/util/io/FileCleaningTracker$Reaper;
    }
.end annotation


# instance fields
.field volatile exitWhenFinished:Z

.field q:Ljava/lang/ref/ReferenceQueue;

.field reaper:Ljava/lang/Thread;

.field final trackers:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/io/FileCleaningTracker;->q:Ljava/lang/ref/ReferenceQueue;

    .line 68
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/util/io/FileCleaningTracker;->exitWhenFinished:Z

    .line 239
    return-void
.end method

.method private declared-synchronized addTracker(Ljava/lang/String;Ljava/lang/Object;Lcom/broadcom/bt/util/io/FileDeleteStrategy;)V
    .locals 3
    .parameter "path"
    .parameter "marker"
    .parameter "deleteStrategy"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/util/io/FileCleaningTracker;->exitWhenFinished:Z

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No new trackers can be added once exitWhenFinished() is called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 151
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/util/io/FileCleaningTracker;->reaper:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 152
    new-instance v0, Lcom/broadcom/bt/util/io/FileCleaningTracker$Reaper;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/util/io/FileCleaningTracker$Reaper;-><init>(Lcom/broadcom/bt/util/io/FileCleaningTracker;)V

    iput-object v0, p0, Lcom/broadcom/bt/util/io/FileCleaningTracker;->reaper:Ljava/lang/Thread;

    .line 153
    iget-object v0, p0, Lcom/broadcom/bt/util/io/FileCleaningTracker;->reaper:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/util/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    new-instance v1, Lcom/broadcom/bt/util/io/FileCleaningTracker$Tracker;

    iget-object v2, p0, Lcom/broadcom/bt/util/io/FileCleaningTracker;->q:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, p3, p2, v2}, Lcom/broadcom/bt/util/io/FileCleaningTracker$Tracker;-><init>(Ljava/lang/String;Lcom/broadcom/bt/util/io/FileDeleteStrategy;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized exitWhenFinished()V
    .locals 2

    .prologue
    .line 192
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/broadcom/bt/util/io/FileCleaningTracker;->exitWhenFinished:Z

    .line 193
    iget-object v0, p0, Lcom/broadcom/bt/util/io/FileCleaningTracker;->reaper:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 194
    iget-object v1, p0, Lcom/broadcom/bt/util/io/FileCleaningTracker;->reaper:Ljava/lang/Thread;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 195
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/util/io/FileCleaningTracker;->reaper:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 196
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :cond_0
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 192
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTrackCount()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/broadcom/bt/util/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public track(Ljava/io/File;Ljava/lang/Object;)V
    .locals 1
    .parameter "file"
    .parameter "marker"

    .prologue
    .line 89
    const/4 v0, 0x0

    check-cast v0, Lcom/broadcom/bt/util/io/FileDeleteStrategy;

    invoke-virtual {p0, p1, p2, v0}, Lcom/broadcom/bt/util/io/FileCleaningTracker;->track(Ljava/io/File;Ljava/lang/Object;Lcom/broadcom/bt/util/io/FileDeleteStrategy;)V

    .line 90
    return-void
.end method

.method public track(Ljava/io/File;Ljava/lang/Object;Lcom/broadcom/bt/util/io/FileDeleteStrategy;)V
    .locals 2
    .parameter "file"
    .parameter "marker"
    .parameter "deleteStrategy"

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The file must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/broadcom/bt/util/io/FileCleaningTracker;->addTracker(Ljava/lang/String;Ljava/lang/Object;Lcom/broadcom/bt/util/io/FileDeleteStrategy;)V

    .line 107
    return-void
.end method

.method public track(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "path"
    .parameter "marker"

    .prologue
    .line 119
    const/4 v0, 0x0

    check-cast v0, Lcom/broadcom/bt/util/io/FileDeleteStrategy;

    invoke-virtual {p0, p1, p2, v0}, Lcom/broadcom/bt/util/io/FileCleaningTracker;->track(Ljava/lang/String;Ljava/lang/Object;Lcom/broadcom/bt/util/io/FileDeleteStrategy;)V

    .line 120
    return-void
.end method

.method public track(Ljava/lang/String;Ljava/lang/Object;Lcom/broadcom/bt/util/io/FileDeleteStrategy;)V
    .locals 2
    .parameter "path"
    .parameter "marker"
    .parameter "deleteStrategy"

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The path must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/util/io/FileCleaningTracker;->addTracker(Ljava/lang/String;Ljava/lang/Object;Lcom/broadcom/bt/util/io/FileDeleteStrategy;)V

    .line 137
    return-void
.end method
