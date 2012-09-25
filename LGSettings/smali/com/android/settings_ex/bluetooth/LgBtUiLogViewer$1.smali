.class Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer$1;
.super Landroid/content/BroadcastReceiver;
.source "LgBtUiLogViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.btui.log_viewer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    const-string v2, "log_data"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, rcv_data:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->updateScreen()V
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;->access$100(Lcom/android/settings_ex/bluetooth/LgBtUiLogViewer;)V

    .line 44
    .end local v1           #rcv_data:Ljava/lang/String;
    :cond_0
    return-void
.end method
