.class Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothNameDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->updateDeviceName()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x8000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->updateDeviceName()V

    goto :goto_0
.end method
