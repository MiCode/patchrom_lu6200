.class public Lcom/android/settings_ex/net/ChartDataLoader;
.super Landroid/content/AsyncTaskLoader;
.source "ChartDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/settings_ex/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mArgs:Landroid/os/Bundle;

.field private final mStatsService:Landroid/net/INetworkStatsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/INetworkStatsService;Landroid/os/Bundle;)V
    .locals 0
    .parameter "context"
    .parameter "statsService"
    .parameter "args"

    .prologue
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings_ex/net/ChartDataLoader;->mStatsService:Landroid/net/INetworkStatsService;

    iput-object p3, p0, Lcom/android/settings_ex/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    return-void
.end method

.method public static buildArgs(Landroid/net/NetworkTemplate;[I)Landroid/os/Bundle;
    .locals 1
    .parameter "template"
    .parameter "uids"

    .prologue
    .line 45
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/android/settings_ex/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;[II)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static buildArgs(Landroid/net/NetworkTemplate;[II)Landroid/os/Bundle;
    .locals 2
    .parameter "template"
    .parameter "uids"
    .parameter "fields"

    .prologue
    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "template"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 51
    const-string v1, "uids"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 52
    const-string v1, "fields"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    return-object v0
.end method

.method private collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;
    .locals 7
    .parameter "template"
    .parameter "uid"
    .parameter "set"
    .parameter "existing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/net/ChartDataLoader;->mStatsService:Landroid/net/INetworkStatsService;

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsService;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v6

    .line 132
    .local v6, history:Landroid/net/NetworkStatsHistory;
    if-eqz p4, :cond_0

    .line 133
    invoke-virtual {p4, v6}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .line 136
    .end local p4
    :goto_0
    return-object p4

    .restart local p4
    :cond_0
    move-object p4, v6

    goto :goto_0
.end method

.method private loadInBackground(Landroid/net/NetworkTemplate;[II)Lcom/android/settings_ex/net/ChartData;
    .locals 8
    .parameter "template"
    .parameter "uids"
    .parameter "fields"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    new-instance v1, Lcom/android/settings_ex/net/ChartData;

    invoke-direct {v1}, Lcom/android/settings_ex/net/ChartData;-><init>()V

    .local v1, data:Lcom/android/settings_ex/net/ChartData;
    iget-object v5, p0, Lcom/android/settings_ex/net/ChartDataLoader;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v5, p1, p3}, Landroid/net/INetworkStatsService;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    iput-object v5, v1, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    iput-object v6, v1, Lcom/android/settings_ex/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    iput-object v6, v1, Lcom/android/settings_ex/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    move-object v0, p2

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v0, v2

    .line 95
    .local v4, uid:I
    const/4 v5, 0x0

    iget-object v6, v1, Lcom/android/settings_ex/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, p1, v4, v5, v6}, Lcom/android/settings_ex/net/ChartDataLoader;->collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    iput-object v5, v1, Lcom/android/settings_ex/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    .line 97
    const/4 v5, 0x1

    iget-object v6, v1, Lcom/android/settings_ex/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-direct {p0, p1, v4, v5, v6}, Lcom/android/settings_ex/net/ChartDataLoader;->collectHistoryForUid(Landroid/net/NetworkTemplate;IILandroid/net/NetworkStatsHistory;)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    iput-object v5, v1, Lcom/android/settings_ex/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v4           #uid:I
    :cond_0
    new-instance v5, Landroid/net/NetworkStatsHistory;

    iget-object v6, v1, Lcom/android/settings_ex/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v6}, Landroid/net/NetworkStatsHistory;->getBucketDuration()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Landroid/net/NetworkStatsHistory;-><init>(J)V

    iput-object v5, v1, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    iget-object v5, v1, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    iget-object v6, v1, Lcom/android/settings_ex/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5, v6}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    iget-object v5, v1, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    iget-object v6, v1, Lcom/android/settings_ex/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v5, v6}, Landroid/net/NetworkStatsHistory;->recordEntireHistory(Landroid/net/NetworkStatsHistory;)V

    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    return-object v1
.end method


# virtual methods
.method public loadInBackground()Lcom/android/settings_ex/net/ChartData;
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/android/settings_ex/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v5, "template"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .line 71
    .local v2, template:Landroid/net/NetworkTemplate;
    iget-object v4, p0, Lcom/android/settings_ex/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v5, "uids"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 72
    .local v3, uids:[I
    iget-object v4, p0, Lcom/android/settings_ex/net/ChartDataLoader;->mArgs:Landroid/os/Bundle;

    const-string v5, "fields"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 75
    .local v1, fields:I
    :try_start_0
    invoke-direct {p0, v2, v3, v1}, Lcom/android/settings_ex/net/ChartDataLoader;->loadInBackground(Landroid/net/NetworkTemplate;[II)Lcom/android/settings_ex/net/ChartData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 76
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "problem reading network stats"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/net/ChartDataLoader;->loadInBackground()Lcom/android/settings_ex/net/ChartData;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/android/settings_ex/net/ChartDataLoader;->cancelLoad()Z

    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    invoke-virtual {p0}, Lcom/android/settings_ex/net/ChartDataLoader;->forceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    invoke-virtual {p0}, Lcom/android/settings_ex/net/ChartDataLoader;->cancelLoad()Z

    return-void
.end method
