.class public Lcom/broadcom/bt/util/mime4j/message/Multipart;
.super Ljava/lang/Object;
.source "Multipart.java"

# interfaces
.implements Lcom/broadcom/bt/util/mime4j/message/Body;


# instance fields
.field private bodyParts:Ljava/util/List;

.field private epilogue:Ljava/lang/String;

.field private parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

.field private preamble:Ljava/lang/String;

.field private subType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Multipart;->preamble:Ljava/lang/String;

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Multipart;->epilogue:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Multipart;->parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

    .line 67
    const-string v0, "alternative"

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Multipart;->subType:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private getBoundary()Ljava/lang/String;
    .locals 4

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/message/Multipart;->getParent()Lcom/broadcom/bt/util/mime4j/message/Entity;

    move-result-object v1

    .line 210
    .local v1, e:Lcom/broadcom/bt/util/mime4j/message/Entity;
    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/message/Entity;->getHeader()Lcom/broadcom/bt/util/mime4j/message/Header;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/util/mime4j/message/Header;->getField(Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;

    .line 213
    .local v0, cField:Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;
    if-nez v0, :cond_0

    .line 215
    const/4 v2, 0x0

    .line 218
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->getBoundary()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getCharset()Ljava/lang/String;
    .locals 4

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/message/Multipart;->getParent()Lcom/broadcom/bt/util/mime4j/message/Entity;

    move-result-object v1

    .line 223
    .local v1, e:Lcom/broadcom/bt/util/mime4j/message/Entity;
    invoke-virtual {v1}, Lcom/broadcom/bt/util/mime4j/message/Entity;->getHeader()Lcom/broadcom/bt/util/mime4j/message/Header;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/util/mime4j/message/Header;->getField(Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/field/Field;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, charString:Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public addBodyPart(Lcom/broadcom/bt/util/mime4j/message/BodyPart;)V
    .locals 1
    .parameter "bodyPart"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Multipart;->parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

    invoke-virtual {p1, v0}, Lcom/broadcom/bt/util/mime4j/message/BodyPart;->setParent(Lcom/broadcom/bt/util/mime4j/message/Entity;)V

    .line 161
    return-void
.end method

.method public getBodyParts()Ljava/util/List;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEpilogue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Multipart;->epilogue:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/broadcom/bt/util/mime4j/message/Entity;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Multipart;->parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

    return-object v0
.end method

.method public getPreamble()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Multipart;->preamble:Ljava/lang/String;

    return-object v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Multipart;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public setBodyParts(Ljava/util/List;)V
    .locals 3
    .parameter "bodyParts"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    .line 148
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/util/mime4j/message/BodyPart;

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/message/Multipart;->parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/util/mime4j/message/BodyPart;->setParent(Lcom/broadcom/bt/util/mime4j/message/Entity;)V

    goto :goto_0

    .line 151
    :cond_0
    return-void
.end method

.method public setEpilogue(Ljava/lang/String;)V
    .locals 0
    .parameter "epilogue"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/message/Multipart;->epilogue:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setParent(Lcom/broadcom/bt/util/mime4j/message/Entity;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/message/Multipart;->parent:Lcom/broadcom/bt/util/mime4j/message/Entity;

    .line 109
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/Multipart;->bodyParts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/util/mime4j/message/BodyPart;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/util/mime4j/message/BodyPart;->setParent(Lcom/broadcom/bt/util/mime4j/message/Entity;)V

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public setPreamble(Ljava/lang/String;)V
    .locals 0
    .parameter "preamble"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/message/Multipart;->preamble:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0
    .parameter "subType"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/message/Multipart;->subType:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/message/Multipart;->getBoundary()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, boundary:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/message/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object v0

    .line 189
    .local v0, bodyParts:Ljava/util/List;
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/message/Multipart;->getCharset()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/broadcom/bt/util/mime4j/util/CharsetUtil;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 191
    .local v3, writer:Ljava/io/BufferedWriter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/message/Multipart;->getPreamble()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 193
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 195
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/broadcom/bt/util/mime4j/message/BodyPart;

    invoke-virtual {v4, p1}, Lcom/broadcom/bt/util/mime4j/message/BodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/message/Multipart;->getEpilogue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 199
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 201
    return-void
.end method
