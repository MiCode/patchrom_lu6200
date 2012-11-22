.class Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "LgBtUiHiddenSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    const/high16 v4, -0x8000

    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    const-string v3, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 120
    .local v2, prevState:I
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 122
    .local v1, newState:I
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffTest:Z
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$000(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mInterval:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$200(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    #setter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->ONOFF_INTERVAL:I
    invoke-static {v3, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$102(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;I)I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_5

    const/16 v3, 0xc

    if-ne v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    const-string v4, "[BTUI] ### OnOff Test : ON success"

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$300(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->ONOFF_INTERVAL:I
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$100(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)I

    move-result v3

    if-lez v3, :cond_0

    .line 130
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BTUI] ### OnOff Test : wait ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->ONOFF_INTERVAL:I
    invoke-static {v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$100(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$300(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->ONOFF_INTERVAL:I
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$100(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    const-string v4, "[BTUI] ### OnOff Test : OFF start"

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$300(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$400(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 167
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mDoTurnOn:Z
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$1000(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v1, v7, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #setter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mDoTurnOn:Z
    invoke-static {v3, v6}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$1002(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Z)Z

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BtUiSleep(I)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$400(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #setter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mIsSspDebug:Z
    invoke-static {v3, v6}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$1102(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Z)Z

    .end local v1           #newState:I
    .end local v2           #prevState:I
    :cond_3
    return-void

    .restart local v1       #newState:I
    .restart local v2       #prevState:I
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BTUI] #OnOff Test# : ### ON failed ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffTestCount:I
    invoke-static {v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$500(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : state ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ###"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$300(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->closeOnOffTestDialog()V
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$600(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Turn On failed ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffTestCount:I
    invoke-static {v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$500(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mDispMsg:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$702(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->onOnOffTestDialog()V
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$800(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)V

    goto/16 :goto_1

    :cond_5
    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    if-ne v1, v7, :cond_7

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$508(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)I

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BTUI] ### OnOff Test : OFF success ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffTestCount:I
    invoke-static {v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$500(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$300(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffDialog:Landroid/app/AlertDialog;
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$900(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)Landroid/app/AlertDialog;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bluetooth On/Off Test ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffTestCount:I
    invoke-static {v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$500(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->ONOFF_INTERVAL:I
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$100(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)I

    move-result v3

    if-lez v3, :cond_6

    .line 151
    :try_start_1
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BTUI] ### OnOff Test : wait ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->ONOFF_INTERVAL:I
    invoke-static {v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$100(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$300(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->ONOFF_INTERVAL:I
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$100(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 156
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    const-string v4, "[BTUI] ### OnOff Test : ON start"

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$300(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$400(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto/16 :goto_1

    .line 159
    :cond_7
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BTUI] ### OnOff Test : ### OFF failed ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffTestCount:I
    invoke-static {v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$500(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : state ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") ###"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$300(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->closeOnOffTestDialog()V
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$600(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Turn Off failed ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #getter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mOnOffTestCount:I
    invoke-static {v5}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$500(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->mDispMsg:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$702(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment$1;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->onOnOffTestDialog()V
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->access$800(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;)V

    goto/16 :goto_1

    .line 153
    :catch_0
    move-exception v3

    goto :goto_2

    .line 132
    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method
