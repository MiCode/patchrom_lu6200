.class public Lcom/lge/camera/controller/ToastController;
.super Lcom/lge/camera/controller/Controller;
.source "ToastController.java"


# static fields
.field public static final TOAST_LENGTH_SHORT:J = 0x7d0L


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHide:Ljava/lang/Runnable;

.field private mOrientation:I

.field private mToast:Lcom/lge/camera/util/OnScreenHint;


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 1
    .parameter "mediator"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/Mediator;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/ToastController;->mOrientation:I

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Lcom/lge/camera/controller/ToastController$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/ToastController$3;-><init>(Lcom/lge/camera/controller/ToastController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mHide:Ljava/lang/Runnable;

    .line 18
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/ToastController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mHide:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/ToastController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getOrientation()I
    .locals 2

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 112
    .local v0, orientation:I
    invoke-virtual {p0}, Lcom/lge/camera/controller/ToastController;->getMediator()Lcom/lge/camera/Mediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 126
    const/4 v0, 0x0

    .line 130
    :goto_0
    return v0

    .line 114
    :pswitch_0
    const/4 v0, 0x0

    .line 115
    goto :goto_0

    .line 117
    :pswitch_1
    const/4 v0, 0x1

    .line 118
    goto :goto_0

    .line 120
    :pswitch_2
    const/4 v0, 0x2

    .line 121
    goto :goto_0

    .line 123
    :pswitch_3
    const/4 v0, 0x3

    .line 124
    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/ToastController;->hide(Z)V

    .line 69
    return-void
.end method

.method public declared-synchronized hide(Z)V
    .locals 1
    .parameter "immediately"

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    .line 73
    if-eqz p1, :cond_1

    .line 74
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancelImmediately()V

    .line 79
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 76
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "CameraApp"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancel()V

    .line 152
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 153
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "CameraApp"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 144
    return-void
.end method

.method public rotate()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/lge/camera/controller/ToastController;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/ToastController;->rotate(I)V

    .line 84
    return-void
.end method

.method public rotate(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/ToastController;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancel()V

    .line 89
    invoke-virtual {p0}, Lcom/lge/camera/controller/ToastController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/camera/util/OnScreenHint;->changeOrientation(Landroid/content/Context;I)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    .line 90
    iput p1, p0, Lcom/lge/camera/controller/ToastController;->mOrientation:I

    .line 92
    :cond_0
    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;Z)V

    .line 22
    return-void
.end method

.method public show(Ljava/lang/String;J)V
    .locals 2
    .parameter "message"
    .parameter "hideDelayMillis"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/lge/camera/controller/ToastController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/controller/ToastController$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/lge/camera/controller/ToastController$2;-><init>(Lcom/lge/camera/controller/ToastController;Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public show(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "immediately"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lge/camera/controller/ToastController;->getOrientation()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/camera/controller/ToastController;->show(Ljava/lang/String;ZI)V

    .line 26
    return-void
.end method

.method public declared-synchronized show(Ljava/lang/String;ZI)V
    .locals 2
    .parameter "message"
    .parameter "immediately"
    .parameter "orientation"

    .prologue
    .line 29
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/ToastController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/controller/ToastController;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    invoke-virtual {p0}, Lcom/lge/camera/controller/ToastController;->hide()V

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/ToastController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lcom/lge/camera/util/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    .line 34
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    if-eqz v0, :cond_1

    .line 35
    if-eqz p2, :cond_2

    .line 36
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->showImmediately()V

    .line 41
    :goto_0
    iput p3, p0, Lcom/lge/camera/controller/ToastController;->mOrientation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    monitor-exit p0

    return-void

    .line 39
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController;->mToast:Lcom/lge/camera/util/OnScreenHint;

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showShortToast(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/lge/camera/controller/ToastController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/controller/ToastController$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/controller/ToastController$1;-><init>(Lcom/lge/camera/controller/ToastController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method
