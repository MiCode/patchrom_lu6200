.class public Lcom/broadcom/bt/app/opp/OppReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OppReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/opp/OppReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/app/opp/OppReceiver;->processServiceStateChange(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private handleLauncherAction_Exchange(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/broadcom/bt/app/opp/data/LauncherData;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 807
    if-eqz p2, :cond_0

    .line 808
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 809
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 810
    invoke-static {p1, v0, v1}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->showToast_ExchangingContact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v2, p3, Lcom/broadcom/bt/app/opp/data/LauncherData;->mMimeType:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->createAction_ClientExchangeRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 815
    const-class v1, Lcom/broadcom/bt/app/opp/client/OPPClientService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 816
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 818
    :cond_0
    return-void
.end method

.method private handleLauncherAction_Pull(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/broadcom/bt/app/opp/data/LauncherData;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 790
    if-eqz p2, :cond_0

    .line 791
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 792
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 794
    invoke-static {p1, v2, v2, v0, v1}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->showToast_Receiving(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v2, p3, Lcom/broadcom/bt/app/opp/data/LauncherData;->mMimeType:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->createAction_ClientPullRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 800
    const-class v1, Lcom/broadcom/bt/app/opp/client/OPPClientService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 801
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 803
    :cond_0
    return-void
.end method

.method private handleLauncherAction_Send(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/broadcom/bt/app/opp/data/LauncherData;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 691
    if-eqz p2, :cond_2

    .line 692
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 693
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 694
    iget-object v0, p3, Lcom/broadcom/bt/app/opp/data/LauncherData;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromMimeType(Ljava/lang/String;)I

    move-result v3

    .line 695
    const/4 v0, 0x0

    .line 697
    iget-object v4, p3, Lcom/broadcom/bt/app/opp/data/LauncherData;->mUriList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p3, Lcom/broadcom/bt/app/opp/data/LauncherData;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v6, :cond_0

    .line 698
    iget-object v0, p3, Lcom/broadcom/bt/app/opp/data/LauncherData;->mUriList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 699
    :cond_0
    if-nez v0, :cond_1

    iget-object v4, p3, Lcom/broadcom/bt/app/opp/data/LauncherData;->mExtraText:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 702
    :cond_1
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 745
    iget-object v4, p3, Lcom/broadcom/bt/app/opp/data/LauncherData;->mExtraText:Ljava/lang/String;

    iget-object v5, p3, Lcom/broadcom/bt/app/opp/data/LauncherData;->mMimeType:Ljava/lang/String;

    invoke-static {v0, v4, v5, v2, v1}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->createAction_ClientSendRequest(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 748
    const-class v4, Lcom/broadcom/bt/app/opp/client/OPPClientService;

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 751
    invoke-static {p1, v6, v3, v1, v2}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->showToast_Sending(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 756
    :cond_2
    return-void
.end method

.method private handleLauncherAction_SendMultiple(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/broadcom/bt/app/opp/data/LauncherData;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 760
    if-eqz p2, :cond_0

    .line 761
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 762
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 763
    iget-object v2, p3, Lcom/broadcom/bt/app/opp/data/LauncherData;->mMimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromMimeType(Ljava/lang/String;)I

    move-result v2

    .line 776
    iget-object v3, p3, Lcom/broadcom/bt/app/opp/data/LauncherData;->mUriList:Ljava/util/ArrayList;

    iget-object v4, p3, Lcom/broadcom/bt/app/opp/data/LauncherData;->mMimeType:Ljava/lang/String;

    invoke-static {v3, v4, v1, v0}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->createAction_ClientSendMultipleRequest(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 779
    const-class v4, Lcom/broadcom/bt/app/opp/client/OPPClientService;

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 782
    iget-object v4, p3, Lcom/broadcom/bt/app/opp/data/LauncherData;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {p1, v4, v2, v0, v1}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->showToast_Sending(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 786
    :cond_0
    return-void
.end method

.method private processAccessRequest(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    const-string v0, "bluetooth_opp_service"

    const-string v1, "SVC_NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/OppReceiver;->abortBroadcast()V

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    const-class v1, Lcom/broadcom/bt/app/opp/server/OPPServerService;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 151
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 155
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const-string v1, "OppReceiver"

    const-string v2, "Unable to process request"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processCleanupAction(Landroid/content/Context;Landroid/content/Intent;Z)Z
    .locals 12
    .parameter "context"
    .parameter "intent"
    .parameter "updateNotification"

    .prologue
    .line 488
    const/4 v5, 0x1

    .line 490
    .local v5, itemsDeleted:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 491
    .local v0, currentTimeMs:J
    const-string v8, "reset"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 492
    .local v7, set:Landroid/content/SharedPreferences;
    const-string v8, "time"

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/32 v10, 0xa4cb800

    add-long/2addr v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 496
    const-string v8, "OppReceiver"

    const-string v9, "******************Cleaning up old requests**************"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 500
    .local v4, edit:Landroid/content/SharedPreferences$Editor;
    const-string v8, "time"

    invoke-interface {v4, v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 501
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 502
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 503
    .local v6, resolver:Landroid/content/ContentResolver;
    sget-object v8, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "status != 190 AND status != 192 AND end_timestamp < "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/32 v10, 0x337f9800

    sub-long v10, v0, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    int-to-long v2, v8

    .line 517
    .local v2, deleted:J
    const-string v8, "OppReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Queue Cleanup Action: Deleted "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " entries in the OPP request queue provider"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_0

    .line 520
    const/4 v5, 0x1

    .line 524
    .end local v2           #deleted:J
    .end local v4           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v6           #resolver:Landroid/content/ContentResolver;
    :cond_0
    if-eqz v5, :cond_1

    if-eqz p3, :cond_1

    .line 525
    invoke-static {}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->refreshAll()V

    .line 527
    :cond_1
    return v5
.end method

.method private processCompleteHideAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 383
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "status >= 400 AND status < 600  AND (visibility IS NULL OR visibility == \'0\') "

    invoke-static {p1, v0, v1, v3, v2}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->deleteRequestOrHide(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 391
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "status = 200 AND direction = 0 AND (visibility IS NULL OR visibility == \'0\') "

    invoke-static {p1, v0, v1, v3, v2}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->deleteRequestOrHide(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 401
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "status = 200 AND direction = 1 AND (visibility IS NULL OR visibility == \'0\') "

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v3, v2}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->deleteRequestOrHide(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 408
    return-void
.end method

.method private processDisableEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 285
    sput-boolean v4, Lcom/broadcom/bt/app/opp/data/Constants;->OPP_SVC_AVAILABLE:Z

    .line 288
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 289
    const-class v1, Lcom/broadcom/bt/app/opp/client/OPPClientService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 291
    const-string v1, "OppReceiver"

    const-string v2, "Stopping OPPClientService...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 295
    const-string v1, "OppReceiver"

    const-string v2, "OPPClientService stopped...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-class v1, Lcom/broadcom/bt/app/opp/server/OPPServerService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 301
    const-string v1, "OppReceiver"

    const-string v2, "Stopping OPPServerService...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 305
    const-string v0, "OppReceiver"

    const-string v1, "OPPServerService stopped...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->cancelRequests_All(Landroid/content/ContentResolver;)I

    .line 318
    invoke-static {}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->clear()V

    .line 320
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 322
    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "brcm.cln"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 326
    sget-object v0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mInstance:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->finish()V

    .line 329
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/data/LauncherData;->clear(Landroid/content/Context;)V

    .line 330
    return-void
.end method

.method private processDuplicateAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 473
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 474
    const-string v1, "OppReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiver Duplicate for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/broadcom/bt/app/opp/notification/DuplicateHandleActivity;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 477
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 478
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 479
    return-void
.end method

.method private processEnableEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/32 v4, 0xa4cb800

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 179
    sput-boolean v1, Lcom/broadcom/bt/app/opp/data/Constants;->OPP_SVC_AVAILABLE:Z

    .line 182
    sget-object v0, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mInstance:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->init(Landroid/content/Context;)V

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 190
    invoke-static {v9}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getRmDeleteSelector(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 192
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 198
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 199
    const-string v3, "status"

    const/16 v6, 0x1f2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v3, "end_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 202
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, " ( status = 192 ) OR ( role = 1 AND status = 190 ) "

    invoke-virtual {v0, v3, v2, v6, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 220
    invoke-direct {p0, p1, p2, v8}, Lcom/broadcom/bt/app/opp/OppReceiver;->processCleanupAction(Landroid/content/Context;Landroid/content/Intent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    :cond_0
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    new-instance v6, Landroid/content/Intent;

    const-string v7, "brcm.cln"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 233
    if-eqz v1, :cond_1

    .line 234
    invoke-static {}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->refreshAll()V

    .line 241
    :cond_1
    new-instance v0, Lcom/broadcom/bt/app/opp/data/Job;

    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/data/Job;-><init>()V

    .line 242
    sget-object v1, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->mInstance:Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/opp/util/ExchangeFolderManager;->needsInitialization()Z

    move-result v1

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v8, v0}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getNextPendingRequest(Landroid/content/ContentResolver;ILcom/broadcom/bt/app/opp/data/Job;)Z

    move-result v0

    .line 250
    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 252
    :cond_2
    invoke-static {}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->createAction_ClientRestartRequest()Landroid/content/Intent;

    move-result-object v0

    .line 253
    const-class v1, Lcom/broadcom/bt/app/opp/client/OPPClientService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 254
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 258
    :cond_3
    invoke-static {}, Lcom/broadcom/bt/app/opp/data/OPPIntents;->createAction_ClientRestartRequest()Landroid/content/Intent;

    move-result-object v0

    .line 259
    const-class v1, Lcom/broadcom/bt/app/opp/server/OPPServerService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 260
    const-string v1, "OppReceiver"

    const-string v2, "**********************starting service "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 267
    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v0

    .line 268
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/data/LauncherData;->hasLauncherData(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 269
    iget-boolean v1, v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    if-eqz v1, :cond_5

    .line 270
    iput-boolean v8, v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 271
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/OppLauncherActivity;->openSettingsDevicePicker(Landroid/content/Context;)V

    .line 276
    :cond_4
    :goto_0
    return-void

    .line 273
    :cond_5
    invoke-static {p1}, Lcom/broadcom/bt/app/opp/data/LauncherData;->clear(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private processFileDeletedAction(Landroid/content/Context;Landroid/content/Intent;Z)Z
    .locals 8
    .parameter "context"
    .parameter "intent"
    .parameter "updateNotification"

    .prologue
    .line 540
    const/4 v3, 0x0

    .line 541
    .local v3, itemsDeleted:Z
    const-string v5, "filepath"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 542
    .local v2, filepath:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 543
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 544
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "3 = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    int-to-long v0, v5

    .line 547
    .local v0, deleted:J
    const-string v5, "OppReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file Delete Action: Deleted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " entries in the OPP request queue provider"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    .line 551
    const/4 v3, 0x1

    .line 553
    :cond_0
    if-eqz v3, :cond_1

    if-eqz p3, :cond_1

    .line 554
    invoke-static {}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->refreshAll()V

    .line 557
    .end local v0           #deleted:J
    .end local v4           #resolver:Landroid/content/ContentResolver;
    :cond_1
    return v3
.end method

.method private processHideAction(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "action"
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 348
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 349
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 350
    .local v2, uri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getRequestType_Direction_Status(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v0

    .line 352
    .local v0, rInfo:Lcom/broadcom/bt/app/opp/data/Job;
    if-nez v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 356
    :cond_0
    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 358
    :pswitch_0
    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 359
    invoke-static {p2, v2, v4, v4, v5}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->deleteRequestOrHide(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_0

    .line 362
    :cond_1
    invoke-static {p2, v2, v4, v4, v5}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->deleteRequestOrHide(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_0

    .line 367
    :pswitch_1
    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 368
    const/4 v3, 0x0

    invoke-static {p2, v2, v4, v4, v3}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->deleteRequestOrHide(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 375
    :goto_1
    iget-object v3, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-static {v1, v3, v4, v4}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->deleteDuplicateEntries(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 371
    :cond_2
    invoke-static {p2, v2, v4, v4, v5}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->deleteRequestOrHide(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_1

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processIncomingFileConfirmationAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 611
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 612
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 614
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 615
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 616
    return-void
.end method

.method private processLauncherAction(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "action"
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 668
    new-instance v0, Lcom/broadcom/bt/app/opp/data/LauncherData;

    invoke-direct {v0}, Lcom/broadcom/bt/app/opp/data/LauncherData;-><init>()V

    .line 669
    .local v0, data:Lcom/broadcom/bt/app/opp/data/LauncherData;
    invoke-virtual {v0, p2}, Lcom/broadcom/bt/app/opp/data/LauncherData;->restore(Landroid/content/Context;)V

    .line 670
    invoke-static {p2}, Lcom/broadcom/bt/app/opp/data/LauncherData;->clear(Landroid/content/Context;)V

    .line 672
    iget-object v1, v0, Lcom/broadcom/bt/app/opp/data/LauncherData;->mAction:Ljava/lang/String;

    .line 673
    .local v1, launcherAction:Ljava/lang/String;
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 675
    .local v2, peerDevice:Landroid/bluetooth/BluetoothDevice;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 676
    invoke-direct {p0, p2, v2, v0}, Lcom/broadcom/bt/app/opp/OppReceiver;->handleLauncherAction_Send(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/broadcom/bt/app/opp/data/LauncherData;)V

    .line 687
    :goto_0
    return-void

    .line 677
    :cond_0
    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 678
    invoke-direct {p0, p2, v2, v0}, Lcom/broadcom/bt/app/opp/OppReceiver;->handleLauncherAction_SendMultiple(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/broadcom/bt/app/opp/data/LauncherData;)V

    goto :goto_0

    .line 679
    :cond_1
    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 680
    invoke-direct {p0, p2, v2, v0}, Lcom/broadcom/bt/app/opp/OppReceiver;->handleLauncherAction_Pull(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/broadcom/bt/app/opp/data/LauncherData;)V

    goto :goto_0

    .line 681
    :cond_2
    const-string v3, "com.broadcom.bt.app.opp.action.OPP_EXCH"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 682
    invoke-direct {p0, p2, v2, v0}, Lcom/broadcom/bt/app/opp/OppReceiver;->handleLauncherAction_Exchange(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Lcom/broadcom/bt/app/opp/data/LauncherData;)V

    goto :goto_0

    .line 684
    :cond_3
    const-string v3, "OppReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid launcher action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private processOpenAndListAction(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 418
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 428
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getRequest(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v0

    .line 430
    if-nez v0, :cond_0

    .line 431
    const-string v0, "OppReceiver"

    const-string v2, "Error: Can not get data from db. Removing notification"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 434
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->remove(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 464
    :goto_0
    return-void

    .line 440
    :cond_0
    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusSuccess(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    const-string v3, "text/x-vcard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    const-string v3, "text/x-vcalendar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    const-string v3, "text/x-vnote"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 448
    invoke-static {p2, v0}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->openReceivedFile(Landroid/content/Context;Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 450
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-static {p2, v1, v0, v2, v3}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->deleteRequestOrHide(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 452
    const-string v0, "notification"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    const-string v1, "OppReceiver"

    const-string v2, "Unable to hide notification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 459
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/broadcom/bt/app/opp/notification/OppTransferActivity;

    invoke-direct {v0, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 460
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 461
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 462
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 435
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private processOpenInboundPendingTransferHistory(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 652
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 653
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 655
    const-string v1, "direction"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    const-string v1, "status"

    const/16 v2, 0xbe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 657
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 658
    return-void
.end method

.method private processOpenInboundTransferHistory(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 628
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 629
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 631
    const-string v1, "direction"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 632
    if-eqz p3, :cond_0

    .line 633
    const-string v1, "android.btopp.intent.extra.SHOW_ALL"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 637
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 638
    return-void
.end method

.method private processOpenOutboundPendingTransferHistory(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 642
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 643
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 645
    const-string v1, "direction"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    const-string v1, "status"

    const/16 v2, 0xbe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 647
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 648
    return-void
.end method

.method private processOpenOutboundTransferHistory(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 619
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/bluetooth/opp/BluetoothOppTransferHistory;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 620
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 622
    const-string v1, "direction"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 623
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 624
    return-void
.end method

.method private processServiceStateChange(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "action"
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 164
    const-string v1, "bt_svc_state"

    const/4 v2, -0x1

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 165
    .local v0, state:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 166
    invoke-direct {p0, p2, p3}, Lcom/broadcom/bt/app/opp/OppReceiver;->processEnableEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 168
    invoke-direct {p0, p2, p3}, Lcom/broadcom/bt/app/opp/OppReceiver;->processDisableEvent(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private processTransferCompleteAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v11, 0x1ea

    const/4 v10, 0x1

    const/4 v8, -0x1

    .line 561
    const-string v7, "role"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 562
    .local v5, roleType:I
    const-string v7, "direction"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 563
    .local v1, direction:I
    const-string v7, "status"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 564
    .local v6, status:I
    const-string v7, "requesttype"

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 565
    .local v4, requestType:I
    const-string v7, "filecount"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 567
    .local v0, completedRequests:I
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, mimeType:Ljava/lang/String;
    const-string v7, "filepath"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, filePath:Ljava/lang/String;
    const-string v7, "OppReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processTransferCompleteAction  role type is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "status is"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "completeRequest is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    if-nez v5, :cond_2

    .line 574
    invoke-static {v6}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v7

    if-nez v7, :cond_0

    if-ne v11, v6, :cond_1

    .line 577
    :cond_0
    invoke-static {p1, v4, v3, v2}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->showToast_ClientResult_Error(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 607
    :goto_0
    return-void

    .line 580
    :cond_1
    invoke-static {p1, v4, v3, v2}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->showToast_ClientResult_Success(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 586
    :cond_2
    if-le v0, v10, :cond_3

    .line 587
    invoke-static {p1, v4, v0}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->showToast_ServerResult_Success(Landroid/content/Context;II)V

    goto :goto_0

    .line 590
    :cond_3
    invoke-static {v6}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x1e6

    if-ne v6, v7, :cond_5

    :cond_4
    if-eq v11, v6, :cond_5

    const/16 v7, 0xc0

    if-ne v7, v6, :cond_6

    .line 599
    :cond_5
    invoke-static {p1, v4, v3, v2}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->showToast_ServerResult_Error(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 602
    :cond_6
    invoke-static {p1, v4, v3, v2}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->showToast_ServerResult_Success(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processUserConfirmationTimeoutAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 661
    const-string v1, "JOB_ID"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 662
    .local v0, requestId:I
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->cancelFileConfirmNotification(I)V

    .line 663
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, action:Ljava/lang/String;
    const-string v2, "OppReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v2, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    invoke-direct {p0, v0, p1, p2}, Lcom/broadcom/bt/app/opp/OppReceiver;->processLauncherAction(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v2, "broadcom.android.bluetooth.intent.action.BT_SERVICE_ACCESS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    invoke-direct {p0, v0, p1, p2}, Lcom/broadcom/bt/app/opp/OppReceiver;->processAccessRequest(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 81
    :cond_2
    const-string v2, "broadcom.bt.intent.action.BT_SVC_STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 82
    const-string v2, "bluetooth_opp_service"

    const-string v3, "bt_svc_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/broadcom/bt/app/opp/OppReceiver$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/broadcom/bt/app/opp/OppReceiver$1;-><init>(Lcom/broadcom/bt/app/opp/OppReceiver;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 89
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 91
    .end local v1           #t:Ljava/lang/Thread;
    :cond_3
    const-string v2, "android.btopp.intent.action.OPEN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "android.btopp.intent.action.LIST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 93
    :cond_4
    invoke-direct {p0, v0, p1, p2}, Lcom/broadcom/bt/app/opp/OppReceiver;->processOpenAndListAction(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    :cond_5
    const-string v2, "android.btopp.intent.action.OPEN_OUTBOUND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/opp/OppReceiver;->processOpenOutboundTransferHistory(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 96
    :cond_6
    const-string v2, "android.btopp.intent.action.OPEN_INBOUND"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 97
    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/broadcom/bt/app/opp/OppReceiver;->processOpenInboundTransferHistory(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_0

    .line 98
    :cond_7
    const-string v2, "android.btopp.intent.action.OPEN_RECEIVED_FILES"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 100
    invoke-direct {p0, p1, p2, v5}, Lcom/broadcom/bt/app/opp/OppReceiver;->processOpenInboundTransferHistory(Landroid/content/Context;Landroid/content/Intent;Z)V

    goto :goto_0

    .line 101
    :cond_8
    const-string v2, "brcm.OPEN_OUTBOUND_PENDING_TRANSFER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/opp/OppReceiver;->processOpenOutboundPendingTransferHistory(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 104
    :cond_9
    const-string v2, "brcm.OPEN_INBOUND_PENDING_TRANSFER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/opp/OppReceiver;->processOpenInboundPendingTransferHistory(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 107
    :cond_a
    const-string v2, "android.btopp.intent.action.HIDE_COMPLETE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/opp/OppReceiver;->processCompleteHideAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 109
    :cond_b
    const-string v2, "android.btopp.intent.action.HIDE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 110
    invoke-direct {p0, v0, p1, p2}, Lcom/broadcom/bt/app/opp/OppReceiver;->processHideAction(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 111
    :cond_c
    const-string v2, "brcm.DUPLICATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/opp/OppReceiver;->processDuplicateAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 113
    :cond_d
    const-string v2, "brcm.cln"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 114
    invoke-direct {p0, p1, p2, v5}, Lcom/broadcom/bt/app/opp/OppReceiver;->processCleanupAction(Landroid/content/Context;Landroid/content/Intent;Z)Z

    goto/16 :goto_0

    .line 115
    :cond_e
    const-string v2, "broadcom.bt.app.io.action.file_deleted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 116
    invoke-direct {p0, p1, p2, v5}, Lcom/broadcom/bt/app/opp/OppReceiver;->processFileDeletedAction(Landroid/content/Context;Landroid/content/Intent;Z)Z

    goto/16 :goto_0

    .line 117
    :cond_f
    const-string v2, "android.btopp.intent.action.TRANSFER_COMPLETE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/opp/OppReceiver;->processTransferCompleteAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 119
    :cond_10
    const-string v2, "android.btopp.intent.action.CONFIRM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/opp/OppReceiver;->processIncomingFileConfirmationAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 122
    :cond_11
    const-string v2, "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/app/opp/OppReceiver;->processUserConfirmationTimeoutAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
