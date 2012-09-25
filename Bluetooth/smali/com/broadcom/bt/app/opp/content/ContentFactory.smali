.class public Lcom/broadcom/bt/app/opp/content/ContentFactory;
.super Ljava/lang/Object;
.source "ContentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setupContent(Landroid/content/Context;Landroid/content/Intent;Z)Z
    .locals 11
    .parameter "ctx"
    .parameter "i"
    .parameter "isMultiUri"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    .local v4, uriList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v3, 0x0

    .line 38
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 39
    .local v0, extraText:Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 40
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getContentUris(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v4

    .line 46
    :goto_0
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getExtraText(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v8, "ContentFactory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "extraText :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    if-nez v3, :cond_0

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 79
    :cond_0
    :goto_1
    return v6

    .line 43
    :cond_1
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getContentUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v3

    .line 44
    const-string v8, "ContentFactory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Uri :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    :cond_2
    if-eqz v0, :cond_6

    .line 54
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->getMimeType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "text/x-vnote"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 56
    new-instance v5, Ljava/io/File;

    const-string v8, "/data/data/com.android.bluetooth/.tmp/tx_vNote.vnt"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v5, vNoteFile:Ljava/io/File;
    invoke-static {v5, v0}, Lcom/broadcom/bt/app/opp/content/VNoteUtil;->createVNote(Ljava/io/File;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 58
    const-string v7, "NEW_CONTENT_URI"

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    move v6, v7

    .line 62
    goto :goto_1

    .line 67
    .end local v5           #vNoteFile:Ljava/io/File;
    :cond_4
    invoke-static {p0}, Lcom/broadcom/bt/app/opp/content/ShareLinkUtil;->getDefaultFilepath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, filePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v1, file:Ljava/io/File;
    invoke-static {p0, v1, v0}, Lcom/broadcom/bt/app/opp/content/ShareLinkUtil;->create(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 70
    const-string v7, "NEW_CONTENT_URI"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    move v6, v7

    .line 74
    goto :goto_1

    .end local v1           #file:Ljava/io/File;
    .end local v2           #filePath:Ljava/lang/String;
    :cond_6
    move v6, v7

    .line 79
    goto :goto_1
.end method
