.class public Lcom/lge/camera/receiver/MessageReceiver;
.super Lcom/lge/camera/receiver/CameraBroadCastReceiver;
.source "MessageReceiver.java"


# static fields
.field private static final CONTENT_URI_MMS:Landroid/net/Uri; = null

.field private static final CONTENT_URI_SMS:Landroid/net/Uri; = null

.field private static final FIELD_DATE:Ljava/lang/String; = "date"

.field private static final FIELD_ID:Ljava/lang/String; = "_id"

.field public static final INTENT_MMS:Ljava/lang/String; = "com.lge.message.MMS_RECEIVED_ACTION_FOR_LGE_APPL"

.field public static final INTENT_SMS:Ljava/lang/String; = "com.lge.message.SMS_RECEIVED_ACTION_FOR_LGE_APPL"

.field private static final SKT_CONTENT_URI:Landroid/net/Uri; = null

.field private static final SKT_FIELD_ID:Ljava/lang/String; = "MessageID"

.field private static final SKT_FIELD_OPTION:Ljava/lang/String; = "MDN1st"

.field private static final SKT_FIELD_TIME:Ljava/lang/String; = "DeliveryTime"

.field private static final SKT_FIELD_TYPE:Ljava/lang/String; = "SubType"

.field private static final SKT_INBOX:Ljava/lang/String; = "2"

.field private static final SKT_STATUS_INCOMPLETED:Ljava/lang/String; = "105"

.field private static final SKT_STATUS_UNREAD:Ljava/lang/String; = "101"

.field private static final SKT_TYPE_MMS:I = 0xb

.field public static final TYPE_EMPTY:I = 0x0

.field public static final TYPE_MMS:I = 0x2

.field public static final TYPE_SMS:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/camera/receiver/MessageReceiver;->CONTENT_URI_SMS:Landroid/net/Uri;

    .line 18
    const-string v0, "content://mms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/camera/receiver/MessageReceiver;->CONTENT_URI_MMS:Landroid/net/Uri;

    .line 19
    const-string v0, "content://com.btb.ums.provider.MessageProvider/sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/camera/receiver/MessageReceiver;->SKT_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0
    .parameter "mediator"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/lge/camera/receiver/CameraBroadCastReceiver;-><init>(Lcom/lge/camera/Mediator;)V

    .line 41
    return-void
.end method

.method private checkOnReceive()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 219
    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->isValidState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v1}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 221
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "activity is null"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doMessageReceivedAction(Landroid/content/Intent;)I
    .locals 6
    .parameter "intent"

    .prologue
    .line 94
    const-string v3, "msg_type"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, msg_type:Ljava/lang/String;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mail received msg_type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-eqz v2, :cond_0

    const-string v3, "mms"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    const/4 v1, 0x2

    .line 103
    .local v1, messageType:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/lge/camera/controller/IndicatorController;->setMessageIndicatorReceived(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_1
    return v1

    .line 100
    .end local v1           #messageType:I
    :cond_0
    const/4 v1, 0x1

    .restart local v1       #messageType:I
    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "CameraApp"

    const-string v4, "failure to read msg number"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method private doMessageReceivedForICSupgrade(Ljava/lang/String;I)I
    .locals 1
    .parameter "action"
    .parameter "messageType"

    .prologue
    .line 82
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useSktMessageForIcsUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "com.lge.message.SMS_RECEIVED_ACTION_FOR_LGE_APPL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const/4 p2, 0x1

    .line 89
    :cond_0
    :goto_0
    return p2

    .line 85
    :cond_1
    const-string v0, "com.lge.message.MMS_RECEIVED_ACTION_FOR_LGE_APPL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 p2, 0x2

    goto :goto_0
.end method

.method private getRecentMessageTime(Landroid/database/Cursor;)J
    .locals 3
    .parameter "cursor"

    .prologue
    .line 209
    const-wide/16 v0, 0x0

    .line 210
    .local v0, time:J
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 212
    const-string v2, "date"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 215
    :cond_0
    return-wide v0
.end method

.method private getRecentMessageTypeForICSupgrade(Landroid/content/ContentResolver;I)I
    .locals 10
    .parameter "cr"
    .parameter "type"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 179
    const/4 v6, 0x0

    .line 180
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "MessageID"

    aput-object v0, v2, v1

    const-string v0, "DeliveryTime"

    aput-object v0, v2, v5

    const-string v0, "MDN1st"

    aput-object v0, v2, v8

    const-string v0, "SubType"

    aput-object v0, v2, v9

    .line 181
    .local v2, projection:[Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    const-string v0, "105"

    aput-object v0, v4, v1

    const-string v0, "101"

    aput-object v0, v4, v5

    const-string v0, "2"

    aput-object v0, v4, v8

    .line 182
    .local v4, selectionArgs:[Ljava/lang/String;
    const-string v3, "(Status = ? or Status = ?) and BoxID = ? "

    .line 185
    .local v3, selection:Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/lge/camera/receiver/MessageReceiver;->SKT_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 187
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 189
    const-string v0, "SubType"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 190
    const/4 p2, 0x2

    .line 199
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 200
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 201
    const/4 v6, 0x0

    .line 204
    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 205
    return p2

    .line 192
    :cond_2
    const/4 p2, 0x1

    goto :goto_0

    .line 195
    :catch_0
    move-exception v7

    .line 196
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CameraApp"

    const-string v1, "getRecentMessageTypeForICSupgrade Exception! "

    invoke-static {v0, v1, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    const/4 p2, 0x1

    .line 199
    if-eqz v6, :cond_1

    .line 200
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 201
    const/4 v6, 0x0

    goto :goto_1

    .line 199
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 200
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 201
    const/4 v6, 0x0

    :cond_3
    throw v0
.end method

.method private getRecentMessageTypeForNormal(Landroid/content/ContentResolver;JJI)I
    .locals 17
    .parameter "cr"
    .parameter "smsReceivedTime"
    .parameter "mmsReceivedTime"
    .parameter "type"

    .prologue
    .line 128
    const/4 v15, 0x0

    .line 129
    .local v15, cursor:Landroid/database/Cursor;
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v3, v1

    .line 131
    .local v3, projection:[Ljava/lang/String;
    const-string v4, "read=0 and type=1"

    .line 132
    .local v4, selectionSMS:Ljava/lang/String;
    const-string v8, "read=0 and m_type=132"

    .line 135
    .local v8, selectionMMS:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/lge/camera/receiver/MessageReceiver;->CONTENT_URI_SMS:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 136
    if-eqz v15, :cond_0

    .line 137
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/lge/camera/receiver/MessageReceiver;->getRecentMessageTime(Landroid/database/Cursor;)J

    move-result-wide p2

    .line 138
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 139
    const/4 v15, 0x0

    .line 141
    :cond_0
    sget-object v6, Lcom/lge/camera/receiver/MessageReceiver;->CONTENT_URI_MMS:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p1

    move-object v7, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 142
    if-eqz v15, :cond_1

    .line 143
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/lge/camera/receiver/MessageReceiver;->getRecentMessageTime(Landroid/database/Cursor;)J

    move-result-wide p4

    :cond_1
    move-object/from16 v9, p0

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move/from16 v14, p6

    .line 145
    invoke-direct/range {v9 .. v14}, Lcom/lge/camera/receiver/MessageReceiver;->getTypeByReceivedTime(JJI)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p6

    .line 150
    if-eqz v15, :cond_2

    .line 151
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 152
    const/4 v15, 0x0

    .line 156
    :cond_2
    :goto_0
    const/16 p1, 0x0

    .line 157
    return p6

    .line 146
    :catch_0
    move-exception v16

    .line 147
    .local v16, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "CameraApp"

    const-string v2, "getRecentMessageTypeForNormal Exception! "

    move-object/from16 v0, v16

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    const/16 p6, 0x1

    .line 150
    if-eqz v15, :cond_2

    .line 151
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 152
    const/4 v15, 0x0

    goto :goto_0

    .line 150
    .end local v16           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v15, :cond_3

    .line 151
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 152
    const/4 v15, 0x0

    :cond_3
    throw v1
.end method

.method private getTypeByReceivedTime(JJI)I
    .locals 2
    .parameter "smsReceivedTime"
    .parameter "mmsReceivedTime"
    .parameter "type"

    .prologue
    .line 162
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsDomesticModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-wide/16 v0, 0x3e8

    mul-long/2addr p3, v0

    .line 167
    :cond_0
    cmp-long v0, p1, p3

    if-lez v0, :cond_2

    .line 168
    const/4 p5, 0x1

    .line 175
    :cond_1
    :goto_0
    return p5

    .line 169
    :cond_2
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    .line 170
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->IsDomesticModel()Z

    move-result v0

    if-nez v0, :cond_3

    .line 171
    const/4 p5, 0x1

    goto :goto_0

    .line 173
    :cond_3
    const/4 p5, 0x2

    goto :goto_0
.end method


# virtual methods
.method public getRecentMessageType()I
    .locals 7

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 114
    .local v1, cr:Landroid/content/ContentResolver;
    const-wide/16 v2, 0x0

    .line 115
    .local v2, smsReceivedTime:J
    const-wide/16 v4, 0x0

    .line 116
    .local v4, mmsReceivedTime:J
    const/4 v6, 0x0

    .line 118
    .local v6, type:I
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useSktMessageForIcsUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0, v1, v6}, Lcom/lge/camera/receiver/MessageReceiver;->getRecentMessageTypeForICSupgrade(Landroid/content/ContentResolver;I)I

    move-result v6

    .line 124
    :goto_0
    return v6

    :cond_0
    move-object v0, p0

    .line 121
    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/receiver/MessageReceiver;->getRecentMessageTypeForNormal(Landroid/content/ContentResolver;JJI)I

    move-result v6

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lge/camera/receiver/MessageReceiver;->checkOnReceive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 79
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BroadCastReceiver action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, action:Ljava/lang/String;
    const/4 v2, 0x1

    .line 55
    .local v2, messageType:I
    const-string v3, "com.lge.message.MSG_RECEIVED_ACTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 56
    invoke-direct {p0, p2}, Lcom/lge/camera/receiver/MessageReceiver;->doMessageReceivedAction(Landroid/content/Intent;)I

    move-result v2

    .line 72
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/receiver/CameraBroadCastReceiver;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v3}, Lcom/lge/camera/Mediator;->getIndicatorController()Lcom/lge/camera/controller/IndicatorController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/camera/controller/IndicatorController;->setMessageIndicatorReceived(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_2
    const-string v3, "CameraApp"

    const-string v4, "worning intent rescived!!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/lge/camera/receiver/MessageReceiver;->doMessageReceivedForICSupgrade(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "CameraApp"

    const-string v4, "failure to read msg number"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2
.end method
