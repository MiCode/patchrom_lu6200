.class final Lcom/broadcom/bt/util/io/FileCleaningTracker$Reaper;
.super Ljava/lang/Thread;
.source "FileCleaningTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/util/io/FileCleaningTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Reaper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/util/io/FileCleaningTracker;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/util/io/FileCleaningTracker;)V
    .locals 1
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/broadcom/bt/util/io/FileCleaningTracker$Reaper;->this$0:Lcom/broadcom/bt/util/io/FileCleaningTracker;

    .line 207
    const-string v0, "File Reaper"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 208
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/io/FileCleaningTracker$Reaper;->setPriority(I)V

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/io/FileCleaningTracker$Reaper;->setDaemon(Z)V

    .line 210
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 218
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/util/io/FileCleaningTracker$Reaper;->this$0:Lcom/broadcom/bt/util/io/FileCleaningTracker;

    iget-boolean v2, v2, Lcom/broadcom/bt/util/io/FileCleaningTracker;->exitWhenFinished:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/broadcom/bt/util/io/FileCleaningTracker$Reaper;->this$0:Lcom/broadcom/bt/util/io/FileCleaningTracker;

    iget-object v2, v2, Lcom/broadcom/bt/util/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 219
    :cond_1
    const/4 v1, 0x0

    .line 222
    .local v1, tracker:Lcom/broadcom/bt/util/io/FileCleaningTracker$Tracker;
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/util/io/FileCleaningTracker$Reaper;->this$0:Lcom/broadcom/bt/util/io/FileCleaningTracker;

    iget-object v2, v2, Lcom/broadcom/bt/util/io/FileCleaningTracker;->q:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v1

    .end local v1           #tracker:Lcom/broadcom/bt/util/io/FileCleaningTracker$Tracker;
    check-cast v1, Lcom/broadcom/bt/util/io/FileCleaningTracker$Tracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .restart local v1       #tracker:Lcom/broadcom/bt/util/io/FileCleaningTracker$Tracker;
    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {v1}, Lcom/broadcom/bt/util/io/FileCleaningTracker$Tracker;->delete()Z

    .line 228
    invoke-virtual {v1}, Lcom/broadcom/bt/util/io/FileCleaningTracker$Tracker;->clear()V

    .line 229
    iget-object v2, p0, Lcom/broadcom/bt/util/io/FileCleaningTracker$Reaper;->this$0:Lcom/broadcom/bt/util/io/FileCleaningTracker;

    iget-object v2, v2, Lcom/broadcom/bt/util/io/FileCleaningTracker;->trackers:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 223
    .end local v1           #tracker:Lcom/broadcom/bt/util/io/FileCleaningTracker$Tracker;
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 232
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    return-void
.end method
