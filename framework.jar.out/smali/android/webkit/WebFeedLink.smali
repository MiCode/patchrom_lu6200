.class public Landroid/webkit/WebFeedLink;
.super Ljava/lang/Object;
.source "WebFeedLink.java"


# instance fields
.field private mTitle:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "url"
    .parameter "title"
    .parameter "type"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Landroid/webkit/WebFeedLink;->mUrl:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Landroid/webkit/WebFeedLink;->mTitle:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Landroid/webkit/WebFeedLink;->mType:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static getTitleList([Landroid/webkit/WebFeedLink;)Ljava/util/ArrayList;
    .locals 6
    .parameter "link"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/webkit/WebFeedLink;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    if-eqz p0, :cond_0

    array-length v5, p0

    if-lez v5, :cond_0

    .line 39
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v4, titleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, arr$:[Landroid/webkit/WebFeedLink;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 41
    .local v2, l:Landroid/webkit/WebFeedLink;
    invoke-virtual {v2}, Landroid/webkit/WebFeedLink;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v0           #arr$:[Landroid/webkit/WebFeedLink;
    .end local v1           #i$:I
    .end local v2           #l:Landroid/webkit/WebFeedLink;
    .end local v3           #len$:I
    .end local v4           #titleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x0

    :cond_1
    return-object v4
.end method

.method public static getUrlList([Landroid/webkit/WebFeedLink;)Ljava/util/ArrayList;
    .locals 6
    .parameter "link"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/webkit/WebFeedLink;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    if-eqz p0, :cond_0

    array-length v5, p0

    if-lez v5, :cond_0

    .line 51
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v4, urlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, arr$:[Landroid/webkit/WebFeedLink;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 53
    .local v2, l:Landroid/webkit/WebFeedLink;
    invoke-virtual {v2}, Landroid/webkit/WebFeedLink;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v0           #arr$:[Landroid/webkit/WebFeedLink;
    .end local v1           #i$:I
    .end local v2           #l:Landroid/webkit/WebFeedLink;
    .end local v3           #len$:I
    .end local v4           #urlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    const/4 v4, 0x0

    :cond_1
    return-object v4
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Landroid/webkit/WebFeedLink;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Landroid/webkit/WebFeedLink;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/webkit/WebFeedLink;->mUrl:Ljava/lang/String;

    return-object v0
.end method
