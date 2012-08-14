.class final Lcom/android/internal/telephony/gsm/UsimServiceListener;
.super Ljava/lang/Object;
.source "UsimServiceListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UsimServiceListener"

.field static final MAX_COMMAND_BYTES:I = 0xc800

.field private static final SOCKET_NAME_USIM:Ljava/lang/String; = "usim_service"

.field static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field static final USIM_REQUEST:I = 0x1

.field private static exit:Z


# instance fields
.field buffer:[B

.field private mServerSocket:Landroid/net/LocalServerSocket;

.field private mSocket:Landroid/net/LocalSocket;

.field mUsimLibService:Lcom/android/internal/telephony/gsm/UsimLibService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->exit:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/UsimLibService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->mServerSocket:Landroid/net/LocalServerSocket;

    .line 80
    const-string v0, "UsimServiceListener"

    const-string v1, "UsimServiceListener Create ...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const v0, 0xc800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->buffer:[B

    .line 83
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->mUsimLibService:Lcom/android/internal/telephony/gsm/UsimLibService;

    .line 84
    return-void
.end method

.method private listenToSocket()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    .line 207
    const/4 v5, 0x0

    .line 208
    .local v5, retryCount:I
    const/4 v3, 0x0

    .line 209
    .local v3, length:I
    const/4 v6, 0x0

    .line 211
    .local v6, socket:Landroid/net/LocalSocket;
    const-string v7, "UsimServiceListener"

    const-string/jumbo v8, "listenToSocket()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->mServerSocket:Landroid/net/LocalServerSocket;

    if-nez v7, :cond_0

    .line 216
    new-instance v7, Landroid/net/LocalServerSocket;

    const-string/jumbo v8, "usim_service"

    invoke-direct {v7, v8}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->mServerSocket:Landroid/net/LocalServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 233
    :cond_0
    :goto_0
    :try_start_1
    const-string v7, "UsimServiceListener"

    const-string v8, "Try to accept .... wait ...."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v7}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 266
    :try_start_2
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->mSocket:Landroid/net/LocalSocket;

    .line 267
    const-string v7, "UsimServiceListener"

    const-string v8, "Connected to \'usim_service\' socket"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 272
    :try_start_3
    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 277
    .local v2, inputStream:Ljava/io/InputStream;
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->buffer:[B

    invoke-static {v2, v7}, Lcom/android/internal/telephony/gsm/UsimServiceListener;->readMessage(Ljava/io/InputStream;[B)I

    move-result v3

    .line 279
    const-string v7, "UsimServiceListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "message length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    if-ltz v3, :cond_0

    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 287
    .local v4, p:Landroid/os/Parcel;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->buffer:[B

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 288
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 290
    const-string v7, "UsimServiceListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read packet: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimServiceListener;->processRequest(Landroid/os/Parcel;)V

    .line 294
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 297
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v4           #p:Landroid/os/Parcel;
    :catch_0
    move-exception v1

    .line 299
    .local v1, ex:Ljava/io/IOException;
    :try_start_4
    const-string v7, "UsimServiceListener"

    const-string v8, "\'usim_service\' socket closed"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 304
    .end local v1           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 312
    if-eqz v6, :cond_1

    .line 313
    :try_start_5
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 326
    :cond_1
    :goto_2
    const-string v7, "UsimServiceListener"

    const-string v8, "Failed to run Usim Library Service"

    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-direct {v9}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v7, v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    const-wide/16 v7, 0x7d0

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 328
    :goto_3
    return-void

    .line 218
    :catch_2
    move-exception v0

    .line 220
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 221
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->mServerSocket:Landroid/net/LocalServerSocket;

    .line 223
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/internal/telephony/gsm/UsimServiceListener;->exit:Z

    goto :goto_3

    .line 237
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 239
    .restart local v1       #ex:Ljava/io/IOException;
    if-eqz v6, :cond_2

    .line 240
    :try_start_6
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V

    .line 243
    :cond_2
    const-string v7, "UsimServiceListener"

    const-string v8, "IOException in listenToSocket"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-ne v5, v10, :cond_4

    .line 246
    const-string v7, "UsimServiceListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t find \'usim_service\' socket after "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " times, continuing to retry silently"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 257
    :cond_3
    :goto_4
    const-wide/16 v7, 0xfa0

    :try_start_7
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 261
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 262
    goto/16 :goto_0

    .line 250
    :cond_4
    if-lez v5, :cond_3

    if-ge v5, v10, :cond_3

    .line 251
    :try_start_8
    const-string v7, "UsimServiceListener"

    const-string v8, "Couldn\'t find \'usim_service\' socket; retrying after timeout"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    .line 315
    .end local v1           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 316
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v7, "UsimServiceListener"

    const-string v8, "IOException closing socket"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 258
    :catch_5
    move-exception v7

    goto :goto_5
.end method

.method private processRequest(Landroid/os/Parcel;)V
    .locals 6
    .parameter "p"

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 176
    .local v1, reply:Landroid/os/Parcel;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .local v2, request:I
    const-string v3, "UsimServiceListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USIM_REQUEST = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sparse-switch v2, :sswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 182
    :sswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->mUsimLibService:Lcom/android/internal/telephony/gsm/UsimLibService;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gsm/UsimLibService;->makeResponseIMSI(Landroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimServiceListener;->sendResponse(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "UsimServiceListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception processing response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 193
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimServiceListener;->sendResponse(Landroid/os/Parcel;)V

    goto :goto_0

    .line 183
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->mUsimLibService:Lcom/android/internal/telephony/gsm/UsimLibService;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gsm/UsimLibService;->makeResponseAUTH(Landroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimServiceListener;->sendResponse(Landroid/os/Parcel;)V

    goto :goto_0

    .line 185
    :sswitch_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->mUsimLibService:Lcom/android/internal/telephony/gsm/UsimLibService;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gsm/UsimLibService;->makeResponseCommandToUsim(Landroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimServiceListener;->sendResponse(Landroid/os/Parcel;)V

    goto :goto_0

    .line 187
    :sswitch_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->mUsimLibService:Lcom/android/internal/telephony/gsm/UsimLibService;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/gsm/UsimLibService;->makeResponseTest(Landroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimServiceListener;->sendResponse(Landroid/os/Parcel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 180
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4d -> :sswitch_2
        0x63 -> :sswitch_3
    .end sparse-switch
.end method

.method private static readMessage(Ljava/io/InputStream;[B)I
    .locals 8
    .parameter "is"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 107
    const/4 v2, 0x0

    .line 108
    .local v2, offset:I
    const/4 v3, 0x4

    .line 110
    .local v3, remaining:I
    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 112
    .local v0, countRead:I
    if-gez v0, :cond_1

    .line 113
    const-string v5, "UsimServiceListener"

    const-string v6, "Hit EOS reading message length"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 142
    :goto_0
    return v1

    .line 117
    :cond_1
    add-int/2addr v2, v0

    .line 118
    sub-int/2addr v3, v0

    .line 119
    if-gtz v3, :cond_0

    .line 121
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    const/4 v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    const/4 v6, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    const/4 v6, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v1, v5, v6

    .line 127
    .local v1, messageLength:I
    const/4 v2, 0x0

    .line 128
    move v3, v1

    .line 130
    :cond_2
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 132
    if-gez v0, :cond_3

    .line 133
    const-string v5, "UsimServiceListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hit EOS reading message.  messageLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " remaining="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 135
    goto :goto_0

    .line 138
    :cond_3
    add-int/2addr v2, v0

    .line 139
    sub-int/2addr v3, v0

    .line 140
    if-gtz v3, :cond_2

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    .line 350
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->mServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Ljava/io/IOException;
    const-string v1, "UsimServiceListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while dispose:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->mServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->mServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_0
    :goto_0
    const-string v1, "UsimServiceListener"

    const-string v2, "UsimServiceListener finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "UsimServiceListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while finalizing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 337
    :goto_0
    :try_start_0
    sget-boolean v1, Lcom/android/internal/telephony/gsm/UsimServiceListener;->exit:Z

    if-nez v1, :cond_0

    .line 339
    const-string v1, "UsimServiceListener"

    const-string v2, "UsimServiceListener Start ...."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimServiceListener;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 344
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "UsimServiceListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fatal error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in thread!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v0           #t:Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public sendResponse(Landroid/os/Parcel;)V
    .locals 6
    .parameter "p"

    .prologue
    const/4 v5, 0x0

    .line 148
    const/4 v3, 0x4

    new-array v1, v3, [B

    .line 150
    .local v1, dataLength:[B
    const-string v3, "UsimServiceListener"

    const-string/jumbo v4, "sendResponse with reply"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 153
    .local v0, data:[B
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 154
    const/4 p1, 0x0

    .line 157
    const/4 v3, 0x1

    aput-byte v5, v1, v3

    aput-byte v5, v1, v5

    .line 158
    const/4 v3, 0x2

    array-length v4, v0

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 159
    const/4 v3, 0x3

    array-length v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 161
    const-string v3, "UsimServiceListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writing packet: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 165
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimServiceListener;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, ex:Ljava/io/IOException;
    const-string v3, "UsimServiceListener"

    const-string/jumbo v4, "sendResponse(), write fail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
