.class public Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTname_addr;
.super Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;
.source "ASTname_addr.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;-><init>(I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;I)V
    .locals 0
    .parameter "p"
    .parameter "id"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/SimpleNode;-><init>(Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParser;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public jjtAccept(Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "visitor"
    .parameter "data"

    .prologue
    .line 34
    invoke-interface {p1, p0, p2}, Lcom/broadcom/bt/util/mime4j/field/address/parser/AddressListParserVisitor;->visit(Lcom/broadcom/bt/util/mime4j/field/address/parser/ASTname_addr;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
