.class Lcom/android/internal/telephony/DataConnection$1;
.super Landroid/content/BroadcastReceiver;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$1;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 373
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$1;->this$0:Lcom/android/internal/telephony/DataConnection;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/telephony/DataConnection;->inShutdown:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/DataConnection;->access$002(Lcom/android/internal/telephony/DataConnection;Z)Z

    .line 377
    :cond_0
    return-void
.end method
