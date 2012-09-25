.class Lcom/android/settings_ex/bluetooth/BluetoothUiStatus$2;
.super Landroid/os/Handler;
.source "BluetoothUiStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 74
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->nPhoneState:I
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->access$100(Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;)I

    move-result v2

    #setter for: Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->oPhoneState:I
    invoke-static {v1, v2}, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->access$002(Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;I)I

    .line 77
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v2}, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    #setter for: Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->nPhoneState:I
    invoke-static {v1, v2}, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->access$102(Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;I)I

    .line 78
    const-string v1, "BluetoothUiStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] mHandler... [EVENT_PHONE_STATE_CHANGED]: nState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->nPhoneState:I
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->access$100(Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v1, "LGBT_CNDTL_FUNCTION_BLOCK_DISCOVER_INCALL"

    invoke-static {v1}, Lcom/lge/config/BtFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->isVoiceConversation()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->access$300(Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getScanMode()I

    move-result v0

    .line 83
    .local v0, scanMode:I
    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->mManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->access$300(Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    .line 87
    .end local v0           #scanMode:I
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->sendIntentCallState()V
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;->access$400(Lcom/android/settings_ex/bluetooth/BluetoothUiStatus;)V

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
