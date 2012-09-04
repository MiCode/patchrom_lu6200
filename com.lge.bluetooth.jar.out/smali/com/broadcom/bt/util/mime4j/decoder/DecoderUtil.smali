.class public Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;
.super Ljava/lang/Object;
.source "DecoderUtil.java"


# static fields
.field private static log:Lcom/broadcom/bt/util/mime4j/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;

    invoke-static {v0}, Lcom/broadcom/bt/util/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lcom/broadcom/bt/util/mime4j/Log;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->log:Lcom/broadcom/bt/util/mime4j/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "encodedWord"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 95
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 98
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string v5, "US-ASCII"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 100
    .local v2, bytes:[B
    new-instance v4, Lcom/broadcom/bt/util/mime4j/decoder/Base64InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Lcom/broadcom/bt/util/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .line 103
    .local v4, is:Lcom/broadcom/bt/util/mime4j/decoder/Base64InputStream;
    const/4 v0, 0x0

    .line 104
    .local v0, b:I
    :goto_0
    invoke-virtual {v4}, Lcom/broadcom/bt/util/mime4j/decoder/Base64InputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 105
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    .end local v0           #b:I
    .end local v2           #bytes:[B
    .end local v4           #is:Lcom/broadcom/bt/util/mime4j/decoder/Base64InputStream;
    :catch_0
    move-exception v3

    .line 111
    .local v3, e:Ljava/io/IOException;
    sget-object v5, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->log:Lcom/broadcom/bt/util/mime4j/Log;

    invoke-virtual {v5, v3}, Lcom/broadcom/bt/util/mime4j/Log;->error(Ljava/lang/Object;)V

    .line 114
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method public static decodeBaseQuotedPrintable(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 66
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 69
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string v5, "US-ASCII"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 71
    .local v2, bytes:[B
    new-instance v4, Lcom/broadcom/bt/util/mime4j/decoder/QuotedPrintableInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Lcom/broadcom/bt/util/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .line 74
    .local v4, is:Lcom/broadcom/bt/util/mime4j/decoder/QuotedPrintableInputStream;
    const/4 v0, 0x0

    .line 75
    .local v0, b:I
    :goto_0
    invoke-virtual {v4}, Lcom/broadcom/bt/util/mime4j/decoder/QuotedPrintableInputStream;->read()I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 76
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    .end local v0           #b:I
    .end local v2           #bytes:[B
    .end local v4           #is:Lcom/broadcom/bt/util/mime4j/decoder/QuotedPrintableInputStream;
    :catch_0
    move-exception v3

    .line 82
    .local v3, e:Ljava/io/IOException;
    sget-object v5, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->log:Lcom/broadcom/bt/util/mime4j/Log;

    invoke-virtual {v5, v3}, Lcom/broadcom/bt/util/mime4j/Log;->error(Ljava/lang/Object;)V

    .line 85
    .end local v3           #e:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method private static decodeEncodedWord(Ljava/lang/String;II)Ljava/lang/String;
    .locals 11
    .parameter "body"
    .parameter "begin"
    .parameter "end"

    .prologue
    const/16 v9, 0x3f

    const/4 v7, 0x0

    .line 231
    add-int/lit8 v8, p1, 0x2

    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 232
    .local v5, qm1:I
    add-int/lit8 v8, p2, -0x2

    if-ne v5, v8, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-object v7

    .line 235
    :cond_1
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 236
    .local v6, qm2:I
    add-int/lit8 v8, p2, -0x2

    if-eq v6, v8, :cond_0

    .line 239
    add-int/lit8 v8, p1, 0x2

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 240
    .local v4, mimeCharset:Ljava/lang/String;
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, encoding:Ljava/lang/String;
    add-int/lit8 v8, v6, 0x1

    add-int/lit8 v9, p2, -0x2

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, encodedText:Ljava/lang/String;
    invoke-static {v4}, Lcom/broadcom/bt/util/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, charset:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 245
    sget-object v8, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->log:Lcom/broadcom/bt/util/mime4j/Log;

    invoke-virtual {v8}, Lcom/broadcom/bt/util/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 246
    sget-object v8, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->log:Lcom/broadcom/bt/util/mime4j/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIME charset \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' in encoded word \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' doesn\'t have a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "corresponding Java charset"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/broadcom/bt/util/mime4j/Log;->warn(Ljava/lang/Object;)V

    goto :goto_0

    .line 251
    :cond_2
    invoke-static {v0}, Lcom/broadcom/bt/util/mime4j/util/CharsetUtil;->isDecodingSupported(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 252
    sget-object v8, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->log:Lcom/broadcom/bt/util/mime4j/Log;

    invoke-virtual {v8}, Lcom/broadcom/bt/util/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 253
    sget-object v8, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->log:Lcom/broadcom/bt/util/mime4j/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current JDK doesn\'t support decoding of charset \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' (MIME charset \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' in encoded word \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\')"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/broadcom/bt/util/mime4j/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 261
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 262
    sget-object v8, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->log:Lcom/broadcom/bt/util/mime4j/Log;

    invoke-virtual {v8}, Lcom/broadcom/bt/util/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 263
    sget-object v8, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->log:Lcom/broadcom/bt/util/mime4j/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing encoded text in encoded word: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/broadcom/bt/util/mime4j/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 270
    :cond_4
    :try_start_0
    const-string v8, "Q"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 271
    invoke-static {v2, v0}, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 272
    :cond_5
    const-string v8, "B"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 273
    invoke-static {v2, v0}, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->decodeB(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 275
    :cond_6
    sget-object v8, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->log:Lcom/broadcom/bt/util/mime4j/Log;

    invoke-virtual {v8}, Lcom/broadcom/bt/util/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 276
    sget-object v8, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->log:Lcom/broadcom/bt/util/mime4j/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Warning: Unknown encoding in encoded word \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/broadcom/bt/util/mime4j/Log;->warn(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 281
    :catch_0
    move-exception v1

    .line 283
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    sget-object v8, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->log:Lcom/broadcom/bt/util/mime4j/Log;

    invoke-virtual {v8}, Lcom/broadcom/bt/util/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 284
    sget-object v8, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->log:Lcom/broadcom/bt/util/mime4j/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported encoding in encoded word \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Lcom/broadcom/bt/util/mime4j/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 288
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 289
    .local v1, e:Ljava/lang/RuntimeException;
    sget-object v8, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->log:Lcom/broadcom/bt/util/mime4j/Log;

    invoke-virtual {v8}, Lcom/broadcom/bt/util/mime4j/Log;->isWarnEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 290
    sget-object v8, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->log:Lcom/broadcom/bt/util/mime4j/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not decode encoded word \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Lcom/broadcom/bt/util/mime4j/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "body"

    .prologue
    const/16 v12, 0x3f

    const/4 v10, -0x1

    .line 177
    const-string v11, "=?"

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v10, :cond_1

    .line 207
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 181
    .restart local p0
    :cond_1
    const/4 v4, 0x0

    .line 182
    .local v4, previousEnd:I
    const/4 v5, 0x0

    .line 184
    .local v5, previousWasEncoded:Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v8, sb:Ljava/lang/StringBuilder;
    :goto_1
    const-string v11, "=?"

    invoke-virtual {p0, v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 192
    .local v0, begin:I
    add-int/lit8 v3, v0, 0x2

    .line 193
    .local v3, endScan:I
    if-eq v0, v10, :cond_2

    .line 194
    add-int/lit8 v11, v3, 0x2

    invoke-virtual {p0, v12, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 195
    .local v6, qm1:I
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {p0, v12, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 196
    .local v7, qm2:I
    if-eq v7, v10, :cond_2

    .line 197
    add-int/lit8 v3, v7, 0x1

    .line 201
    .end local v6           #qm1:I
    .end local v7           #qm2:I
    :cond_2
    if-ne v0, v10, :cond_3

    move v2, v10

    .line 202
    .local v2, end:I
    :goto_2
    if-ne v2, v10, :cond_4

    .line 203
    if-eqz v4, :cond_0

    .line 206
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 201
    .end local v2           #end:I
    :cond_3
    const-string v11, "?="

    invoke-virtual {p0, v11, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_2

    .line 209
    .restart local v2       #end:I
    :cond_4
    add-int/lit8 v2, v2, 0x2

    .line 211
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 213
    .local v9, sep:Ljava/lang/String;
    invoke-static {p0, v0, v2}, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->decodeEncodedWord(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, decoded:Ljava/lang/String;
    if-nez v1, :cond_5

    .line 215
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :goto_3
    move v4, v2

    .line 225
    if-eqz v1, :cond_8

    const/4 v5, 0x1

    .line 226
    :goto_4
    goto :goto_1

    .line 218
    :cond_5
    if-eqz v5, :cond_6

    invoke-static {v9}, Lcom/broadcom/bt/util/mime4j/util/CharsetUtil;->isWhitespace(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 219
    :cond_6
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_7
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 225
    :cond_8
    const/4 v5, 0x0

    goto :goto_4
.end method

.method public static decodeQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "encodedWord"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 149
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 151
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 152
    .local v0, c:C
    const/16 v3, 0x5f

    if-ne v0, v3, :cond_0

    .line 153
    const-string v3, "=20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 159
    .end local v0           #c:C
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->decodeBaseQuotedPrintable(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method
