.class public Lcom/broadcom/bt/util/mime4j/field/address/DomainList;
.super Ljava/lang/Object;
.source "DomainList.java"


# instance fields
.field private domains:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter "domains"
    .parameter "dontCopy"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-eqz p1, :cond_1

    .line 56
    if-eqz p2, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/DomainList;->domains:Ljava/util/ArrayList;

    .line 59
    :goto_1
    return-void

    .line 56
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object p1, v0

    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/DomainList;->domains:Ljava/util/ArrayList;

    goto :goto_1
.end method


# virtual methods
.method public get(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 74
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/DomainList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/DomainList;->domains:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/DomainList;->domains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toRouteString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 84
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v1, out:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/DomainList;->domains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 86
    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/mime4j/field/address/DomainList;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/field/address/DomainList;->domains:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 89
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
