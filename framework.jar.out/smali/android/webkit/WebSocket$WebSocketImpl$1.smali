.class Landroid/webkit/WebSocket$WebSocketImpl$1;
.super Ljava/lang/Thread;
.source "WebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebSocket$WebSocketImpl;->processSSLHandshakeStatus()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebSocket$WebSocketImpl;


# direct methods
.method constructor <init>(Landroid/webkit/WebSocket$WebSocketImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Landroid/webkit/WebSocket$WebSocketImpl$1;->this$0:Landroid/webkit/WebSocket$WebSocketImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 595
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebSocket$WebSocketImpl$1;->this$0:Landroid/webkit/WebSocket$WebSocketImpl;

    #getter for: Landroid/webkit/WebSocket$WebSocketImpl;->mSSLEngine:Ljavax/net/ssl/SSLEngine;
    invoke-static {v1}, Landroid/webkit/WebSocket$WebSocketImpl;->access$000(Landroid/webkit/WebSocket$WebSocketImpl;)Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getDelegatedTask()Ljava/lang/Runnable;

    move-result-object v0

    .local v0, task:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 596
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 598
    :cond_0
    return-void
.end method
