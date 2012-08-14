.class Landroid/webkit/CallbackProxy$7;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/CallbackProxy;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/CallbackProxy;

.field final synthetic val$res:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Landroid/webkit/CallbackProxy$7;->this$0:Landroid/webkit/CallbackProxy;

    iput-object p2, p0, Landroid/webkit/CallbackProxy$7;->val$res:Landroid/webkit/JsResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 649
    iget-object v0, p0, Landroid/webkit/CallbackProxy$7;->this$0:Landroid/webkit/CallbackProxy;

    #getter for: Landroid/webkit/CallbackProxy;->mUserGesture:Z
    invoke-static {v0}, Landroid/webkit/CallbackProxy;->access$000(Landroid/webkit/CallbackProxy;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/CallbackProxy$7;->val$res:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    .line 651
    :goto_0
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Landroid/webkit/CallbackProxy$7;->this$0:Landroid/webkit/CallbackProxy;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/CallbackProxy;->mUserGesture:Z
    invoke-static {v0, v1}, Landroid/webkit/CallbackProxy;->access$002(Landroid/webkit/CallbackProxy;Z)Z

    goto :goto_0
.end method
