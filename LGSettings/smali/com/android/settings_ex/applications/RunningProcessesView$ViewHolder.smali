.class public Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public rootView:Landroid/view/View;

.field public size:Landroid/widget/TextView;

.field public uptime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    const v0, 0x7f0b0039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 169
    const v0, 0x7f0b00a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f0b00aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f0b017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f0b0028

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    .line 173
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    return-void
.end method


# virtual methods
.method public bind(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    .locals 11
    .parameter "state"
    .parameter "item"
    .parameter "builder"

    .prologue
    iget-object v8, p1, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 180
    .local v5, pm:Landroid/content/pm/PackageManager;
    iget-object v7, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-nez v7, :cond_0

    instance-of v7, p2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    if-eqz v7, :cond_0

    .line 183
    move-object v0, p2

    check-cast v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    invoke-virtual {v7, v5}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 184
    move-object v0, p2

    check-cast v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget-object v7, v7, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iput-object v7, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 185
    move-object v0, p2

    check-cast v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    iget-object v7, v7, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v7, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 187
    :cond_0
    iget-object v7, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v9, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;

    invoke-direct {v1}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;-><init>()V

    .local v1, ai:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    iget-object v7, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    iput-object v7, v1, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    iput-object p2, v1, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings_ex/applications/RunningState$BaseItem;

    iput-object p0, v1, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;

    iget-wide v9, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mActiveSince:J

    iput-wide v9, v1, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    iget-boolean v7, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f080474

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v7, 0x0

    iput-object v7, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    iget-object v7, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v7, :cond_1

    const-string v7, "com.nttdocomo.android.socialphonebook"

    iget-object v9, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_3

    .line 201
    const/4 v3, 0x0

    .line 203
    .local v3, dr:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1
    const-string v7, "com.nttdocomo.android.socialphonebook"

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    :goto_1
    if-eqz v3, :cond_1

    .line 207
    :try_start_2
    iget-object v7, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 208
    .local v6, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v2, bd:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v7, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .end local v2           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #dr:Landroid/graphics/drawable/BitmapDrawable;
    .end local v6           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_2
    iget-object v7, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->rootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v1, v7, p3}, Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 218
    monitor-exit v8

    return-object v1

    .line 196
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v9, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v1           #ai:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    .end local v5           #pm:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .restart local v1       #ai:Lcom/android/settings_ex/applications/RunningProcessesView$ActiveItem;
    .restart local v5       #pm:Landroid/content/pm/PackageManager;
    :cond_3
    :try_start_3
    iget-object v7, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    invoke-virtual {v7, v5}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 213
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/android/settings_ex/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 204
    .end local v4           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v3       #dr:Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v7

    goto :goto_1
.end method
