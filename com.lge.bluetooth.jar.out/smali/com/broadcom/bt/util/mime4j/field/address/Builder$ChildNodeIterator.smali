.class Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;
.super Ljava/lang/Object;
.source "Builder.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/util/mime4j/field/address/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChildNodeIterator"
.end annotation


# instance fields
.field private index:I

.field private len:I

.field private simpleNode:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;)V
    .locals 1
    .parameter "simpleNode"

    .prologue
    .line 238
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->simpleNode:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;

    .line 240
    invoke-virtual {p1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->jjtGetNumChildren()I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->len:I

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->index:I

    .line 242
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 249
    iget v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->index:I

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->len:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->nextNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    move-result-object v0

    return-object v0
.end method

.method public nextNode()Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->simpleNode:Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;

    iget v1, p0, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/broadcom/bt/util/mime4j/field/address/Builder$ChildNodeIterator;->index:I

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;->jjtGetChild(I)Lcom/broadcom/bt/util/mime4j/field/address/parser/Node;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
