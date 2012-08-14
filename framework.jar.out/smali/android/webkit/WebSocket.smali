.class Landroid/webkit/WebSocket;
.super Landroid/os/Handler;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebSocket$2;,
        Landroid/webkit/WebSocket$WebSocketImpl;
    }
.end annotation


# static fields
.field private static final CLOSE:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "WEBSOCKET"

.field private static final ON_CLOSED:I = 0xc9

.field private static final ON_CONNECTED:I = 0xc8

.field private static final ON_ERROR:I = 0xcb

.field private static final ON_MESSAGE:I = 0xca

.field private static final SEND:I = 0x64


# instance fields
.field mNativePointer:I

.field private mWebCoreHandler:Landroid/os/Handler;

.field mWebSocketImpl:Landroid/webkit/WebSocket$WebSocketImpl;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 4
    .parameter "nativePtr"
    .parameter "uri"

    .prologue
    .line 641
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 643
    iput p1, p0, Landroid/webkit/WebSocket;->mNativePointer:I

    .line 645
    invoke-direct {p0}, Landroid/webkit/WebSocket;->createWebCoreHandler()V

    .line 647
    const/4 v1, 0x0

    .line 649
    .local v1, th:Ljava/lang/Thread;
    :try_start_0
    new-instance v2, Landroid/webkit/WebSocket$WebSocketImpl;

    invoke-direct {v2, p0}, Landroid/webkit/WebSocket$WebSocketImpl;-><init>(Landroid/webkit/WebSocket;)V

    iput-object v2, p0, Landroid/webkit/WebSocket;->mWebSocketImpl:Landroid/webkit/WebSocket$WebSocketImpl;

    .line 650
    iget-object v2, p0, Landroid/webkit/WebSocket;->mWebSocketImpl:Landroid/webkit/WebSocket$WebSocketImpl;

    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebSocket$WebSocketImpl;->connect(Ljava/net/URI;)Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, e:Ljava/lang/Exception;
    if-eqz v1, :cond_0

    .line 653
    throw v1

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/webkit/WebSocket;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/webkit/WebSocket;->nativeOnWebSocketConnected(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkit/WebSocket;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/webkit/WebSocket;->nativeOnWebSocketClosed(I)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/WebSocket;I[BI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebSocket;->nativeOnWebSocketMessage(I[BI)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkit/WebSocket;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/webkit/WebSocket;->nativeOnWebSocketError(I)V

    return-void
.end method

.method private createWebCoreHandler()V
    .locals 1

    .prologue
    .line 659
    new-instance v0, Landroid/webkit/WebSocket$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebSocket$1;-><init>(Landroid/webkit/WebSocket;)V

    iput-object v0, p0, Landroid/webkit/WebSocket;->mWebCoreHandler:Landroid/os/Handler;

    .line 689
    return-void
.end method

.method public static getInstance(ILjava/lang/String;)Landroid/webkit/WebSocket;
    .locals 1
    .parameter "nativePtr"
    .parameter "uri"

    .prologue
    .line 720
    new-instance v0, Landroid/webkit/WebSocket;

    invoke-direct {v0, p0, p1}, Landroid/webkit/WebSocket;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private native nativeOnWebSocketClosed(I)V
.end method

.method private native nativeOnWebSocketConnected(I)V
.end method

.method private native nativeOnWebSocketError(I)V
.end method

.method private native nativeOnWebSocketMessage(I[BI)V
.end method


# virtual methods
.method public closeWebSocket()V
    .locals 2

    .prologue
    .line 711
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/webkit/WebSocket;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 712
    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/WebSocket;->sendMessage(Landroid/os/Message;)Z

    .line 713
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Landroid/webkit/WebSocket;->mWebSocketImpl:Landroid/webkit/WebSocket$WebSocketImpl;

    invoke-virtual {v0}, Landroid/webkit/WebSocket$WebSocketImpl;->send()V

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/WebSocket;->mWebSocketImpl:Landroid/webkit/WebSocket$WebSocketImpl;

    invoke-virtual {v0}, Landroid/webkit/WebSocket$WebSocketImpl;->close()V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClosed()V
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Landroid/webkit/WebSocket;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 83
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/WebSocket;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 84
    return-void
.end method

.method public onConnected()V
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Landroid/webkit/WebSocket;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 76
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/WebSocket;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 98
    iget-object v1, p0, Landroid/webkit/WebSocket;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 99
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/WebSocket;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 100
    return-void
.end method

.method public onMessage()V
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Landroid/webkit/WebSocket;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 90
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/webkit/WebSocket;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    return-void
.end method

.method public sendWebSocket([B)V
    .locals 4
    .parameter "bytes"

    .prologue
    .line 694
    if-nez p1, :cond_0

    .line 706
    :goto_0
    return-void

    .line 697
    :cond_0
    array-length v3, p1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 698
    .local v0, data:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 700
    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebSocket;->mWebSocketImpl:Landroid/webkit/WebSocket$WebSocketImpl;

    invoke-virtual {v3, v0}, Landroid/webkit/WebSocket$WebSocketImpl;->putWriteQueueData(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :goto_1
    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Landroid/webkit/WebSocket;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 705
    .local v2, message:Landroid/os/Message;
    invoke-virtual {p0, v2}, Landroid/webkit/WebSocket;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 701
    .end local v2           #message:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 702
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {p0, v1}, Landroid/webkit/WebSocket;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
