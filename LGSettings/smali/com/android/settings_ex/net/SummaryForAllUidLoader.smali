.class public Lcom/android/settings_ex/net/SummaryForAllUidLoader;
.super Landroid/content/AsyncTaskLoader;
.source "SummaryForAllUidLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/net/NetworkStats;",
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

    iput-object p2, p0, Lcom/android/settings_ex/net/SummaryForAllUidLoader;->mStatsService:Landroid/net/INetworkStatsService;

    iput-object p3, p0, Lcom/android/settings_ex/net/SummaryForAllUidLoader;->mArgs:Landroid/os/Bundle;

    return-void
.end method

.method public static buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;
    .locals 2
    .parameter "template"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "template"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    const-string v1, "start"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 39
    const-string v1, "end"

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 40
    return-object v0
.end method


# virtual methods
.method public loadInBackground()Landroid/net/NetworkStats;
    .locals 8

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/net/SummaryForAllUidLoader;->mArgs:Landroid/os/Bundle;

    const-string v6, "template"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 59
    .local v1, template:Landroid/net/NetworkTemplate;
    iget-object v0, p0, Lcom/android/settings_ex/net/SummaryForAllUidLoader;->mArgs:Landroid/os/Bundle;

    const-string v6, "start"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 60
    .local v2, start:J
    iget-object v0, p0, Lcom/android/settings_ex/net/SummaryForAllUidLoader;->mArgs:Landroid/os/Bundle;

    const-string v6, "end"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 63
    .local v4, end:J
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/net/SummaryForAllUidLoader;->mStatsService:Landroid/net/INetworkStatsService;

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/net/INetworkStatsService;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    .line 64
    :catch_0
    move-exception v7

    .line 65
    .local v7, e:Landroid/os/RemoteException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/net/SummaryForAllUidLoader;->loadInBackground()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/android/settings_ex/net/SummaryForAllUidLoader;->cancelLoad()Z

    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    invoke-virtual {p0}, Lcom/android/settings_ex/net/SummaryForAllUidLoader;->forceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStopLoading()V

    invoke-virtual {p0}, Lcom/android/settings_ex/net/SummaryForAllUidLoader;->cancelLoad()Z

    return-void
.end method
