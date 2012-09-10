.class Lcom/lge/camera/PostviewActivity$10;
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
    .line 2008
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$10;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 2011
    const-string v2, "CameraApp"

    const-string v3, "mPlayButtonListener clicked."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$10;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v2}, Lcom/lge/camera/PostviewActivity;->checkPauseAndAutoReview()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2027
    :goto_0
    return-void

    .line 2016
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2017
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$10;->this$0:Lcom/lge/camera/PostviewActivity;

    #getter for: Lcom/lge/camera/PostviewActivity;->mSavedUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/lge/camera/PostviewActivity;->access$1400(Lcom/lge/camera/PostviewActivity;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "video/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2018
    const-string v2, "mimeType"

    const-string v3, "video/mp4"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2019
    const-string v2, "android.intent.extra.finishOnCompletion"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2021
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$10;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v3, p0, Lcom/lge/camera/PostviewActivity$10;->this$0:Lcom/lge/camera/PostviewActivity;

    const v4, 0x7f0b0121

    invoke-virtual {v3, v4}, Lcom/lge/camera/PostviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/PostviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2026
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$10;->this$0:Lcom/lge/camera/PostviewActivity;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/lge/camera/PostviewActivity;->setPostviewMenuState(I)V

    goto :goto_0

    .line 2022
    :catch_0
    move-exception v0

    .line 2023
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "CameraApp"

    const-string v3, "ActivityNotFoundException : "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2024
    iget-object v2, p0, Lcom/lge/camera/PostviewActivity$10;->this$0:Lcom/lge/camera/PostviewActivity;

    iget-object v3, p0, Lcom/lge/camera/PostviewActivity$10;->this$0:Lcom/lge/camera/PostviewActivity;

    const v4, 0x7f0b0140

    invoke-virtual {v3, v4}, Lcom/lge/camera/PostviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/PostviewActivity;->toast(Ljava/lang/String;)V

    goto :goto_1
.end method
