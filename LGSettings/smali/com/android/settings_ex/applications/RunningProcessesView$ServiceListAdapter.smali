.class Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mShowBackground:Z

.field final mState:Lcom/android/settings_ex/applications/RunningState;

.field final synthetic this$0:Lcom/android/settings_ex/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/RunningProcessesView;Lcom/android/settings_ex/applications/RunningState;)V
    .locals 2
    .parameter
    .parameter "state"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {p1}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 6
    .parameter "view"
    .parameter "position"

    .prologue
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v4, v3, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 333
    monitor-exit v4

    .line 340
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    .local v2, vh:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .local v1, item:Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    iget-object v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v5, v5, Lcom/android/settings_ex/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v1, v5}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    .local v0, ai:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v3, v3, Lcom/android/settings_ex/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    monitor-exit v4

    goto :goto_0

    .end local v0           #ai:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    .end local v1           #item:Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .end local v2           #vh:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method getShowBackground()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    if-nez p2, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->bindView(Landroid/view/View;I)V

    return-object v0

    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    iget-boolean v0, v0, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mIsProcess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040090

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method refreshItems()V
    .locals 7

    .prologue
    iget-boolean v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v5}, Lcom/android/settings_ex/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v2

    .local v2, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    if-eq v5, v2, :cond_0

    iput-object v2, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    invoke-virtual {v5}, Lcom/android/settings_ex/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/Utils;->getHiddenApps(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    .line 269
    .local v0, hidden_apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v5, "TCL"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    #getter for: Lcom/android/settings_ex/applications/RunningProcessesView;->tags:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings_ex/applications/RunningProcessesView;->access$000(Lcom/android/settings_ex/applications/RunningProcessesView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    iget-object v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/applications/RunningState$BaseItem;

    .local v4, tempItem:Lcom/android/settings_ex/applications/RunningState$BaseItem;
    iget-object v3, v4, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .local v3, pInfo:Landroid/content/pm/PackageItemInfo;
    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #hidden_apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .end local v3           #pInfo:Landroid/content/pm/PackageItemInfo;
    .end local v4           #tempItem:Lcom/android/settings_ex/applications/RunningState$BaseItem;
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v5}, Lcom/android/settings_ex/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 279
    .restart local v0       #hidden_apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v1       #i:I
    .restart local v2       #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_5
    return-void
.end method

.method setShowBackground(Z)V
    .locals 2
    .parameter "showBackground"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings_ex/applications/RunningState;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/applications/RunningState;->setWatchingBackgroundItems(Z)V

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings_ex/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningProcessesView;->mColorBar:Lcom/android/settings_ex/applications/LinearColorBar;

    iget-boolean v1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/LinearColorBar;->setShowingGreen(Z)V

    .line 250
    :cond_0
    return-void
.end method
