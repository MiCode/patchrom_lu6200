.class public Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;
.super Lcom/broadcom/bt/service/map/provider/BaseProvider;
.source "XmsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/provider/xms/XmsProvider$MsgInfoComparator;
    }
.end annotation


# static fields
.field private static final CFG_SEND_MSG_SIZE_INFO_IN_LISTING:Z = true

.field private static final COL_ADDRESS:I = 0x1

.field private static final COL_BODY:I = 0x9

.field private static final COL_DATE:I = 0x2

.field private static final COL_DISPLAY_NAME:I = 0x3

.field private static final COL_FAMILY_NAME:I = 0x2

.field private static final COL_GIVEN_NAME:I = 0x0

.field private static final COL_ID:I = 0x0

.field private static final COL_LOCKED:I = 0x3

.field private static final COL_MIDDLE_NAME:I = 0x1

.field private static final COL_PERSON:I = 0x4

.field private static final COL_READ:I = 0x5

.field private static final COL_SUBJECT:I = 0x6

.field private static final COL_THREAD_ID:I = 0x8

.field private static final COL_TYPE_ID:I = 0x7

.field private static D:Z = false

.field private static final DEL_COL_ADDRESS:I = 0x2

.field private static final DEL_COL_BODY:I = 0xb

.field private static final DEL_COL_DATE:I = 0x4

.field private static final DEL_COL_ID:I = 0x0

.field private static final DEL_COL_LOCKED:I = 0xd

.field private static final DEL_COL_PERSON:I = 0x3

.field private static final DEL_COL_READ:I = 0x6

.field private static final DEL_COL_SUBJECT:I = 0xa

.field private static final DEL_COL_THREAD_ID:I = 0x1

.field private static final DEL_COL_TYPE_ID:I = 0x8

.field private static final DS_DISPLAY_NAME_ID:I = 0x0

.field public static final DS_ID:Ljava/lang/String; = "SMS"

.field public static final FOLDER_PATH_DELETED:Ljava/lang/String; = "/deleted"

.field public static final FOLDER_PATH_INBOX:Ljava/lang/String; = "/inbox"

.field public static final FOLDER_PATH_OUTBOX:Ljava/lang/String; = "/outbox"

.field public static final FOLDER_PATH_SENT:Ljava/lang/String; = "/sent"

.field public static final HANDLE_OFFSET_MMS:I = 0x1e8480

.field public static final HANDLE_OFFSET_SMS:I = 0xf4240

.field private static final PERSON_NAME_INFO_PROJ:[Ljava/lang/String; = null

.field private static final PROVIDER_DISPLAY_NAME_ID:I = 0x0

.field private static final PROVIDER_ID:Ljava/lang/String; = "com.broadcom.bt.XMS"

.field private static final SEND_ATTACHMENTS_AS_BASE64:Z = true

.field private static final SMS_PROVIDER_PROJ:[Ljava/lang/String; = null

.field private static final SMS_PROVIDER_PROJ_NO_BODY:[Ljava/lang/String; = null

.field private static final SMS_ROOT_FOLDERS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MAP.XMSProvider"

.field private static V:Z


# instance fields
.field private final deletedIndex:I

.field private final draftIndex:I

.field private final failedIndex:I

.field private final inboxIndex:I

.field protected mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;

.field public mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

.field private mMmsReceiver:Lcom/broadcom/bt/service/map/provider/mms/MmsEventReceiver;

.field private mOwnerPhoneNumber:Ljava/lang/String;

.field private mPhoneType:I

.field protected mSender:Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;

.field private mSmsReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

.field private mTmpDirectory:Ljava/io/File;

.field private oldFolders:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final outboxIndex:I

.field private final queuedIndex:I

.field private final sentIndex:I

.field private final undeliveredIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 105
    sput-boolean v3, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->V:Z

    .line 106
    sput-boolean v3, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    .line 111
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "data2"

    aput-object v1, v0, v4

    const-string v1, "data5"

    aput-object v1, v0, v3

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    sput-object v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->PERSON_NAME_INFO_PROJ:[Ljava/lang/String;

    .line 143
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "inbox"

    aput-object v1, v0, v4

    const-string v1, "outbox"

    aput-object v1, v0, v3

    const-string v1, "sent"

    aput-object v1, v0, v5

    const-string v1, "deleted"

    aput-object v1, v0, v6

    const-string v1, "draft"

    aput-object v1, v0, v7

    sput-object v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->SMS_ROOT_FOLDERS:[Ljava/lang/String;

    .line 163
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "locked"

    aput-object v1, v0, v6

    const-string v1, "person"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->SMS_PROVIDER_PROJ_NO_BODY:[Ljava/lang/String;

    .line 168
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "locked"

    aput-object v1, v0, v6

    const-string v1, "person"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "body"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->SMS_PROVIDER_PROJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;-><init>()V

    .line 130
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->oldFolders:Ljava/util/Hashtable;

    .line 132
    new-instance v0, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->inboxIndex:I

    .line 155
    const/4 v0, 0x1

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->outboxIndex:I

    .line 156
    const/4 v0, 0x2

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->sentIndex:I

    .line 157
    const/4 v0, 0x3

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->deletedIndex:I

    .line 158
    const/4 v0, 0x4

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->draftIndex:I

    .line 159
    const/4 v0, 0x5

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->undeliveredIndex:I

    .line 160
    const/4 v0, 0x6

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->failedIndex:I

    .line 161
    const/4 v0, 0x7

    iput v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->queuedIndex:I

    .line 196
    return-void
.end method

.method private static createFolderUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "folderPath"

    .prologue
    .line 275
    invoke-static {p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    const-string v0, "MAP.XMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid folder path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v0, 0x0

    .line 280
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .end local p0
    :cond_1
    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getFolderPath(I)Ljava/lang/String;
    .locals 1
    .parameter "smsMessageType"

    .prologue
    .line 214
    packed-switch p0, :pswitch_data_0

    .line 228
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 216
    :pswitch_0
    const-string v0, "/draft"

    goto :goto_0

    .line 218
    :pswitch_1
    const-string v0, "/failed"

    goto :goto_0

    .line 220
    :pswitch_2
    const-string v0, "/inbox"

    goto :goto_0

    .line 222
    :pswitch_3
    const-string v0, "/outbox"

    goto :goto_0

    .line 224
    :pswitch_4
    const-string v0, "/queued"

    goto :goto_0

    .line 226
    :pswitch_5
    const-string v0, "/sent"

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method static getFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "virtualPath"

    .prologue
    .line 256
    if-eqz p0, :cond_0

    .line 257
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 258
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "root/telecom/msg"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    const-string v0, "root/telecom/msg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const-string v0, "root/telecom/msg"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 264
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static final getMessageType(Ljava/lang/String;)I
    .locals 1
    .parameter "folderPath"

    .prologue
    .line 233
    if-eqz p0, :cond_5

    .line 234
    const-string v0, "/draft"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, 0x3

    .line 248
    :goto_0
    return v0

    .line 236
    :cond_0
    const-string v0, "/failed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    const/4 v0, 0x5

    goto :goto_0

    .line 238
    :cond_1
    const-string v0, "/inbox"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    const/4 v0, 0x1

    goto :goto_0

    .line 240
    :cond_2
    const-string v0, "/outbox"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 241
    const/4 v0, 0x4

    goto :goto_0

    .line 242
    :cond_3
    const-string v0, "/queued"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    const/4 v0, 0x6

    goto :goto_0

    .line 244
    :cond_4
    const-string v0, "/sent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 245
    const/4 v0, 0x2

    goto :goto_0

    .line 248
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getPersonInfo(Ljava/lang/String;[Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .locals 9
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 359
    const/4 v7, 0x0

    .line 360
    .local v7, info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/4 v6, 0x0

    .line 362
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->PERSON_NAME_INFO_PROJ:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 365
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    new-instance v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;

    invoke-direct {v8}, Lcom/broadcom/bt/service/map/provider/PersonInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v7           #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .local v8, info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mGivenName:Ljava/lang/String;

    .line 373
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mFamilyName:Ljava/lang/String;

    .line 374
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mDisplayName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 379
    .end local v8           #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .restart local v7       #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 380
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 381
    const/4 v6, 0x0

    .line 383
    :cond_1
    return-object v7

    .line 376
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v7           #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .restart local v8       #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :catch_1
    move-exception v0

    move-object v7, v8

    .end local v8           #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .restart local v7       #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    goto :goto_0
.end method

.method private getPersonInfoByContactId(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .locals 3
    .parameter "personId"

    .prologue
    .line 350
    if-nez p1, :cond_0

    .line 351
    const/4 v0, 0x0

    .line 353
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "mimetype = \'vnd.android.cursor.item/name\' AND contact_id = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getPersonInfo(Ljava/lang/String;[Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private getPersonInfoByPhoneNo(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .locals 12
    .parameter "phoneNumber"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 303
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 304
    :cond_0
    sget-boolean v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->V:Z

    if-eqz v0, :cond_1

    .line 305
    const-string v0, "MAP.XMSProvider"

    const-string v2, "getPersonInfoByPhoneNo(): phone# not set...No person to lookup..."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v9

    .line 338
    :goto_0
    return-object v0

    .line 310
    :cond_2
    const/4 v7, 0x0

    .line 311
    .local v7, lookupKey:Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 312
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 314
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lookup"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 317
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 322
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 327
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 328
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 329
    const/4 v6, 0x0

    .line 331
    :cond_4
    if-nez v7, :cond_6

    .line 332
    sget-boolean v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v0, :cond_5

    .line 333
    const-string v0, "MAP.XMSProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact not found with number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v0, v9

    .line 335
    goto :goto_0

    .line 324
    :catch_0
    move-exception v8

    .line 325
    .local v8, t:Ljava/lang/Throwable;
    const-string v0, "MAP.XMSProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get contact lookup uri for phone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 338
    .end local v8           #t:Ljava/lang/Throwable;
    :cond_6
    const-string v0, "mimetype = \'vnd.android.cursor.item/name\' AND lookup = ?"

    new-array v2, v11, [Ljava/lang/String;

    aput-object v7, v2, v10

    invoke-direct {p0, v0, v2}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getPersonInfo(Ljava/lang/String;[Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private getThreadRecipientAddresses(I)Ljava/util/List;
    .locals 12
    .parameter "threadId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    const/4 v6, 0x0

    .line 389
    .local v6, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 390
    .local v9, recipientIds:Ljava/lang/String;
    const/4 v7, 0x0

    .line 392
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/recipients"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "recipient_ids"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 396
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 406
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 407
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 410
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v0, " "

    invoke-direct {v10, v9, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    .local v10, t:Ljava/util/StringTokenizer;
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 413
    :cond_2
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 414
    .local v8, recipientId:Ljava/lang/String;
    new-instance v6, Ljava/util/LinkedList;

    .end local v6           #addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 416
    .restart local v6       #addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canonical-address/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "address"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 419
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 420
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 426
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 427
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 428
    const/4 v7, 0x0

    .line 430
    :cond_4
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_2

    .line 433
    .end local v8           #recipientId:Ljava/lang/String;
    .end local v10           #t:Ljava/util/StringTokenizer;
    :cond_5
    return-object v6

    .line 403
    :catch_0
    move-exception v10

    .line 404
    .local v10, t:Ljava/lang/Throwable;
    const-string v0, "MAP.XMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting conversation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 423
    .restart local v8       #recipientId:Ljava/lang/String;
    .local v10, t:Ljava/util/StringTokenizer;
    :catch_1
    move-exception v11

    .line 424
    .local v11, tt:Ljava/lang/Throwable;
    const-string v0, "MAP.XMSProvider"

    const-string v1, "Unable to get canonical address"

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getTxtPart(Lcom/broadcom/bt/util/mime4j/message/Entity;)Ljava/lang/String;
    .locals 4
    .parameter "part"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2075
    invoke-virtual {p1}, Lcom/broadcom/bt/util/mime4j/message/Entity;->getBody()Lcom/broadcom/bt/util/mime4j/message/Body;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/util/mime4j/message/TextBody;

    .line 2076
    .local v1, tb:Lcom/broadcom/bt/util/mime4j/message/TextBody;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2077
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v1, v0}, Lcom/broadcom/bt/util/mime4j/message/TextBody;->writeTo(Ljava/io/OutputStream;)V

    .line 2078
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private isDeletedFolder(Ljava/lang/String;)Z
    .locals 1
    .parameter "folderPath"

    .prologue
    .line 1168
    const-string v0, "deleted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isValidFolderPath(Ljava/lang/String;)Z
    .locals 2
    .parameter "folderPath"

    .prologue
    const/4 v0, 0x1

    .line 210
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_0

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseBodyParts(Lcom/broadcom/bt/util/mime4j/message/Entity;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "entity"
    .parameter "textBody"
    .parameter "htmlBody"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/broadcom/bt/util/mime4j/message/Entity;",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/broadcom/bt/util/mime4j/message/BodyPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2082
    .local p4, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/broadcom/bt/util/mime4j/message/BodyPart;>;"
    invoke-virtual {p1}, Lcom/broadcom/bt/util/mime4j/message/Entity;->getBody()Lcom/broadcom/bt/util/mime4j/message/Body;

    move-result-object v0

    .line 2083
    .local v0, body:Lcom/broadcom/bt/util/mime4j/message/Body;
    instance-of v4, v0, Lcom/broadcom/bt/util/mime4j/message/Multipart;

    if-eqz v4, :cond_1

    move-object v2, v0

    .line 2084
    check-cast v2, Lcom/broadcom/bt/util/mime4j/message/Multipart;

    .line 2085
    .local v2, multipart:Lcom/broadcom/bt/util/mime4j/message/Multipart;
    invoke-virtual {v2}, Lcom/broadcom/bt/util/mime4j/message/Multipart;->getBodyParts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2086
    .local v3, obj:Ljava/lang/Object;
    instance-of v4, v3, Lcom/broadcom/bt/util/mime4j/message/BodyPart;

    if-eqz v4, :cond_0

    .line 2087
    check-cast v3, Lcom/broadcom/bt/util/mime4j/message/BodyPart;

    .end local v3           #obj:Ljava/lang/Object;
    invoke-direct {p0, v3, p2, p3, p4}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->parseBodyParts(Lcom/broadcom/bt/util/mime4j/message/Entity;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 2089
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #multipart:Lcom/broadcom/bt/util/mime4j/message/Multipart;
    :cond_1
    instance-of v4, v0, Lcom/broadcom/bt/util/mime4j/message/Message;

    if-eqz v4, :cond_3

    .line 2090
    check-cast v0, Lcom/broadcom/bt/util/mime4j/message/Message;

    .end local v0           #body:Lcom/broadcom/bt/util/mime4j/message/Body;
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->parseBodyParts(Lcom/broadcom/bt/util/mime4j/message/Entity;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/ArrayList;)V

    .line 2110
    .end local p1
    :cond_2
    :goto_1
    return-void

    .line 2094
    .restart local v0       #body:Lcom/broadcom/bt/util/mime4j/message/Body;
    .restart local p1
    :cond_3
    invoke-virtual {p1}, Lcom/broadcom/bt/util/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/plain"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2096
    :try_start_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getTxtPart(Lcom/broadcom/bt/util/mime4j/message/Entity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2097
    :catch_0
    move-exception v4

    goto :goto_1

    .line 2100
    :cond_4
    invoke-virtual {p1}, Lcom/broadcom/bt/util/mime4j/message/Entity;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2102
    :try_start_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getTxtPart(Lcom/broadcom/bt/util/mime4j/message/Entity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2103
    :catch_1
    move-exception v4

    goto :goto_1

    .line 2106
    :cond_5
    instance-of v4, p1, Lcom/broadcom/bt/util/mime4j/message/BodyPart;

    if-eqz v4, :cond_2

    .line 2107
    check-cast p1, Lcom/broadcom/bt/util/mime4j/message/BodyPart;

    .end local p1
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static toProviderMessageDBID(I)I
    .locals 0
    .parameter "messageId"

    .prologue
    .line 293
    if-lez p0, :cond_0

    .end local p0
    :goto_0
    return p0

    .restart local p0
    :cond_0
    const/4 p0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public disableNotifications(Ljava/lang/String;)Z
    .locals 2
    .parameter "datasourceId"

    .prologue
    .line 834
    sget-boolean v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v0, :cond_0

    .line 835
    const-string v0, "MAP.XMSProvider"

    const-string v1, "disableNotifications()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    .line 838
    const/4 v0, 0x1

    return v0
.end method

.method public enableNotifications(Ljava/lang/String;)Z
    .locals 3
    .parameter "datasourceId"

    .prologue
    const/4 v2, 0x1

    .line 825
    sget-boolean v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v0, :cond_0

    .line 826
    const-string v0, "MAP.XMSProvider"

    const-string v1, "enableNotifications()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_0
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    .line 829
    return v2
.end method

.method protected getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    const-string v0, "com.broadcom.bt.XMS"

    return-object v0
.end method

.method public getSmsMsgType()B
    .locals 4

    .prologue
    .line 2065
    const/4 v0, 0x2

    .line 2066
    .local v0, msgType:B
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getSmsType()B

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 2067
    const/4 v0, 0x4

    .line 2069
    :cond_0
    const-string v1, "MAP.XMSProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmsMsgType ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    return v0
.end method

.method getSmsType()B
    .locals 1

    .prologue
    .line 2061
    iget-byte v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    and-int/lit8 v0, v0, 0x6

    int-to-byte v0, v0

    return v0
.end method

.method public notificationsEnabled()Z
    .locals 1

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    return v0
.end method

.method protected onClientConnected(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceName"

    .prologue
    .line 2053
    const-string v0, "MAP.XMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClientConnected(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    return-void
.end method

.method protected onClientDisconnected()V
    .locals 2

    .prologue
    .line 2057
    const-string v0, "MAP.XMSProvider"

    const-string v1, "onClientDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    return-void
.end method

.method protected declared-synchronized onDisconnect(Ljava/lang/String;)V
    .locals 3
    .parameter "bda"

    .prologue
    .line 818
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v0, :cond_0

    .line 819
    const-string v0, "MAP.XMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect() - bda = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_0
    const-string v0, "SMS"

    invoke-virtual {p0, p1, v0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->disconnectDevice(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    monitor-exit p0

    return-void

    .line 818
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onGetFolderListing(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "maxEntries"
    .parameter "offset"

    .prologue
    .line 849
    invoke-static {p3}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 850
    const-string v0, "MAP.XMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetFolderListing(): SMS only contains root folders...Request path is not the root folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendFolderListingError_NoFolders(ILjava/lang/String;Ljava/lang/String;)V

    .line 858
    :goto_0
    return-void

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    sget-object v1, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->SMS_ROOT_FOLDERS:[Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendFolderListings(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    .locals 10
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "virtualFolderPath"
    .parameter "messageId"
    .parameter "charSetId"
    .parameter "includeAttachments"

    .prologue
    .line 863
    const-string v0, "MAP.XMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetMsg - messageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    const/16 v0, 0xa

    :try_start_0
    invoke-static {p5, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 873
    .local v9, mId:Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xf4240

    if-lt v0, v1, :cond_0

    .line 874
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xf4240

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 875
    invoke-virtual {v9}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->onGetMsgSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V

    .line 882
    .end local v9           #mId:Ljava/lang/Integer;
    :goto_0
    return-void

    .line 877
    .restart local v9       #mId:Ljava/lang/Integer;
    :cond_0
    const-string v0, "MAP.XMSProvider"

    const-string v1, "Received invalid messageId - unable to get message!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 879
    .end local v9           #mId:Ljava/lang/Integer;
    :catch_0
    move-exception v8

    .line 880
    .local v8, e:Ljava/lang/NumberFormatException;
    const-string v0, "MAP.XMSProvider"

    const-string v1, "Received invalid messageId - NumberFormatException!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onGetMsgListing(Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
    .locals 46
    .parameter "datasourceId"
    .parameter "requestId"
    .parameter "folderPath"
    .parameter "parameterMask"
    .parameter "maxEntries"
    .parameter "offsetMessageId"
    .parameter "maxSubjectLengthAsByte"
    .parameter "msgMask"
    .parameter "periodBegin"
    .parameter "periodEnd"
    .parameter "readStatus"
    .parameter "recipient"
    .parameter "originator"
    .parameter "pri_status"

    .prologue
    .line 1176
    const/16 v30, 0x1

    .line 1178
    .local v30, getSms:Z
    const/16 v29, 0x0

    .line 1184
    .local v29, getMms:Z
    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1185
    :cond_0
    const-string v4, "MAP.XMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetMsgListing(): Invalid folder path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    .line 1427
    :goto_0
    return-void

    .line 1190
    :cond_1
    move/from16 v7, p7

    .line 1191
    .local v7, maxSubjectLength:I
    if-gez v7, :cond_2

    const/16 v4, -0x80

    if-lt v7, v4, :cond_2

    .line 1192
    add-int/lit16 v7, v7, 0x100

    .line 1194
    :cond_2
    const/16 v4, 0x10

    if-le v7, v4, :cond_3

    .line 1195
    const/16 v7, 0x10

    .line 1197
    :cond_3
    const-string v4, "MAP.XMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetMsgListing(): folderPath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " parameterMask="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " maxEntries="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " maxSubjectLength="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " periodBegin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " periodEnd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p10

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " readStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p11

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " recipient="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p12

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " originator="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p13

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " msgMask = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " providerType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-byte v6, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    and-int/lit8 v4, p8, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getSmsType()B

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 1204
    const-string v4, "MAP.XMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetMsgListing(): Filtering out SMS_GSM so we won\'t do SMS... providerType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-byte v6, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    const/16 v30, 0x0

    .line 1208
    :cond_4
    and-int/lit8 v4, p8, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getSmsType()B

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 1211
    const-string v4, "MAP.XMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetMsgListing(): Filtering out SMS_CDMA so we won\'t do SMS... providerType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-byte v6, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    const/16 v30, 0x0

    .line 1215
    :cond_5
    and-int/lit8 v4, p8, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6

    move-object/from16 v0, p0

    iget-byte v4, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6

    .line 1217
    const-string v4, "MAP.XMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetMsgListing(): Filtering out MMS ... providerType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-byte v6, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    const/16 v29, 0x0

    .line 1221
    :cond_6
    if-gtz p5, :cond_b

    const/16 v42, 0x1

    .line 1222
    .local v42, returnAllMsgs:Z
    :goto_1
    new-instance v34, Ljava/util/LinkedList;

    invoke-direct/range {v34 .. v34}, Ljava/util/LinkedList;-><init>()V

    .line 1224
    .local v34, mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->isDeletedFolder(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1226
    if-eqz v30, :cond_a

    .line 1230
    invoke-static/range {p6 .. p6}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->toProviderMessageDBID(I)I

    move-result v35

    .line 1231
    .local v35, messageDbId:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;

    move/from16 v0, v35

    invoke-virtual {v4, v0}, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->getAllItemsGreaterThan(I)Landroid/database/Cursor;

    move-result-object v12

    .line 1232
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1236
    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v4, v7}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->toDeletedMessageInfo(Landroid/database/Cursor;ZI)Lcom/broadcom/bt/service/map/MessageInfo;

    move-result-object v33

    .line 1238
    .local v33, mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1240
    if-nez v42, :cond_8

    .line 1241
    add-int/lit8 p5, p5, -0x1

    .line 1244
    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v42, :cond_7

    if-gtz p5, :cond_7

    .line 1250
    .end local v33           #mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    :cond_9
    if-eqz v12, :cond_a

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1254
    .end local v12           #c:Landroid/database/Cursor;
    .end local v35           #messageDbId:I
    :cond_a
    if-eqz v29, :cond_c

    .line 1257
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    move/from16 v5, p4

    move/from16 v8, p11

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p13

    move-object/from16 v12, p12

    move/from16 v13, p5

    move/from16 v14, p6

    invoke-static/range {v4 .. v15}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->readFolder(Ljava/lang/String;IZIBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v37

    .line 1262
    .local v37, mmsList:Ljava/util/List;,"Ljava/util/List<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/broadcom/bt/service/map/MessageInfo;

    .line 1263
    .local v36, mi:Lcom/broadcom/bt/service/map/MessageInfo;
    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1221
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v34           #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    .end local v36           #mi:Lcom/broadcom/bt/service/map/MessageInfo;
    .end local v37           #mmsList:Ljava/util/List;,"Ljava/util/List<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    .end local v42           #returnAllMsgs:Z
    :cond_b
    const/16 v42, 0x0

    goto/16 :goto_1

    .line 1267
    .restart local v34       #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    .restart local v42       #returnAllMsgs:Z
    :cond_c
    invoke-virtual/range {v34 .. v34}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 1268
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v34

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMessageListings(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1270
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1274
    :cond_e
    if-eqz v30, :cond_19

    .line 1275
    const/16 v27, 0x0

    .line 1276
    .local v27, filterPriority:B
    const/16 v26, 0x0

    .line 1277
    .local v26, filterNewMsg:Z
    move/from16 v28, p11

    .line 1279
    .local v28, filterReadStatus:B
    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->createFolderUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1280
    .local v9, uri:Landroid/net/Uri;
    if-nez v9, :cond_f

    .line 1282
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1286
    :cond_f
    const/16 v25, 0x0

    .line 1287
    .local v25, c:Landroid/database/Cursor;
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    .line 1288
    .local v45, where:Ljava/lang/StringBuilder;
    const/16 v31, 0x0

    .line 1293
    .local v31, hasWhereCondition:Z
    const-string v4, "MAP.XMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetMsgList(): readStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    invoke-static/range {v28 .. v28}, Lcom/broadcom/bt/service/map/BluetoothMAP;->isValidMsgStatus(B)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1299
    sget-boolean v4, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v4, :cond_10

    .line 1300
    const-string v4, "MAP.XMSProvider"

    const-string v5, "Adding message status filter..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_10
    if-eqz v31, :cond_1a

    .line 1304
    const-string v4, " AND "

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    :goto_3
    const-string v4, "("

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1310
    const-string v4, "read"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    const/4 v4, 0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_1b

    const-string v4, "0"

    :goto_4
    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1312
    const-string v4, ")"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    :cond_11
    if-eqz p9, :cond_12

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_12

    .line 1317
    new-instance v44, Landroid/text/format/Time;

    invoke-direct/range {v44 .. v44}, Landroid/text/format/Time;-><init>()V

    .line 1318
    .local v44, time:Landroid/text/format/Time;
    const-wide/16 v38, 0x0

    .line 1319
    .local v38, periodBeginmillis:J
    move-object/from16 v0, v44

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1321
    const/4 v4, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v38

    .line 1322
    const-string v4, "MAP.XMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "periodBegin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v38

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    if-eqz v31, :cond_1c

    .line 1326
    const-string v4, " AND "

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    :goto_5
    const-string v4, "("

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    const-string v4, "date"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " >= "

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v38

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    .end local v38           #periodBeginmillis:J
    .end local v44           #time:Landroid/text/format/Time;
    :cond_12
    if-eqz p10, :cond_13

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-lt v4, v5, :cond_13

    .line 1339
    new-instance v44, Landroid/text/format/Time;

    invoke-direct/range {v44 .. v44}, Landroid/text/format/Time;-><init>()V

    .line 1340
    .restart local v44       #time:Landroid/text/format/Time;
    const-wide/16 v40, 0x0

    .line 1341
    .local v40, periodEndmillis:J
    move-object/from16 v0, v44

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1343
    const/4 v4, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v40

    .line 1344
    const-string v4, "MAP.XMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "periodEnd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v40

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    if-eqz v31, :cond_1d

    .line 1348
    const-string v4, " AND "

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    :goto_6
    const-string v4, "("

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    const-string v4, "date"

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " <= "

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v40

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    .end local v40           #periodEndmillis:J
    .end local v44           #time:Landroid/text/format/Time;
    :cond_13
    :try_start_0
    sget-object v10, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->SMS_PROVIDER_PROJ:[Ljava/lang/String;

    check-cast v10, [Ljava/lang/String;

    .line 1365
    .local v10, projections:[Ljava/lang/String;
    sget-boolean v4, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v4, :cond_14

    .line 1366
    const-string v4, "MAP.XMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetMsgListing(): Querying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with filter "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_14
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1e

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_7
    const/4 v12, 0x0

    const-string v13, "_id desc "

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1372
    .end local v25           #c:Landroid/database/Cursor;
    .restart local v12       #c:Landroid/database/Cursor;
    if-eqz v12, :cond_18

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1374
    sget-boolean v4, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v4, :cond_15

    .line 1375
    const-string v4, "MAP.XMSProvider"

    const-string v5, "onGetMsgListing(): Found messages!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_15
    if-nez p6, :cond_1f

    .line 1382
    const/4 v13, 0x1

    move-object/from16 v11, p0

    move/from16 v14, p4

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, v7

    invoke-virtual/range {v11 .. v17}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->toMessageInfo(Landroid/database/Cursor;ZILjava/lang/String;Ljava/lang/String;I)Lcom/broadcom/bt/service/map/MessageInfo;

    move-result-object v33

    .line 1383
    .restart local v33       #mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    if-eqz v33, :cond_16

    .line 1384
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1386
    :cond_16
    if-nez v42, :cond_17

    .line 1387
    add-int/lit8 p5, p5, -0x1

    .line 1394
    .end local v33           #mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    :cond_17
    :goto_8
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_18

    if-nez v42, :cond_15

    if-gtz p5, :cond_15

    .line 1401
    .end local v10           #projections:[Ljava/lang/String;
    :cond_18
    :goto_9
    if-eqz v12, :cond_19

    .line 1402
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1407
    .end local v9           #uri:Landroid/net/Uri;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v26           #filterNewMsg:Z
    .end local v27           #filterPriority:B
    .end local v28           #filterReadStatus:B
    .end local v31           #hasWhereCondition:Z
    .end local v45           #where:Ljava/lang/StringBuilder;
    :cond_19
    if-eqz v29, :cond_20

    .line 1410
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v24, v0

    move/from16 v14, p4

    move/from16 v16, v7

    move/from16 v17, p11

    move-object/from16 v18, p9

    move-object/from16 v19, p10

    move-object/from16 v20, p13

    move-object/from16 v21, p12

    move/from16 v22, p5

    move/from16 v23, p6

    invoke-static/range {v13 .. v24}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->readFolder(Ljava/lang/String;IZIBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/content/ContentResolver;)Ljava/util/List;

    move-result-object v37

    .line 1415
    .restart local v37       #mmsList:Ljava/util/List;,"Ljava/util/List<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .restart local v32       #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/broadcom/bt/service/map/MessageInfo;

    .line 1416
    .restart local v36       #mi:Lcom/broadcom/bt/service/map/MessageInfo;
    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1307
    .end local v32           #i$:Ljava/util/Iterator;
    .end local v36           #mi:Lcom/broadcom/bt/service/map/MessageInfo;
    .end local v37           #mmsList:Ljava/util/List;,"Ljava/util/List<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v25       #c:Landroid/database/Cursor;
    .restart local v26       #filterNewMsg:Z
    .restart local v27       #filterPriority:B
    .restart local v28       #filterReadStatus:B
    .restart local v31       #hasWhereCondition:Z
    .restart local v45       #where:Ljava/lang/StringBuilder;
    :cond_1a
    const/16 v31, 0x1

    goto/16 :goto_3

    .line 1311
    :cond_1b
    const-string v4, "1"

    goto/16 :goto_4

    .line 1328
    .restart local v38       #periodBeginmillis:J
    .restart local v44       #time:Landroid/text/format/Time;
    :cond_1c
    const/16 v31, 0x1

    goto/16 :goto_5

    .line 1350
    .end local v38           #periodBeginmillis:J
    .restart local v40       #periodEndmillis:J
    :cond_1d
    const/16 v31, 0x1

    goto/16 :goto_6

    .line 1369
    .end local v40           #periodEndmillis:J
    .end local v44           #time:Landroid/text/format/Time;
    .restart local v10       #projections:[Ljava/lang/String;
    :cond_1e
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1391
    .end local v25           #c:Landroid/database/Cursor;
    .restart local v12       #c:Landroid/database/Cursor;
    :cond_1f
    :try_start_2
    const-string v4, "MAP.XMSProvider"

    const-string v5, "OnGetMsgListing() : skipping upto the offset"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 1392
    add-int/lit8 p6, p6, -0x1

    goto :goto_8

    .line 1397
    .end local v10           #projections:[Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    .restart local v25       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v43

    move-object/from16 v12, v25

    .line 1398
    .end local v25           #c:Landroid/database/Cursor;
    .restart local v12       #c:Landroid/database/Cursor;
    .local v43, t:Ljava/lang/Throwable;
    :goto_b
    const-string v4, "MAP.XMSProvider"

    const-string v5, "onGetMsgListing(): Unable to query for SMS messages"

    move-object/from16 v0, v43

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1420
    .end local v9           #uri:Landroid/net/Uri;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v26           #filterNewMsg:Z
    .end local v27           #filterPriority:B
    .end local v28           #filterReadStatus:B
    .end local v31           #hasWhereCondition:Z
    .end local v43           #t:Ljava/lang/Throwable;
    .end local v45           #where:Ljava/lang/StringBuilder;
    :cond_20
    if-nez v34, :cond_21

    .line 1421
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1423
    :cond_21
    new-instance v4, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider$MsgInfoComparator;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider$MsgInfoComparator;-><init>(Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;)V

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, v34

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMessageListings(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1397
    .restart local v9       #uri:Landroid/net/Uri;
    .restart local v10       #projections:[Ljava/lang/String;
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v26       #filterNewMsg:Z
    .restart local v27       #filterPriority:B
    .restart local v28       #filterReadStatus:B
    .restart local v31       #hasWhereCondition:Z
    .restart local v45       #where:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v43

    goto :goto_b
.end method

.method protected onGetMsgMms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    .locals 34
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "virtualFolderPath"
    .parameter "messageId"
    .parameter "charSetId"
    .parameter "includeAttachments"

    .prologue
    .line 1036
    const-string v1, "MAP.XMSProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetMsg MMS - messageId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    const/4 v12, 0x0

    .line 1039
    .local v12, bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    const/16 v26, 0x0

    .line 1040
    .local v26, outFile:Ljava/io/File;
    const/16 v21, 0x0

    .line 1042
    .local v21, err:Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p5

    invoke-static {v0, v1}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->read(Ljava/lang/String;Landroid/content/ContentResolver;)Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;

    move-result-object v25

    .line 1048
    .local v25, m:Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;
    :try_start_0
    new-instance v13, Lcom/broadcom/bt/util/bmsg/BMessage;

    invoke-direct {v13}, Lcom/broadcom/bt/util/bmsg/BMessage;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    .end local v12           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .local v13, bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    :try_start_1
    move-object/from16 v0, v25

    iget-boolean v1, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->isRead:Z

    invoke-virtual {v13, v1}, Lcom/broadcom/bt/util/bmsg/BMessage;->setReadStatus(Z)V

    .line 1050
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/broadcom/bt/util/bmsg/BMessage;->setFolder(Ljava/lang/String;)V

    .line 1051
    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Lcom/broadcom/bt/util/bmsg/BMessage;->setMessageType(B)V

    .line 1054
    invoke-virtual {v13}, Lcom/broadcom/bt/util/bmsg/BMessage;->addOriginator()Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    move-result-object v14

    .line 1056
    .local v14, bOriginator:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    const-string v17, ""

    .line 1057
    .local v17, content:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->setVersion(B)V

    .line 1059
    const/4 v1, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->from(Z)Ljava/lang/String;

    move-result-object v22

    .line 1060
    .local v22, from:Ljava/lang/String;
    if-eqz v22, :cond_0

    .line 1061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "From: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1062
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v14, v1, v0, v2}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 1066
    :cond_0
    invoke-virtual {v13}, Lcom/broadcom/bt/util/bmsg/BMessage;->addEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object v10

    .line 1069
    .local v10, bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    invoke-virtual {v10}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->addRecipient()Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    move-result-object v15

    .line 1071
    .local v15, bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    const/4 v1, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->to(Z)Ljava/lang/String;

    move-result-object v33

    .line 1072
    .local v33, to:Ljava/lang/String;
    if-eqz v33, :cond_1

    .line 1073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "To: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v33

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1074
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->setVersion(B)V

    .line 1075
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v15, v1, v0, v2}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 1079
    :cond_1
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, v25

    iget-wide v1, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->date:J

    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 1080
    .local v18, d:Ljava/util/Date;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Subject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->subject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MIME-Version: 1.0\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Content-Type: multipart/mixed; boundary=\"---=_NextPart_7ACDB2D9-6D39-49e1-A7F7-1B11133634B6\"\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Content-Transfer-Encoding: 7bit\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MIME Message\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-----=_NextPart_7ACDB2D9-6D39-49e1-A7F7-1B11133634B6\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1088
    invoke-virtual {v13}, Lcom/broadcom/bt/util/bmsg/BMessage;->getEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object v11

    .line 1089
    .local v11, bEnvBody:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    invoke-virtual {v11}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->addBody()Lcom/broadcom/bt/util/bmsg/BMessageBody;

    move-result-object v8

    .line 1090
    .local v8, bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->setCharSet(B)V

    .line 1091
    invoke-virtual {v8}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->addContent()Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;

    move-result-object v9

    .line 1093
    .local v9, bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    invoke-virtual/range {v25 .. v25}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->getText()Ljava/lang/String;

    move-result-object v32

    .line 1094
    .local v32, text:Ljava/lang/String;
    if-eqz v32, :cond_2

    .line 1095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Content-Type: text/plain; charset=\"UTF-8\"\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1097
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Content-Transfer-Encoding: quoted-printable\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1098
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Content-Disposition:inline\r\n\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lorg/apache/commons/codec/net/QuotedPrintableCodec;

    invoke-direct {v2}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n\r\n-----=_NextPart_7ACDB2D9-6D39-49e1-A7F7-1B11133634B6--\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1107
    :cond_2
    const/16 v29, 0x0

    .line 1108
    .local v29, part:Lcom/broadcom/bt/service/map/provider/mms/MmsPart;
    move-object/from16 v0, v25

    iget-object v1, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;

    .line 1109
    .local v28, p:Lcom/broadcom/bt/service/map/provider/mms/MmsPart;
    move-object/from16 v0, v28

    iget-object v1, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->contentType:Ljava/lang/String;

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object/from16 v0, v28

    iget-object v1, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->attachmentFilename:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1110
    move-object/from16 v29, v28

    .line 1115
    .end local v28           #p:Lcom/broadcom/bt/service/map/provider/mms/MmsPart;
    :cond_4
    if-eqz v29, :cond_5

    if-eqz p7, :cond_5

    .line 1117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->cl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Content-Transfer-Encoding: base64\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Content-Disposition: attachment;\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filename=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->cl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mms/part/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    .line 1131
    .local v30, partUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v30

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v24

    .line 1132
    .local v24, in:Ljava/io/InputStream;
    invoke-static/range {v24 .. v24}, Lcom/broadcom/bt/util/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v19

    .line 1133
    .local v19, data:[B
    invoke-static/range {v24 .. v24}, Lcom/broadcom/bt/util/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n-----=_NextPart_7ACDB2D9-6D39-49e1-A7F7-1B11133634B6\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1143
    .end local v19           #data:[B
    .end local v24           #in:Ljava/io/InputStream;
    .end local v30           #partUri:Landroid/net/Uri;
    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->addMessageContent(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-object v12, v13

    .line 1151
    .end local v8           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v9           #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .end local v10           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v11           #bEnvBody:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v13           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .end local v14           #bOriginator:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    .end local v15           #bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    .end local v17           #content:Ljava/lang/String;
    .end local v18           #d:Ljava/util/Date;
    .end local v22           #from:Ljava/lang/String;
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v29           #part:Lcom/broadcom/bt/service/map/provider/mms/MmsPart;
    .end local v32           #text:Ljava/lang/String;
    .end local v33           #to:Ljava/lang/String;
    .restart local v12       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    :goto_0
    const/16 v16, 0x0

    .line 1152
    .local v16, bmsgFile:Ljava/io/BufferedWriter;
    const/4 v6, 0x0

    .line 1155
    .local v6, status:B
    :try_start_2
    new-instance v27, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mTmpDirectory:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1157
    .end local v26           #outFile:Ljava/io/File;
    .local v27, outFile:Ljava/io/File;
    :try_start_3
    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lcom/broadcom/bt/util/bmsg/BMessage;->write(Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v26, v27

    .line 1162
    .end local v27           #outFile:Ljava/io/File;
    .restart local v26       #outFile:Ljava/io/File;
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    move/from16 v2, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)Z

    .line 1163
    return-void

    .line 1145
    .end local v6           #status:B
    .end local v16           #bmsgFile:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v31

    .line 1146
    .local v31, t:Ljava/lang/Throwable;
    :goto_2
    move-object/from16 v21, v31

    .line 1147
    const-string v1, "MAP.XMSProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating bmsge"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1158
    .end local v31           #t:Ljava/lang/Throwable;
    .restart local v6       #status:B
    .restart local v16       #bmsgFile:Ljava/io/BufferedWriter;
    :catch_1
    move-exception v20

    .line 1159
    .local v20, e:Ljava/lang/Exception;
    :goto_3
    const/4 v6, 0x3

    .line 1160
    const-string v1, "MAP.XMSProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error writing bmsg file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1158
    .end local v20           #e:Ljava/lang/Exception;
    .end local v26           #outFile:Ljava/io/File;
    .restart local v27       #outFile:Ljava/io/File;
    :catch_2
    move-exception v20

    move-object/from16 v26, v27

    .end local v27           #outFile:Ljava/io/File;
    .restart local v26       #outFile:Ljava/io/File;
    goto :goto_3

    .line 1145
    .end local v6           #status:B
    .end local v12           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .end local v16           #bmsgFile:Ljava/io/BufferedWriter;
    .restart local v13       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    :catch_3
    move-exception v31

    move-object v12, v13

    .end local v13           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v12       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    goto :goto_2
.end method

.method public onGetMsgSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    .locals 25
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "virtualFolderPath"
    .parameter "messageId"
    .parameter "charSetId"
    .parameter "includeAttachments"

    .prologue
    .line 887
    const-string v3, "MAP.XMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetMsg SMS - messageId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 892
    :cond_0
    const-string v3, "MAP.XMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetMsg(): Invalid folder path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 1030
    :goto_0
    return-void

    .line 898
    :cond_1
    if-eqz p7, :cond_2

    .line 899
    const-string v3, "MAP.XMSProvider"

    const-string v5, "onGetMsg(): SMS provider currently doesn\'t support returning attachments"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_2
    move/from16 v12, p6

    .line 904
    .local v12, bCharset:B
    const/4 v15, 0x0

    .line 905
    .local v15, bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    const/16 v21, 0x0

    .line 906
    .local v21, mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    const/16 v22, 0x0

    .line 907
    .local v22, outFile:Ljava/io/File;
    const/16 v18, 0x0

    .line 908
    .local v18, content:Ljava/lang/String;
    const/16 v17, 0x0

    .line 909
    .local v17, c:Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 910
    .local v20, err:Ljava/lang/Throwable;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->isDeletedFolder(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;

    const/16 v5, 0xa

    move-object/from16 v0, p5

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->getItemById(I)Landroid/database/Cursor;

    move-result-object v4

    .line 913
    .end local v17           #c:Landroid/database/Cursor;
    .local v4, c:Landroid/database/Cursor;
    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 915
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3, v5}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->toDeletedMessageInfo(Landroid/database/Cursor;ZI)Lcom/broadcom/bt/service/map/MessageInfo;

    move-result-object v21

    .line 916
    const/16 v3, 0xb

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 922
    :goto_1
    if-eqz v4, :cond_3

    .line 923
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 924
    const/4 v4, 0x0

    .line 965
    :cond_3
    :try_start_0
    new-instance v16, Lcom/broadcom/bt/util/bmsg/BMessage;

    invoke-direct/range {v16 .. v16}, Lcom/broadcom/bt/util/bmsg/BMessage;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 966
    .end local v15           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .local v16, bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, v16

    move-object/from16 v1, p4

    move-object/from16 v2, v21

    invoke-static {v0, v3, v1, v2}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->setBMessageHeaderInfo(Lcom/broadcom/bt/util/bmsg/BMessage;BLjava/lang/String;Lcom/broadcom/bt/service/map/MessageInfo;)V

    .line 970
    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/util/bmsg/BMessage;->getEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object v14

    .line 971
    .local v14, bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    invoke-virtual {v14}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->addBody()Lcom/broadcom/bt/util/bmsg/BMessageBody;

    move-result-object v11

    .line 974
    .local v11, bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->setCharSet(B)V

    .line 983
    invoke-virtual {v11}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->addContent()Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;

    move-result-object v13

    .line 988
    .local v13, bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    if-nez v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getSmsType()B

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 990
    const-string v3, "MAP.XMSProvider"

    const-string v5, "Native charset requested"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3, v5, v6}, Lcom/broadcom/bt/util/bmsg/BMessage;->encodeSMSDeliverPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 994
    .local v19, encodedContent:Ljava/lang/String;
    if-nez v19, :cond_b

    .line 995
    const-string v3, "MAP.XMSProvider"

    const-string v5, "Native charset requested but encoding failed"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    .end local v19           #encodedContent:Ljava/lang/String;
    :cond_4
    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->addMessageContent(Ljava/lang/String;)V

    .line 1011
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mTmpDirectory:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1013
    .end local v22           #outFile:Ljava/io/File;
    .local v23, outFile:Ljava/io/File;
    :try_start_2
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/bmsg/BMessage;->write(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v22, v23

    .end local v23           #outFile:Ljava/io/File;
    .restart local v22       #outFile:Ljava/io/File;
    move-object/from16 v15, v16

    .line 1018
    .end local v11           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v13           #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .end local v14           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v16           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v15       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    :goto_3
    if-eqz v15, :cond_5

    .line 1019
    invoke-virtual {v15}, Lcom/broadcom/bt/util/bmsg/BMessage;->finish()V

    .line 1020
    const/4 v15, 0x0

    .line 1023
    :cond_5
    if-eqz v20, :cond_c

    .line 1024
    const-string v3, "MAP.XMSProvider"

    const-string v5, "onGetMsg(): Unable to create BMessage"

    move-object/from16 v0, v20

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1025
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 920
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 931
    .end local v4           #c:Landroid/database/Cursor;
    .restart local v17       #c:Landroid/database/Cursor;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->SMS_PROVIDER_PROJ:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v4

    .line 934
    .end local v17           #c:Landroid/database/Cursor;
    .restart local v4       #c:Landroid/database/Cursor;
    if-eqz v4, :cond_8

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 935
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->toMessageInfo(Landroid/database/Cursor;ZILjava/lang/String;Ljava/lang/String;I)Lcom/broadcom/bt/service/map/MessageInfo;

    move-result-object v21

    .line 936
    const/16 v3, 0x9

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 937
    if-eqz v21, :cond_8

    if-eqz v18, :cond_8

    .line 938
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    move-object/from16 v0, v21

    iput v3, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 945
    :cond_8
    :goto_4
    if-eqz v4, :cond_9

    .line 946
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 947
    const/4 v4, 0x0

    .line 950
    :cond_9
    if-nez v21, :cond_a

    .line 951
    const-string v3, "MAP.XMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetMsg(): Unable to find message:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 941
    .end local v4           #c:Landroid/database/Cursor;
    .restart local v17       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v24

    move-object/from16 v4, v17

    .line 942
    .end local v17           #c:Landroid/database/Cursor;
    .restart local v4       #c:Landroid/database/Cursor;
    .local v24, t:Ljava/lang/Throwable;
    :goto_5
    const-string v3, "MAP.XMSProvider"

    const-string v5, "onGetMsg(): Unable to query for SMS messages"

    move-object/from16 v0, v24

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 956
    .end local v24           #t:Ljava/lang/Throwable;
    :cond_a
    move-object/from16 v0, v21

    iget-boolean v3, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    if-nez v3, :cond_3

    .line 957
    const-string v3, "MAP.XMSProvider"

    const-string v5, "onGetMsg(): Binary SMS not currentlly supported"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v3, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 998
    .end local v15           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v11       #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .restart local v13       #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .restart local v14       #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .restart local v16       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v19       #encodedContent:Ljava/lang/String;
    :cond_b
    :try_start_5
    const-string v3, "MAP.XMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Native charset requested - encoding succeeded - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    move-object/from16 v18, v19

    .line 1000
    invoke-virtual {v11, v12}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->setCharSet(B)V

    .line 1001
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->setEncoding(B)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 1014
    .end local v11           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v13           #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .end local v14           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v19           #encodedContent:Ljava/lang/String;
    :catch_1
    move-exception v24

    move-object/from16 v15, v16

    .line 1015
    .end local v16           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v15       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v24       #t:Ljava/lang/Throwable;
    :goto_6
    move-object/from16 v20, v24

    goto/16 :goto_3

    .line 1027
    .end local v24           #t:Ljava/lang/Throwable;
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move v9, v12

    invoke-virtual/range {v5 .. v10}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnMessage(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1014
    :catch_2
    move-exception v24

    goto :goto_6

    .end local v15           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .end local v22           #outFile:Ljava/io/File;
    .restart local v11       #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .restart local v13       #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .restart local v14       #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .restart local v16       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v23       #outFile:Ljava/io/File;
    :catch_3
    move-exception v24

    move-object/from16 v22, v23

    .end local v23           #outFile:Ljava/io/File;
    .restart local v22       #outFile:Ljava/io/File;
    move-object/from16 v15, v16

    .end local v16           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v15       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    goto :goto_6

    .line 941
    .end local v11           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v13           #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .end local v14           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    :catch_4
    move-exception v24

    goto :goto_5
.end method

.method protected onPushMsg(ILjava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "msgTransparent"
    .parameter "msgRetry"
    .parameter "msgCharset"
    .parameter "msgContentUri"
    .parameter "folderPath"
    .parameter "virtualFolderPath"

    .prologue
    .line 1431
    const-string v3, "MAP.XMSProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPushMsg() charset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msgContentUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    const/4 v3, 0x0

    invoke-virtual {p0, p6, v3}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->parseBMessage(Ljava/lang/String;Z)Lcom/broadcom/bt/util/bmsg/BMessage;

    move-result-object v0

    .line 1435
    .local v0, bMessage:Lcom/broadcom/bt/util/bmsg/BMessage;
    if-nez v0, :cond_0

    .line 1436
    const-string v3, "MAP.XMSProvider"

    const-string v4, "(onPushMsg(): Unable to push message. Null BMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {v3, p1, p2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    .line 1460
    :goto_0
    return-void

    .line 1442
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/broadcom/bt/util/bmsg/BMessage;->getMessageType()B

    move-result v2

    .line 1443
    .local v2, msgType:B
    invoke-virtual {v0}, Lcom/broadcom/bt/util/bmsg/BMessage;->finish()V

    .line 1444
    const/4 v0, 0x0

    .line 1446
    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1449
    :cond_1
    invoke-virtual/range {p0 .. p8}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->onPushMsgSms(ILjava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1457
    .end local v2           #msgType:B
    :catch_0
    move-exception v1

    .line 1458
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "MAP.XMSProvider"

    const-string v4, "onPushMsg(): Error parsing BMessage"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1454
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v2       #msgType:B
    :cond_2
    :try_start_1
    const-string v3, "MAP.XMSProvider"

    const-string v4, "onPushMsg() - Invalid message type...."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {v3, p1, p2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPushMsgMms(ILjava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 36
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "msgTransparent"
    .parameter "msgRetry"
    .parameter "msgCharset"
    .parameter "msgContentUri"
    .parameter "folderPath"
    .parameter "virtualFolderPath"

    .prologue
    .line 1645
    const/4 v12, 0x0

    .line 1646
    .local v12, content:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1647
    .local v13, destAddress:Ljava/lang/String;
    const/16 v21, 0x0

    .line 1649
    .local v21, isRead:Z
    const-string v29, ""

    .line 1651
    .local v29, subject:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuffer;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuffer;-><init>()V

    .line 1652
    .local v31, textBody:Ljava/lang/StringBuffer;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 1653
    .local v17, htmlBody:Ljava/lang/StringBuffer;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1655
    .local v6, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/broadcom/bt/util/mime4j/message/BodyPart;>;"
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->parseBMessage(Ljava/lang/String;Z)Lcom/broadcom/bt/util/bmsg/BMessage;

    move-result-object v10

    .line 1656
    .local v10, bMessage:Lcom/broadcom/bt/util/bmsg/BMessage;
    const-string v32, "MAP.XMSProvider"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "onPushMsg() charset = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " msgContentUri = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " folderPath = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "virtualFolderPath = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    if-nez v10, :cond_1

    .line 1659
    const-string v32, "MAP.XMSProvider"

    const-string v33, "(onPushMsg(): Unable to push MMS message. Null BMessage"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    .line 1844
    :cond_0
    :goto_0
    return-void

    .line 1666
    :cond_1
    invoke-static/range {p7 .. p7}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_2

    invoke-static/range {p7 .. p7}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_3

    .line 1667
    :cond_2
    const-string v32, "MAP.XMSProvider"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "onPushMsg(): invalid folder path:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto :goto_0

    .line 1673
    :cond_3
    const-string v32, "/outbox"

    move-object/from16 v0, v32

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 1679
    .local v27, recipientRequired:Z
    :try_start_0
    invoke-virtual {v10}, Lcom/broadcom/bt/util/bmsg/BMessage;->getMessageType()B

    move-result v24

    .line 1682
    .local v24, msgType:B
    sget-boolean v32, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v32, :cond_4

    .line 1683
    const-string v32, "MAP.XMSProvider"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "onPushMsg(): Message type = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    :cond_4
    const/16 v32, 0x8

    move/from16 v0, v24

    move/from16 v1, v32

    if-eq v0, v1, :cond_6

    .line 1686
    const-string v32, "MAP.XMSProvider"

    const-string v33, "onPushMsg(): Unable to process BMessage: not MMS message type"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1745
    .end local v24           #msgType:B
    :goto_1
    if-eqz v12, :cond_5

    if-nez v13, :cond_e

    if-eqz v27, :cond_e

    .line 1746
    :cond_5
    const-string v32, "MAP.XMSProvider"

    const-string v33, "onPushMsg(): Unable to push MMS text message. Invalid destination address or content"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1690
    .restart local v24       #msgType:B
    :cond_6
    :try_start_1
    invoke-virtual {v10}, Lcom/broadcom/bt/util/bmsg/BMessage;->isRead()Z

    move-result v21

    .line 1693
    invoke-virtual {v10}, Lcom/broadcom/bt/util/bmsg/BMessage;->getEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object v9

    .line 1694
    .local v9, bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    if-nez v9, :cond_7

    .line 1695
    const-string v32, "MAP.XMSProvider"

    const-string v33, "onPushMsg(): Unable to process BMessage. Envelope is null"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1740
    .end local v9           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v24           #msgType:B
    :catch_0
    move-exception v14

    .line 1741
    .local v14, e:Ljava/lang/Exception;
    const-string v32, "MAP.XMSProvider"

    const-string v33, "onPushMsg(): Error parsing BMessage"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1702
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v9       #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .restart local v24       #msgType:B
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object/from16 v32, v0

    const/16 v33, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v9, v1}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->findRecipientProperty(Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;B)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    move-result-object v11

    .line 1704
    .local v11, bProp:Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;
    if-nez v11, :cond_8

    .line 1705
    if-eqz v27, :cond_9

    .line 1706
    const-string v32, "MAP.XMSProvider"

    const-string v33, "onPushMsg(): Unable to process BMessage. Recipient is required, but TEL property is null"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1711
    :cond_8
    invoke-virtual {v11}, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 1715
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->findMessageBody(Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;)Lcom/broadcom/bt/util/bmsg/BMessageBody;

    move-result-object v7

    .line 1716
    .local v7, bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    if-nez v7, :cond_a

    .line 1717
    const-string v32, "MAP.XMSProvider"

    const-string v33, "onPushMsg(): Unable to process BMessage. Body is null"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1723
    :cond_a
    invoke-virtual {v7}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->getContent()Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;

    move-result-object v8

    .line 1724
    .local v8, bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    if-nez v8, :cond_b

    .line 1725
    const-string v32, "MAP.XMSProvider"

    const-string v33, "onPushMsg(): Unable to process BMessage. Content is null"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1728
    :cond_b
    invoke-virtual {v8}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->getFirstMessageContent()Ljava/lang/String;

    move-result-object v12

    .line 1729
    const/16 v25, 0x0

    .line 1730
    .local v25, next:Ljava/lang/String;
    :goto_2
    invoke-virtual {v8}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->getNextMessageContent()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_c

    .line 1731
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 1735
    :cond_c
    new-instance v23, Lcom/broadcom/bt/util/mime4j/message/Message;

    new-instance v32, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/broadcom/bt/util/mime4j/message/Message;-><init>(Ljava/io/InputStream;)V

    .line 1736
    .local v23, mimeMessage:Lcom/broadcom/bt/util/mime4j/message/Message;
    invoke-virtual/range {v23 .. v23}, Lcom/broadcom/bt/util/mime4j/message/Message;->getSubject()Lcom/broadcom/bt/util/mime4j/field/UnstructuredField;

    move-result-object v32

    if-eqz v32, :cond_d

    .line 1737
    invoke-virtual/range {v23 .. v23}, Lcom/broadcom/bt/util/mime4j/message/Message;->getSubject()Lcom/broadcom/bt/util/mime4j/field/UnstructuredField;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/broadcom/bt/util/mime4j/field/UnstructuredField;->getValue()Ljava/lang/String;

    move-result-object v29

    .line 1739
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v31

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->parseBodyParts(Lcom/broadcom/bt/util/mime4j/message/Entity;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 1752
    .end local v7           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v8           #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .end local v9           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v11           #bProp:Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;
    .end local v23           #mimeMessage:Lcom/broadcom/bt/util/mime4j/message/Message;
    .end local v24           #msgType:B
    .end local v25           #next:Ljava/lang/String;
    :cond_e
    if-nez p5, :cond_f

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    move/from16 v32, v0

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_f

    .line 1755
    const-string v32, "MAP.XMSProvider"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Native charset used to push message - got message "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    invoke-virtual {v10, v12}, Lcom/broadcom/bt/util/bmsg/BMessage;->decodeSMSSubmitPDU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1758
    .local v28, sUTF8Content:Ljava/lang/String;
    if-nez v28, :cond_11

    .line 1759
    const-string v32, "MAP.XMSProvider"

    const-string v33, "Decoded message body - failed"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    .end local v28           #sUTF8Content:Ljava/lang/String;
    :cond_f
    invoke-virtual {v10}, Lcom/broadcom/bt/util/bmsg/BMessage;->finish()V

    .line 1772
    const/4 v10, 0x0

    .line 1774
    const/16 v22, 0x0

    .line 1775
    .local v22, messageUri:Landroid/net/Uri;
    sget-boolean v32, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->V:Z

    if-eqz v32, :cond_10

    .line 1776
    const-string v32, "MAP.XMSProvider"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "sending MMS to "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ": "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    const-string v32, "MAP.XMSProvider"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "attachments: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    const-string v32, "MAP.XMSProvider"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "textBody: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    const-string v32, "MAP.XMSProvider"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "htmlBody: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    :cond_10
    const/16 v19, 0x0

    .line 1784
    .local v19, intent:Landroid/content/Intent;
    :try_start_3
    const-string v32, "/outbox"

    move-object/from16 v0, v32

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 1785
    new-instance v20, Landroid/content/Intent;

    const-string v32, "com.broadcom.bt.mms.SENDNOW"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .end local v19           #intent:Landroid/content/Intent;
    .local v20, intent:Landroid/content/Intent;
    move-object/from16 v19, v20

    .line 1792
    .end local v20           #intent:Landroid/content/Intent;
    .restart local v19       #intent:Landroid/content/Intent;
    :goto_3
    const-string v32, "req_id"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1796
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v32

    if-lez v32, :cond_16

    .line 1797
    const-string v33, "android.intent.extra.TEXT"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v32

    if-lez v32, :cond_13

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1798
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v32

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1799
    .local v5, attachmentUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v32

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1802
    .local v4, attachmentMimeTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 1804
    .local v15, fos:Ljava/io/FileOutputStream;
    const/16 v18, 0x0

    .local v18, i:I
    move-object/from16 v16, v15

    .end local v15           #fos:Ljava/io/FileOutputStream;
    .local v16, fos:Ljava/io/FileOutputStream;
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-result v32

    move/from16 v0, v18

    move/from16 v1, v32

    if-ge v0, v1, :cond_14

    .line 1806
    :try_start_4
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mTmpDirectory:Ljava/io/File;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "MMS_"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1807
    .local v26, outFile:Ljava/io/File;
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, v26

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 1808
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    const/16 v32, 0x0

    :try_start_5
    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/broadcom/bt/util/mime4j/message/BodyPart;

    invoke-virtual/range {v32 .. v32}, Lcom/broadcom/bt/util/mime4j/message/BodyPart;->getBody()Lcom/broadcom/bt/util/mime4j/message/Body;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-interface {v0, v15}, Lcom/broadcom/bt/util/mime4j/message/Body;->writeTo(Ljava/io/OutputStream;)V

    .line 1809
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->flush()V

    .line 1810
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 1811
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "file://"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/broadcom/bt/util/mime4j/message/BodyPart;

    invoke-virtual/range {v32 .. v32}, Lcom/broadcom/bt/util/mime4j/message/BodyPart;->getMimeType()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 1804
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v16, v15

    .end local v15           #fos:Ljava/io/FileOutputStream;
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 1761
    .end local v4           #attachmentMimeTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #attachmentUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .end local v18           #i:I
    .end local v19           #intent:Landroid/content/Intent;
    .end local v22           #messageUri:Landroid/net/Uri;
    .end local v26           #outFile:Ljava/io/File;
    .restart local v28       #sUTF8Content:Ljava/lang/String;
    :cond_11
    const-string v32, "MAP.XMSProvider"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Decoded message body - got message "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    move-object/from16 v12, v28

    .line 1763
    if-nez v12, :cond_f

    .line 1764
    const-string v32, "MAP.XMSProvider"

    const-string v33, "onPushMsg(): Unable to push SMS text message. Empty content - conversion failed"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1787
    .end local v28           #sUTF8Content:Ljava/lang/String;
    .restart local v19       #intent:Landroid/content/Intent;
    .restart local v22       #messageUri:Landroid/net/Uri;
    :cond_12
    :try_start_6
    new-instance v20, Landroid/content/Intent;

    const-string v32, "com.broadcom.bt.mms.SAVE"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 1788
    .end local v19           #intent:Landroid/content/Intent;
    .restart local v20       #intent:Landroid/content/Intent;
    :try_start_7
    const-string v32, "folder"

    const/16 v33, 0x1

    move-object/from16 v0, p7

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v19, v20

    .end local v20           #intent:Landroid/content/Intent;
    .restart local v19       #intent:Landroid/content/Intent;
    goto/16 :goto_3

    .line 1797
    :cond_13
    :try_start_8
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_4

    .line 1813
    .restart local v4       #attachmentMimeTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #attachmentUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #i:I
    :catch_1
    move-exception v30

    move-object/from16 v15, v16

    .line 1814
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .local v30, t:Ljava/lang/Throwable;
    :goto_6
    const-string v32, "MAP.XMSProvider"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Error adding attachment #"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    .line 1817
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 1840
    .end local v4           #attachmentMimeTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #attachmentUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #fos:Ljava/io/FileOutputStream;
    .end local v18           #i:I
    .end local v30           #t:Ljava/lang/Throwable;
    :catch_2
    move-exception v14

    .line 1841
    .local v14, e:Ljava/lang/Throwable;
    :goto_7
    const-string v32, "MAP.XMSProvider"

    const-string v33, "Unable to push message"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1823
    .end local v14           #e:Ljava/lang/Throwable;
    .restart local v4       #attachmentMimeTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #attachmentUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #i:I
    :cond_14
    :try_start_9
    const-string v32, "android.intent.extra.STREAM"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1824
    const-string v32, "mimetype"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1831
    .end local v4           #attachmentMimeTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #attachmentUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #fos:Ljava/io/FileOutputStream;
    .end local v18           #i:I
    :goto_8
    if-eqz v29, :cond_15

    .line 1832
    const-string v32, "android.intent.extra.SUBJECT"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1836
    :cond_15
    const-string v32, "android.intent.extra.PHONE_NUMBER"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1827
    :cond_16
    const-string v32, "android.intent.extra.TEXT"

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_8

    .line 1840
    .end local v19           #intent:Landroid/content/Intent;
    .restart local v20       #intent:Landroid/content/Intent;
    :catch_3
    move-exception v14

    move-object/from16 v19, v20

    .end local v20           #intent:Landroid/content/Intent;
    .restart local v19       #intent:Landroid/content/Intent;
    goto :goto_7

    .line 1813
    .restart local v4       #attachmentMimeTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5       #attachmentUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15       #fos:Ljava/io/FileOutputStream;
    .restart local v18       #i:I
    .restart local v26       #outFile:Ljava/io/File;
    :catch_4
    move-exception v30

    goto/16 :goto_6
.end method

.method protected onPushMsgSms(ILjava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 28
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "msgTransparent"
    .parameter "msgRetry"
    .parameter "msgCharset"
    .parameter "msgContentUri"
    .parameter "folderPath"
    .parameter "virtualFolderPath"

    .prologue
    .line 1465
    const/4 v6, 0x0

    .line 1466
    .local v6, content:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1467
    .local v5, destAddress:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1469
    .local v9, isRead:Z
    const-string v7, ""

    .line 1471
    .local v7, subject:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v3}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->parseBMessage(Ljava/lang/String;Z)Lcom/broadcom/bt/util/bmsg/BMessage;

    move-result-object v16

    .line 1472
    .local v16, bMessage:Lcom/broadcom/bt/util/bmsg/BMessage;
    const-string v3, "MAP.XMSProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPushMsg() charset = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " msgContentUri = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    if-nez v16, :cond_0

    .line 1474
    const-string v3, "MAP.XMSProvider"

    const-string v8, "(onPushMsg(): Unable to push message. Null BMessage"

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    .line 1640
    :goto_0
    return-void

    .line 1480
    :cond_0
    const-string v3, "/outbox"

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 1486
    .local v23, recipientRequired:Z
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/util/bmsg/BMessage;->getMessageType()B

    move-result v21

    .line 1489
    .local v21, msgType:B
    sget-boolean v3, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v3, :cond_1

    .line 1490
    const-string v3, "MAP.XMSProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPushMsg(): Message type = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :cond_1
    const/4 v3, 0x4

    move/from16 v0, v21

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    move/from16 v0, v21

    if-eq v0, v3, :cond_4

    .line 1494
    const-string v3, "MAP.XMSProvider"

    const-string v8, "onPushMsg(): Unable to process BMessage: not a SMS message type"

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1552
    .end local v21           #msgType:B
    :cond_2
    :goto_1
    if-eqz v6, :cond_3

    if-nez v5, :cond_c

    if-eqz v23, :cond_c

    .line 1553
    :cond_3
    const-string v3, "MAP.XMSProvider"

    const-string v8, "onPushMsg(): Unable to push SMS text message. Invalid destination address or content"

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto :goto_0

    .line 1500
    .restart local v21       #msgType:B
    :cond_4
    :try_start_1
    invoke-static/range {p7 .. p7}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static/range {p7 .. p7}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1501
    :cond_5
    const-string v3, "MAP.XMSProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPushMsg(): invalid folder path:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1547
    .end local v21           #msgType:B
    :catch_0
    move-exception v18

    .line 1548
    .local v18, e:Ljava/lang/Exception;
    const-string v3, "MAP.XMSProvider"

    const-string v8, "onPushMsg(): Error parsing BMessage"

    move-object/from16 v0, v18

    invoke-static {v3, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1505
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v21       #msgType:B
    :cond_6
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/util/bmsg/BMessage;->isRead()Z

    move-result v9

    .line 1508
    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/util/bmsg/BMessage;->getEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object v15

    .line 1509
    .local v15, bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    if-nez v15, :cond_7

    .line 1510
    const-string v3, "MAP.XMSProvider"

    const-string v8, "onPushMsg(): Unable to process BMessage. Envelope is null"

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1517
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    const/4 v8, 0x2

    invoke-virtual {v3, v15, v8}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->findRecipientProperty(Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;B)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    move-result-object v17

    .line 1518
    .local v17, bProp:Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;
    if-nez v17, :cond_8

    .line 1519
    if-eqz v23, :cond_9

    .line 1520
    const-string v3, "MAP.XMSProvider"

    const-string v8, "onPushMsg(): Unable to process BMessage. Recipient is required, but TEL property is null"

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1525
    :cond_8
    invoke-virtual/range {v17 .. v17}, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 1529
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {v3, v15}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->findMessageBody(Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;)Lcom/broadcom/bt/util/bmsg/BMessageBody;

    move-result-object v13

    .line 1530
    .local v13, bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    if-nez v13, :cond_a

    .line 1531
    const-string v3, "MAP.XMSProvider"

    const-string v8, "onPushMsg(): Unable to process BMessage. Body is null"

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1536
    :cond_a
    invoke-virtual {v13}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->getContent()Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;

    move-result-object v14

    .line 1537
    .local v14, bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    if-nez v14, :cond_b

    .line 1538
    const-string v3, "MAP.XMSProvider"

    const-string v8, "onPushMsg(): Unable to process BMessage. Cintent is null"

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1541
    :cond_b
    invoke-virtual {v14}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->getFirstMessageContent()Ljava/lang/String;

    move-result-object v6

    .line 1542
    const/16 v22, 0x0

    .line 1543
    .local v22, next:Ljava/lang/String;
    :goto_2
    invoke-virtual {v14}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->getNextMessageContent()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_2

    .line 1544
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    goto :goto_2

    .line 1558
    .end local v13           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v14           #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .end local v15           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v17           #bProp:Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;
    .end local v21           #msgType:B
    .end local v22           #next:Ljava/lang/String;
    :cond_c
    if-nez p5, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getSmsType()B

    move-result v3

    const/4 v8, 0x2

    if-ne v3, v8, :cond_d

    .line 1561
    const-string v3, "MAP.XMSProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Native charset used to push message - got message "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/broadcom/bt/util/bmsg/BMessage;->decodeSMSSubmitPDU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1564
    .local v24, sUTF8Content:Ljava/lang/String;
    if-nez v24, :cond_12

    .line 1565
    const-string v3, "MAP.XMSProvider"

    const-string v8, "Decoded message body - failed"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    .end local v24           #sUTF8Content:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/util/bmsg/BMessage;->finish()V

    .line 1580
    const/16 v16, 0x0

    .line 1582
    const/16 v20, 0x0

    .line 1584
    .local v20, messageUri:Landroid/net/Uri;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v11

    .line 1585
    .local v11, threadId:J
    const-string v3, "/outbox"

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1586
    sget-boolean v3, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v3, :cond_e

    .line 1587
    const-string v3, "MAP.XMSProvider"

    const-string v8, "Sending message..."

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mSender:Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;

    invoke-virtual {v3, v5, v6, v11, v12}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->sendMessage(Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v20

    .line 1623
    .end local v11           #threadId:J
    :cond_f
    :goto_3
    if-eqz v20, :cond_16

    .line 1624
    sget-boolean v3, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v3, :cond_10

    .line 1625
    const-string v3, "MAP.XMSProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Created message to send. Uri: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    :cond_10
    const-string v3, "/outbox"

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1633
    const-string p7, "/sent"

    .line 1635
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    invoke-virtual {v3, v0, v1, v8, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Success(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1569
    .end local v20           #messageUri:Landroid/net/Uri;
    .restart local v24       #sUTF8Content:Ljava/lang/String;
    :cond_12
    const-string v3, "MAP.XMSProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Decoded message body - got message "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    move-object/from16 v6, v24

    .line 1571
    if-nez v6, :cond_d

    .line 1572
    const-string v3, "MAP.XMSProvider"

    const-string v8, "onPushMsg(): Unable to push SMS text message. Empty content - conversion failed"

    invoke-static {v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1593
    .end local v24           #sUTF8Content:Ljava/lang/String;
    .restart local v11       #threadId:J
    .restart local v20       #messageUri:Landroid/net/Uri;
    :cond_13
    :try_start_4
    sget-boolean v3, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v3, :cond_14

    .line 1594
    const-string v3, "MAP.XMSProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pushing message to "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1598
    :cond_14
    :try_start_5
    invoke-static/range {p7 .. p7}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->createFolderUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1599
    .local v4, addrUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v10, 0x1

    invoke-static/range {v3 .. v12}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v20

    .line 1604
    .end local v4           #addrUri:Landroid/net/Uri;
    :goto_4
    if-eqz v20, :cond_f

    .line 1605
    const/4 v3, 0x1

    :try_start_6
    invoke-static/range {p7 .. p7}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getMessageType(Ljava/lang/String;)I

    move-result v8

    if-ne v3, v8, :cond_f

    .line 1608
    sget-boolean v3, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v3, :cond_15

    .line 1609
    const-string v3, "MAP.XMSProvider"

    const-string v8, "Updating properties for inbox message..."

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :cond_15
    new-instance v25, Landroid/content/ContentValues;

    const/4 v3, 0x3

    move-object/from16 v0, v25

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1612
    .local v25, v:Landroid/content/ContentValues;
    const-string v3, "protocol"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1613
    const-string v3, "reply_path_present"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1614
    const-string v3, "status"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v3, v0, v1, v8, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 1619
    .end local v11           #threadId:J
    .end local v25           #v:Landroid/content/ContentValues;
    :catch_1
    move-exception v18

    .line 1620
    .restart local v18       #e:Ljava/lang/Exception;
    const-string v3, "MAP.XMSProvider"

    const-string v8, "Unable to push message"

    move-object/from16 v0, v18

    invoke-static {v3, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1602
    .end local v18           #e:Ljava/lang/Exception;
    .restart local v11       #threadId:J
    :catch_2
    move-exception v19

    .local v19, ex:Ljava/lang/NullPointerException;
    :try_start_7
    const-string v3, "MAP.XMSProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NullpointerException "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 1638
    .end local v11           #threadId:J
    .end local v19           #ex:Ljava/lang/NullPointerException;
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onSetMessageDeletedStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 8
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "deletedStatus"

    .prologue
    const v4, 0x1e8480

    const v3, 0xf4240

    .line 1848
    const-string v0, "MAP.XMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetMessageDeletedStatus - messageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    const/16 v0, 0xa

    :try_start_0
    invoke-static {p4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1854
    .local v7, mId:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v4, :cond_0

    .line 1855
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1856
    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->onSetMessageDeletedStatusMms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    .line 1866
    .end local v7           #mId:Ljava/lang/Integer;
    :goto_0
    return-void

    .line 1857
    .restart local v7       #mId:Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v3, :cond_1

    .line 1858
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1859
    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->onSetMessageDeletedStatusSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1863
    .end local v7           #mId:Ljava/lang/Integer;
    :catch_0
    move-exception v6

    .line 1864
    .local v6, e:Ljava/lang/NumberFormatException;
    const-string v0, "MAP.XMSProvider"

    const-string v1, "Received invalid messageId - NumberFormatException!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1861
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .restart local v7       #mId:Ljava/lang/Integer;
    :cond_1
    :try_start_1
    const-string v0, "MAP.XMSProvider"

    const-string v1, "Received invalid messageId - unable to get message!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onSetMessageDeletedStatusMms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 8
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "deletedStatus"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x2

    .line 1955
    const-string v0, "/deleted"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1956
    if-ne p5, v6, :cond_0

    .line 1957
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p4, v0}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->deleteMessage(Ljava/lang/String;Landroid/content/ContentResolver;)V

    .line 1958
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->oldFolders:Ljava/util/Hashtable;

    invoke-virtual {v0, p4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1959
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    move v1, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z

    .line 1988
    :goto_0
    return-void

    .line 1972
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xb

    move v1, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1976
    :cond_1
    if-ne p5, v6, :cond_2

    .line 1978
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->oldFolders:Ljava/util/Hashtable;

    invoke-virtual {v0, p4, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1979
    const/16 v0, 0x63

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p4, v0, v1}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->setMessageFolder(Ljava/lang/String;ILandroid/content/ContentResolver;)V

    .line 1980
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    move v1, p1

    move-object v3, p2

    move-object v6, p4

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1984
    :cond_2
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    move v1, p1

    move-object v3, p2

    move v5, v6

    move-object v6, p4

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected onSetMessageDeletedStatusSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 22
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "deletedStatus"

    .prologue
    .line 1874
    sget-boolean v2, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v2, :cond_0

    .line 1875
    const-string v2, "MAP.XMSProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetMessageDeletedStatus(): folderpath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " messageId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    :cond_0
    const/16 v20, 0x0

    .line 1882
    .local v20, status:B
    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1883
    :cond_1
    const-string v2, "MAP.XMSProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSetMessageDeletedStatus(): Invalid folder path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    move/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z

    move/from16 v7, v20

    .line 1951
    .end local v20           #status:B
    .local v7, status:B
    :goto_0
    return-void

    .line 1891
    .end local v7           #status:B
    .restart local v20       #status:B
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v2, v0, :cond_5

    .line 1898
    const/16 v18, 0x0

    .line 1900
    .local v18, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p4

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->SMS_PROVIDER_PROJ:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1903
    if-eqz v18, :cond_3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v8, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x7

    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x9

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    const/16 v17, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-virtual/range {v2 .. v17}, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->addItem(IILjava/lang/String;IJIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1920
    const-string v2, "MAP.XMSProvider"

    const-string v3, "onSetMessageDeletedStatus(): Unable to add item to deleted folder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1928
    :cond_3
    :goto_1
    if-eqz v18, :cond_4

    .line 1929
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1930
    const/16 v18, 0x0

    .line 1933
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p4

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 1935
    .local v19, rowsDeleted:I
    if-gtz v19, :cond_6

    .line 1936
    const/4 v7, 0x1

    .line 1937
    .end local v20           #status:B
    .restart local v7       #status:B
    const-string v2, "MAP.XMSProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    .end local v18           #c:Landroid/database/Cursor;
    .end local v19           #rowsDeleted:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    move/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1923
    .end local v7           #status:B
    .restart local v18       #c:Landroid/database/Cursor;
    .restart local v20       #status:B
    :catch_0
    move-exception v21

    .line 1926
    .local v21, t:Ljava/lang/Throwable;
    const-string v2, "MAP.XMSProvider"

    const-string v3, "onSetMessageDeletedStatus(): Unable to query for SMS messages"

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1945
    .end local v18           #c:Landroid/database/Cursor;
    .end local v21           #t:Ljava/lang/Throwable;
    :cond_5
    const/16 v7, 0xb

    .line 1946
    .end local v20           #status:B
    .restart local v7       #status:B
    const-string v2, "MAP.XMSProvider"

    const-string v3, "Undelete is not supported for SMS"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v7           #status:B
    .restart local v18       #c:Landroid/database/Cursor;
    .restart local v19       #rowsDeleted:I
    .restart local v20       #status:B
    :cond_6
    move/from16 v7, v20

    .end local v20           #status:B
    .restart local v7       #status:B
    goto :goto_2
.end method

.method protected onSetMessageReadStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 8
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "readStatus"

    .prologue
    const v4, 0x1e8480

    const v3, 0xf4240

    .line 1992
    const-string v0, "MAP.XMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetMessageReadStatus - messageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    const/16 v0, 0xa

    :try_start_0
    invoke-static {p4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1998
    .local v7, mId:Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v4, :cond_0

    .line 1999
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2000
    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->onSetMessageReadStatusMms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    .line 2010
    .end local v7           #mId:Ljava/lang/Integer;
    :goto_0
    return-void

    .line 2001
    .restart local v7       #mId:Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v3, :cond_1

    .line 2002
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 2003
    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->onSetMessageReadStatusSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2007
    .end local v7           #mId:Ljava/lang/Integer;
    :catch_0
    move-exception v6

    .line 2008
    .local v6, e:Ljava/lang/NumberFormatException;
    const-string v0, "MAP.XMSProvider"

    const-string v1, "Received invalid messageId - NumberFormatException!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2005
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .restart local v7       #mId:Ljava/lang/Integer;
    :cond_1
    :try_start_1
    const-string v0, "MAP.XMSProvider"

    const-string v1, "Received invalid messageId - unable to get message!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onSetMessageReadStatusMms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 1
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "readStatus"

    .prologue
    .line 2045
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p4, p5, v0}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->setMessageReadStatus(Ljava/lang/String;BLandroid/content/ContentResolver;)V

    .line 2046
    return-void
.end method

.method protected onSetMessageReadStatusSms(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 7
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "readStatus"

    .prologue
    .line 2014
    sget-boolean v3, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v3, :cond_0

    .line 2015
    const-string v3, "MAP.XMSProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSetMessageReadStatus(): folderpath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " messageId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " readStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    :cond_0
    invoke-static {p3}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p3}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2021
    :cond_1
    const-string v3, "MAP.XMSProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSetMessageReadStatus(): Invalid folder path:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    :cond_2
    :goto_0
    return-void

    .line 2026
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 2027
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "read"

    invoke-static {p5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2030
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2032
    .local v0, result:I
    if-gtz v0, :cond_2

    .line 2033
    const-string v3, "MAP.XMSProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSetMessageReadStatus(): Unable to update read status. Message not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2037
    .end local v0           #result:I
    :catch_0
    move-exception v1

    .line 2038
    .local v1, t:Ljava/lang/Throwable;
    const-string v3, "MAP.XMSProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EonSetMessageReadStatus(): rror updating read status for message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onStarted()V
    .locals 5

    .prologue
    .line 717
    new-instance v1, Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;-><init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    .line 719
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getEventCallbackHandler()Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    move-result-object v0

    .line 724
    .local v0, handler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mSmsReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    if-eqz v1, :cond_0

    .line 726
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mSmsReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :cond_0
    :goto_0
    new-instance v1, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;-><init>(Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mSmsReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    .line 732
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mSmsReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mSmsReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 734
    new-instance v1, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mSender:Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;

    .line 748
    return-void

    .line 727
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onStopped()V
    .locals 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->closeDeletedFolderDatabase()V

    .line 754
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mSmsReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    if-eqz v0, :cond_0

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mSmsReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mSmsReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    .line 770
    :cond_0
    return-void

    .line 757
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onUpdateInbox(Ljava/lang/String;)V
    .locals 2
    .parameter "datasourceId"

    .prologue
    .line 2049
    const-string v0, "MAP.XMSProvider"

    const-string v1, "onUpdateInbox(): Update inbox is not supported for SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    return-void
.end method

.method protected preStart()V
    .locals 4

    .prologue
    .line 689
    sget-boolean v1, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v1, :cond_0

    .line 690
    const-string v1, "MAP.XMSProvider"

    const-string v2, "preStart()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 694
    .local v0, mgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mPhoneType:I

    .line 695
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    .line 698
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mTmpDirectory:Ljava/io/File;

    .line 699
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mTmpDirectory:Ljava/io/File;

    if-nez v1, :cond_1

    .line 700
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.broadcom.bt.app.system/map"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mTmpDirectory:Ljava/io/File;

    .line 701
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mTmpDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mTmpDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 702
    const-string v1, "MAP.XMSProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "******Cannot create temporary directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mTmpDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_1
    sget-boolean v1, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v1, :cond_2

    .line 707
    const-string v1, "MAP.XMSProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Temporary directory set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mTmpDirectory:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_2
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsDeletedFolder;->openDeletedFolderDatabase()Z

    .line 713
    return-void
.end method

.method protected registerDatasources()V
    .locals 8

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 773
    sget-boolean v3, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v3, :cond_0

    .line 774
    const-string v3, "MAP.XMSProvider"

    const-string v4, "registerDatasources()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_0
    const/4 v3, 0x5

    new-array v7, v3, [Ljava/lang/String;

    .line 778
    .local v7, folderMappings:[Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    const-string v4, "inbox=inbox"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v7, v2

    .line 779
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/String;

    const-string v5, "outbox=outbox"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v7, v3

    .line 780
    new-instance v3, Ljava/lang/String;

    const-string v4, "sent=sent"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v7, v1

    .line 781
    const/4 v3, 0x3

    new-instance v4, Ljava/lang/String;

    const-string v5, "deleted=deleted"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v7, v3

    .line 782
    new-instance v3, Ljava/lang/String;

    const-string v4, "draft=draft"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v3, v7, v0

    .line 784
    iget v3, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mPhoneType:I

    if-ne v3, v1, :cond_1

    :goto_0
    iput-byte v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    .line 787
    iget-byte v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    const-string v3, "SMS"

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->registerDS(IILjava/lang/String;IZZ[Ljava/lang/String;)Z

    .line 789
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->startMSEInstance()V

    .line 790
    return-void

    :cond_1
    move v0, v1

    .line 784
    goto :goto_0
.end method

.method protected startMSEInstance()V
    .locals 2

    .prologue
    .line 803
    sget-boolean v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v0, :cond_0

    .line 804
    const-string v0, "MAP.XMSProvider"

    const-string v1, "startMSEInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMS"

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->startMSE(Ljava/lang/String;Ljava/lang/String;)Z

    .line 807
    return-void
.end method

.method protected stopMSEInstance()V
    .locals 2

    .prologue
    .line 811
    sget-boolean v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v0, :cond_0

    .line 812
    const-string v0, "MAP.XMSProvider"

    const-string v1, "stopMSEInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMS"

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->stopMSE(Ljava/lang/String;Ljava/lang/String;)Z

    .line 815
    return-void
.end method

.method protected toDeletedMessageInfo(Landroid/database/Cursor;ZI)Lcom/broadcom/bt/service/map/MessageInfo;
    .locals 15
    .parameter "c"
    .parameter "includeMessageSize"
    .parameter "maxSubjectLength"

    .prologue
    .line 438
    new-instance v6, Lcom/broadcom/bt/service/map/MessageInfo;

    invoke-direct {v6}, Lcom/broadcom/bt/service/map/MessageInfo;-><init>()V

    .line 440
    .local v6, mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 441
    .local v8, msgHandle:Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const v12, 0xf4240

    add-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 442
    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    .line 444
    const/16 v11, 0x10d7

    iput v11, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 448
    const/4 v11, 0x0

    iput-boolean v11, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mIsOutbound:Z

    .line 449
    iget v11, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mPhoneType:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    const/4 v11, 0x4

    :goto_0
    iput-byte v11, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    .line 451
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 453
    const/4 v11, 0x4

    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12, v13}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getLong(Landroid/database/Cursor;IJ)J

    move-result-wide v4

    .line 454
    .local v4, lDateTime:J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 455
    .local v2, d:Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyyMMddHHmmss"

    invoke-direct {v3, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 457
    .local v3, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 458
    const-string v11, "MAP.XMSProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Pre-split date :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    const/4 v13, 0x0

    const/16 v14, 0x8

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "T"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    const/16 v13, 0x8

    const/16 v14, 0xe

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 460
    const-string v11, "MAP.XMSProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Post-split date :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v11, 0x0

    iput-byte v11, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    .line 463
    const/4 v11, 0x1

    const/4 v12, 0x6

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12, v13}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getInt(Landroid/database/Cursor;II)I

    move-result v12

    if-ne v11, v12, :cond_6

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    .line 464
    const/4 v11, 0x0

    iput-boolean v11, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 465
    const/4 v11, 0x0

    iput-boolean v11, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 466
    const/16 v11, 0xd

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getBoolean(Landroid/database/Cursor;IZ)Z

    move-result v11

    iput-boolean v11, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 467
    const/4 v11, 0x0

    iput v11, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 469
    const/16 v11, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v6, v11, v0}, Lcom/broadcom/bt/service/map/MessageInfo;->setSubject(Ljava/lang/String;I)V

    .line 470
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getOwnerInfo()Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v9

    .line 473
    .local v9, ownerInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/4 v11, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getPersonInfoByContactId(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v10

    .line 474
    .local v10, pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/4 v11, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, address:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 477
    invoke-static {v6, v10}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->setMsgSenderNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 478
    invoke-static {v6, v10}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->setMsgReplyToNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 480
    :cond_0
    iput-object v1, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 481
    iput-object v1, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 484
    if-eqz v9, :cond_1

    .line 485
    invoke-static {v6, v9}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 487
    :cond_1
    iget-object v11, p0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    iput-object v11, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 489
    if-eqz p2, :cond_4

    .line 490
    const/16 v11, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 491
    .local v7, msg:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 492
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x10

    if-le v11, v12, :cond_7

    .line 493
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    const/16 v13, 0x10

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 500
    :cond_2
    :goto_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_8

    :cond_3
    const/4 v11, 0x0

    :goto_3
    iput v11, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 503
    .end local v7           #msg:Ljava/lang/String;
    :cond_4
    return-object v6

    .line 449
    .end local v1           #address:Ljava/lang/String;
    .end local v2           #d:Ljava/util/Date;
    .end local v3           #formatter:Ljava/text/SimpleDateFormat;
    .end local v4           #lDateTime:J
    .end local v9           #ownerInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .end local v10           #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :cond_5
    const/4 v11, 0x2

    goto/16 :goto_0

    .line 463
    .restart local v2       #d:Ljava/util/Date;
    .restart local v3       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v4       #lDateTime:J
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 496
    .restart local v1       #address:Ljava/lang/String;
    .restart local v7       #msg:Ljava/lang/String;
    .restart local v9       #ownerInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .restart local v10       #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :cond_7
    iput-object v7, v6, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    goto :goto_2

    .line 500
    :cond_8
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v11, v11

    add-int/lit8 v11, v11, 0x16

    goto :goto_3
.end method

.method protected toMessageInfo(Landroid/database/Cursor;ZILjava/lang/String;Ljava/lang/String;I)Lcom/broadcom/bt/service/map/MessageInfo;
    .locals 22
    .parameter "c"
    .parameter "includeMessageSize"
    .parameter "parameterMask"
    .parameter "recipient"
    .parameter "originator"
    .parameter "maxSubjectLength"

    .prologue
    .line 509
    const/16 v18, 0x7

    const/16 v19, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getInt(Landroid/database/Cursor;II)I

    move-result v16

    .line 510
    .local v16, smsFolderType:I
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getOwnerInfo()Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v13

    .line 512
    .local v13, ownerInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    new-instance v10, Lcom/broadcom/bt/service/map/MessageInfo;

    invoke-direct {v10}, Lcom/broadcom/bt/service/map/MessageInfo;-><init>()V

    .line 514
    .local v10, mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 515
    .local v12, msgHandle:Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const v19, 0xf4240

    add-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 516
    invoke-virtual {v12}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    .line 518
    if-nez p3, :cond_b

    .line 520
    const/16 v18, 0x10ff

    move/from16 v0, v18

    iput v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 531
    :goto_0
    invoke-static/range {v16 .. v16}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v18

    if-nez v18, :cond_0

    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    :cond_0
    const/16 v18, 0x1

    :goto_1
    move/from16 v0, v18

    iput-boolean v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mIsOutbound:Z

    .line 532
    move-object/from16 v0, p0

    iget v0, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mPhoneType:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    const/16 v18, 0x4

    :goto_2
    move/from16 v0, v18

    iput-byte v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    .line 534
    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 536
    const/16 v18, 0x2

    const-wide/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-static {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getLong(Landroid/database/Cursor;IJ)J

    move-result-wide v8

    .line 537
    .local v8, lDateTime:J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 538
    .local v6, d:Ljava/util/Date;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v18, "yyyyMMddHHmmss"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 540
    .local v7, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 541
    const-string v18, "MAP.XMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Pre-split date :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x8

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "T"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    const/16 v21, 0xe

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 543
    const-string v18, "MAP.XMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Post-split date :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-byte v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    .line 546
    const/16 v18, 0x1

    const/16 v19, 0x5

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getInt(Landroid/database/Cursor;II)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    iput-boolean v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    .line 548
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    const/16 v18, 0x5

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    :cond_1
    const/16 v18, 0x1

    :goto_4
    move/from16 v0, v18

    iput-boolean v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 549
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 550
    const/16 v18, 0x3

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getBoolean(Landroid/database/Cursor;IZ)Z

    move-result v18

    move/from16 v0, v18

    iput-boolean v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 551
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 553
    const/16 v18, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p6

    invoke-virtual {v10, v0, v1}, Lcom/broadcom/bt/service/map/MessageInfo;->setSubject(Ljava/lang/String;I)V

    .line 557
    iget-boolean v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mIsOutbound:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 558
    const-string v18, "MAP.XMSProvider"

    const-string v19, "outbound message"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 563
    const/16 v18, 0x8

    const/16 v19, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getInt(Landroid/database/Cursor;II)I

    move-result v17

    .line 564
    .local v17, threadId:I
    if-lez v17, :cond_2

    .line 565
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getThreadRecipientAddresses(I)Ljava/util/List;

    move-result-object v5

    .line 566
    .local v5, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_2

    .line 568
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 569
    iget-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getPersonInfoByPhoneNo(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v14

    .line 570
    .local v14, pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    if-eqz v14, :cond_2

    .line 571
    invoke-static {v10, v14}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 586
    .end local v5           #addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v14           #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .end local v17           #threadId:I
    :cond_2
    :goto_5
    if-eqz v13, :cond_3

    .line 587
    invoke-static {v10, v13}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->setMsgSenderNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 588
    invoke-static {v10, v13}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->setMsgReplyToNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 590
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 623
    :goto_6
    if-eqz p2, :cond_6

    .line 624
    const/16 v18, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 627
    .local v11, msg:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_4

    .line 628
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_15

    .line 629
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x0

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ..."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    .line 635
    :cond_4
    :goto_7
    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_16

    :cond_5
    const/16 v18, 0x0

    :goto_8
    move/from16 v0, v18

    iput v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 640
    .end local v11           #msg:Ljava/lang/String;
    :cond_6
    if-eqz p4, :cond_8

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_8

    const-string v18, "*"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 642
    iget-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    iget-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_17

    .line 644
    :cond_7
    const-string v18, "MAP.XMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "toMessageInfo: receipient matches filter"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_8
    :goto_9
    if-eqz v10, :cond_a

    if-eqz p5, :cond_a

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_a

    const-string v18, "*"

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 652
    iget-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    iget-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_18

    .line 654
    :cond_9
    const-string v18, "MAP.XMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "toMessageInfo: sender matches filter"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_a
    :goto_a
    return-object v10

    .line 528
    .end local v6           #d:Ljava/util/Date;
    .end local v7           #formatter:Ljava/text/SimpleDateFormat;
    .end local v8           #lDateTime:J
    :cond_b
    move/from16 v0, p3

    iput v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    goto/16 :goto_0

    .line 531
    :cond_c
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 532
    :cond_d
    const/16 v18, 0x2

    goto/16 :goto_2

    .line 546
    .restart local v6       #d:Ljava/util/Date;
    .restart local v7       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v8       #lDateTime:J
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 548
    :cond_f
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 576
    :cond_10
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 577
    const/16 v18, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 578
    .local v15, personId:Ljava/lang/String;
    if-nez v15, :cond_11

    iget-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getPersonInfoByPhoneNo(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v14

    .line 580
    .restart local v14       #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :goto_b
    if-eqz v14, :cond_2

    .line 581
    invoke-static {v10, v14}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    goto/16 :goto_5

    .line 578
    .end local v14           #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getPersonInfoByContactId(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v14

    goto :goto_b

    .line 596
    .end local v15           #personId:Ljava/lang/String;
    :cond_12
    const-string v18, "MAP.XMSProvider"

    const-string v19, "inbound message"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/16 v18, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->getPersonInfoByContactId(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v14

    .line 598
    .restart local v14       #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 600
    .local v4, address:Ljava/lang/String;
    const-string v18, "MAP.XMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "address: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    if-eqz v14, :cond_13

    .line 603
    invoke-static {v10, v14}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->setMsgSenderNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 604
    invoke-static {v10, v14}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->setMsgReplyToNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 606
    :cond_13
    iput-object v4, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 607
    iput-object v4, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 610
    if-eqz v13, :cond_14

    .line 611
    invoke-static {v10, v13}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 613
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 614
    const-string v18, "MAP.XMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Sender Name = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string v18, "MAP.XMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Sender Addressing = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-string v18, "MAP.XMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ReplyTo Addressing = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const-string v18, "MAP.XMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Recipient Addressing = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v18, "MAP.XMSProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Recipient Name = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 632
    .end local v4           #address:Ljava/lang/String;
    .end local v14           #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .restart local v11       #msg:Ljava/lang/String;
    :cond_15
    iput-object v11, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mSubject:Ljava/lang/String;

    goto/16 :goto_7

    .line 635
    :cond_16
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x16

    goto/16 :goto_8

    .line 646
    .end local v11           #msg:Ljava/lang/String;
    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_9

    .line 656
    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_a
.end method

.method protected unregisterDatasources()V
    .locals 2

    .prologue
    .line 794
    sget-boolean v0, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->D:Z

    if-eqz v0, :cond_0

    .line 795
    const-string v0, "MAP.XMSProvider"

    const-string v1, "unregisterDatasources()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->stopMSEInstance()V

    .line 798
    const-string v0, "SMS"

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/map/provider/xms/XmsProvider;->unregisterDS(Ljava/lang/String;)Z

    .line 799
    return-void
.end method
