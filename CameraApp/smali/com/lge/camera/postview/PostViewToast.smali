.class public Lcom/lge/camera/postview/PostViewToast;
.super Ljava/lang/Object;
.source "PostViewToast.java"


# static fields
.field public static final TOAST_LENGTH_LONG:J = 0x1388L

.field public static final TOAST_LENGTH_SHORT:J = 0x7d0L


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHide:Ljava/lang/Runnable;

.field private mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lcom/lge/camera/postview/PostViewToast$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/postview/PostViewToast$1;-><init>(Lcom/lge/camera/postview/PostViewToast;)V

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mHide:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/postview/PostViewToast;->cancel(Z)V

    .line 42
    return-void
.end method

.method public declared-synchronized cancel(Z)V
    .locals 1
    .parameter "immediately"

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    .line 46
    if-eqz p1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancelImmediately()V

    .line 52
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 49
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "message"

    .prologue
    .line 13
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/camera/postview/PostViewToast;->show(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 14
    return-void
.end method

.method public show(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .parameter "context"
    .parameter "message"
    .parameter "hideDelayMillis"

    .prologue
    .line 33
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 34
    const-wide/16 p3, 0x7d0

    .line 36
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/postview/PostViewToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/postview/PostViewToast;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    return-void
.end method

.method public declared-synchronized show(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "message"
    .parameter "immediately"

    .prologue
    .line 17
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostViewToast;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/postview/PostViewToast;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19
    invoke-virtual {p0}, Lcom/lge/camera/postview/PostViewToast;->cancel()V

    .line 21
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/lge/camera/util/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    .line 22
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_1

    .line 23
    if-eqz p3, :cond_2

    .line 24
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->showImmediately()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 27
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unbind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mOnScreenHint:Lcom/lge/camera/util/OnScreenHint;

    .line 67
    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mHide:Ljava/lang/Runnable;

    .line 68
    iput-object v0, p0, Lcom/lge/camera/postview/PostViewToast;->mHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method
