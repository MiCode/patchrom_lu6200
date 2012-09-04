.class public Lcom/broadcom/bt/util/io/FileCleaner;
.super Ljava/lang/Object;
.source "FileCleaner.java"


# static fields
.field static final theInstance:Lcom/broadcom/bt/util/io/FileCleaningTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/broadcom/bt/util/io/FileCleaningTracker;

    invoke-direct {v0}, Lcom/broadcom/bt/util/io/FileCleaningTracker;-><init>()V

    sput-object v0, Lcom/broadcom/bt/util/io/FileCleaner;->theInstance:Lcom/broadcom/bt/util/io/FileCleaningTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized exitWhenFinished()V
    .locals 2

    .prologue
    .line 157
    const-class v1, Lcom/broadcom/bt/util/io/FileCleaner;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/broadcom/bt/util/io/FileCleaner;->theInstance:Lcom/broadcom/bt/util/io/FileCleaningTracker;

    invoke-virtual {v0}, Lcom/broadcom/bt/util/io/FileCleaningTracker;->exitWhenFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit v1

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getInstance()Lcom/broadcom/bt/util/io/FileCleaningTracker;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/broadcom/bt/util/io/FileCleaner;->theInstance:Lcom/broadcom/bt/util/io/FileCleaningTracker;

    return-object v0
.end method

.method public static getTrackCount()I
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/broadcom/bt/util/io/FileCleaner;->theInstance:Lcom/broadcom/bt/util/io/FileCleaningTracker;

    invoke-virtual {v0}, Lcom/broadcom/bt/util/io/FileCleaningTracker;->getTrackCount()I

    move-result v0

    return v0
.end method

.method public static track(Ljava/io/File;Ljava/lang/Object;)V
    .locals 1
    .parameter "file"
    .parameter "marker"

    .prologue
    .line 75
    sget-object v0, Lcom/broadcom/bt/util/io/FileCleaner;->theInstance:Lcom/broadcom/bt/util/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1}, Lcom/broadcom/bt/util/io/FileCleaningTracker;->track(Ljava/io/File;Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public static track(Ljava/io/File;Ljava/lang/Object;Lcom/broadcom/bt/util/io/FileDeleteStrategy;)V
    .locals 1
    .parameter "file"
    .parameter "marker"
    .parameter "deleteStrategy"

    .prologue
    .line 90
    sget-object v0, Lcom/broadcom/bt/util/io/FileCleaner;->theInstance:Lcom/broadcom/bt/util/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1, p2}, Lcom/broadcom/bt/util/io/FileCleaningTracker;->track(Ljava/io/File;Ljava/lang/Object;Lcom/broadcom/bt/util/io/FileDeleteStrategy;)V

    .line 91
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "path"
    .parameter "marker"

    .prologue
    .line 104
    sget-object v0, Lcom/broadcom/bt/util/io/FileCleaner;->theInstance:Lcom/broadcom/bt/util/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1}, Lcom/broadcom/bt/util/io/FileCleaningTracker;->track(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/Object;Lcom/broadcom/bt/util/io/FileDeleteStrategy;)V
    .locals 1
    .parameter "path"
    .parameter "marker"
    .parameter "deleteStrategy"

    .prologue
    .line 119
    sget-object v0, Lcom/broadcom/bt/util/io/FileCleaner;->theInstance:Lcom/broadcom/bt/util/io/FileCleaningTracker;

    invoke-virtual {v0, p0, p1, p2}, Lcom/broadcom/bt/util/io/FileCleaningTracker;->track(Ljava/lang/String;Ljava/lang/Object;Lcom/broadcom/bt/util/io/FileDeleteStrategy;)V

    .line 120
    return-void
.end method
