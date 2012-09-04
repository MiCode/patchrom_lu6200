.class public abstract Lcom/broadcom/bt/util/mime4j/field/address/Address;
.super Ljava/lang/Object;
.source "Address.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final addMailboxesTo(Ljava/util/ArrayList;)V
    .locals 0
    .parameter "results"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/util/mime4j/field/address/Address;->doAddMailboxesTo(Ljava/util/ArrayList;)V

    .line 60
    return-void
.end method

.method protected abstract doAddMailboxesTo(Ljava/util/ArrayList;)V
.end method
