.class Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 16
    .parameter "stats"
    .parameter "succeeded"

    .prologue
    .line 728
    const/4 v9, 0x0

    .line 729
    .local v9, sizeChanged:Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v11, v10, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 731
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .local v1, entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    if-eqz v1, :cond_2

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v10, 0x0

    :try_start_1
    iput-boolean v10, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeStale:Z

    const-wide/16 v12, 0x0

    iput-wide v12, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long v2, v12, v14

    .line 738
    .local v2, externalCodeSize:J
    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->externalDataSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v12, v14

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long v4, v12, v14

    .line 740
    .local v4, externalDataSize:J
    add-long v12, v2, v4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    move-object/from16 v0, p1

    #calls: Lcom/android/settings_ex/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    invoke-static {v10, v0}, Lcom/android/settings_ex/applications/ApplicationsState;->access$100(Lcom/android/settings_ex/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v14

    add-long v7, v12, v14

    .line 742
    .local v7, newSize:J
    iget-wide v12, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v10, v12, v7

    if-nez v10, :cond_0

    iget-wide v12, v1, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->cacheSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    cmp-long v10, v12, v14

    if-nez v10, :cond_0

    iget-wide v12, v1, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->codeSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->codeSize:J

    cmp-long v10, v12, v14

    if-nez v10, :cond_0

    iget-wide v12, v1, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->dataSize:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/content/pm/PackageStats;->dataSize:J

    cmp-long v10, v12, v14

    if-nez v10, :cond_0

    iget-wide v12, v1, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    cmp-long v10, v12, v2

    if-nez v10, :cond_0

    iget-wide v12, v1, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    cmp-long v10, v12, v4

    if-eqz v10, :cond_1

    :cond_0
    iput-wide v7, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v12, v1, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->cacheSize:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v12, v1, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->codeSize:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v12, v1, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->dataSize:J

    iput-wide v2, v1, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    iput-wide v4, v1, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-wide v12, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    #calls: Lcom/android/settings_ex/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;
    invoke-static {v10, v12, v13}, Lcom/android/settings_ex/applications/ApplicationsState;->access$200(Lcom/android/settings_ex/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    .line 755
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    move-object/from16 v0, p1

    #calls: Lcom/android/settings_ex/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    invoke-static {v10, v0}, Lcom/android/settings_ex/applications/ApplicationsState;->access$100(Lcom/android/settings_ex/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->internalSize:J

    .line 756
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-wide v12, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->internalSize:J

    #calls: Lcom/android/settings_ex/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;
    invoke-static {v10, v12, v13}, Lcom/android/settings_ex/applications/ApplicationsState;->access$200(Lcom/android/settings_ex/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    .line 757
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    move-object/from16 v0, p1

    #calls: Lcom/android/settings_ex/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    invoke-static {v10, v0}, Lcom/android/settings_ex/applications/ApplicationsState;->access$300(Lcom/android/settings_ex/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalSize:J

    .line 758
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-wide v12, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalSize:J

    #calls: Lcom/android/settings_ex/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;
    invoke-static {v10, v12, v13}, Lcom/android/settings_ex/applications/ApplicationsState;->access$200(Lcom/android/settings_ex/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;

    .line 761
    const/4 v9, 0x1

    .line 763
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 764
    if-eqz v9, :cond_2

    .line 765
    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v12, 0x4

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 767
    .local v6, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    invoke-virtual {v10, v6}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 770
    .end local v2           #externalCodeSize:J
    .end local v4           #externalDataSize:J
    .end local v6           #msg:Landroid/os/Message;
    .end local v7           #newSize:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 772
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v10, v10, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    const/4 v12, 0x0

    iput-object v12, v10, Lcom/android/settings_ex/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 773
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;->this$1:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    const/4 v12, 0x4

    invoke-virtual {v10, v12}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 776
    :cond_4
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 777
    return-void

    .line 763
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v10

    .end local v1           #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10
.end method
