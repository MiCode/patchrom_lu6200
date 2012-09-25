.class Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOppBtEnableActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "ctx"
    .parameter "i"

    .prologue
    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/16 v3, 0xa

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 71
    .local v1, state:I
    packed-switch v1, :pswitch_data_0

    .line 79
    :pswitch_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mBtnPositive:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->access$000(Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    .end local v1           #state:I
    :cond_0
    :goto_0
    return-void

    .line 73
    .restart local v1       #state:I
    :pswitch_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->dismiss()V

    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->mBtnPositive:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;->access$000(Lcom/android/bluetooth/opp/BluetoothOppBtEnableActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
