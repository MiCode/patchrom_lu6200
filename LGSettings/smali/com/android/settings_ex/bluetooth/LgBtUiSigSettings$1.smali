.class Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "LgBtUiSigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    :cond_2
    const-string v2, "android.bluetooth.profile.extra.STATE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 61
    .local v1, newState:I
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BTUI] onReceive() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->access$000(Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;Ljava/lang/String;)V

    .line 62
    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    if-nez v1, :cond_0

    .line 64
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->updateScreen()V
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->access$100(Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;)V

    goto :goto_0
.end method
