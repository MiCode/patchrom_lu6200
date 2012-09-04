.class public Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"


# instance fields
.field public beginColumn:I

.field public beginLine:I

.field public endColumn:I

.field public endLine:I

.field public image:Ljava/lang/String;

.field public kind:I

.field public next:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;

.field public specialToken:Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final newToken(I)Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;
    .locals 1
    .parameter "ofKind"

    .prologue
    .line 91
    .line 93
    new-instance v0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;

    invoke-direct {v0}, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;-><init>()V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    return-object v0
.end method
