.class public final Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;
.super Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;
.source "MSimCdmaDataConnectionTracker.java"


# instance fields
.field private mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

.field private mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisconnectPendingCount:I

.field protected mPendingDataDisableCompleteMsg:Landroid/os/Message;

.field protected mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

.field protected mSubscription:I

.field mSubscriptionData:Lcom/android/internal/telephony/Subscription;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/MSimCDMAPhone;)V
    .locals 3
    .parameter "p"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    .line 57
    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    .line 59
    iput v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    .line 66
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    .line 67
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->getSubscription()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mSubscription:I

    .line 68
    iget v1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mSubscription:I

    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getDataSubscription()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    .line 69
    return-void
.end method


# virtual methods
.method protected broadcastMessenger()V
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->broadcastMessenger()V

    goto :goto_0
.end method

.method public cleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .parameter "cause"

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    .line 268
    return-void
.end method

.method public cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "cause"
    .parameter "disconnectAllCompleteMsg"

    .prologue
    .line 271
    const-string v1, "cleanUpAllConnections"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 272
    if-eqz p2, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_0
    const v1, 0x4201e

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 277
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 278
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 279
    return-void
.end method

.method protected cleanUpConnection(ZLjava/lang/String;Z)V
    .locals 9
    .parameter "tearDown"
    .parameter "reason"
    .parameter "doAll"

    .prologue
    const v8, 0x4200f

    const/4 v7, 0x0

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpConnection: reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 127
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_0

    .line 128
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 130
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 131
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 134
    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_0
    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    .line 135
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 137
    const/4 v4, 0x0

    .line 138
    .local v4, notificationDeferred:Z
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .line 139
    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v1, :cond_1

    .line 140
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 142
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz p1, :cond_3

    .line 143
    if-eqz p3, :cond_2

    .line 144
    const-string v5, "cleanUpConnection: teardown, conn.tearDownAll"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v5

    invoke-virtual {p0, v8, v5, v7, p2}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, p2, v5}, Lcom/android/internal/telephony/DataConnection;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    .line 152
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 148
    :cond_2
    const-string v5, "cleanUpConnection: teardown, conn.tearDown"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v5

    invoke-virtual {p0, v8, v5, v7, p2}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, p2, v5}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    .line 155
    :cond_3
    const-string v5, "cleanUpConnection: !tearDown, call conn.resetSynchronously"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 156
    if-eqz v2, :cond_4

    .line 157
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    .line 159
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .line 164
    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->stopNetStatPoll()V

    .line 166
    if-nez v4, :cond_6

    .line 167
    const-string v5, "cleanupConnection: !notificationDeferred"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    .line 171
    :cond_6
    if-eqz p1, :cond_7

    iget v5, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    if-nez v5, :cond_7

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->notifyDataDisconnectComplete()V

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->notifyAllDataDisconnected()V

    .line 175
    :cond_7
    return-void
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/IccRecords;
    .locals 4

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->getSubscriptionInfo()Lcom/android/internal/telephony/Subscription;

    move-result-object v0

    .line 213
    .local v0, subscriptionData:Lcom/android/internal/telephony/Subscription;
    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget v2, v0, Lcom/android/internal/telephony/Subscription;->slotId:I

    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/UiccManager;->getIccRecords(ILcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/IccRecords;

    move-result-object v1

    .line 216
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    const-string v1, "Ignore CDMA msgs since CDMA phone is not the current DDS"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 105
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 112
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 107
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v0, :cond_1

    .line 108
    .local v0, enabled:Z
    :goto_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    goto :goto_0

    .line 107
    .end local v0           #enabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 105
    :pswitch_data_0
    .packed-switch 0x4201b
        :pswitch_0
    .end packed-switch
.end method

.method protected isActiveDataSubscription()Z
    .locals 2

    .prologue
    .line 283
    iget v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mSubscription:I

    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getDataSubscription()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 335
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDCT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 340
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaDCT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mSubscription:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method

.method public notifyAllDataDisconnected()V
    .locals 1

    .prologue
    .line 316
    const-string/jumbo v0, "notifyAllDataDisconnected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 318
    return-void
.end method

.method protected notifyDataDisconnectComplete()V
    .locals 3

    .prologue
    .line 308
    const-string/jumbo v2, "notifyDataDisconnectComplete"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 310
    .local v1, m:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 312
    .end local v1           #m:Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectAllCompleteMsgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 313
    return-void
.end method

.method protected onDataStateChanged(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onDataStateChanged(Landroid/os/AsyncResult;)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->notifyAllDataDisconnected()V

    .line 198
    :cond_0
    return-void
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 1
    .parameter "connId"
    .parameter "ar"

    .prologue
    .line 182
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;->onDisconnectDone(ILandroid/os/AsyncResult;)V

    .line 183
    iget v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    if-lez v0, :cond_0

    .line 184
    iget v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    .line 186
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mDisconnectPendingCount:I

    if-nez v0, :cond_1

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->notifyDataDisconnectComplete()V

    .line 188
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->notifyAllDataDisconnected()V

    .line 190
    :cond_1
    return-void
.end method

.method protected onSetInternalDataEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->onSetInternalDataEnabled(ZLandroid/os/Message;)V

    .line 237
    return-void
.end method

.method protected onSetInternalDataEnabled(ZLandroid/os/Message;)V
    .locals 3
    .parameter "enable"
    .parameter "onCompleteMsg"

    .prologue
    .line 240
    const-string/jumbo v2, "onSetInternalDataEnabled"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v0

    .line 242
    .local v0, prevEnabled:Z
    const/4 v1, 0x1

    .line 243
    .local v1, sendOnComplete:Z
    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    if-eq v2, p1, :cond_0

    .line 244
    monitor-enter p0

    .line 245
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mInternalDataEnabled:Z

    .line 246
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 248
    const/4 v1, 0x0

    .line 249
    if-nez v0, :cond_2

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->resetAllRetryCounts()V

    .line 251
    const-string v2, "dataEnabled"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 258
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 259
    if-eqz p2, :cond_1

    .line 260
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 263
    :cond_1
    return-void

    .line 246
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 253
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->cleanUpAllConnections(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public registerForAllDataDisconnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->isDisconnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    const-string/jumbo v0, "notify All Data Disconnected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 327
    :cond_0
    return-void
.end method

.method protected registerForAllEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42001

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42006

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42004

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataCallListChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const v1, 0x42008

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const v1, 0x42007

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v1, 0x42003

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v1, 0x42014

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v1, 0x4200b

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const v1, 0x4200c

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42019

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 82
    return-void
.end method

.method public setInternalDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->setInternalDataEnabled(ZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public setInternalDataEnabled(ZLandroid/os/Message;)Z
    .locals 4
    .parameter "enable"
    .parameter "onCompleteMsg"

    .prologue
    const/4 v2, 0x1

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setInternalDataEnabled("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 228
    const v1, 0x4201b

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 229
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 231
    return v2

    .line 229
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterForAllDataDisconnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mAllDataDisconnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 331
    return-void
.end method

.method protected unregisterForAllEvents()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 87
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataCallListChanged(Landroid/os/Handler;)V

    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 97
    return-void
.end method

.method protected update()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 292
    const-string/jumbo v1, "update"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->isActiveDataSubscription()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    const-string/jumbo v1, "update(): Active DDS, register for all events now!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->registerForAllEvents()V

    .line 297
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mUserDataEnabled:Z

    .line 299
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/cdma/MSimCDMAPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/MSimCDMAPhone;->updateCurrentCarrierInProvider()Z

    .line 300
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->broadcastMessenger()V

    .line 305
    :goto_1
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 302
    :cond_1
    const-string/jumbo v0, "update(): NOT the active DDS, unregister for all events!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->unregisterForAllEvents()V

    goto :goto_1
.end method

.method public updateRecords()V
    .locals 0

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/MSimCdmaDataConnectionTracker;->updateIccAvailability()V

    .line 288
    return-void
.end method
