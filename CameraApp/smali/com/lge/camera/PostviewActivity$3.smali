.class Lcom/lge/camera/PostviewActivity$3;
.super Ljava/lang/Object;
.source "PostviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 551
    iput-object p1, p0, Lcom/lge/camera/PostviewActivity$3;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 5

    .prologue
    .line 553
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$3;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 554
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 572
    :goto_0
    monitor-exit p0

    return-void

    .line 558
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$3;->this$0:Lcom/lge/camera/PostviewActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/camera/PostviewActivity;->setPostviewMainViewVisible(I)V

    .line 559
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$3;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->setupLayoutMainBarAndPostviewMenu()V

    .line 560
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$3;->this$0:Lcom/lge/camera/PostviewActivity;

    #calls: Lcom/lge/camera/PostviewActivity;->setupPostview()V
    invoke-static {v1}, Lcom/lge/camera/PostviewActivity;->access$200(Lcom/lge/camera/PostviewActivity;)V

    .line 561
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$3;->this$0:Lcom/lge/camera/PostviewActivity;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewActivity;->postviewShow()V

    .line 562
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$3;->this$0:Lcom/lge/camera/PostviewActivity;

    #calls: Lcom/lge/camera/PostviewActivity;->updateLoadedThumbnailButton()V
    invoke-static {v1}, Lcom/lge/camera/PostviewActivity;->access$300(Lcom/lge/camera/PostviewActivity;)V

    .line 564
    iget-object v1, p0, Lcom/lge/camera/PostviewActivity$3;->this$0:Lcom/lge/camera/PostviewActivity;

    new-instance v2, Lcom/lge/camera/PostviewActivity$3$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/PostviewActivity$3$1;-><init>(Lcom/lge/camera/PostviewActivity$3;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Lcom/lge/camera/PostviewActivity;->postOnUiThread(Ljava/lang/Runnable;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 553
    .end local v0           #activity:Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
