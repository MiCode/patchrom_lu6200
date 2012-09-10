.class Lcom/lge/camera/PostviewActivity$15;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/PostviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2101
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$15;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 2103
    const-string v1, "CameraApp"

    const-string v2, "Attach button clicked."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2104
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$15;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->checkPauseAndAutoReview()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2117
    :goto_0
    return-void

    .line 2108
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$15;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2109
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "doAttach"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2110
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$15;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mApplicationMode:I
    invoke-static {v1}, Lcom/lge/camera/PostviewActivity;->access$1700(Lcom/lge/camera/PostviewActivity;)I

    move-result v1

    if-nez v1, :cond_1

    .line 2111
    const-string v1, "postview_mode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2115
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$15;->this$0:Lcom/lge/camera/PostviewActivity;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Lcom/lge/camera/PostviewActivity;->setResult(ILandroid/content/Intent;)V

    .line 2116
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$15;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->finish()V

    goto :goto_0

    .line 2113
    :cond_1
    const-string v1, "postview_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method
