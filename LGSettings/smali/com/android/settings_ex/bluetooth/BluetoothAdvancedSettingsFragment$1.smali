.class Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAdvancedSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "broadcom.bt.intent.action.BT_SVC_STATE_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-string v2, "bt_svc_state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 74
    .local v0, state:I
    const-string v2, "bt_svc_name"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, svcName:Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 83
    .end local v0           #state:I
    .end local v1           #svcName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local v0       #state:I
    .restart local v1       #svcName:Ljava/lang/String;
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->initPreference(Landroid/content/Intent;)V
    invoke-static {v2, p2}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;Landroid/content/Intent;)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
