.class Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lcom/broadcom/bt/util/mime4j/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/util/mime4j/message/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageBuilder"
.end annotation


# instance fields
.field private stack:Ljava/util/Stack;

.field final synthetic this$0:Lcom/broadcom/bt/util/mime4j/message/Message;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/util/mime4j/message/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->this$0:Lcom/broadcom/bt/util/mime4j/message/Message;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    .line 119
    return-void
.end method

.method private expect(Ljava/lang/Class;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal stack error: Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    return-void
.end method


# virtual methods
.method public body(Lcom/broadcom/bt/util/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 5
    .parameter "bd"
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    const-class v3, Lcom/broadcom/bt/util/mime4j/message/Entity;

    invoke-direct {p0, v3}, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 194
    invoke-virtual {p1}, Lcom/broadcom/bt/util/mime4j/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, enc:Ljava/lang/String;
    const-string v3, "base64"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    new-instance v2, Lcom/broadcom/bt/util/mime4j/decoder/Base64InputStream;

    invoke-direct {v2, p2}, Lcom/broadcom/bt/util/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .end local p2
    .local v2, is:Ljava/io/InputStream;
    move-object p2, v2

    .line 201
    .end local v2           #is:Ljava/io/InputStream;
    .restart local p2
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 202
    .local v0, body:Lcom/broadcom/bt/util/mime4j/message/Body;
    invoke-virtual {p1}, Lcom/broadcom/bt/util/mime4j/BodyDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    new-instance v0, Lcom/broadcom/bt/util/mime4j/message/MemoryTextBody;

    .end local v0           #body:Lcom/broadcom/bt/util/mime4j/message/Body;
    invoke-virtual {p1}, Lcom/broadcom/bt/util/mime4j/BodyDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p2, v3}, Lcom/broadcom/bt/util/mime4j/message/MemoryTextBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 208
    .restart local v0       #body:Lcom/broadcom/bt/util/mime4j/message/Body;
    :goto_1
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/util/mime4j/message/Entity;

    invoke-virtual {v3, v0}, Lcom/broadcom/bt/util/mime4j/message/Entity;->setBody(Lcom/broadcom/bt/util/mime4j/message/Body;)V

    .line 209
    return-void

    .line 197
    .end local v0           #body:Lcom/broadcom/bt/util/mime4j/message/Body;
    :cond_1
    const-string v3, "quoted-printable"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    new-instance v2, Lcom/broadcom/bt/util/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v2, p2}, Lcom/broadcom/bt/util/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p2
    .restart local v2       #is:Ljava/io/InputStream;
    move-object p2, v2

    .end local v2           #is:Ljava/io/InputStream;
    .restart local p2
    goto :goto_0

    .line 205
    .restart local v0       #body:Lcom/broadcom/bt/util/mime4j/message/Body;
    :cond_2
    new-instance v0, Lcom/broadcom/bt/util/mime4j/message/MemoryBinaryBody;

    .end local v0           #body:Lcom/broadcom/bt/util/mime4j/message/Body;
    invoke-direct {v0, p2}, Lcom/broadcom/bt/util/mime4j/message/MemoryBinaryBody;-><init>(Ljava/io/InputStream;)V

    .restart local v0       #body:Lcom/broadcom/bt/util/mime4j/message/Body;
    goto :goto_1
.end method

.method public endBodyPart()V
    .locals 1

    .prologue
    .line 233
    const-class v0, Lcom/broadcom/bt/util/mime4j/message/BodyPart;

    invoke-direct {p0, v0}, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 234
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 235
    return-void
.end method

.method public endHeader()V
    .locals 2

    .prologue
    .line 170
    const-class v1, Lcom/broadcom/bt/util/mime4j/message/Header;

    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 171
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/util/mime4j/message/Header;

    .line 172
    .local v0, h:Lcom/broadcom/bt/util/mime4j/message/Header;
    const-class v1, Lcom/broadcom/bt/util/mime4j/message/Entity;

    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 173
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/util/mime4j/message/Entity;

    invoke-virtual {v1, v0}, Lcom/broadcom/bt/util/mime4j/message/Entity;->setHeader(Lcom/broadcom/bt/util/mime4j/message/Header;)V

    .line 174
    return-void
.end method

.method public endMessage()V
    .locals 1

    .prologue
    .line 147
    const-class v0, Lcom/broadcom/bt/util/mime4j/message/Message;

    invoke-direct {p0, v0}, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 148
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 149
    return-void
.end method

.method public endMultipart()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 216
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    const-class v2, Lcom/broadcom/bt/util/mime4j/message/Multipart;

    invoke-direct {p0, v2}, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 242
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 244
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, b:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 245
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/util/mime4j/message/Multipart;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/util/mime4j/message/Multipart;->setEpilogue(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .locals 2
    .parameter "fieldData"

    .prologue
    .line 162
    const-class v0, Lcom/broadcom/bt/util/mime4j/message/Header;

    invoke-direct {p0, v0}, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 163
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/util/mime4j/message/Header;

    invoke-static {p1}, Lcom/broadcom/bt/util/mime4j/field/Field;->parse(Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/field/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/mime4j/message/Header;->addField(Lcom/broadcom/bt/util/mime4j/field/Field;)V

    .line 164
    return-void
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 4
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    const-class v2, Lcom/broadcom/bt/util/mime4j/message/Multipart;

    invoke-direct {p0, v2}, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 255
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 257
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, b:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 258
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/util/mime4j/message/Multipart;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/util/mime4j/message/Multipart;->setPreamble(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startBodyPart()V
    .locals 2

    .prologue
    .line 222
    const-class v1, Lcom/broadcom/bt/util/mime4j/message/Multipart;

    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 224
    new-instance v0, Lcom/broadcom/bt/util/mime4j/message/BodyPart;

    invoke-direct {v0}, Lcom/broadcom/bt/util/mime4j/message/BodyPart;-><init>()V

    .line 225
    .local v0, bodyPart:Lcom/broadcom/bt/util/mime4j/message/BodyPart;
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/util/mime4j/message/Multipart;

    invoke-virtual {v1, v0}, Lcom/broadcom/bt/util/mime4j/message/Multipart;->addBodyPart(Lcom/broadcom/bt/util/mime4j/message/BodyPart;)V

    .line 226
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-void
.end method

.method public startHeader()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    new-instance v1, Lcom/broadcom/bt/util/mime4j/message/Header;

    invoke-direct {v1}, Lcom/broadcom/bt/util/mime4j/message/Header;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    return-void
.end method

.method public startMessage()V
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->this$0:Lcom/broadcom/bt/util/mime4j/message/Message;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :goto_0
    return-void

    .line 136
    :cond_0
    const-class v1, Lcom/broadcom/bt/util/mime4j/message/Entity;

    invoke-direct {p0, v1}, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 137
    new-instance v0, Lcom/broadcom/bt/util/mime4j/message/Message;

    invoke-direct {v0}, Lcom/broadcom/bt/util/mime4j/message/Message;-><init>()V

    .line 138
    .local v0, m:Lcom/broadcom/bt/util/mime4j/message/Message;
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/util/mime4j/message/Entity;

    invoke-virtual {v1, v0}, Lcom/broadcom/bt/util/mime4j/message/Entity;->setBody(Lcom/broadcom/bt/util/mime4j/message/Body;)V

    .line 139
    iget-object v1, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public startMultipart(Lcom/broadcom/bt/util/mime4j/BodyDescriptor;)V
    .locals 3
    .parameter "bd"

    .prologue
    .line 180
    const-class v2, Lcom/broadcom/bt/util/mime4j/message/Entity;

    invoke-direct {p0, v2}, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->expect(Ljava/lang/Class;)V

    .line 182
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/util/mime4j/message/Entity;

    .line 183
    .local v0, e:Lcom/broadcom/bt/util/mime4j/message/Entity;
    new-instance v1, Lcom/broadcom/bt/util/mime4j/message/Multipart;

    invoke-direct {v1}, Lcom/broadcom/bt/util/mime4j/message/Multipart;-><init>()V

    .line 184
    .local v1, multiPart:Lcom/broadcom/bt/util/mime4j/message/Multipart;
    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/mime4j/message/Entity;->setBody(Lcom/broadcom/bt/util/mime4j/message/Body;)V

    .line 185
    iget-object v2, p0, Lcom/broadcom/bt/util/mime4j/message/Message$MessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-void
.end method
