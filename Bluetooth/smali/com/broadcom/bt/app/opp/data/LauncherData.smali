.class public Lcom/broadcom/bt/app/opp/data/LauncherData;
.super Ljava/lang/Object;
.source "LauncherData.java"


# instance fields
.field public mAction:Ljava/lang/String;

.field public mExtraText:Ljava/lang/String;

.field public mMimeType:Ljava/lang/String;

.field public mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 150
    const-string v0, "LAUNCHER"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    return-void
.end method

.method public static hasLauncherData(Landroid/content/Context;)Z
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 86
    const-string v2, "LAUNCHER"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    .local v0, settings:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    const-string v2, "action"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public restore(Landroid/content/Context;)V
    .locals 8
    .parameter "ctx"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 113
    const-string v5, "LAUNCHER"

    invoke-virtual {p1, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 117
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v5, "action"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mAction:Ljava/lang/String;

    .line 118
    const-string v5, "mime_type"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mMimeType:Ljava/lang/String;

    .line 119
    const-string v5, "uri"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, uri:Ljava/lang/String;
    const-string v5, "uri_count"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 121
    .local v4, uriCount:I
    const-string v5, "extra_text"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mExtraText:Ljava/lang/String;

    .line 124
    const-string v6, "LauncherData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreLauncherData: action="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mAction:Ljava/lang/String;

    if-nez v5, :cond_1

    const-string v5, ""

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mimeType="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mMimeType:Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v5, ""

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", uri= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v3, :cond_3

    const-string v5, ""

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", uriCount = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", extraText = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mExtraText:Ljava/lang/String;

    if-nez v5, :cond_4

    const-string v5, ""

    :goto_3
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    if-lez v4, :cond_0

    if-eqz v3, :cond_0

    .line 130
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mUriList:Ljava/util/ArrayList;

    .line 131
    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 132
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mUriList:Ljava/util/ArrayList;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/data/LauncherData;->clear(Landroid/content/Context;)V

    .line 143
    return-void

    .line 124
    :cond_1
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mAction:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mMimeType:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v5, v3

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mExtraText:Ljava/lang/String;

    goto :goto_3

    .line 134
    :cond_5
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, splitUri:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 136
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mUriList:Ljava/util/ArrayList;

    aget-object v6, v2, v0

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    const-string v5, "LauncherData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uri in batch:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public declared-synchronized save(Landroid/content/Context;)V
    .locals 8
    .parameter "ctx"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 56
    monitor-enter p0

    :try_start_0
    const-string v5, "LAUNCHER"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 59
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "action"

    iget-object v6, p0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mAction:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    const-string v5, "mime_type"

    iget-object v6, p0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mMimeType:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mUriList:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 62
    .local v4, uriCount:I
    :goto_0
    const-string v5, "uri_count"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 63
    if-ne v4, v7, :cond_2

    .line 64
    const-string v6, "uri"

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mUriList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    :cond_0
    :goto_1
    const-string v5, "extra_text"

    iget-object v6, p0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mExtraText:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    const-string v5, "LauncherData"

    const-string v6, "LauncherData stored to SharedPreference! "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 61
    .end local v4           #uriCount:I
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    .line 65
    .restart local v4       #uriCount:I
    :cond_2
    if-le v4, v7, :cond_0

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v4, :cond_3

    .line 68
    iget-object v5, p0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, uri:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 72
    .end local v3           #uri:Ljava/lang/String;
    :cond_3
    const-string v5, "uri"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 56
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #i:I
    .end local v2           #sb:Ljava/lang/StringBuilder;
    .end local v4           #uriCount:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
