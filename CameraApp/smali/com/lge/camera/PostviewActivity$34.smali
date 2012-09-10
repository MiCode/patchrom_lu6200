.class Lcom/lge/camera/PostviewActivity$34;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewActivity;->toast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewActivity;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3791
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$34;->this$0:Lcom/lge/camera/PostviewActivity;

    iput-object p2, p0, Lcom/lge/camera/PostviewActivity$34;->val$msg:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3793
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$34;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;
    invoke-static {v0}, Lcom/lge/camera/PostviewActivity;->access$1500(Lcom/lge/camera/PostviewActivity;)Lcom/lge/camera/postview/PostViewToast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3794
    iget-object v0, p0, Lcom/lge/camera/PostviewActivity$34;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;
    invoke-static {v0}, Lcom/lge/camera/PostviewActivity;->access$1500(Lcom/lge/camera/PostviewActivity;)Lcom/lge/camera/postview/PostViewToast;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$34;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$34;->val$msg:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/camera/postview/PostViewToast;->show(Landroid/content/Context;Ljava/lang/String;J)V

    .line 3796
    :cond_0
    return-void
.end method
