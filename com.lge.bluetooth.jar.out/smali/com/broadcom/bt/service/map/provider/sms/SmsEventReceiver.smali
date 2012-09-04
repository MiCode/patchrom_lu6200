.class public Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;
    }
.end annotation


# static fields
.field protected static final ACTION_MESSAGE_DELETED_BY_MMS_APP_FWD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_DELETED_BY_MMS_APP_FWD"

.field protected static final ACTION_MESSAGE_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field protected static final ACTION_MESSAGE_SENT:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_SENT"

.field protected static final ACTION_MESSAGE_SENT_BY_MMS_APP_FWD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP_FWD"

.field protected static final ACTION_MESSAGE_SENT_FORWARD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_SENT_FORWARD"

.field protected static final ACTION_MESSAGE_STATUS_RECEIVED:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED"

.field protected static final ACTION_MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD"

.field protected static final ACTION_MESSAGE_STATUS_RECEIVED_FORWARD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_FORWARD"

.field protected static final ACTION_MMSAPP_MESSAGE_SENT:Ljava/lang/String; = "com.android.mms.transaction.MESSAGE_SENT"

.field protected static final ACTION_MMSAPP_MESSAGE_STATUS_RECEIVED:Ljava/lang/String; = "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

.field public static final D:Z = true

.field protected static final MMSAPP_MSG_STATUS_RECEIVER_CLASS_NAME:Ljava/lang/String; = "com.android.mms.transaction.MessageStatusReceiver"

.field protected static final MMSAPP_PKG_NAME:Ljava/lang/String; = "com.android.mms"

.field protected static final MMSAPP_SMS_RECEIVER_CLASS_NAME:Ljava/lang/String; = "com.android.mms.transaction.SmsReceiver"

.field private static final ORDER_BY_SMS_RECEIVED:Ljava/lang/String; = "_id DESC "

.field private static final PROJECTION_SMS_RECEIVED:[Ljava/lang/String; = null

.field private static final SELECTION_SMS_RECEIVED:Ljava/lang/String; = "type = 1 AND protocol = ? AND address = ? AND body = ?"

.field public static final TAG:Ljava/lang/String; = "MAP.SmsEventReceiver"


# instance fields
.field final intentExtraName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

.field private mProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->PROJECTION_SMS_RECEIVED:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 120
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 100
    const-string v0, "MapURI"

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->intentExtraName:Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    .line 122
    iget-object v0, p1, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHandler:Landroid/os/Handler;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageReceived(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V

    return-void
.end method

.method private processMessageDeletedAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 165
    const-string v0, "MAP.SmsEventReceiver"

    const-string v1, "processMessageDeletedAction()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v0, "deletedMessageId"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 173
    .local v6, lMsgId:Ljava/lang/Long;
    const-string v0, "deletedFolderId"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 174
    .local v7, nMboxId:I
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v1, "SMS-MMS"

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getFolderPath(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    invoke-virtual {v4}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->notificationsEnabled()Z

    move-result v4

    iget-object v5, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    invoke-virtual {v5}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getSmsMsgType()B

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->processEvent_MessageDeleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZB)V

    .line 175
    return-void
.end method

.method private processMessageReceived(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V
    .locals 11
    .parameter "ctx"
    .parameter "msg"
    .parameter "retryCount"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 253
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    .line 254
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 255
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, -0x1

    .line 256
    .local v9, messageId:I
    const/4 v7, 0x0

    .line 258
    .local v7, hasError:Z
    aget-object v0, p2, v1

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 259
    aget-object v0, p2, v1

    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 260
    const-string v0, ""

    aput-object v0, v4, v2

    .line 261
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, p2

    if-ge v8, v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v4, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, v8

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 261
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 267
    :cond_0
    :try_start_0
    const-string v0, "MAP.SmsEventReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Querying for SMS inbox message: protocol identifier= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", originating address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " retry count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " disaplay message body = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->PROJECTION_SMS_RECEIVED:[Ljava/lang/String;

    const-string v3, "type = 1 AND protocol = ? AND address = ? AND body = ?"

    const-string v5, "_id DESC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 273
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 284
    :goto_1
    if-eqz v6, :cond_1

    .line 285
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 286
    const/4 v6, 0x0

    .line 288
    :cond_1
    if-eqz v7, :cond_3

    .line 304
    :goto_2
    return-void

    .line 277
    :cond_2
    :try_start_1
    const-string v0, "MAP.SmsEventReceiver"

    const-string v1, "Querying for SMS inbox message: Either cursor is null or no rows returned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 280
    :catch_0
    move-exception v10

    .line 281
    .local v10, t:Ljava/lang/Throwable;
    const-string v0, "MAP.SmsEventReceiver"

    const-string v1, "Error querying database"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    const/4 v7, 0x1

    goto :goto_1

    .line 293
    .end local v10           #t:Ljava/lang/Throwable;
    :cond_3
    const-string v0, "MAP.SmsEventReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v0, -0x1

    if-eq v9, v0, :cond_4

    .line 296
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v1, "SMS-MMS"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/inbox"

    iget-object v5, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    invoke-virtual {v5}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getSmsMsgType()B

    move-result v5

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_NewMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    goto :goto_2

    .line 298
    :cond_4
    const/4 v0, 0x5

    if-ge p3, v0, :cond_5

    .line 299
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;

    add-int/lit8 p3, p3, 0x1

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver$ProcessMsgReceivedRunnable;-><init>(Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 302
    :cond_5
    const-string v0, "MAP.SmsEventReceiver"

    const-string v1, "Unable to process SMS receive. Retry count exceeded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private processMessageReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "ctx"
    .parameter "intent"

    .prologue
    .line 223
    const-string v4, "MAP.SmsEventReceiver"

    const-string v5, "processMessageReceivedAction()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v4, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    invoke-virtual {v4}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->notificationsEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 228
    const-string v4, "MAP.SmsEventReceiver"

    const-string v5, "MAP notification not enabled...Skipping event"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    return-void

    .line 234
    :cond_0
    const/4 v2, 0x0

    .line 235
    .local v2, pdus:[Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 236
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v4, "pdus"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    array-length v4, v2

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 238
    :cond_1
    const-string v4, "MAP.SmsEventReceiver"

    const-string v5, "Unable to get pdus. Not processing SMS received event"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_2
    array-length v4, v2

    new-array v3, v4, [Landroid/telephony/SmsMessage;

    .line 243
    .local v3, smsMessages:[Landroid/telephony/SmsMessage;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 244
    aget-object v4, v2, v1

    check-cast v4, [B

    check-cast v4, [B

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v4

    aput-object v4, v3, v1

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 248
    :cond_3
    const/4 v4, 0x0

    invoke-direct {p0, p1, v3, v4}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageReceived(Landroid/content/Context;[Landroid/telephony/SmsMessage;I)V

    goto :goto_0
.end method

.method private processMessageSentAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 179
    const-string v3, "MAP.SmsEventReceiver"

    const-string v4, "processMessageSentAction()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v3, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP_FWD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->sendMmsAppMessageSentEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 186
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->notificationsEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 188
    const-string v3, "MAP.SmsEventReceiver"

    const-string v4, "MAP notification not enabled...Skipping event"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    return-void

    .line 193
    :cond_1
    const/4 v0, 0x0

    .line 194
    .local v0, messageId:Ljava/lang/String;
    const-string v3, "MapURI"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 195
    .local v1, messageUri:Landroid/net/Uri;
    if-nez v1, :cond_2

    .line 196
    const-string v3, "MAP.SmsEventReceiver"

    const-string v4, "Unable to get Message URI for message"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->getResultCode()I

    move-result v2

    .line 202
    .local v2, resultCode:I
    const/4 v3, -0x1

    if-ne v3, v2, :cond_3

    .line 204
    const-string v3, "MAP.SmsEventReceiver"

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

    .line 206
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v4, "SMS-MMS"

    const-string v5, "/sent"

    iget-object v6, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    invoke-virtual {v6}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getSmsMsgType()B

    move-result v6

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_SendingSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    goto :goto_0

    .line 209
    :cond_3
    const-string v3, "MAP.SmsEventReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error sending message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". ResultCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ErrorCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "errorCode"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v4, "SMS-MMS"

    const-string v5, "/failed"

    iget-object v6, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    invoke-virtual {v6}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getSmsMsgType()B

    move-result v6

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_SendingFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    goto/16 :goto_0
.end method

.method private processMessageStatusReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 308
    const-string v1, "MAP.SmsEventReceiver"

    const-string v3, "processMessageStatusReceivedAction()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    invoke-direct/range {p0 .. p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->sendMmsAppMessageStatusReceivedEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->notificationsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 318
    const-string v1, "MAP.SmsEventReceiver"

    const-string v3, "MAP notification not enabled...Skipping event"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :goto_0
    return-void

    .line 324
    :cond_1
    const-string v1, "MapURI"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 325
    .local v2, messageUri:Landroid/net/Uri;
    if-nez v2, :cond_2

    .line 326
    const-string v1, "MAP.SmsEventReceiver"

    const-string v3, "Unable to process message status. Invalid messageUri"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    :cond_2
    const-string v1, "MAP.SmsEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got message URI = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v9, -0x1

    .line 331
    .local v9, folderType:I
    const/4 v7, 0x0

    .line 333
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 335
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 336
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 341
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 342
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 343
    const/4 v7, 0x0

    .line 346
    :cond_4
    invoke-static {v9}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getFolderPath(I)Ljava/lang/String;

    move-result-object v8

    .line 347
    .local v8, folderPath:Ljava/lang/String;
    if-nez v8, :cond_5

    .line 348
    const-string v1, "MAP.SmsEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid folder path for folder type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    .end local v8           #folderPath:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 339
    .local v14, t:Ljava/lang/Throwable;
    const-string v1, "MAP.SmsEventReceiver"

    const-string v3, "Error querying database"

    invoke-static {v1, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 351
    .end local v14           #t:Ljava/lang/Throwable;
    .restart local v8       #folderPath:Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .line 353
    .local v11, messageId:Ljava/lang/String;
    const-string v1, "pdu"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    move-object v12, v1

    check-cast v12, [B

    .line 354
    .local v12, pdu:[B
    if-eqz v12, :cond_7

    .line 356
    invoke-static {v12}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v10

    .line 357
    .local v10, message:Landroid/telephony/SmsMessage;
    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result v13

    .line 358
    .local v13, status:I
    if-nez v13, :cond_6

    .line 359
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v3, "SMS-MMS"

    iget-object v4, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    invoke-virtual {v4}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getSmsMsgType()B

    move-result v4

    invoke-virtual {v1, v3, v11, v8, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_DeliverySuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    goto/16 :goto_0

    .line 361
    :cond_6
    const-string v1, "MAP.SmsEventReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error deliverying message. ErrorCode= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const-string v3, "SMS-MMS"

    iget-object v4, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->mProvider:Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;

    invoke-virtual {v4}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getSmsMsgType()B

    move-result v4

    invoke-virtual {v1, v3, v11, v8, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_DeliveryFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    goto/16 :goto_0

    .line 366
    .end local v10           #message:Landroid/telephony/SmsMessage;
    .end local v13           #status:I
    :cond_7
    const-string v1, "MAP.SmsEventReceiver"

    const-string v3, "Got delivery report with no pdus"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private sendMmsAppMessageSentEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 371
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 372
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.transaction.SmsReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v1, "errorCode"

    const-string v2, "errorCode"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    const-string v1, "MapURI"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 377
    return-void
.end method

.method private sendMmsAppMessageStatusReceivedEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 380
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 381
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v1, "com.android.mms"

    const-string v2, "com.android.mms.transaction.MessageStatusReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string v1, "MapURI"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 386
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 388
    return-void
.end method


# virtual methods
.method public createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    new-instance p1, Landroid/content/IntentFilter;

    .end local p1
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .restart local p1
    :cond_0
    const-string v0, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_FORWARD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v0, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_FORWARD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v0, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v0, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v0, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP_FWD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v0, "com.broadcom.bt.service.map.sms.MESSAGE_DELETED_BY_MMS_APP_FWD"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    return-object p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 128
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, action:Ljava/lang/String;
    const-string v1, "MAP.SmsEventReceiver"

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

    .line 130
    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_FORWARD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageSentAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 146
    :goto_0
    return-void

    .line 132
    :cond_0
    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_FORWARD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageStatusReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 134
    :cond_1
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 136
    :cond_2
    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageStatusReceivedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 138
    :cond_3
    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP_FWD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageSentAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 140
    :cond_4
    const-string v1, "com.broadcom.bt.service.map.sms.MESSAGE_DELETED_BY_MMS_APP_FWD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->processMessageDeletedAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 144
    :cond_5
    const-string v1, "MAP.SmsEventReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to process action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
