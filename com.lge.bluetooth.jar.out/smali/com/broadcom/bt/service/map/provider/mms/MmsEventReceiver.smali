.class public Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MmsEventReceiver.java"


# static fields
.field public static final D:Z = true

.field public static final TAG:Ljava/lang/String; = "MAP.MmsEventReceiver"


# instance fields
.field final intentExtraName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

.field private mProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    const-string v0, "id"

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->intentExtraName:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    .line 50
    iget-object v0, p1, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method private processMessageDeletedAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 96
    const-string v0, "MAP.MmsEventReceiver"

    const-string v1, "processMessageDeletedAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v0, "id"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 104
    .local v6, lMsgId:Ljava/lang/Long;
    const-string v0, "folder"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 105
    .local v7, nMboxId:I
    const-string v0, "MAP.MmsEventReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessageDeletedAction() lMsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MBoxId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v1, "SMS"

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getFolderPath(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    invoke-virtual {v4}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->notificationsEnabled()Z

    move-result v4

    const/16 v5, 0x8

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->processEvent_MessageDeleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZB)V

    .line 108
    return-void
.end method

.method private processMessageDeliveredAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 177
    const-string v4, "MAP.MmsEventReceiver"

    const-string v5, "processMessageDeliveredAction()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v4, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    invoke-virtual {v4}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->notificationsEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 182
    const-string v4, "MAP.MmsEventReceiver"

    const-string v5, "MAP notification not enabled...Skipping event"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_0
    return-void

    .line 188
    :cond_0
    const-string v4, "id"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 189
    .local v3, messageUri:Landroid/net/Uri;
    if-nez v3, :cond_1

    .line 190
    const-string v4, "MAP.MmsEventReceiver"

    const-string v5, "Unable to process message status. Invalid messageUri"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_1
    const-string v4, "MAP.MmsEventReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got message URI = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x1

    .line 195
    .local v1, folderType:I
    invoke-static {v1}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getFolderPath(I)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, folderPath:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 197
    const-string v4, "MAP.MmsEventReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid folder path for folder type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, messageId:Ljava/lang/String;
    iget-object v4, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v5, "SMS"

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v2, v0, v6}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_DeliverySuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    goto :goto_0
.end method

.method private processMessageReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 154
    const-string v2, "MAP.MmsEventReceiver"

    const-string v3, "processMessageReceivedAction()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->notificationsEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    const-string v2, "MAP.MmsEventReceiver"

    const-string v3, "MAP notification not enabled...Skipping event"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x0

    .line 165
    .local v0, messageId:Ljava/lang/String;
    const-string v2, "id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 166
    .local v1, messageUri:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 167
    const-string v2, "MAP.MmsEventReceiver"

    const-string v3, "Unable to get Message URI for message"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v3, "SMS"

    const-string v4, "/inbox"

    const/16 v5, 0x8

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_NewMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    goto :goto_0
.end method

.method private processMessageSentAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v6, 0x8

    .line 113
    const-string v3, "MAP.MmsEventReceiver"

    const-string v4, "processMessageSentAction()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->notificationsEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    const-string v3, "MAP.MmsEventReceiver"

    const-string v4, "MAP notification not enabled...Skipping event"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    .line 125
    .local v0, messageId:Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 126
    .local v1, messageUri:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 127
    const-string v3, "MAP.MmsEventReceiver"

    const-string v4, "processMessageSentAction(): Unable to get Message URI for message"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 133
    const-string v3, "status"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, status:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 136
    :cond_2
    const-string v3, "MAP.MmsEventReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message sent successfully. MessageId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v4, "SMS"

    const-string v5, "/outbox"

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_SendingSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    goto :goto_0

    .line 141
    :cond_3
    const-string v3, "MAP.MmsEventReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v4, "SMS"

    const-string v5, "/failed"

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_SendingFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    goto :goto_0
.end method

.method private processMessageStatusReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 212
    const-string v8, "MAP.MmsEventReceiver"

    const-string v9, "processMessageStatusReceivedAction()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, event:Ljava/lang/String;
    const-string v8, "req_id"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 220
    .local v5, requestIdString:Ljava/lang/String;
    const/4 v4, -0x1

    .line 222
    .local v4, requestId:I
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 226
    :goto_0
    if-gez v4, :cond_0

    .line 227
    const-string v8, "MAP.MmsEventReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processMessageStatusReceivedAction(): invalid request ID:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_1
    return-void

    .line 223
    :catch_0
    move-exception v7

    .line 224
    .local v7, t:Ljava/lang/Throwable;
    const-string v8, "MAP.MmsEventReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processMessageStatusReceivedAction(): unable to parse request ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 233
    .end local v7           #t:Ljava/lang/Throwable;
    :cond_0
    const/4 v1, 0x0

    .line 234
    .local v1, folderPath:Ljava/lang/String;
    const-string v8, "com.broadcom.bt.mms.SEND_SUCCESS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 235
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getFolderPath(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    :cond_1
    :goto_2
    invoke-static {v1}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getMessageType(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 244
    const-string v8, "MAP.MmsEventReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processMessageStatusReceivedAction(): invalid folder path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .end local v1           #folderPath:Ljava/lang/String;
    :cond_2
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v8, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v9, "SMS"

    invoke-virtual {v8, v4, v9}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto :goto_1

    .line 237
    .restart local v1       #folderPath:Ljava/lang/String;
    :cond_3
    const-string v8, "folder"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    const-string v8, "/"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 239
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 248
    :cond_4
    const-string v8, "MAP.MmsEventReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processMessageStatusReceivedAction(): folder path : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v8, "status"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, status:Ljava/lang/String;
    const/4 v3, 0x0

    .line 254
    .local v3, messageUri:Landroid/net/Uri;
    const-string v8, "1"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 255
    const-string v8, "id"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3           #messageUri:Landroid/net/Uri;
    check-cast v3, Landroid/net/Uri;

    .line 257
    .restart local v3       #messageUri:Landroid/net/Uri;
    :cond_5
    const-string v9, "MAP.MmsEventReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "processMessageStatusReceivedAction: message URI = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    const-string v8, "(null)"

    :goto_3
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    if-eqz v3, :cond_7

    .line 262
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, messageId:Ljava/lang/String;
    iget-object v8, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v9, "SMS"

    invoke-virtual {v8, v4, v9, v2, v1}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Success(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 257
    .end local v2           #messageId:Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 265
    :cond_7
    const-string v8, "MAP.MmsEventReceiver"

    const-string v9, "processMessageStatusReceivedAction(): Unable to process message status. Invalid messageUri"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v8, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v9, "SMS"

    invoke-virtual {v8, v4, v9}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    new-instance p1, Landroid/content/IntentFilter;

    .end local p1
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .restart local p1
    :cond_0
    const-string v0, "com.broadcom.bt.mms.DELETED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v0, "com.broadcom.bt.mms.RECEIVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v0, "com.broadcom.bt.mms.SEND_SUCCESS"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v0, "com.broadcom.bt.mms.SAVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v0, "com.broadcom.bt.mms.SENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    return-object p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, action:Ljava/lang/String;
    const-string v1, "MAP.MmsEventReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v1, "com.broadcom.bt.mms.DELETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->processMessageDeletedAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 81
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v1, "com.broadcom.bt.mms.RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->processMessageReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 66
    :cond_1
    const-string v1, "com.broadcom.bt.mms.DELIVERED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->processMessageDeliveredAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 70
    :cond_2
    const-string v1, "com.broadcom.bt.mms.SENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->processMessageSentAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    :cond_3
    const-string v1, "com.broadcom.bt.mms.SEND_SUCCESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.broadcom.bt.mms.SAVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 75
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;->processMessageStatusReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 79
    :cond_5
    const-string v1, "MAP.MmsEventReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to process action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
