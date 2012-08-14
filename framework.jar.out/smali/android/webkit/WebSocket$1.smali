.class Landroid/webkit/WebSocket$1;
.super Landroid/os/Handler;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebSocket;->createWebCoreHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebSocket;


# direct methods
.method constructor <init>(Landroid/webkit/WebSocket;)V
    .locals 0
    .parameter

    .prologue
    .line 659
    iput-object p1, p0, Landroid/webkit/WebSocket$1;->this$0:Landroid/webkit/WebSocket;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 662
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 664
    :pswitch_0
    iget-object v1, p0, Landroid/webkit/WebSocket$1;->this$0:Landroid/webkit/WebSocket;

    iget-object v2, p0, Landroid/webkit/WebSocket$1;->this$0:Landroid/webkit/WebSocket;

    iget v2, v2, Landroid/webkit/WebSocket;->mNativePointer:I

    #calls: Landroid/webkit/WebSocket;->nativeOnWebSocketConnected(I)V
    invoke-static {v1, v2}, Landroid/webkit/WebSocket;->access$100(Landroid/webkit/WebSocket;I)V

    goto :goto_0

    .line 668
    :pswitch_1
    iget-object v1, p0, Landroid/webkit/WebSocket$1;->this$0:Landroid/webkit/WebSocket;

    iget-object v2, p0, Landroid/webkit/WebSocket$1;->this$0:Landroid/webkit/WebSocket;

    iget v2, v2, Landroid/webkit/WebSocket;->mNativePointer:I

    #calls: Landroid/webkit/WebSocket;->nativeOnWebSocketClosed(I)V
    invoke-static {v1, v2}, Landroid/webkit/WebSocket;->access$200(Landroid/webkit/WebSocket;I)V

    goto :goto_0

    .line 672
    :pswitch_2
    const/4 v0, 0x0

    .line 674
    .local v0, msgData:Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebSocket$1;->this$0:Landroid/webkit/WebSocket;

    iget-object v1, v1, Landroid/webkit/WebSocket;->mWebSocketImpl:Landroid/webkit/WebSocket$WebSocketImpl;

    invoke-virtual {v1}, Landroid/webkit/WebSocket$WebSocketImpl;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 675
    if-eqz v0, :cond_0

    .line 678
    iget-object v1, p0, Landroid/webkit/WebSocket$1;->this$0:Landroid/webkit/WebSocket;

    iget-object v2, p0, Landroid/webkit/WebSocket$1;->this$0:Landroid/webkit/WebSocket;

    iget v2, v2, Landroid/webkit/WebSocket;->mNativePointer:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    #calls: Landroid/webkit/WebSocket;->nativeOnWebSocketMessage(I[BI)V
    invoke-static {v1, v2, v3, v4}, Landroid/webkit/WebSocket;->access$300(Landroid/webkit/WebSocket;I[BI)V

    .line 679
    if-nez p1, :cond_1

    goto :goto_0

    .line 683
    .end local v0           #msgData:Ljava/nio/ByteBuffer;
    :pswitch_3
    iget-object v1, p0, Landroid/webkit/WebSocket$1;->this$0:Landroid/webkit/WebSocket;

    iget-object v2, p0, Landroid/webkit/WebSocket$1;->this$0:Landroid/webkit/WebSocket;

    iget v2, v2, Landroid/webkit/WebSocket;->mNativePointer:I

    #calls: Landroid/webkit/WebSocket;->nativeOnWebSocketError(I)V
    invoke-static {v1, v2}, Landroid/webkit/WebSocket;->access$400(Landroid/webkit/WebSocket;I)V

    goto :goto_0

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
