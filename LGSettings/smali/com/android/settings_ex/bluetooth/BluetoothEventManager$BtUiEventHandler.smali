.class Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BtUiEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 12
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 556
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, action:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[BTUI] onReceive()... "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    .line 575
    const-string v6, "android.bluetooth.intent.action.AUTHORIZE_REJECTED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 576
    const-string v6, "broadcom.android.bluetooth.intent.SERVICE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 577
    .local v4, service:Ljava/lang/String;
    const-string v6, "ERROR_CODE"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, errorReason:Ljava/lang/String;
    if-eqz v4, :cond_0

    if-nez v1, :cond_1

    .line 627
    .end local v1           #errorReason:Ljava/lang/String;
    .end local v4           #service:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 580
    .restart local v1       #errorReason:Ljava/lang/String;
    .restart local v4       #service:Ljava/lang/String;
    :cond_1
    const-string v6, "service_ftp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "NO_SDCARD"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 581
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    const v7, 0x7f080af0

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->BtUiToast(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1900(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :cond_2
    const-string v6, "service_ftp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "SDCARD_FULL"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 583
    const-string v6, "FILE_NAME"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, fileName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 586
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    const v7, 0x7f080af4

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->BtUiToast(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1900(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    goto :goto_0

    .line 591
    .end local v1           #errorReason:Ljava/lang/String;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v4           #service:Ljava/lang/String;
    :cond_3
    const-string v6, "com.lge.bluetooth.toast_msg"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 592
    const-string v6, "toast_msg"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, message:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 594
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->BtUiToast(Ljava/lang/String;)V
    invoke-static {v6, v3}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1900(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    goto :goto_0

    .line 599
    .end local v3           #message:Ljava/lang/String;
    :cond_4
    const-string v6, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 600
    const-string v6, "android.bluetooth.pbap.intent.PBAP_STATE"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 602
    .local v5, state:I
    const-string v6, "LGBT_CNDTL_SCENARIO_VZW_SHOW_PBAP_CONN_TOAST"

    invoke-static {v6}, Lcom/lge/config/BtFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 603
    if-ne v5, v11, :cond_0

    .line 604
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    const v7, 0x7f080c31

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->BtUiToast(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1900(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 610
    :cond_5
    invoke-static {}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$2000()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 611
    if-ne v5, v11, :cond_6

    .line 612
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    const-string v7, "PBAP Connected"

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->BtUiToast(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1900(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 613
    :cond_6
    if-nez v5, :cond_0

    .line 614
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEventManager$BtUiEventHandler;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    const-string v7, "PBAP Disconnected"

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->BtUiToast(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->access$1900(Lcom/android/settings_ex/bluetooth/BluetoothEventManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 620
    .end local v5           #state:I
    :cond_7
    const-string v6, "voice_video_record_playing"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 621
    sput-boolean v10, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->isRecordStarted:Z

    goto/16 :goto_0

    .line 623
    :cond_8
    const-string v6, "voice_video_record_finish"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 624
    sput-boolean v9, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->isRecordStarted:Z

    goto/16 :goto_0
.end method
