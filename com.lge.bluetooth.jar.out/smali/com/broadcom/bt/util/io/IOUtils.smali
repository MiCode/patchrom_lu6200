.class public Lcom/broadcom/bt/util/io/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

#the value of this static final field might be set in the static constructor
.field public static final DIR_SEPARATOR:C = '\u0000'

.field public static final DIR_SEPARATOR_UNIX:C = '/'

.field public static final DIR_SEPARATOR_WINDOWS:C = '\\'

.field public static final LINE_SEPARATOR:Ljava/lang/String; = null

.field public static final LINE_SEPARATOR_UNIX:Ljava/lang/String; = "\n"

.field public static final LINE_SEPARATOR_WINDOWS:Ljava/lang/String; = "\r\n"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 114
    sget-char v2, Ljava/io/File;->separatorChar:C

    sput-char v2, Lcom/broadcom/bt/util/io/IOUtils;->DIR_SEPARATOR:C

    .line 129
    new-instance v0, Ljava/io/StringWriter;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    .line 130
    .local v0, buf:Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 131
    .local v1, out:Ljava/io/PrintWriter;
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 132
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/broadcom/bt/util/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    return-void
.end method

.method public static closeQuietly(Ljava/io/InputStream;)V
    .locals 1
    .parameter "input"

    .prologue
    .line 194
    if-eqz p0, :cond_0

    .line 195
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "output"

    .prologue
    .line 212
    if-eqz p0, :cond_0

    .line 213
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Reader;)V
    .locals 1
    .parameter "input"

    .prologue
    .line 158
    if-eqz p0, :cond_0

    .line 159
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeQuietly(Ljava/io/Writer;)V
    .locals 1
    .parameter "output"

    .prologue
    .line 176
    if-eqz p0, :cond_0

    .line 177
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static contentEquals(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 7
    .parameter "input1"
    .parameter "input2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 1234
    instance-of v5, p0, Ljava/io/BufferedInputStream;

    if-nez v5, :cond_0

    .line 1235
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0
    .local v2, input1:Ljava/io/InputStream;
    move-object p0, v2

    .line 1237
    .end local v2           #input1:Ljava/io/InputStream;
    .restart local p0
    :cond_0
    instance-of v5, p1, Ljava/io/BufferedInputStream;

    if-nez v5, :cond_1

    .line 1238
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v3, input2:Ljava/io/InputStream;
    move-object p1, v3

    .line 1241
    .end local v3           #input2:Ljava/io/InputStream;
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1242
    .local v0, ch:I
    :goto_0
    if-eq v6, v0, :cond_4

    .line 1243
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1244
    .local v1, ch2:I
    if-eq v0, v1, :cond_3

    .line 1251
    :cond_2
    :goto_1
    return v4

    .line 1247
    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1248
    goto :goto_0

    .line 1250
    .end local v1           #ch2:I
    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1251
    .restart local v1       #ch2:I
    if-ne v1, v6, :cond_2

    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static contentEquals(Ljava/io/Reader;Ljava/io/Reader;)Z
    .locals 7
    .parameter "input1"
    .parameter "input2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 1271
    instance-of v5, p0, Ljava/io/BufferedReader;

    if-nez v5, :cond_0

    .line 1272
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local p0
    .local v2, input1:Ljava/io/Reader;
    move-object p0, v2

    .line 1274
    .end local v2           #input1:Ljava/io/Reader;
    .restart local p0
    :cond_0
    instance-of v5, p1, Ljava/io/BufferedReader;

    if-nez v5, :cond_1

    .line 1275
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local p1
    .local v3, input2:Ljava/io/Reader;
    move-object p1, v3

    .line 1278
    .end local v3           #input2:Ljava/io/Reader;
    .restart local p1
    :cond_1
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 1279
    .local v0, ch:I
    :goto_0
    if-eq v6, v0, :cond_4

    .line 1280
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    .line 1281
    .local v1, ch2:I
    if-eq v0, v1, :cond_3

    .line 1288
    :cond_2
    :goto_1
    return v4

    .line 1284
    :cond_3
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 1285
    goto :goto_0

    .line 1287
    .end local v1           #ch2:I
    :cond_4
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v1

    .line 1288
    .restart local v1       #ch2:I
    if-ne v1, v6, :cond_2

    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1016
    invoke-static {p0, p1}, Lcom/broadcom/bt/util/io/IOUtils;->copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 1017
    .local v0, count:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1018
    const/4 v2, -0x1

    .line 1020
    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/Writer;)I
    .locals 4
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1121
    invoke-static {p0, p1}, Lcom/broadcom/bt/util/io/IOUtils;->copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide v0

    .line 1122
    .local v0, count:J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1123
    const/4 v2, -0x1

    .line 1125
    :goto_0
    return v2

    :cond_0
    long-to-int v2, v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1066
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1067
    .local v0, in:Ljava/io/InputStreamReader;
    invoke-static {v0, p1}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1068
    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1091
    if-nez p2, :cond_0

    .line 1092
    invoke-static {p0, p1}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 1097
    :goto_0
    return-void

    .line 1094
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1095
    .local v0, in:Ljava/io/InputStreamReader;
    invoke-static {v0, p1}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    goto :goto_0
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1173
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1174
    .local v0, out:Ljava/io/OutputStreamWriter;
    invoke-static {p0, v0}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1177
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    .line 1178
    return-void
.end method

.method public static copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "input"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1205
    if-nez p2, :cond_0

    .line 1206
    invoke-static {p0, p1}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;)V

    .line 1214
    :goto_0
    return-void

    .line 1208
    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1209
    .local v0, out:Ljava/io/OutputStreamWriter;
    invoke-static {p0, v0}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 1212
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    goto :goto_0
.end method

.method public static copyLarge(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 6
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1039
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 1040
    .local v0, buffer:[B
    const-wide/16 v1, 0x0

    .line 1041
    .local v1, count:J
    const/4 v3, 0x0

    .line 1042
    .local v3, n:I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v4, v3, :cond_0

    .line 1043
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1044
    int-to-long v4, v3

    add-long/2addr v1, v4

    goto :goto_0

    .line 1046
    :cond_0
    return-wide v1
.end method

.method public static copyLarge(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 6
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1142
    const/16 v4, 0x1000

    new-array v0, v4, [C

    .line 1143
    .local v0, buffer:[C
    const-wide/16 v1, 0x0

    .line 1144
    .local v1, count:J
    const/4 v3, 0x0

    .line 1145
    .local v3, n:I
    :goto_0
    const/4 v4, -0x1

    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    if-eq v4, v3, :cond_0

    .line 1146
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4, v3}, Ljava/io/Writer;->write([CII)V

    .line 1147
    int-to-long v4, v3

    add-long/2addr v1, v4

    goto :goto_0

    .line 1149
    :cond_0
    return-wide v1
.end method

.method public static lineIterator(Ljava/io/InputStream;Ljava/lang/String;)Lcom/broadcom/bt/util/io/LineIterator;
    .locals 2
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    const/4 v0, 0x0

    .line 593
    .local v0, reader:Ljava/io/Reader;
    if-nez p1, :cond_0

    .line 594
    new-instance v0, Ljava/io/InputStreamReader;

    .end local v0           #reader:Ljava/io/Reader;
    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 598
    .restart local v0       #reader:Ljava/io/Reader;
    :goto_0
    new-instance v1, Lcom/broadcom/bt/util/io/LineIterator;

    invoke-direct {v1, v0}, Lcom/broadcom/bt/util/io/LineIterator;-><init>(Ljava/io/Reader;)V

    return-object v1

    .line 596
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    .end local v0           #reader:Ljava/io/Reader;
    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .restart local v0       #reader:Ljava/io/Reader;
    goto :goto_0
.end method

.method public static lineIterator(Ljava/io/Reader;)Lcom/broadcom/bt/util/io/LineIterator;
    .locals 1
    .parameter "reader"

    .prologue
    .line 557
    new-instance v0, Lcom/broadcom/bt/util/io/LineIterator;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/util/io/LineIterator;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public static readLines(Ljava/io/InputStream;)Ljava/util/List;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 473
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 474
    .local v0, reader:Ljava/io/InputStreamReader;
    invoke-static {v0}, Lcom/broadcom/bt/util/io/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static readLines(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    if-nez p1, :cond_0

    .line 496
    invoke-static {p0}, Lcom/broadcom/bt/util/io/IOUtils;->readLines(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    .line 499
    :goto_0
    return-object v1

    .line 498
    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 499
    .local v0, reader:Ljava/io/InputStreamReader;
    invoke-static {v0}, Lcom/broadcom/bt/util/io/IOUtils;->readLines(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public static readLines(Ljava/io/Reader;)Ljava/util/List;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 517
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 518
    .local v2, reader:Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v1, list:Ljava/util/List;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, line:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_0

    .line 521
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 524
    :cond_0
    return-object v1
.end method

.method public static toByteArray(Ljava/io/InputStream;)[B
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;-><init>()V

    .line 235
    .local v0, output:Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 236
    invoke-virtual {v0}, Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/io/Reader;)[B
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    new-instance v0, Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;-><init>()V

    .line 253
    .local v0, output:Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;)V

    .line 254
    invoke-virtual {v0}, Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/io/Reader;Ljava/lang/String;)[B
    .locals 2
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;

    invoke-direct {v0}, Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;-><init>()V

    .line 277
    .local v0, output:Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;
    invoke-static {p0, v0, p1}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Lcom/broadcom/bt/util/io/output/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static toCharArray(Ljava/io/InputStream;)[C
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 314
    .local v0, output:Ljava/io/CharArrayWriter;
    invoke-static {p0, v0}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 315
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public static toCharArray(Ljava/io/InputStream;Ljava/lang/String;)[C
    .locals 2
    .parameter "is"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 338
    .local v0, output:Ljava/io/CharArrayWriter;
    invoke-static {p0, v0, p1}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public static toCharArray(Ljava/io/Reader;)[C
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 356
    .local v0, sw:Ljava/io/CharArrayWriter;
    invoke-static {p0, v0}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 357
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v1

    return-object v1
.end method

.method public static toInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "input"

    .prologue
    .line 611
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 612
    .local v0, bytes:[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public static toInputStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 630
    .local v0, bytes:[B
    :goto_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1

    .line 629
    .end local v0           #bytes:[B
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static toString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 376
    .local v0, sw:Ljava/io/StringWriter;
    invoke-static {p0, v0}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;)V

    .line 377
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 399
    .local v0, sw:Ljava/io/StringWriter;
    invoke-static {p0, v0, p1}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/Writer;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString(Ljava/io/Reader;)Ljava/lang/String;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 416
    .local v0, sw:Ljava/io/StringWriter;
    invoke-static {p0, v0}, Lcom/broadcom/bt/util/io/IOUtils;->copy(Ljava/io/Reader;Ljava/io/Writer;)I

    .line 417
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 1
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "input"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    if-nez p1, :cond_0

    .line 451
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 453
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 800
    if-eqz p0, :cond_0

    .line 801
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 803
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 823
    if-eqz p0, :cond_0

    .line 824
    if-nez p2, :cond_1

    .line 825
    invoke-static {p0, p1}, Lcom/broadcom/bt/util/io/IOUtils;->write(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 830
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static write(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 0
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 780
    if-eqz p0, :cond_0

    .line 781
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 783
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 865
    if-eqz p0, :cond_0

    .line 866
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 868
    :cond_0
    return-void
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 888
    if-eqz p0, :cond_0

    .line 889
    if-nez p2, :cond_1

    .line 890
    invoke-static {p0, p1}, Lcom/broadcom/bt/util/io/IOUtils;->write(Ljava/lang/StringBuffer;Ljava/io/OutputStream;)V

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static write(Ljava/lang/StringBuffer;Ljava/io/Writer;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    if-eqz p0, :cond_0

    .line 846
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 848
    :cond_0
    return-void
.end method

.method public static write([BLjava/io/OutputStream;)V
    .locals 0
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 647
    if-eqz p0, :cond_0

    .line 648
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 650
    :cond_0
    return-void
.end method

.method public static write([BLjava/io/Writer;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 666
    if-eqz p0, :cond_0

    .line 667
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 669
    :cond_0
    return-void
.end method

.method public static write([BLjava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 690
    if-eqz p0, :cond_0

    .line 691
    if-nez p2, :cond_1

    .line 692
    invoke-static {p0, p1}, Lcom/broadcom/bt/util/io/IOUtils;->write([BLjava/io/Writer;)V

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static write([CLjava/io/OutputStream;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 734
    if-eqz p0, :cond_0

    .line 735
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 737
    :cond_0
    return-void
.end method

.method public static write([CLjava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 759
    if-eqz p0, :cond_0

    .line 760
    if-nez p2, :cond_1

    .line 761
    invoke-static {p0, p1}, Lcom/broadcom/bt/util/io/IOUtils;->write([CLjava/io/OutputStream;)V

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static write([CLjava/io/Writer;)V
    .locals 0
    .parameter "data"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 713
    if-eqz p0, :cond_0

    .line 714
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write([C)V

    .line 716
    :cond_0
    return-void
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "lines"
    .parameter "lineEnding"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 913
    if-nez p0, :cond_1

    .line 926
    :cond_0
    return-void

    .line 916
    :cond_1
    if-nez p1, :cond_2

    .line 917
    sget-object p1, Lcom/broadcom/bt/util/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 919
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 920
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 921
    .local v1, line:Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 922
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 924
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .parameter "lines"
    .parameter "lineEnding"
    .parameter "output"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 946
    if-nez p3, :cond_1

    .line 947
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/util/io/IOUtils;->writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 963
    :cond_0
    return-void

    .line 949
    :cond_1
    if-eqz p0, :cond_0

    .line 952
    if-nez p1, :cond_2

    .line 953
    sget-object p1, Lcom/broadcom/bt/util/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 955
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 956
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 957
    .local v1, line:Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 958
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 960
    :cond_3
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public static writeLines(Ljava/util/Collection;Ljava/lang/String;Ljava/io/Writer;)V
    .locals 3
    .parameter "lines"
    .parameter "lineEnding"
    .parameter "writer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 978
    if-nez p0, :cond_1

    .line 991
    :cond_0
    return-void

    .line 981
    :cond_1
    if-nez p1, :cond_2

    .line 982
    sget-object p1, Lcom/broadcom/bt/util/io/IOUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 984
    :cond_2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 985
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 986
    .local v1, line:Ljava/lang/Object;
    if-eqz v1, :cond_3

    .line 987
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 989
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
