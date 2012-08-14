.class Lcom/android/internal/policy/impl/WidgetLayar$1;
.super Landroid/content/BroadcastReceiver;
.source "WidgetLayar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/WidgetLayar;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/WidgetLayar;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/WidgetLayar;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/policy/impl/WidgetLayar$1;->this$0:Lcom/android/internal/policy/impl/WidgetLayar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/internal/policy/impl/WidgetLayar$1;->this$0:Lcom/android/internal/policy/impl/WidgetLayar;

    const-string v0, "RemoteViews"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, v1, Lcom/android/internal/policy/impl/WidgetLayar;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/WidgetLayar$1;->this$0:Lcom/android/internal/policy/impl/WidgetLayar;

    new-instance v1, Lcom/android/internal/policy/impl/WidgetLayar$1$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/WidgetLayar$1$1;-><init>(Lcom/android/internal/policy/impl/WidgetLayar$1;)V

    #setter for: Lcom/android/internal/policy/impl/WidgetLayar;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/WidgetLayar;->access$002(Lcom/android/internal/policy/impl/WidgetLayar;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 130
    iget-object v0, p0, Lcom/android/internal/policy/impl/WidgetLayar$1;->this$0:Lcom/android/internal/policy/impl/WidgetLayar;

    #getter for: Lcom/android/internal/policy/impl/WidgetLayar;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/WidgetLayar;->access$200(Lcom/android/internal/policy/impl/WidgetLayar;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/WidgetLayar$1;->this$0:Lcom/android/internal/policy/impl/WidgetLayar;

    #getter for: Lcom/android/internal/policy/impl/WidgetLayar;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/WidgetLayar;->access$000(Lcom/android/internal/policy/impl/WidgetLayar;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    return-void
.end method
