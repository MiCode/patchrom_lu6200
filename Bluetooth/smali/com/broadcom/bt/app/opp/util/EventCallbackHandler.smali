.class public Lcom/broadcom/bt/app/opp/util/EventCallbackHandler;
.super Ljava/lang/Thread;
.source "EventCallbackHandler.java"


# instance fields
.field public mFilter:Landroid/content/IntentFilter;

.field public mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/IntentFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/util/EventCallbackHandler;->mFilter:Landroid/content/IntentFilter;

    .line 30
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/EventCallbackHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/util/EventCallbackHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 50
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/util/EventCallbackHandler;->mHandler:Landroid/os/Handler;

    .line 35
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 36
    return-void
.end method
