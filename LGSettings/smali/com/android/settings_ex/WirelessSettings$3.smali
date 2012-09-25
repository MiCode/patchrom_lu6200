.class Lcom/android/settings_ex/WirelessSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/WirelessSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 574
    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 577
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 580
    const-string v4, "availableArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 582
    .local v2, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "activeArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 584
    .local v1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "erroredArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 587
    .local v3, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 588
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    #getter for: Lcom/android/settings_ex/WirelessSettings;->bluetoothAvailable:Z
    invoke-static {v4}, Lcom/android/settings_ex/WirelessSettings;->access$100(Lcom/android/settings_ex/WirelessSettings;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 589
    iget-object v7, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    #calls: Lcom/android/settings_ex/WirelessSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v7, v4, v5, v6}, Lcom/android/settings_ex/WirelessSettings;->access$200(Lcom/android/settings_ex/WirelessSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 614
    .end local v1           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 595
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    #getter for: Lcom/android/settings_ex/WirelessSettings;->mBluetoothEnableForTether:Z
    invoke-static {v4}, Lcom/android/settings_ex/WirelessSettings;->access$300(Lcom/android/settings_ex/WirelessSettings;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 596
    const-string v4, "android.bluetooth.adapter.extra.STATE"

    const/high16 v5, -0x8000

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 612
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    #getter for: Lcom/android/settings_ex/WirelessSettings;->bluetoothAvailable:Z
    invoke-static {v4}, Lcom/android/settings_ex/WirelessSettings;->access$100(Lcom/android/settings_ex/WirelessSettings;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    #calls: Lcom/android/settings_ex/WirelessSettings;->updateState()V
    invoke-static {v4}, Lcom/android/settings_ex/WirelessSettings;->access$400(Lcom/android/settings_ex/WirelessSettings;)V

    goto :goto_0

    .line 599
    :sswitch_0
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    #getter for: Lcom/android/settings_ex/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v4}, Lcom/android/settings_ex/WirelessSettings;->access$000(Lcom/android/settings_ex/WirelessSettings;)Landroid/bluetooth/BluetoothPan;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 600
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    #setter for: Lcom/android/settings_ex/WirelessSettings;->mBluetoothEnableForTether:Z
    invoke-static {v4, v6}, Lcom/android/settings_ex/WirelessSettings;->access$302(Lcom/android/settings_ex/WirelessSettings;Z)Z

    goto :goto_1

    .line 605
    :sswitch_1
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings$3;->this$0:Lcom/android/settings_ex/WirelessSettings;

    #setter for: Lcom/android/settings_ex/WirelessSettings;->mBluetoothEnableForTether:Z
    invoke-static {v4, v6}, Lcom/android/settings_ex/WirelessSettings;->access$302(Lcom/android/settings_ex/WirelessSettings;Z)Z

    goto :goto_1

    .line 596
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
