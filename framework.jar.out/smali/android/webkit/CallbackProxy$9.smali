.class Landroid/webkit/CallbackProxy$9;
.super Ljava/lang/Object;
.source "CallbackProxy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$res:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsPromptResult;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 701
    iput-object p1, p0, Landroid/webkit/CallbackProxy$9;->this$0:Landroid/webkit/CallbackProxy;

    iput-object p2, p0, Landroid/webkit/CallbackProxy$9;->val$res:Landroid/webkit/JsPromptResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 705
    iget-object v0, p0, Landroid/webkit/CallbackProxy$9;->val$res:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 706
    iget-object v0, p0, Landroid/webkit/CallbackProxy$9;->this$0:Landroid/webkit/CallbackProxy;

    const/4 v1, 0x1

    #setter for: Landroid/webkit/CallbackProxy;->mUserGesture:Z
    invoke-static {v0, v1}, Landroid/webkit/CallbackProxy;->access$002(Landroid/webkit/CallbackProxy;Z)Z

    .line 707
    return-void
.end method
