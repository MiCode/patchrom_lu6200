.class Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/Filterable;
.implements Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationsAdapter"
.end annotation


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field private mLastFilterMode:I

.field private mLastSortMode:I

.field private mResumed:Z

.field private final mState:Lcom/android/settings_ex/applications/ApplicationsState;

.field private mWaitingForData:Z

.field private mWhichSize:I

.field final synthetic this$0:Lcom/android/settings_ex/applications/ManageApplications;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_ex/applications/ApplicationsState;)V
    .locals 2
    .parameter
    .parameter "state"

    .prologue
    const/4 v1, -0x1

    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastFilterMode:I

    iput v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    iput-object p2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .parameter "prefix"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, origEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    iget-object v7, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v7}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->getHiddenApps(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v1

    .line 392
    .local v1, hidden_apps:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v7, "TCL"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    #getter for: Lcom/android/settings_ex/applications/ManageApplications;->tags:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings_ex/applications/ManageApplications;->access$500(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_3

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .local v0, entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_2

    iget-object v7, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .end local v2           #i:I
    .end local v3           #newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_ex/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 408
    .local v5, prefixStr:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, spacePrefixStr:Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .restart local v3       #newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_6

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .restart local v0       #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v4

    .local v4, nlabel:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 415
    :cond_4
    if-eqz v0, :cond_5

    iget-object v7, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v7

    if-lez v7, :cond_5

    iget-object v7, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .end local v4           #nlabel:Ljava/lang/String;
    .end local v5           #prefixStr:Ljava/lang/String;
    .end local v6           #spacePrefixStr:Ljava/lang/String;
    :cond_6
    return-object v3
.end method

.method public getAppEntry(I)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "position"

    .prologue
    .line 500
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .line 503
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 492
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 508
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->id:J

    .line 511
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    #getter for: Lcom/android/settings_ex/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings_ex/applications/ManageApplications;->access$700(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f040059

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;

    invoke-direct {v1}, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;-><init>()V

    .local v1, holder:Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;
    const v2, 0x7f0b00f1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;->appName:Landroid/widget/TextView;

    .line 529
    const v2, 0x7f0b0004

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 530
    const v2, 0x7f0b00f2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;->appSize:Landroid/widget/TextView;

    .line 531
    const v2, 0x7f0b00f3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;->disabled:Landroid/widget/TextView;

    .line 532
    const v2, 0x7f0b00f4

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 533
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 541
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .local v0, entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    monitor-enter v0

    :try_start_0
    iput-object v0, v1, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v2, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/applications/ApplicationsState;->ensureIcon(Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;)V

    iget-object v2, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    iget v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v1, v2, v5}, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;->updateSizeText(Lcom/android/settings_ex/applications/ManageApplications;I)V

    iget-object v5, v1, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;->disabled:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_3

    move v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastFilterMode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    iget-object v2, v1, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v4, v1, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v2, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4

    and-int/2addr v2, v5

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2

    .end local v0           #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .end local v1           #holder:Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;

    .restart local v1       #holder:Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;
    goto :goto_0

    .restart local v0       #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    :cond_3
    move v2, v3

    .line 558
    goto :goto_1

    :cond_4
    move v2, v3

    .line 564
    goto :goto_2

    .line 567
    :cond_5
    :try_start_1
    iget-object v2, v1, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3

    .line 569
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onAllSizesComputed()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 459
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;

    .local v0, holder:Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;
    iget-object v2, v0, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    iget v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v0, v2, v4}, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;->updateSizeText(Lcom/android/settings_ex/applications/ManageApplications;I)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    #getter for: Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings_ex/applications/ManageApplications;->access$600(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/ManageApplications;->updateStorageUsage()V

    .end local v0           #holder:Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;
    :cond_1
    return-void

    .restart local v0       #holder:Lcom/android/settings_ex/applications/ManageApplications$AppViewHolder;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 459
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    #getter for: Lcom/android/settings_ex/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$400(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    #getter for: Lcom/android/settings_ex/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$400(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    #getter for: Lcom/android/settings_ex/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$300(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    #getter for: Lcom/android/settings_ex/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$300(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    #getter for: Lcom/android/settings_ex/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$400(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications;->updateStorageUsage()V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1
    .parameter "running"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 427
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ApplicationsState;->pause()V

    :cond_0
    return-void
.end method

.method public rebuild(II)V
    .locals 1
    .parameter "filter"
    .parameter "sort"

    .prologue
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastFilterMode:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastFilterMode:I

    iput p2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0
.end method

.method public rebuild(Z)V
    .locals 8
    .parameter "eraseold"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .local v1, emulated:Z
    if-eqz v1, :cond_1

    iput v6, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    :goto_0
    iget v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastFilterMode:I

    packed-switch v4, :pswitch_data_0

    const/4 v3, 0x0

    .local v3, filterObj:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;
    :cond_0
    :goto_1
    iget v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v4, :pswitch_data_1

    sget-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .local v0, comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v4, v3, v0}, Lcom/android/settings_ex/applications/ApplicationsState;->rebuild(Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    if-nez v2, :cond_2

    if-nez p1, :cond_2

    :goto_3
    return-void

    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    .end local v2           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    .end local v3           #filterObj:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;
    :cond_1
    iput v7, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    :pswitch_0
    sget-object v3, Lcom/android/settings_ex/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    .restart local v3       #filterObj:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;
    goto :goto_1

    .end local v3           #filterObj:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;
    :pswitch_1
    sget-object v3, Lcom/android/settings_ex/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    .restart local v3       #filterObj:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;
    if-nez v1, :cond_0

    const/4 v4, 0x2

    iput v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_1

    :pswitch_2
    iget v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    packed-switch v4, :pswitch_data_2

    sget-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    :pswitch_3
    sget-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    :pswitch_4
    sget-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .restart local v2       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    :cond_2
    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v4}, Lcom/android/settings_ex/applications/ManageApplications;->updateStorageUsage()V

    if-nez v2, :cond_4

    iput-boolean v7, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    #getter for: Lcom/android/settings_ex/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ManageApplications;->access$300(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    #getter for: Lcom/android/settings_ex/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ManageApplications;->access$400(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 373
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    goto :goto_4

    .line 383
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    #getter for: Lcom/android/settings_ex/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ManageApplications;->access$300(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    #getter for: Lcom/android/settings_ex/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/settings_ex/applications/ManageApplications;->access$400(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 345
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
    .end packed-switch

    .line 347
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public resume(II)V
    .locals 2
    .parameter "filter"
    .parameter "sort"

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/applications/ApplicationsState;->resume(Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;)V

    iput p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastFilterMode:I

    iput p2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(II)V

    goto :goto_0
.end method
