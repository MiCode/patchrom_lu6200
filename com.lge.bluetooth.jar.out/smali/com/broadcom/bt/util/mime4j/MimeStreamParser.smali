.class public Lcom/broadcom/bt/util/mime4j/MimeStreamParser;
.super Ljava/lang/Object;
.source "MimeStreamParser.java"


# static fields
.field private static final DEBUG_LOG_MESSAGE:Z

.field private static fieldChars:Ljava/util/BitSet;

.field private static final log:Lcom/broadcom/bt/util/mime4j/Log;


# instance fields
.field private bodyDescriptors:Ljava/util/LinkedList;

.field private handler:Lcom/broadcom/bt/util/mime4j/ContentHandler;

.field private raw:Z

.field private rootStream:Lcom/broadcom/bt/util/mime4j/RootInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-class v1, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;

    invoke-static {v1}, Lcom/broadcom/bt/util/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lcom/broadcom/bt/util/mime4j/Log;

    move-result-object v1

    sput-object v1, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->log:Lcom/broadcom/bt/util/mime4j/Log;

    .line 72
    const/4 v1, 0x0

    sput-object v1, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    .line 80
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    sput-object v1, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    .line 81
    const/16 v0, 0x21

    .local v0, i:I
    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 82
    sget-object v1, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    const/16 v0, 0x3b

    :goto_1
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_1

    .line 85
    sget-object v1, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->rootStream:Lcom/broadcom/bt/util/mime4j/RootInputStream;

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    .line 76
    iput-object v1, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->handler:Lcom/broadcom/bt/util/mime4j/ContentHandler;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->raw:Z

    .line 93
    return-void
.end method

.method private parseBodyPart(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->raw:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->handler:Lcom/broadcom/bt/util/mime4j/ContentHandler;

    new-instance v1, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;

    invoke-direct {v1, p1}, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lcom/broadcom/bt/util/mime4j/ContentHandler;->raw(Ljava/io/InputStream;)V

    .line 241
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->handler:Lcom/broadcom/bt/util/mime4j/ContentHandler;

    invoke-interface {v0}, Lcom/broadcom/bt/util/mime4j/ContentHandler;->startBodyPart()V

    .line 238
    invoke-direct {p0, p1}, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->parseEntity(Ljava/io/InputStream;)V

    .line 239
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->handler:Lcom/broadcom/bt/util/mime4j/ContentHandler;

    invoke-interface {v0}, Lcom/broadcom/bt/util/mime4j/ContentHandler;->endBodyPart()V

    goto :goto_0
.end method

.method private parseEntity(Ljava/io/InputStream;)V
    .locals 6
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0, p1}, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->parseHeader(Ljava/io/InputStream;)Lcom/broadcom/bt/util/mime4j/BodyDescriptor;

    move-result-object v0

    .line 158
    .local v0, bd:Lcom/broadcom/bt/util/mime4j/BodyDescriptor;
    if-nez v0, :cond_1

    .line 160
    sget-object v3, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->log:Lcom/broadcom/bt/util/mime4j/Log;

    invoke-virtual {v3}, Lcom/broadcom/bt/util/mime4j/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    sget-object v3, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->log:Lcom/broadcom/bt/util/mime4j/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->rootStream:Lcom/broadcom/bt/util/mime4j/RootInputStream;

    invoke-virtual {v5}, Lcom/broadcom/bt/util/mime4j/RootInputStream;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": bd is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/util/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 221
    :cond_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/BodyDescriptor;->isMultipart()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 169
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 171
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->handler:Lcom/broadcom/bt/util/mime4j/ContentHandler;

    invoke-interface {v3, v0}, Lcom/broadcom/bt/util/mime4j/ContentHandler;->startMultipart(Lcom/broadcom/bt/util/mime4j/BodyDescriptor;)V

    .line 173
    new-instance v2, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;

    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/BodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 175
    .local v2, tempIs:Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->handler:Lcom/broadcom/bt/util/mime4j/ContentHandler;

    new-instance v4, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;

    invoke-direct {v4, v2}, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Lcom/broadcom/bt/util/mime4j/ContentHandler;->preamble(Ljava/io/InputStream;)V

    .line 176
    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->consume()V

    .line 178
    :cond_2
    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->hasMoreParts()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    new-instance v2, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;

    .end local v2           #tempIs:Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;
    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/BodyDescriptor;->getBoundary()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 180
    .restart local v2       #tempIs:Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;
    invoke-direct {p0, v2}, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->parseBodyPart(Ljava/io/InputStream;)V

    .line 181
    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->consume()V

    .line 182
    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;->parentEOF()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    sget-object v3, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->log:Lcom/broadcom/bt/util/mime4j/Log;

    invoke-virtual {v3}, Lcom/broadcom/bt/util/mime4j/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 184
    sget-object v3, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->log:Lcom/broadcom/bt/util/mime4j/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->rootStream:Lcom/broadcom/bt/util/mime4j/RootInputStream;

    invoke-virtual {v5}, Lcom/broadcom/bt/util/mime4j/RootInputStream;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Body part ended prematurely. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Higher level boundary detected or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "EOF reached."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/util/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 193
    :cond_3
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->handler:Lcom/broadcom/bt/util/mime4j/ContentHandler;

    new-instance v4, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;

    invoke-direct {v4, p1}, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Lcom/broadcom/bt/util/mime4j/ContentHandler;->epilogue(Ljava/io/InputStream;)V

    .line 195
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->handler:Lcom/broadcom/bt/util/mime4j/ContentHandler;

    invoke-interface {v3}, Lcom/broadcom/bt/util/mime4j/ContentHandler;->endMultipart()V

    .line 197
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 219
    .end local v2           #tempIs:Lcom/broadcom/bt/util/mime4j/MimeBoundaryInputStream;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 199
    :cond_4
    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/BodyDescriptor;->isMessage()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 200
    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/BodyDescriptor;->isBase64Encoded()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 201
    sget-object v3, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->log:Lcom/broadcom/bt/util/mime4j/Log;

    const-string v4, "base64 encoded message/rfc822 detected"

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/util/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 202
    new-instance v1, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;

    new-instance v3, Lcom/broadcom/bt/util/mime4j/decoder/Base64InputStream;

    invoke-direct {v3, p1}, Lcom/broadcom/bt/util/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v1, is:Ljava/io/InputStream;
    move-object p1, v1

    .line 209
    .end local v1           #is:Ljava/io/InputStream;
    .restart local p1
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 210
    invoke-direct {p0, p1}, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->parseMessage(Ljava/io/InputStream;)V

    .line 211
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 204
    :cond_6
    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/BodyDescriptor;->isQuotedPrintableEncoded()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 205
    sget-object v3, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->log:Lcom/broadcom/bt/util/mime4j/Log;

    const-string v4, "quoted-printable encoded message/rfc822 detected"

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/util/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 206
    new-instance v1, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;

    new-instance v3, Lcom/broadcom/bt/util/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v3, p1}, Lcom/broadcom/bt/util/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Lcom/broadcom/bt/util/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .restart local v1       #is:Ljava/io/InputStream;
    move-object p1, v1

    .end local v1           #is:Ljava/io/InputStream;
    .restart local p1
    goto :goto_1

    .line 213
    :cond_7
    iget-object v3, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->handler:Lcom/broadcom/bt/util/mime4j/ContentHandler;

    new-instance v4, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;

    invoke-direct {v4, p1}, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v0, v4}, Lcom/broadcom/bt/util/mime4j/ContentHandler;->body(Lcom/broadcom/bt/util/mime4j/BodyDescriptor;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private parseHeader(Ljava/io/InputStream;)Lcom/broadcom/bt/util/mime4j/BodyDescriptor;
    .locals 17
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    new-instance v1, Lcom/broadcom/bt/util/mime4j/BodyDescriptor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    :goto_0
    invoke-direct {v1, v14}, Lcom/broadcom/bt/util/mime4j/BodyDescriptor;-><init>(Lcom/broadcom/bt/util/mime4j/BodyDescriptor;)V

    .line 254
    .local v1, bd:Lcom/broadcom/bt/util/mime4j/BodyDescriptor;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->handler:Lcom/broadcom/bt/util/mime4j/ContentHandler;

    invoke-interface {v14}, Lcom/broadcom/bt/util/mime4j/ContentHandler;->startHeader()V

    .line 256
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->rootStream:Lcom/broadcom/bt/util/mime4j/RootInputStream;

    invoke-virtual {v14}, Lcom/broadcom/bt/util/mime4j/RootInputStream;->getLineNumber()I

    move-result v7

    .line 258
    .local v7, lineNumber:I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 259
    .local v10, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 260
    .local v2, curr:I
    const/4 v9, 0x0

    .line 261
    .local v9, prev:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v14, -0x1

    if-eq v2, v14, :cond_1

    .line 262
    const/16 v14, 0xa

    if-ne v2, v14, :cond_4

    const/16 v14, 0xa

    if-eq v9, v14, :cond_0

    if-nez v9, :cond_4

    .line 266
    :cond_0
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 273
    :cond_1
    const/4 v14, -0x1

    if-ne v2, v14, :cond_2

    sget-object v14, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->log:Lcom/broadcom/bt/util/mime4j/Log;

    invoke-virtual {v14}, Lcom/broadcom/bt/util/mime4j/Log;->isWarnEnabled()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 274
    sget-object v14, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->log:Lcom/broadcom/bt/util/mime4j/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Line "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->rootStream:Lcom/broadcom/bt/util/mime4j/RootInputStream;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/util/mime4j/RootInputStream;->getLineNumber()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": Unexpected end of headers detected. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "Boundary detected in header or EOF reached."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/broadcom/bt/util/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 279
    :cond_2
    const/4 v11, 0x0

    .line 280
    .local v11, start:I
    const/4 v8, 0x0

    .line 281
    .local v8, pos:I
    move v12, v7

    .line 282
    .local v12, startLineNumber:I
    :goto_2
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-ge v8, v14, :cond_e

    .line 283
    :goto_3
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    if-ge v8, v14, :cond_6

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0xd

    if-eq v14, v15, :cond_6

    .line 284
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 251
    .end local v1           #bd:Lcom/broadcom/bt/util/mime4j/BodyDescriptor;
    .end local v2           #curr:I
    .end local v7           #lineNumber:I
    .end local v8           #pos:I
    .end local v9           #prev:I
    .end local v10           #sb:Ljava/lang/StringBuffer;
    .end local v11           #start:I
    .end local v12           #startLineNumber:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->bodyDescriptors:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/broadcom/bt/util/mime4j/BodyDescriptor;

    goto/16 :goto_0

    .line 269
    .restart local v1       #bd:Lcom/broadcom/bt/util/mime4j/BodyDescriptor;
    .restart local v2       #curr:I
    .restart local v7       #lineNumber:I
    .restart local v9       #prev:I
    .restart local v10       #sb:Ljava/lang/StringBuffer;
    :cond_4
    int-to-char v14, v2

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 270
    const/16 v14, 0xd

    if-ne v2, v14, :cond_5

    :goto_4
    goto/16 :goto_1

    :cond_5
    move v9, v2

    goto :goto_4

    .line 286
    .restart local v8       #pos:I
    .restart local v11       #start:I
    .restart local v12       #startLineNumber:I
    :cond_6
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-ge v8, v14, :cond_7

    add-int/lit8 v14, v8, 0x1

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-eq v14, v15, :cond_7

    .line 287
    add-int/lit8 v8, v8, 0x1

    .line 288
    goto :goto_2

    .line 291
    :cond_7
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    if-ge v8, v14, :cond_8

    sget-object v14, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    add-int/lit8 v15, v8, 0x2

    invoke-virtual {v10, v15}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 297
    :cond_8
    invoke-virtual {v10, v11, v8}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, field:Ljava/lang/String;
    add-int/lit8 v11, v8, 0x2

    .line 303
    const/16 v14, 0x3a

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 304
    .local v6, index:I
    const/4 v13, 0x0

    .line 305
    .local v13, valid:Z
    const/4 v14, -0x1

    if-eq v6, v14, :cond_a

    sget-object v14, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 306
    const/4 v13, 0x1

    .line 307
    const/4 v14, 0x0

    invoke-virtual {v3, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, fieldName:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_5
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v5, v14, :cond_9

    .line 309
    sget-object v14, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->fieldChars:Ljava/util/BitSet;

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-nez v14, :cond_d

    .line 310
    const/4 v13, 0x0

    .line 315
    :cond_9
    if-eqz v13, :cond_a

    .line 316
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->handler:Lcom/broadcom/bt/util/mime4j/ContentHandler;

    invoke-interface {v14, v3}, Lcom/broadcom/bt/util/mime4j/ContentHandler;->field(Ljava/lang/String;)V

    .line 317
    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v3, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v4, v14}, Lcom/broadcom/bt/util/mime4j/BodyDescriptor;->addField(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .end local v4           #fieldName:Ljava/lang/String;
    .end local v5           #i:I
    :cond_a
    if-nez v13, :cond_b

    sget-object v14, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->log:Lcom/broadcom/bt/util/mime4j/Log;

    invoke-virtual {v14}, Lcom/broadcom/bt/util/mime4j/Log;->isWarnEnabled()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 322
    sget-object v14, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->log:Lcom/broadcom/bt/util/mime4j/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Line "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": Ignoring invalid field: \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/broadcom/bt/util/mime4j/Log;->warn(Ljava/lang/Object;)V

    .line 326
    :cond_b
    move v12, v7

    .line 329
    .end local v3           #field:Ljava/lang/String;
    .end local v6           #index:I
    .end local v13           #valid:Z
    :cond_c
    add-int/lit8 v8, v8, 0x2

    .line 330
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 308
    .restart local v3       #field:Ljava/lang/String;
    .restart local v4       #fieldName:Ljava/lang/String;
    .restart local v5       #i:I
    .restart local v6       #index:I
    .restart local v13       #valid:Z
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 333
    .end local v3           #field:Ljava/lang/String;
    .end local v4           #fieldName:Ljava/lang/String;
    .end local v5           #i:I
    .end local v6           #index:I
    .end local v13           #valid:Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->handler:Lcom/broadcom/bt/util/mime4j/ContentHandler;

    invoke-interface {v14}, Lcom/broadcom/bt/util/mime4j/ContentHandler;->endHeader()V

    .line 335
    return-object v1
.end method

.method private parseMessage(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->raw:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->handler:Lcom/broadcom/bt/util/mime4j/ContentHandler;

    new-instance v1, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;

    invoke-direct {v1, p1}, Lcom/broadcom/bt/util/mime4j/CloseShieldInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Lcom/broadcom/bt/util/mime4j/ContentHandler;->raw(Ljava/io/InputStream;)V

    .line 231
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->handler:Lcom/broadcom/bt/util/mime4j/ContentHandler;

    invoke-interface {v0}, Lcom/broadcom/bt/util/mime4j/ContentHandler;->startMessage()V

    .line 228
    invoke-direct {p0, p1}, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->parseEntity(Ljava/io/InputStream;)V

    .line 229
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->handler:Lcom/broadcom/bt/util/mime4j/ContentHandler;

    invoke-interface {v0}, Lcom/broadcom/bt/util/mime4j/ContentHandler;->endMessage()V

    goto :goto_0
.end method


# virtual methods
.method public isRaw()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->raw:Z

    return v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/broadcom/bt/util/mime4j/RootInputStream;

    invoke-direct {v0, p1}, Lcom/broadcom/bt/util/mime4j/RootInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->rootStream:Lcom/broadcom/bt/util/mime4j/RootInputStream;

    .line 103
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->rootStream:Lcom/broadcom/bt/util/mime4j/RootInputStream;

    invoke-direct {p0, v0}, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->parseMessage(Ljava/io/InputStream;)V

    .line 104
    return-void
.end method

.method public setContentHandler(Lcom/broadcom/bt/util/mime4j/ContentHandler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->handler:Lcom/broadcom/bt/util/mime4j/ContentHandler;

    .line 346
    return-void
.end method

.method public setRaw(Z)V
    .locals 0
    .parameter "raw"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->raw:Z

    .line 129
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/broadcom/bt/util/mime4j/MimeStreamParser;->rootStream:Lcom/broadcom/bt/util/mime4j/RootInputStream;

    invoke-virtual {v0}, Lcom/broadcom/bt/util/mime4j/RootInputStream;->truncate()V

    .line 145
    return-void
.end method
