.class Landroid/webkit/WebView$SelfFlushTimeManager;
.super Landroid/os/Handler;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelfFlushTimeManager"
.end annotation


# static fields
.field private static final SELF_INVALIDATE:I = 0x1


# instance fields
.field private mActivate:Z

.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1
    .parameter

    .prologue
    .line 4442
    iput-object p1, p0, Landroid/webkit/WebView$SelfFlushTimeManager;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4443
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView$SelfFlushTimeManager;->mActivate:Z

    .line 4444
    return-void
.end method


# virtual methods
.method public checkAndDeactivate()Z
    .locals 1

    .prologue
    .line 4463
    invoke-virtual {p0}, Landroid/webkit/WebView$SelfFlushTimeManager;->isActivate()Z

    move-result v0

    .line 4464
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 4465
    invoke-virtual {p0}, Landroid/webkit/WebView$SelfFlushTimeManager;->deActivate()V

    .line 4467
    :cond_0
    return v0
.end method

.method public deActivate()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4458
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView$SelfFlushTimeManager;->removeMessages(I)V

    .line 4459
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView$SelfFlushTimeManager;->mActivate:Z

    .line 4460
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 4472
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 4478
    :goto_0
    return-void

    .line 4474
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView$SelfFlushTimeManager;->mActivate:Z

    .line 4475
    iget-object v0, p0, Landroid/webkit/WebView$SelfFlushTimeManager;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0

    .line 4472
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isActivate()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4453
    iget-boolean v0, p0, Landroid/webkit/WebView$SelfFlushTimeManager;->mActivate:Z

    return v0
.end method

.method public selfInvalidate(I)V
    .locals 3
    .parameter "milliseconds"

    .prologue
    .line 4447
    invoke-virtual {p0}, Landroid/webkit/WebView$SelfFlushTimeManager;->deActivate()V

    .line 4448
    const/4 v0, 0x1

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/WebView$SelfFlushTimeManager;->sendEmptyMessageDelayed(IJ)Z

    .line 4449
    return-void
.end method
