.class public Lcom/broadcom/bt/util/mime4j/message/Message;
.super Lcom/broadcom/bt/util/mime4j/message/Entity;
.source "Message.java"

# interfaces
.implements Lcom/broadcom/bt/util/mime4j/message/Body;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/message/Entity;-><init>()V

    .line 72
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
    .line 81
    invoke-direct {p0}, Lcom/broadcom/bt/util/mime4j/message/Entity;-><init>()V

    .line 82
    new-instance v0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;

    invoke-direct {v0}, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;-><init>()V

    .line 83
    .local v0, parser:Lcom/broadcom/bt/util/mime4j/MimeStreamParser;
    new-instance v1, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;-><init>(Lcom/broadcom/bt/util/mime4j/message/Message;)V

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->setContentHandler(Lcom/broadcom/bt/util/mime4j/ContentHandler;)V

    .line 84
    invoke-virtual {v0, p1}, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->parse(Ljava/io/InputStream;)V

    .line 85
    return-void
.end method


# virtual methods
.method public getSubject()Lcom/broadcom/bt/util/mime4j/field/UnstructuredField;
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/message/Message;->getHeader()Lcom/broadcom/bt/util/mime4j/message/Header;

    move-result-object v0

    const-string v1, "Subject"

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/mime4j/message/Header;->getField(Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/field/Field;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/util/mime4j/field/UnstructuredField;

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/message/Message;->getHeader()Lcom/broadcom/bt/util/mime4j/message/Header;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/broadcom/bt/util/mime4j/message/Header;->writeTo(Ljava/io/OutputStream;)V

    .line 105
    invoke-virtual {p0}, Lcom/broadcom/bt/util/mime4j/message/Message;->getBody()Lcom/broadcom/bt/util/mime4j/message/Body;

    move-result-object v0

    .line 106
    .local v0, body:Lcom/broadcom/bt/util/mime4j/message/Body;
    instance-of v2, v0, Lcom/broadcom/bt/util/mime4j/message/Multipart;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 107
    check-cast v1, Lcom/broadcom/bt/util/mime4j/message/Multipart;

    .line 108
    .local v1, mp:Lcom/broadcom/bt/util/mime4j/message/Multipart;
    invoke-virtual {v1, p1}, Lcom/broadcom/bt/util/mime4j/message/Multipart;->writeTo(Ljava/io/OutputStream;)V

    .line 112
    .end local v1           #mp:Lcom/broadcom/bt/util/mime4j/message/Multipart;
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-interface {v0, p1}, Lcom/broadcom/bt/util/mime4j/message/Body;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_0
.end method
