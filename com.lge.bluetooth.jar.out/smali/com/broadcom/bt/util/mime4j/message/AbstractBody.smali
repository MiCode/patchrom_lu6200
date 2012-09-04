.class public abstract Lcom/broadcom/bt/util/mime4j/message/AbstractBody;
.super Ljava/lang/Object;
.source "AbstractBody.java"

# interfaces
.implements Lcom/broadcom/bt/util/mime4j/message/Body;


# instance fields
.field private parent:Lcom/broadcom/bt/util/mime4j/message/Entity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/AbstractBody;->parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

    return-void
.end method


# virtual methods
.method public getParent()Lcom/broadcom/bt/util/mime4j/message/Entity;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/AbstractBody;->parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

    return-object v0
.end method

.method public setParent(Lcom/broadcom/bt/util/mime4j/message/Entity;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/message/AbstractBody;->parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

    .line 62
    return-void
.end method
