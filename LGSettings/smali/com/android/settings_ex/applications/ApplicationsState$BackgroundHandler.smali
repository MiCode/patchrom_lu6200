.class Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundHandler"
.end annotation


# instance fields
.field mRunning:Z

.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic this$0:Lcom/android/settings_ex/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    .line 781
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 726
    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler$1;-><init>(Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 782
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x3

    const/4 v11, 0x6

    .line 787
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v7}, Lcom/android/settings_ex/applications/ApplicationsState;->handleRebuildList()V

    .line 789
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 893
    :goto_0
    :pswitch_0
    return-void

    .line 793
    :pswitch_1
    const/4 v6, 0x0

    .line 794
    .local v6, numDone:I
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v8, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 796
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    if-ge v6, v11, :cond_2

    .line 797
    iget-boolean v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v7, :cond_0

    .line 798
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 799
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x6

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 801
    .local v3, m:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    invoke-virtual {v7, v3}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 803
    .end local v3           #m:Landroid/os/Message;
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 804
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v9, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 805
    add-int/lit8 v6, v6, 0x1

    .line 806
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v7, v2}, Lcom/android/settings_ex/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 796
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 810
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    if-lt v6, v11, :cond_3

    .line 813
    invoke-virtual {p0, v13}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 810
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 815
    :cond_3
    invoke-virtual {p0, v12}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 819
    .end local v1           #i:I
    .end local v6           #numDone:I
    :pswitch_2
    const/4 v6, 0x0

    .line 820
    .restart local v6       #numDone:I
    const/4 v1, 0x0

    .line 821
    .restart local v1       #i:I
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v8, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 823
    const/4 v1, 0x0

    :goto_2
    :try_start_2
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_8

    if-ge v6, v13, :cond_8

    .line 824
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 825
    .local v0, entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    iget-object v7, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    iget-boolean v7, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v7, :cond_7

    .line 826
    :cond_4
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 827
    :try_start_3
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settings_ex/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7, v9}, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 828
    iget-boolean v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v7, :cond_5

    .line 829
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 830
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x6

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 832
    .restart local v3       #m:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    invoke-virtual {v7, v3}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 834
    .end local v3           #m:Landroid/os/Message;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 836
    :cond_6
    monitor-exit v0

    .line 823
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 836
    :catchall_1
    move-exception v7

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v7

    .line 840
    .end local v0           #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v7

    :cond_8
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 841
    if-lez v6, :cond_9

    .line 842
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    invoke-virtual {v7, v12}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_9

    .line 843
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    invoke-virtual {v7, v12}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 846
    :cond_9
    if-lt v6, v13, :cond_a

    const/16 v7, 0xa

    if-ge v1, v7, :cond_a

    .line 847
    invoke-virtual {p0, v12}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 849
    :cond_a
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 853
    .end local v1           #i:I
    .end local v6           #numDone:I
    :pswitch_3
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v8, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 855
    :try_start_6
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    if-nez v7, :cond_c

    .line 857
    :cond_b
    monitor-exit v8

    goto/16 :goto_0

    .line 890
    :catchall_3
    move-exception v7

    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v7

    .line 860
    :cond_c
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 861
    .local v4, now:J
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_d

    .line 862
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 863
    .restart local v0       #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_f

    .line 882
    .end local v0           #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    :cond_d
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_e

    .line 883
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x5

    invoke-virtual {v7, v9}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 884
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 885
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 887
    .restart local v3       #m:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    invoke-virtual {v7, v3}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 890
    .end local v3           #m:Landroid/os/Message;
    :cond_e
    monitor-exit v8

    goto/16 :goto_0

    .line 865
    .restart local v0       #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    :cond_f
    iget-wide v9, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v11, -0x1

    cmp-long v7, v9, v11

    if-eqz v7, :cond_10

    iget-boolean v7, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeStale:Z

    if-eqz v7, :cond_14

    .line 866
    :cond_10
    iget-wide v9, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v11, 0x0

    cmp-long v7, v9, v11

    if-eqz v7, :cond_11

    iget-wide v9, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v11, 0x4e20

    sub-long v11, v4, v11

    cmp-long v7, v9, v11

    if-gez v7, :cond_13

    .line 868
    :cond_11
    iget-boolean v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v7, :cond_12

    .line 869
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 870
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v9, 0x6

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 872
    .restart local v3       #m:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    invoke-virtual {v7, v3}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 874
    .end local v3           #m:Landroid/os/Message;
    :cond_12
    iput-wide v4, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 875
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v9, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v9, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 876
    iget-object v7, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings_ex/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v9, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings_ex/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settings_ex/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 879
    :cond_13
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/16 :goto_0

    .line 861
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 789
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method