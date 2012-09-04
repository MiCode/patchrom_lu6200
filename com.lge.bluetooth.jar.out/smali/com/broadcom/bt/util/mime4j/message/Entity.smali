.class public abstract Lcom/broadcom/bt/util/mime4j/message/Entity;
.super Ljava/lang/Object;
.source "Entity.java"


# instance fields
.field private body:Lcom/broadcom/bt/util/mime4j/message/Body;

.field private header:Lcom/broadcom/bt/util/mime4j/message/Header;

.field private parent:Lcom/broadcom/bt/util/mime4j/message/Entity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Entity;->header:Lcom/broadcom/bt/util/mime4j/message/Header;

    .line 54
    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Entity;->body:Lcom/broadcom/bt/util/mime4j/message/Body;

    .line 55
    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Entity;->parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

    return-void
.end method


# virtual methods
.method public getBody()Lcom/broadcom/bt/util/mime4j/message/Body;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Entity;->body:Lcom/broadcom/bt/util/mime4j/message/Body;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/message/Entity;->getHeader()Lcom/broadcom/bt/util/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/mime4j/message/Header;->getField(Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;

    invoke-static {v0}, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->getCharset(Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentTransferEncoding()Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/message/Entity;->getHeader()Lcom/broadcom/bt/util/mime4j/message/Header;

    move-result-object v1

    const-string v2, "Content-Transfer-Encoding"

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/message/Header;->getField(Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/util/mime4j/field/ContentTransferEncodingField;

    .line 151
    .local v0, f:Lcom/broadcom/bt/util/mime4j/field/ContentTransferEncodingField;
    invoke-static {v0}, Lcom/broadcom/bt/util/mime4j/field/ContentTransferEncodingField;->getEncoding(Lcom/broadcom/bt/util/mime4j/field/ContentTransferEncodingField;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHeader()Lcom/broadcom/bt/util/mime4j/message/Header;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Entity;->header:Lcom/broadcom/bt/util/mime4j/message/Header;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/message/Entity;->getHeader()Lcom/broadcom/bt/util/mime4j/message/Header;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/util/mime4j/message/Header;->getField(Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;

    .line 124
    .local v0, child:Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/message/Entity;->getParent()Lcom/broadcom/bt/util/mime4j/message/Entity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/message/Entity;->getParent()Lcom/broadcom/bt/util/mime4j/message/Entity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/message/Entity;->getHeader()Lcom/broadcom/bt/util/mime4j/message/Header;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/util/mime4j/message/Header;->getField(Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/field/Field;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;

    move-object v1, v2

    .line 129
    .local v1, parent:Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;
    :goto_0
    invoke-static {v0, v1}, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->getMimeType(Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 124
    .end local v1           #parent:Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getParent()Lcom/broadcom/bt/util/mime4j/message/Entity;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Entity;->parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMultipart()Z
    .locals 3

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/message/Entity;->getHeader()Lcom/broadcom/bt/util/mime4j/message/Header;

    move-result-object v1

    const-string v2, "Content-Type"

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/message/Header;->getField(Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;

    .line 176
    .local v0, f:Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "multipart/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBody(Lcom/broadcom/bt/util/mime4j/message/Body;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/message/Entity;->body:Lcom/broadcom/bt/util/mime4j/message/Body;

    .line 111
    invoke-interface {p1, p0}, Lcom/broadcom/bt/util/mime4j/message/Body;->setParent(Lcom/broadcom/bt/util/mime4j/message/Entity;)V

    .line 112
    return-void
.end method

.method public setHeader(Lcom/broadcom/bt/util/mime4j/message/Header;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/message/Entity;->header:Lcom/broadcom/bt/util/mime4j/message/Header;

    .line 93
    return-void
.end method

.method public setParent(Lcom/broadcom/bt/util/mime4j/message/Entity;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/message/Entity;->parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

    .line 75
    return-void
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
