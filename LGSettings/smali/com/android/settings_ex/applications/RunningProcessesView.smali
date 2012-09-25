.class public Lcom/android/settings_ex/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;,
        Lcom/android/settings_ex/applications/RunningProcessesView$TimeTicker;,
        Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;,
        Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    }
.end annotation


# instance fields
.field SECONDARY_SERVER_MEM:J

.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

.field mAm:Landroid/app/ActivityManager;

.field mBackgroundProcessText:Landroid/widget/TextView;

.field mBuilder:Ljava/lang/StringBuilder;

.field mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

.field mCurSelected:Lcom/android/settings_ex/applications/RunningState$BaseItem;

.field mDataAvail:Ljava/lang/Runnable;

.field mForegroundProcessText:Landroid/widget/TextView;

.field mLastAvailMemory:J

.field mLastBackgroundProcessMemory:J

.field mLastForegroundProcessMemory:J

.field mLastNumBackgroundProcesses:I

.field mLastNumForegroundProcesses:I

.field mLastNumServiceProcesses:I

.field mLastServiceProcessMemory:J

.field mListView:Landroid/widget/ListView;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field mOwner:Landroid/app/Fragment;

.field mState:Lcom/android/settings_ex/applications/RunningState;

.field private tags:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    .line 432
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    .line 84
    iput v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    .line 85
    iput v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    .line 86
    iput v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    .line 87
    iput-wide v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    .line 88
    iput-wide v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    .line 89
    iput-wide v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    .line 90
    iput-wide v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastAvailMemory:J

    .line 94
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    .line 97
    const-string v0, "com.android.apps.tag"

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->tags:Ljava/lang/String;

    .line 433
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/RunningProcessesView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->tags:Ljava/lang/String;

    return-object v0
.end method

.method private startServiceDetailsActivity(Lcom/android/settings_ex/applications/RunningState$MergedItem;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 414
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 416
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 417
    const-string v0, "uid"

    iget-object v1, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget v1, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 418
    const-string v0, "process"

    iget-object v1, p1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget-object v1, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v0, "background"

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v1, v1, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 421
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 422
    const-class v1, Lcom/android/settings_ex/applications/RunningServiceDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f080480

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 425
    :cond_0
    return-void
.end method


# virtual methods
.method public doCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    .line 437
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/applications/RunningState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    .line 438
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 440
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040091

    invoke-virtual {v1, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 441
    const v3, 0x102000a

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    .line 442
    const v3, 0x1020004

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 443
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 444
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 446
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 447
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 448
    new-instance v3, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-direct {v3, p0, v4}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/settings_ex/applications/RunningProcessesView;Lcom/android/settings_ex/applications/RunningState;)V

    iput-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    .line 449
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAdapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 450
    const v3, 0x7f0b017b

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/LinearColorBar;

    iput-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    .line 451
    const v3, 0x7f0b017d

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    .line 452
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    new-instance v4, Lcom/android/settings_ex/applications/RunningProcessesView$1;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/applications/RunningProcessesView$1;-><init>(Lcom/android/settings_ex/applications/RunningProcessesView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    const v3, 0x7f0b017c

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    .line 459
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    new-instance v4, Lcom/android/settings_ex/applications/RunningProcessesView$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/applications/RunningProcessesView$2;-><init>(Lcom/android/settings_ex/applications/RunningProcessesView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 467
    .local v2, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 468
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    .line 469
    return-void
.end method

.method public doPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 472
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningState;->pause()V

    .line 473
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 474
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 475
    return-void
.end method

.method public doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "owner"
    .parameter "dataAvail"

    .prologue
    const/4 v0, 0x1

    .line 478
    iput-object p1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mOwner:Landroid/app/Fragment;

    .line 479
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v1, p0}, Lcom/android/settings_ex/applications/RunningState;->resume(Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;)V

    .line 480
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/RunningState;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningProcessesView;->refreshUi(Z)V

    .line 487
    :goto_0
    return v0

    .line 486
    :cond_0
    iput-object p2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 487
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    .line 407
    .local v0, l:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 408
    .local v1, mi:Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mCurSelected:Lcom/android/settings_ex/applications/RunningState$BaseItem;

    .line 409
    invoke-direct {p0, v1}, Lcom/android/settings_ex/applications/RunningProcessesView;->startServiceDetailsActivity(Lcom/android/settings_ex/applications/RunningState$MergedItem;)V

    .line 410
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    return-void
.end method

.method public onRefreshUi(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 505
    packed-switch p1, :pswitch_data_0

    .line 518
    :goto_0
    return-void

    .line 507
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 510
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningProcessesView;->refreshUi(Z)V

    .line 511
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 514
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/RunningProcessesView;->refreshUi(Z)V

    .line 515
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->updateTimes()V

    goto :goto_0

    .line 505
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method refreshUi(Z)V
    .locals 14
    .parameter "dataChanged"

    .prologue
    .line 344
    if-eqz p1, :cond_0

    .line 345
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    move-object v0, v8

    check-cast v0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;

    .line 346
    .local v0, adapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;
    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 347
    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    .line 350
    .end local v0           #adapter:Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    if-eqz v8, :cond_1

    .line 351
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    .line 352
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mDataAvail:Ljava/lang/Runnable;

    .line 357
    :cond_1
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 358
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v10

    add-long/2addr v8, v10

    iget-wide v10, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->SECONDARY_SERVER_MEM:J

    sub-long v1, v8, v10

    .line 360
    .local v1, availMem:J
    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-gez v8, :cond_2

    .line 361
    const-wide/16 v1, 0x0

    .line 364
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v9, v8, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 365
    :try_start_0
    iget v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    iget-object v10, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget v10, v10, Lcom/android/settings_ex/applications/RunningState;->mNumBackgroundProcesses:I

    if-ne v8, v10, :cond_3

    iget-wide v10, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-wide v12, v8, Lcom/android/settings_ex/applications/RunningState;->mBackgroundProcessMemory:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_3

    iget-wide v10, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastAvailMemory:J

    cmp-long v8, v10, v1

    if-eqz v8, :cond_4

    .line 368
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget v8, v8, Lcom/android/settings_ex/applications/RunningState;->mNumBackgroundProcesses:I

    iput v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastNumBackgroundProcesses:I

    .line 369
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-wide v10, v8, Lcom/android/settings_ex/applications/RunningState;->mBackgroundProcessMemory:J

    iput-wide v10, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    .line 370
    iput-wide v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastAvailMemory:J

    .line 371
    iget-wide v10, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastAvailMemory:J

    iget-wide v12, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    add-long v3, v10, v12

    .line 372
    .local v3, freeMem:J
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v3, v4}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 373
    .local v5, sizeStr:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mBackgroundProcessText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080478

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v10

    sub-long/2addr v10, v3

    invoke-static {v8, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 377
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mForegroundProcessText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080479

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    .end local v3           #freeMem:J
    .end local v5           #sizeStr:Ljava/lang/String;
    :cond_4
    iget v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    iget-object v10, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget v10, v10, Lcom/android/settings_ex/applications/RunningState;->mNumForegroundProcesses:I

    if-ne v8, v10, :cond_5

    iget-wide v10, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-wide v12, v8, Lcom/android/settings_ex/applications/RunningState;->mForegroundProcessMemory:J

    cmp-long v8, v10, v12

    if-nez v8, :cond_5

    iget v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    iget-object v10, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget v10, v10, Lcom/android/settings_ex/applications/RunningState;->mNumServiceProcesses:I

    if-ne v8, v10, :cond_5

    iget-wide v10, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-wide v12, v8, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessMemory:J

    cmp-long v8, v10, v12

    if-eqz v8, :cond_6

    .line 384
    :cond_5
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget v8, v8, Lcom/android/settings_ex/applications/RunningState;->mNumForegroundProcesses:I

    iput v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastNumForegroundProcesses:I

    .line 385
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-wide v10, v8, Lcom/android/settings_ex/applications/RunningState;->mForegroundProcessMemory:J

    iput-wide v10, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastForegroundProcessMemory:J

    .line 386
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget v8, v8, Lcom/android/settings_ex/applications/RunningState;->mNumServiceProcesses:I

    iput v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastNumServiceProcesses:I

    .line 387
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-wide v10, v8, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessMemory:J

    iput-wide v10, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    .line 396
    :cond_6
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v8}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v10

    long-to-float v6, v10

    .line 397
    .local v6, totalMem:F
    iget-wide v10, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    add-long/2addr v10, v1

    iget-wide v12, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    add-long/2addr v10, v12

    long-to-float v7, v10

    .line 399
    .local v7, totalShownMem:F
    iget-object v8, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    sub-float v10, v6, v7

    div-float/2addr v10, v6

    iget-wide v11, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastServiceProcessMemory:J

    long-to-float v11, v11

    div-float/2addr v11, v6

    iget-wide v12, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mLastBackgroundProcessMemory:J

    long-to-float v12, v12

    div-float/2addr v12, v6

    invoke-virtual {v8, v10, v11, v12}, Lcom/android/settings_ex/applications/LinearColorBar;->setRatios(FFF)V

    .line 402
    monitor-exit v9

    .line 403
    return-void

    .line 402
    .end local v6           #totalMem:F
    .end local v7           #totalShownMem:F
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method updateTimes()V
    .locals 4

    .prologue
    .line 491
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 492
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 493
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    .line 494
    .local v0, ai:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    iget-object v2, v0, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 496
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 499
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 501
    .end local v0           #ai:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    :cond_1
    return-void
.end method
