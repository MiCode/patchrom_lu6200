.class Lcom/android/settings_ex/AirplaneModeEnabler$1;
.super Landroid/os/Handler;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AirplaneModeEnabler;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/AirplaneModeEnabler$1;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .local v1, timer:Ljava/util/Timer;
    new-instance v0, Lcom/android/settings_ex/AirplaneModeEnabler$1$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/AirplaneModeEnabler$1$1;-><init>(Lcom/android/settings_ex/AirplaneModeEnabler$1;)V

    .local v0, task:Ljava/util/TimerTask;
    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 93
    .end local v0           #task:Ljava/util/TimerTask;
    .end local v1           #timer:Ljava/util/Timer;
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/AirplaneModeEnabler$1;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    #setter for: Lcom/android/settings_ex/AirplaneModeEnabler;->mIsStateChanging:Z
    invoke-static {v2, v5}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$002(Lcom/android/settings_ex/AirplaneModeEnabler;Z)Z

    goto :goto_0

    .line 99
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/AirplaneModeEnabler$1;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    iget-object v3, p0, Lcom/android/settings_ex/AirplaneModeEnabler$1;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    #getter for: Lcom/android/settings_ex/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    invoke-static {v3}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$100(Lcom/android/settings_ex/AirplaneModeEnabler;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings_ex/AirplaneModeEnabler;->serviceState:Landroid/telephony/ServiceState;

    invoke-static {}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$200()Z

    move-result v2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/AirplaneModeEnabler$1;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    iget-object v2, v2, Lcom/android/settings_ex/AirplaneModeEnabler;->serviceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 105
    const-string v2, "Airplanemodeenabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STATE_POWER_OFF airplanemode_on_off"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$300()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings_ex/AirplaneModeEnabler$1;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    #calls: Lcom/android/settings_ex/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v2}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$400(Lcom/android/settings_ex/AirplaneModeEnabler;)V

    invoke-static {v6}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$302(Z)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$200()Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    const-string v2, "Airplanemodeenabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in else first ifglobal_airplane"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$200()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings_ex/AirplaneModeEnabler$1;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    iget-object v2, v2, Lcom/android/settings_ex/AirplaneModeEnabler;->serviceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings_ex/AirplaneModeEnabler$1;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    iget-object v2, v2, Lcom/android/settings_ex/AirplaneModeEnabler;->serviceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Lcom/android/settings_ex/AirplaneModeEnabler$1;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    iget-object v2, v2, Lcom/android/settings_ex/AirplaneModeEnabler;->serviceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 114
    :cond_4
    const-string v2, "Airplanemodeenabler"

    const-string v3, "in 2nd if"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings_ex/AirplaneModeEnabler$1;->this$0:Lcom/android/settings_ex/AirplaneModeEnabler;

    #calls: Lcom/android/settings_ex/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v2}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$400(Lcom/android/settings_ex/AirplaneModeEnabler;)V

    invoke-static {v6}, Lcom/android/settings_ex/AirplaneModeEnabler;->access$302(Z)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
