.class public Lcom/broadcom/bt/util/mime4j/message/Header;
.super Ljava/lang/Object;
.source "Header.java"


# instance fields
.field private fieldMap:Ljava/util/HashMap;

.field private fields:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Header;->fields:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Header;->fieldMap:Ljava/util/HashMap;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/Header;->fields:Ljava/util/List;

    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/Header;->fieldMap:Ljava/util/HashMap;

    .line 79
    new-instance v0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;

    invoke-direct {v0}, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;-><init>()V

    .line 80
    .local v0, parser:Lcom/broadcom/bt/util/mime4j/MimeStreamParser;
    new-instance v1, Lcom/broadcom/bt/util/mime4j/message/Header$1;

    invoke-direct {v1, p0, v0}, Lcom/broadcom/bt/util/mime4j/message/Header$1;-><init>(Lcom/broadcom/bt/util/mime4j/message/Header;Lcom/broadcom/bt/util/mime4j/MimeStreamParser;)V

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->setContentHandler(Lcom/broadcom/bt/util/mime4j/ContentHandler;)V

    .line 88
    invoke-virtual {v0, p1}, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    .line 89
    return-void
.end method


# virtual methods
.method public addField(Lcom/broadcom/bt/util/mime4j/field/Field;)V
    .locals 3
    .parameter "field"

    .prologue
    .line 97
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/Header;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/broadcom/bt/util/mime4j/field/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 98
    .local v0, values:Ljava/util/List;
    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #values:Ljava/util/List;
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 100
    .restart local v0       #values:Ljava/util/List;
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/Header;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/broadcom/bt/util/mime4j/field/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public getField(Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/field/Field;
    .locals 3
    .parameter "name"

    .prologue
    .line 124
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/Header;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 125
    .local v0, l:Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/util/mime4j/field/Field;

    .line 128
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFields()Ljava/util/List;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFields(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "name"

    .prologue
    .line 138
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/Header;->fieldMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 140
    .local v0, l:Ljava/util/List;
    if-nez v0, :cond_0

    .line 141
    const/4 v1, 0x0

    .line 143
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 153
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 154
    .local v1, str:Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/message/Header;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const-string v2, "Content-Type"

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/util/mime4j/message/Header;->getField(Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/field/Field;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;

    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/field/ContentTypeField;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, charString:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-static {v0}, Lcom/broadcom/bt/util/mime4j/util/CharsetUtil;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 176
    .local v1, writer:Ljava/io/BufferedWriter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/message/Header;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    goto :goto_0
.end method
