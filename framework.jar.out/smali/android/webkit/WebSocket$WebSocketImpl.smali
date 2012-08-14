.class public Landroid/webkit/WebSocket$WebSocketImpl;
.super Ljava/lang/Object;
.source "WebSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebSocketImpl"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BUFFER_SIZE:I = 0x1000


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAppRecvBuffer:Ljava/nio/ByteBuffer;

.field private mAppSendBuffer:Ljava/nio/ByteBuffer;

.field private mBufferReadQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mBufferWriteQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Ljava/lang/String;

.field private mIsSecure:Z

.field private mNetRecvBuffer:Ljava/nio/ByteBuffer;

.field private mNetSendBuffer:Ljava/nio/ByteBuffer;

.field private mPort:I

.field private mRunning:Z

.field private mSSLContext:Ljavax/net/ssl/SSLContext;

.field private mSSLEngine:Ljavax/net/ssl/SSLEngine;

.field private mSSLEngineResult:Ljavax/net/ssl/SSLEngineResult;

.field private mSelector:Ljava/nio/channels/Selector;

.field private mSocketChannel:Ljava/nio/channels/SocketChannel;

.field private mWebSocket:Landroid/webkit/WebSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const-class v0, Landroid/webkit/WebSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/WebSocket$WebSocketImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/WebSocket;)V
    .locals 3
    .parameter "webSocket"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 149
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-string v0, "WEBSOCKET"

    iput-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->LOG_TAG:Ljava/lang/String;

    .line 127
    iput-boolean v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mRunning:Z

    .line 129
    iput-boolean v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mIsSecure:Z

    .line 131
    iput-object v1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    .line 132
    iput-object v1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngineResult:Ljavax/net/ssl/SSLEngineResult;

    .line 150
    iput-object p1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mWebSocket:Landroid/webkit/WebSocket;

    .line 151
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mBufferWriteQueue:Ljava/util/concurrent/BlockingQueue;

    .line 152
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mBufferReadQueue:Ljava/util/concurrent/BlockingQueue;

    .line 153
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLContext:Ljavax/net/ssl/SSLContext;

    .line 154
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 155
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebSocket$WebSocketImpl;)Ljavax/net/ssl/SSLEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    return-object v0
.end method

.method private closeImpl()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 548
    :try_start_0
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->isSocketRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mIsSecure:Z

    if-eqz v0, :cond_4

    .line 549
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->readSSLImpl()I

    .line 553
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetSendBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_1

    .line 554
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->flushSSLBuffer()I

    move-result v0

    if-nez v0, :cond_0

    .line 558
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 559
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeOutbound()V

    .line 561
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->processSSLHandshakeStatus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 564
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetSendBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_3

    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->flushSSLBuffer()I

    move-result v0

    if-nez v0, :cond_3

    .line 565
    const-string v0, "WEBSOCKET"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t flush remaining "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetSendBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v0

    if-nez v0, :cond_4

    .line 569
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->closeInbound()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    :cond_4
    invoke-direct {p0, v3}, Landroid/webkit/WebSocket$WebSocketImpl;->setSocketRunning(Z)V

    .line 574
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mWebSocket:Landroid/webkit/WebSocket;

    invoke-virtual {v0}, Landroid/webkit/WebSocket;->onClosed()V

    .line 575
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_5

    .line 576
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V

    .line 578
    :cond_5
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSelector:Ljava/nio/channels/Selector;

    if-eqz v0, :cond_6

    .line 579
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 582
    :cond_6
    return-void

    .line 573
    :catchall_0
    move-exception v0

    invoke-direct {p0, v3}, Landroid/webkit/WebSocket$WebSocketImpl;->setSocketRunning(Z)V

    .line 574
    iget-object v1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mWebSocket:Landroid/webkit/WebSocket;

    invoke-virtual {v1}, Landroid/webkit/WebSocket;->onClosed()V

    .line 575
    iget-object v1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v1, :cond_7

    .line 576
    iget-object v1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->close()V

    .line 578
    :cond_7
    iget-object v1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSelector:Ljava/nio/channels/Selector;

    if-eqz v1, :cond_8

    .line 579
    iget-object v1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    :cond_8
    throw v0
.end method

.method private flushSSLBuffer()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    iget-object v1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetSendBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 490
    iget-object v1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetSendBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 491
    .local v0, count:I
    iget-object v1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetSendBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 492
    return v0
.end method

.method private handleConnectable(Ljava/nio/channels/SelectionKey;)V
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->isConnectionPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->finishConnect()Z

    .line 347
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mIsSecure:Z

    if-nez v0, :cond_1

    .line 348
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetRecvBuffer:Ljava/nio/ByteBuffer;

    .line 349
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mAppRecvBuffer:Ljava/nio/ByteBuffer;

    .line 364
    :goto_0
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mWebSocket:Landroid/webkit/WebSocket;

    invoke-virtual {v0}, Landroid/webkit/WebSocket;->onConnected()V

    .line 365
    return-void

    .line 351
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLContext:Ljavax/net/ssl/SSLContext;

    iget-object v1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mHost:Ljava/lang/String;

    iget v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mPort:I

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    .line 352
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 353
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->beginHandshake()V

    .line 355
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mAppSendBuffer:Ljava/nio/ByteBuffer;

    .line 357
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetSendBuffer:Ljava/nio/ByteBuffer;

    .line 359
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mAppRecvBuffer:Ljava/nio/ByteBuffer;

    .line 361
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetRecvBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private handleReadable(Ljava/nio/channels/SelectionKey;)V
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, count:I
    :try_start_0
    iget-boolean v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mIsSecure:Z

    if-nez v2, :cond_2

    .line 392
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->readImpl()I

    move-result v0

    .line 396
    :goto_0
    if-gez v0, :cond_1

    .line 397
    iget-boolean v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mIsSecure:Z

    if-eqz v2, :cond_0

    .line 398
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v2

    and-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 400
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mWebSocket:Landroid/webkit/WebSocket;

    invoke-virtual {v2}, Landroid/webkit/WebSocket;->onMessage()V

    .line 401
    invoke-direct {p0, p1}, Landroid/webkit/WebSocket$WebSocketImpl;->handleWritable(Ljava/nio/channels/SelectionKey;)V

    .line 407
    :cond_1
    :goto_1
    return-void

    .line 394
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->readSSLImpl()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, ex:Ljava/io/IOException;
    iget-object v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mWebSocket:Landroid/webkit/WebSocket;

    invoke-virtual {v2, v1}, Landroid/webkit/WebSocket;->onError(Ljava/lang/Throwable;)V

    .line 405
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_1
.end method

.method private handleRunnable()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->isSocketRunning()Z

    move-result v4

    if-nez v4, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-object v4, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 307
    :try_start_0
    iget-object v4, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->select()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v4

    if-eqz v4, :cond_0

    .line 318
    iget-object v4, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSelector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v3

    .line 319
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 321
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 322
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/channels/SelectionKey;

    .line 323
    .local v2, key:Ljava/nio/channels/SelectionKey;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 325
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 328
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isConnectable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 329
    invoke-direct {p0, v2}, Landroid/webkit/WebSocket$WebSocketImpl;->handleConnectable(Ljava/nio/channels/SelectionKey;)V

    goto :goto_1

    .line 310
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v2           #key:Ljava/nio/channels/SelectionKey;
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Ljava/io/IOException;
    goto :goto_0

    .line 312
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 313
    .local v0, e:Ljava/nio/channels/ClosedSelectorException;
    goto :goto_0

    .line 314
    .end local v0           #e:Ljava/nio/channels/ClosedSelectorException;
    :catch_2
    move-exception v0

    .line 315
    .local v0, e:Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 332
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v2       #key:Ljava/nio/channels/SelectionKey;
    .restart local v3       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_3
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 333
    invoke-direct {p0, v2}, Landroid/webkit/WebSocket$WebSocketImpl;->handleWritable(Ljava/nio/channels/SelectionKey;)V

    goto :goto_1

    .line 336
    :cond_4
    invoke-virtual {v2}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 337
    invoke-direct {p0, v2}, Landroid/webkit/WebSocket$WebSocketImpl;->handleReadable(Ljava/nio/channels/SelectionKey;)V

    goto :goto_1
.end method

.method private handleWritable(Ljava/nio/channels/SelectionKey;)V
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, count:I
    :try_start_0
    iget-boolean v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mIsSecure:Z

    if-nez v3, :cond_2

    .line 371
    invoke-virtual {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->getWriteQueueData()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 372
    .local v1, data:Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_0

    .line 373
    invoke-direct {p0, v1}, Landroid/webkit/WebSocket$WebSocketImpl;->writeImpl(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 379
    .end local v1           #data:Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 380
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v3

    and-int/lit8 v3, v3, -0x5

    invoke-virtual {p1, v3}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 386
    :cond_1
    :goto_1
    return-void

    .line 376
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->writeSSLImpl()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v2

    .line 383
    .local v2, ex:Ljava/io/IOException;
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mWebSocket:Landroid/webkit/WebSocket;

    invoke-virtual {v3, v2}, Landroid/webkit/WebSocket;->onError(Ljava/lang/Throwable;)V

    .line 384
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->cancel()V

    goto :goto_1
.end method

.method private declared-synchronized isSocketRunning()Z
    .locals 1

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x1

    .line 291
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private processSSLHandshakeStatus()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, count:I
    sget-object v3, Landroid/webkit/WebSocket$2;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    iget-object v4, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 630
    :cond_0
    :goto_0
    return v1

    .line 588
    :pswitch_0
    const-string v1, "WEBSOCKET"

    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 589
    goto :goto_0

    .line 591
    :pswitch_1
    const-string v2, "WEBSOCKET"

    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance v2, Landroid/webkit/WebSocket$WebSocketImpl$1;

    invoke-direct {v2, p0}, Landroid/webkit/WebSocket$WebSocketImpl$1;-><init>(Landroid/webkit/WebSocket$WebSocketImpl;)V

    invoke-virtual {v2}, Landroid/webkit/WebSocket$WebSocketImpl$1;->start()V

    goto :goto_0

    .line 602
    :pswitch_2
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mAppSendBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 603
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mAppSendBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetSendBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v5}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngineResult:Ljavax/net/ssl/SSLEngineResult;

    .line 604
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mAppSendBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 605
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v3, v4, :cond_0

    .line 606
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->flushSSLBuffer()I

    move-result v0

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 609
    :pswitch_3
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 610
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetRecvBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mAppRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v5}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngineResult:Ljavax/net/ssl/SSLEngineResult;

    .line 612
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 613
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v3, v4, :cond_3

    .line 614
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 615
    const/4 v0, -0x1

    .line 620
    :goto_1
    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 617
    :cond_1
    sget-boolean v3, Landroid/webkit/WebSocket$WebSocketImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 618
    :cond_2
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_1

    .line 622
    :cond_3
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v3, v4, :cond_0

    move v1, v2

    .line 623
    goto/16 :goto_0

    .line 627
    :pswitch_4
    const-string v1, "WEBSOCKET"

    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 628
    goto/16 :goto_0

    .line 586
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private readImpl()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 432
    const/4 v1, -0x1

    .line 434
    .local v1, plainDataCount:I
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->isSocketRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 451
    :goto_0
    return v1

    .line 437
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 438
    iget-object v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 440
    if-gtz v1, :cond_2

    .line 441
    const/4 v1, -0x1

    .line 442
    goto :goto_0

    .line 444
    :cond_2
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 445
    .local v0, data:Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_3

    .line 446
    iget-object v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 447
    invoke-virtual {p0, v0}, Landroid/webkit/WebSocket$WebSocketImpl;->putReadQueueData(Ljava/nio/ByteBuffer;)V

    .line 449
    :cond_3
    if-gtz v1, :cond_0

    goto :goto_0
.end method

.method private readSSLImpl()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 496
    const/4 v0, 0x0

    .line 497
    .local v0, cipherTextCount:I
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mAppRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 499
    .local v1, plainTextCount:I
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->isSocketRunning()Z

    move-result v3

    if-nez v3, :cond_2

    .line 543
    :cond_1
    :goto_0
    return v2

    .line 503
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->flushSSLBuffer()I

    .line 504
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v3

    if-nez v3, :cond_1

    .line 508
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 509
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 510
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v4, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetRecvBuffer:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mAppRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4, v5}, Ljavax/net/ssl/SSLEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngineResult:Ljavax/net/ssl/SSLEngineResult;

    .line 511
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 512
    sget-object v3, Landroid/webkit/WebSocket$2;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    iget-object v4, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 533
    :cond_3
    :goto_1
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->processSSLHandshakeStatus()Z

    move-result v3

    if-nez v3, :cond_3

    .line 537
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mAppRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 538
    if-eqz v1, :cond_0

    .line 540
    iget-object v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngine;->isInboundDone()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 541
    const/4 v1, -0x1

    :cond_4
    move v2, v1

    .line 543
    goto :goto_0

    .line 514
    :pswitch_0
    sget-boolean v3, Landroid/webkit/WebSocket$WebSocketImpl;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->isOpen()Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 515
    :cond_5
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v4, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 516
    if-nez v0, :cond_6

    move v2, v1

    .line 517
    goto :goto_0

    .line 518
    :cond_6
    if-ne v0, v2, :cond_3

    .line 519
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngine;->closeInbound()V

    goto :goto_1

    .line 523
    :pswitch_1
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 525
    :pswitch_2
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v3}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->shutdownInput()V

    goto :goto_1

    .line 528
    :pswitch_3
    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mAppRecvBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 529
    goto :goto_1

    .line 512
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized setSocketRunning(Z)V
    .locals 1
    .parameter "running"

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;)I
    .locals 6
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    const/4 v3, -0x1

    .line 411
    .local v3, plainDataCount:I
    if-nez p1, :cond_0

    move v4, v3

    .line 428
    .end local v3           #plainDataCount:I
    .local v4, plainDataCount:I
    :goto_0
    return v4

    .line 415
    .end local v4           #plainDataCount:I
    .restart local v3       #plainDataCount:I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 416
    .local v1, bytes:[B
    array-length v2, v1

    .line 419
    .local v2, dataLength:I
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->isSocketRunning()Z

    move-result v5

    if-nez v5, :cond_2

    :goto_1
    move v4, v3

    .line 428
    .end local v3           #plainDataCount:I
    .restart local v4       #plainDataCount:I
    goto :goto_0

    .line 422
    .end local v4           #plainDataCount:I
    .restart local v3       #plainDataCount:I
    :cond_2
    array-length v5, v1

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 423
    .local v0, b:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 424
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 425
    iget-object v5, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v5, v0}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 426
    if-lt v3, v2, :cond_1

    goto :goto_1
.end method

.method private writeSSLImpl()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    iget-object v1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mAppSendBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 456
    .local v0, count:I
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->flushSSLBuffer()I

    move-result v1

    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 457
    const/4 v1, 0x0

    .line 485
    :goto_0
    return v1

    .line 460
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mAppSendBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 461
    iget-object v1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;

    iget-object v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mAppSendBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mNetSendBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2, v3}, Ljavax/net/ssl/SSLEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngineResult:Ljavax/net/ssl/SSLEngineResult;

    .line 462
    iget-object v1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mAppSendBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 464
    sget-object v1, Landroid/webkit/WebSocket$2;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    iget-object v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 482
    :cond_1
    :goto_1
    :pswitch_0
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->processSSLHandshakeStatus()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    .line 485
    goto :goto_0

    .line 466
    :pswitch_1
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1

    .line 476
    :pswitch_2
    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSLEngine: invalid state for write - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngineResult:Ljavax/net/ssl/SSLEngineResult;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 479
    :pswitch_3
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->flushSSLBuffer()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 464
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 208
    :try_start_0
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->closeImpl()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public connect(Ljava/net/URI;)Ljava/lang/Thread;
    .locals 7
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 160
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mHost:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result v2

    iput v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mPort:I

    .line 163
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    iput-boolean v4, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mIsSecure:Z

    .line 168
    :goto_0
    invoke-direct {p0, v4}, Landroid/webkit/WebSocket$WebSocketImpl;->setSocketRunning(Z)V

    .line 169
    invoke-static {}, Ljava/nio/channels/SocketChannel;->open()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    .line 170
    iget-object v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v2, v6}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 171
    iget-object v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mHost:Ljava/lang/String;

    iget v5, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mPort:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->connect(Ljava/net/SocketAddress;)Z

    .line 173
    const-string/jumbo v2, "java.net.preferIPv4Stack"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    const-string/jumbo v2, "java.net.preferIPv6Addresses"

    const-string v3, "false"

    invoke-static {v2, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSelector:Ljava/nio/channels/Selector;

    .line 177
    iget-object v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSelector:Ljava/nio/channels/Selector;

    const/16 v4, 0x9

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    .line 180
    iget-boolean v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mIsSecure:Z

    if-eqz v2, :cond_1

    .line 181
    invoke-direct {p0, v6}, Landroid/webkit/WebSocket$WebSocketImpl;->setSocketRunning(Z)V

    .line 182
    const/4 v0, 0x0

    .local v0, th:Ljava/lang/Thread;
    move-object v1, v0

    .line 187
    .end local v0           #th:Ljava/lang/Thread;
    .local v1, th:Ljava/lang/Thread;
    :goto_1
    return-object v1

    .line 166
    .end local v1           #th:Ljava/lang/Thread;
    :cond_0
    iput-boolean v6, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mIsSecure:Z

    goto :goto_0

    .line 185
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 186
    .restart local v0       #th:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    move-object v1, v0

    .line 187
    .end local v0           #th:Ljava/lang/Thread;
    .restart local v1       #th:Ljava/lang/Thread;
    goto :goto_1
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, data:Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    .line 238
    .local v2, msg:Ljava/nio/ByteBuffer;
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->getReadQueueData()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 239
    if-nez v2, :cond_2

    .line 257
    :cond_1
    :goto_0
    return-object v1

    .line 242
    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    :goto_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 245
    .local v0, ch:Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_3

    .line 246
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 247
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 249
    :cond_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 250
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 251
    move-object v1, v0

    .line 253
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    const/16 v5, 0x2000

    if-gt v3, v5, :cond_1

    .line 256
    if-nez v2, :cond_0

    goto :goto_0

    .end local v0           #ch:Ljava/nio/ByteBuffer;
    :cond_4
    move v3, v4

    .line 242
    goto :goto_1
.end method

.method public declared-synchronized getReadQueueData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mBufferReadQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWriteQueueData()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mBufferWriteQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putReadQueueData(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 276
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mBufferReadQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized putWriteQueueData(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 283
    iget-object v0, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mBufferWriteQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 193
    :goto_0
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->isSocketRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    :try_start_0
    invoke-direct {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->handleRunnable()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mWebSocket:Landroid/webkit/WebSocket;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSocket;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 198
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/InterruptedException;
    iget-object v1, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mWebSocket:Landroid/webkit/WebSocket;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSocket;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 202
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public send()V
    .locals 5

    .prologue
    .line 218
    :try_start_0
    iget-boolean v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mIsSecure:Z

    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {p0}, Landroid/webkit/WebSocket$WebSocketImpl;->getWriteQueueData()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 220
    .local v1, msg:Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_0

    .line 221
    iget-object v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mAppSendBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 224
    .end local v1           #msg:Ljava/nio/ByteBuffer;
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSocketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v3, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mSelector:Ljava/nio/channels/Selector;

    const/16 v4, 0xd

    invoke-virtual {v2, v3, v4}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/nio/channels/ClosedChannelException;
    iget-object v2, p0, Landroid/webkit/WebSocket$WebSocketImpl;->mWebSocket:Landroid/webkit/WebSocket;

    invoke-virtual {v2, v0}, Landroid/webkit/WebSocket;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
