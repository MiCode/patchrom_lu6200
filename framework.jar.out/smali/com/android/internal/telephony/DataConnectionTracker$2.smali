.class Lcom/android/internal/telephony/DataConnectionTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/DataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/DataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 508
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, action:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive: action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 510
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 511
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-boolean v5, v6, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    .line 512
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->stopNetStatPoll()V

    .line 513
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->startNetStatPoll()V

    .line 517
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v5}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/internal/telephony/LGfeature;->LCDon_PSretry:Z

    if-eqz v5, :cond_0

    .line 518
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v6, "Send Message : EVENT_PS_RETRY_RESET"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 519
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const v7, 0x42026

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 523
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->restartDataStallAlarm()V

    .line 638
    :cond_1
    :goto_0
    return-void

    .line 524
    :cond_2
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 525
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-boolean v6, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mIsScreenOn:Z

    .line 526
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->stopNetStatPoll()V

    .line 527
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->startNetStatPoll()V

    .line 528
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->restartDataStallAlarm()V

    goto :goto_0

    .line 529
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnectionTracker;->getActionIntentReconnectAlarm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 530
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reconnect alarm. Previous state was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 531
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->onActionIntentReconnectAlarm(Landroid/content/Intent;)V

    goto :goto_0

    .line 532
    :cond_4
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnectionTracker;->getActionIntentDataStallAlarm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 533
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5, p2}, Lcom/android/internal/telephony/DataConnectionTracker;->onActionIntentDataStallAlarm(Landroid/content/Intent;)V

    goto :goto_0

    .line 534
    :cond_5
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 535
    const-string/jumbo v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 537
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_6

    :goto_1
    iput-boolean v5, v7, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    goto :goto_0

    :cond_6
    move v5, v6

    goto :goto_1

    .line 538
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    :cond_7
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 539
    const-string/jumbo v7, "wifi_state"

    const/4 v8, 0x4

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    move v2, v5

    .line 542
    .local v2, enabled:Z
    :goto_2
    if-nez v2, :cond_1

    .line 545
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iput-boolean v6, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    goto/16 :goto_0

    .end local v2           #enabled:Z
    :cond_8
    move v2, v6

    .line 539
    goto :goto_2

    .line 549
    :cond_9
    const-string v7, "android.intent.action.IPV6_STATUS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 550
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v8, "[EHRPD_IPV6] !!!!!!!IPV6_STATUS CHANGE!!!!!!!!!"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 551
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/internal/telephony/LGfeature;->IPv6_block_handle_by_SDM:Z

    if-ne v7, v5, :cond_1

    .line 552
    const-string/jumbo v7, "ipv6_status_enable"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 553
    .local v3, isEnable:Z
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[EHRPD_IPV6] !!!!!!!IPV6_STATUS CHANGE ==> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "!!!!!!!!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    .line 554
    if-eqz v3, :cond_a

    .line 556
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "data_ehrpd_internet_ipv6_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 557
    const-string/jumbo v5, "ril.current.ehrpdipv6enable"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->send_defaultPDN_Table()V

    .line 559
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->enable_ehrpd_internet_ipv6()V

    goto/16 :goto_0

    .line 564
    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "data_ehrpd_internet_ipv6_enabled"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 565
    const-string/jumbo v5, "ril.current.ehrpdipv6enable"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->send_defaultPDN_Table()V

    .line 567
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->disable_ehrpd_internet_ipv6()V

    goto/16 :goto_0

    .line 574
    .end local v3           #isEnable:Z
    :cond_b
    const-string v7, "com.skt.CALL_PROTECTION_STATUS_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 575
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/internal/telephony/LGfeature;->protection_voice_all:Z

    if-ne v7, v5, :cond_1

    .line 578
    const-string/jumbo v7, "on_off"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 579
    .restart local v2       #enabled:Z
    const-string v7, "LGE_DATA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CALL_PROTECTION_STATUS_CHANGED ::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    if-nez v2, :cond_c

    .line 582
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionManager;->setBlockPacketMenuProcess(Z)V

    .line 584
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto/16 :goto_0

    .line 587
    :cond_c
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v6, v6, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/DataConnectionManager;->setBlockPacketMenuProcess(Z)V

    goto/16 :goto_0

    .line 591
    .end local v2           #enabled:Z
    :cond_d
    const-string v7, "com.skt.CALL_PROTECTION_MENU_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 594
    const-string v7, "LGE_DATA"

    const-string v8, "com.skt.CALL_PROTECTION_MENU_OFF"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/internal/telephony/LGfeature;->PROTECTION_VOICE_CALL:Z

    if-ne v7, v5, :cond_1

    .line 596
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/DataConnectionManager;->setAlreadyAppUsedPacket(Z)V

    .line 597
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketDrop(Z)V

    goto/16 :goto_0

    .line 600
    :cond_e
    const-string v7, "com.skt.CALL_PROTECTION_MENU_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 602
    const-string v7, "LGE_DATA"

    const-string v8, "com.skt.CALL_PROTECTION_MENU_ON"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/DataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v7, v7, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v7}, Lcom/android/internal/telephony/CommandsInterface;->getLGfeatures()Lcom/android/internal/telephony/LGfeature;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/internal/telephony/LGfeature;->protection_voice_all:Z

    if-ne v7, v5, :cond_1

    .line 605
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionManager;->setAlreadyAppUsedPacket(Z)V

    goto/16 :goto_0

    .line 611
    :cond_f
    const-string v6, "com.skt.test_intent"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 613
    const-string v5, "LGE_DATA"

    const-string v6, "com.skt.test_intent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->dataMgr:Lcom/android/internal/telephony/DataConnectionManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionManager;->functionForPacketList()V

    goto/16 :goto_0

    .line 616
    :cond_10
    const-string v6, "com.lge.GprsAttachedIsTrue"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 618
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v5, :cond_1

    .line 619
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v5, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 620
    .local v1, defaultContext:Lcom/android/internal/telephony/ApnContext;
    const-string v5, "LGE_DATA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "com.lge.GprsAttachedIsTrue  default :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v5, v6, :cond_1

    .line 623
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/DataConnectionTracker;->onDataConnectionAttached()V

    goto/16 :goto_0

    .line 629
    .end local v1           #defaultContext:Lcom/android/internal/telephony/ApnContext;
    :cond_11
    const-string v6, "com.android.internal.telephony.dataconnectiontracker.intent_set_fail_data_setup_counter"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 630
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v7, "fail_data_setup_counter"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v6, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    .line 631
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    const-string v6, "fail_data_setup_fail_cause"

    sget-object v7, Lcom/android/internal/telephony/DataConnection$FailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnection$FailCause;->getErrorCode()I

    move-result v7

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/DataConnection$FailCause;->fromInt(I)Lcom/android/internal/telephony/DataConnection$FailCause;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 634
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set mFailDataSetupCounter="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget v7, v7, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupCounter:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mFailDataSetupFailCause="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/DataConnectionTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/DataConnectionTracker;->mFailDataSetupFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/DataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
