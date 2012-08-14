.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0
    .parameter

    .prologue
    .line 767
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 767
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 769
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 770
    .local v3, action:Ljava/lang/String;
    const-string v10, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 771
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 772
    :try_start_0
    const-string v10, "connected"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 773
    .local v9, usbConnected:Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const-string v12, "ecm"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    #setter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v10, v12}, Lcom/android/server/connectivity/Tethering;->access$202(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 778
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "tether_mode_save"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_3

    const/4 v4, 0x1

    .line 782
    .local v4, automationTether:Z
    :goto_0
    if-eqz v9, :cond_0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-boolean v10, v10, Lcom/android/server/connectivity/Tethering;->alarmTetherSwitch:Z

    if-nez v10, :cond_0

    .line 783
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.AUTOMATION_TETHER"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 784
    .local v2, AutomationThetIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$400()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v2, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    iput-object v12, v10, Lcom/android/server/connectivity/Tethering;->AutomationTetherONIntent:Landroid/app/PendingIntent;

    .line 785
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/server/connectivity/Tethering;->alarmTetherSwitch:Z

    .line 786
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->am:Landroid/app/AlarmManager;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;)Landroid/app/AlarmManager;

    move-result-object v10

    const/4 v12, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    iget v15, v15, Lcom/android/server/connectivity/Tethering;->AutomationSetTime:I

    int-to-long v15, v15

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v15, v15, Lcom/android/server/connectivity/Tethering;->AutomationTetherONIntent:Landroid/app/PendingIntent;

    invoke-virtual {v10, v12, v13, v14, v15}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 791
    .end local v2           #AutomationThetIntent:Landroid/content/Intent;
    :cond_0
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 792
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v12, 0x1

    #calls: Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    invoke-static {v10, v12}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;Z)V

    .line 794
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v12, 0x0

    #setter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v10, v12}, Lcom/android/server/connectivity/Tethering;->access$602(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 797
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v12, 0x1

    iput-boolean v12, v10, Lcom/android/server/connectivity/Tethering;->USB_Connected_Status:Z

    .line 799
    monitor-exit v11

    .line 858
    .end local v4           #automationTether:Z
    .end local v9           #usbConnected:Z
    :cond_2
    :goto_1
    return-void

    .line 778
    .restart local v9       #usbConnected:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 799
    .end local v9           #usbConnected:Z
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 800
    :cond_4
    const-string v10, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 801
    const-string v10, "Tethering"

    const-string v11, "Tethering got CONNECTIVITY_ACTION"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string v10, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    .line 804
    .local v6, info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v10, v11, v6}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1

    .line 809
    .end local v6           #info:Landroid/net/NetworkInfo;
    :cond_5
    const-string v10, "android.intent.action.AUTOMATION_TETHER"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 811
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/server/connectivity/Tethering;->alarmTetherSwitch:Z

    .line 812
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto :goto_1

    .line 816
    :cond_6
    const-string v10, "com.lge.wifi.sap.WIFI_SAP_STATION_ASSOC"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    const-string v10, "com.lge.wifi.sap.WIFI_SAP_STATION_DISASSOC"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 819
    :cond_7
    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->getOperator()Ljava/lang/String;

    move-result-object v10

    const-string v11, "ATT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {}, Lcom/lge/wifi/WifiLgeConfig;->getCountry()Ljava/lang/String;

    move-result-object v10

    const-string v11, "US"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 820
    invoke-static {}, Lcom/lge/wifi_iface/WifiIfaceManager;->getWifiSapIfaceIface()Lcom/lge/wifi_iface/WifiSapIfaceIface;

    move-result-object v10

    invoke-interface {v10}, Lcom/lge/wifi_iface/WifiSapIfaceIface;->getAllAssocMacListATT()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    .line 821
    .local v5, i:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$400()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wifi_ap_current_max_client"

    const/16 v12, 0x8

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 822
    .local v7, maxCount:I
    const-string v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Tethering got WIFI_SAP_STATION_ASSOC_ACTION num = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "max = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-boolean v10, v10, Lcom/android/server/connectivity/Tethering;->sWifiTethered:Z

    if-eqz v10, :cond_8

    if-gt v5, v7, :cond_8

    .line 825
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-boolean v10, v10, Lcom/android/server/connectivity/Tethering;->sUsbTethered:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-boolean v11, v11, Lcom/android/server/connectivity/Tethering;->sBluetoothTethered:Z

    or-int/2addr v10, v11

    if-eqz v10, :cond_9

    .line 826
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$900()[I

    move-result-object v11

    aget v11, v11, v5

    #calls: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static {v10, v11}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;I)V

    .line 830
    :cond_8
    :goto_2
    if-ne v7, v5, :cond_2

    .line 831
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const v11, 0x1080078

    #calls: Lcom/android/server/connectivity/Tethering;->showMaxClientReachedNotification(I)V
    invoke-static {v10, v11}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_1

    .line 828
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1100()[I

    move-result-object v11

    aget v11, v11, v5

    #calls: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static {v10, v11}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;I)V

    goto :goto_2

    .line 833
    .end local v5           #i:I
    .end local v7           #maxCount:I
    :cond_a
    const-string v10, "com.lge.wifi.sap.WIFI_SAP_MAX_REACHED"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 839
    const-string v10, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 840
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    .line 842
    :try_start_1
    const-string v10, "Tethering"

    const-string v12, "youtack.joo, ACTION_ANY_DATA_CONNECTION_STATE_CHANGED RECEIVED!"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const-class v10, Lcom/android/internal/telephony/Phone$DataState;

    const-string v12, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/Phone$DataState;

    .line 845
    .local v8, state:Lcom/android/internal/telephony/Phone$DataState;
    const/4 v1, 0x0

    .line 846
    .local v1, AUTO_TETHERING_ATT:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    #getter for: Lcom/android/server/connectivity/Tethering;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v10}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "auto_tether_enable"

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 848
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-boolean v10, v10, Lcom/android/server/connectivity/Tethering;->USB_Connected_Status:Z

    if-eqz v10, :cond_b

    const/4 v10, 0x1

    if-ne v1, v10, :cond_b

    sget-object v10, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v8, v10, :cond_b

    .line 850
    const-string v10, "Tethering"

    const-string v12, "youtack.joo, AUTOMATIC TETHERING START!"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    .line 854
    :cond_b
    monitor-exit v11

    goto/16 :goto_1

    .end local v1           #AUTO_TETHERING_ATT:I
    .end local v8           #state:Lcom/android/internal/telephony/Phone$DataState;
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v10
.end method
