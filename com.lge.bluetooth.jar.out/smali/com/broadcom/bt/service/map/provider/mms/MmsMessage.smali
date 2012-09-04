.class public Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;
.super Ljava/lang/Object;
.source "MmsMessage.java"


# static fields
.field private static final ADDR_PROJECTION:[Ljava/lang/String; = null

.field private static final COL_DISPLAY_NAME:I = 0x3

.field private static final COL_FAMILY_NAME:I = 0x2

.field private static final COL_GIVEN_NAME:I = 0x0

.field private static final COL_MIDDLE_NAME:I = 0x1

.field private static final DRAFTS_FOLDER:Ljava/lang/String; = "drafts"

.field private static final DRAFT_FOLDER:Ljava/lang/String; = "draft"

.field public static final HANDLE_OFFSET_MMS:I = 0x1e8480

.field public static final MESSAGE_TYPE_DELETED:I = 0x63

.field public static final MESSAGE_TYPE_DRAFT:I = 0x3

.field public static final MESSAGE_TYPE_INBOX:I = 0x1

.field public static final MESSAGE_TYPE_OUTBOX:I = 0x4

.field public static final MESSAGE_TYPE_SENT:I = 0x2

.field private static final PART_PROJECTION:[Ljava/lang/String; = null

.field private static final PDU_PROJECTION:[Ljava/lang/String; = null

.field private static final PERSON_NAME_INFO_PROJ:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MmsMessage"


# instance fields
.field public addrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;",
            ">;"
        }
    .end annotation
.end field

.field public date:J

.field id:Ljava/lang/String;

.field public isLocked:Z

.field public isRead:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field public msgBox:I

.field public parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/broadcom/bt/service/map/provider/mms/MmsPart;",
            ">;"
        }
    .end annotation
.end field

.field public subject:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "msg_box"

    aput-object v1, v0, v5

    const-string v1, "read"

    aput-object v1, v0, v6

    const-string v1, "locked"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sub"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->PDU_PROJECTION:[Ljava/lang/String;

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "msg_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "contact_id"

    aput-object v1, v0, v7

    sput-object v0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->ADDR_PROJECTION:[Ljava/lang/String;

    .line 77
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mid"

    aput-object v1, v0, v4

    const-string v1, "ct"

    aput-object v1, v0, v5

    const-string v1, "_data"

    aput-object v1, v0, v6

    const-string v1, "text"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "cl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->PART_PROJECTION:[Ljava/lang/String;

    .line 79
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "data2"

    aput-object v1, v0, v3

    const-string v1, "data5"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    sput-object v0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->PERSON_NAME_INFO_PROJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->parts:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->addrs:Ljava/util/List;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->mContentResolver:Landroid/content/ContentResolver;

    .line 89
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->id:Ljava/lang/String;

    .line 90
    return-void
.end method

.method private static addSelectionArgument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "currentArguments"
    .parameter "newArgument"

    .prologue
    .line 185
    if-nez p0, :cond_0

    .line 188
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static deleteMessage(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "messageId"
    .parameter "contentResolver"

    .prologue
    const/4 v2, 0x0

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 426
    return-void
.end method

.method private getPersonInfo(Ljava/lang/String;[Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .locals 9
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 496
    const/4 v7, 0x0

    .line 497
    .local v7, info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/4 v6, 0x0

    .line 499
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->PERSON_NAME_INFO_PROJ:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 502
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    new-instance v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;

    invoke-direct {v8}, Lcom/broadcom/bt/service/map/provider/PersonInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    .end local v7           #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .local v8, info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mGivenName:Ljava/lang/String;

    .line 510
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mFamilyName:Ljava/lang/String;

    .line 511
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mDisplayName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 516
    .end local v8           #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .restart local v7       #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 517
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 518
    const/4 v6, 0x0

    .line 520
    :cond_1
    return-object v7

    .line 513
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
    .line 487
    if-nez p1, :cond_0

    .line 488
    const/4 v0, 0x0

    .line 490
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "mimetype = \'vnd.android.cursor.item/name\' AND contact_id = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->getPersonInfo(Ljava/lang/String;[Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

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

    .line 450
    const/4 v7, 0x0

    .line 451
    .local v7, lookupKey:Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 452
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 454
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->mContentResolver:Landroid/content/ContentResolver;

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

    .line 457
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 467
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 468
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 469
    const/4 v6, 0x0

    .line 471
    :cond_1
    if-nez v7, :cond_2

    move-object v0, v9

    .line 475
    :goto_1
    return-object v0

    .line 464
    :catch_0
    move-exception v8

    .line 465
    .local v8, t:Ljava/lang/Throwable;
    const-string v0, "MmsMessage"

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

    goto :goto_0

    .line 475
    .end local v8           #t:Ljava/lang/Throwable;
    :cond_2
    const-string v0, "mimetype = \'vnd.android.cursor.item/name\' AND lookup = ?"

    new-array v2, v11, [Ljava/lang/String;

    aput-object v7, v2, v10

    invoke-direct {p0, v0, v2}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->getPersonInfo(Ljava/lang/String;[Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v0

    goto :goto_1
.end method

.method public static read(Ljava/lang/String;Landroid/content/ContentResolver;)Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;
    .locals 12
    .parameter "id"
    .parameter "contentResolver"

    .prologue
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->PDU_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 272
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 273
    :cond_0
    const/4 v11, 0x0

    .line 351
    :cond_1
    :goto_0
    return-object v11

    .line 280
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 281
    new-instance v11, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;

    invoke-direct {v11, p0}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;-><init>(Ljava/lang/String;)V

    .line 282
    .local v11, result:Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;
    iput-object p1, v11, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->mContentResolver:Landroid/content/ContentResolver;

    .line 283
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, v11, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->date:J

    .line 284
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v11, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->msgBox:I

    .line 285
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v11, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->isRead:Z

    .line 286
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, v11, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->isLocked:Z

    .line 287
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->subject:Ljava/lang/String;

    .line 289
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/addr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->ADDR_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 296
    const/4 v10, 0x0

    .line 297
    .local v10, records:I
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 303
    :cond_3
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    if-ge v8, v10, :cond_6

    .line 304
    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 305
    new-instance v6, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;

    invoke-direct {v6}, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;-><init>()V

    .line 306
    .local v6, addr:Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;->id:Ljava/lang/String;

    .line 307
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;->addr:Ljava/lang/String;

    .line 308
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;->type:Ljava/lang/String;

    .line 309
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;->contactId:Ljava/lang/String;

    .line 310
    iget-object v0, v11, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->addrs:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 285
    .end local v6           #addr:Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;
    .end local v8           #i:I
    .end local v10           #records:I
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 286
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 314
    .restart local v8       #i:I
    .restart local v10       #records:I
    :cond_6
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 322
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://mms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/part"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->PART_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 325
    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 331
    :cond_8
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v10, :cond_a

    .line 332
    invoke-interface {v7, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 333
    new-instance v9, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;

    invoke-direct {v9}, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;-><init>()V

    .line 334
    .local v9, part:Lcom/broadcom/bt/service/map/provider/mms/MmsPart;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->id:Ljava/lang/String;

    .line 335
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->contentType:Ljava/lang/String;

    .line 336
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->attachmentFilename:Ljava/lang/String;

    .line 337
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->text:Ljava/lang/String;

    .line 338
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->cl:Ljava/lang/String;

    .line 339
    iget-object v0, v9, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->cl:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, v9, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->cl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    iget-object v0, v9, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->cl:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_9

    .line 340
    iget-object v0, v9, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->cl:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->cl:Ljava/lang/String;

    .line 342
    :cond_9
    iget-object v0, v11, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->parts:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 345
    .end local v9           #part:Lcom/broadcom/bt/service/map/provider/mms/MmsPart;
    :cond_a
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public static readFolder(Ljava/lang/String;IZIBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/content/ContentResolver;)Ljava/util/List;
    .locals 20
    .parameter "folderName"
    .parameter "parameterMask"
    .parameter "includeMessageSize"
    .parameter "maxSubjectLength"
    .parameter "readStatus"
    .parameter "periodBegin"
    .parameter "periodEnd"
    .parameter "originator"
    .parameter "recipient"
    .parameter "maxEntries"
    .parameter "offsetMessageId"
    .parameter "contentResolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZIB",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/broadcom/bt/service/map/MessageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    const-string v3, "draft"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    const-string p0, "drafts"

    .line 201
    :cond_0
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    .line 203
    .local v5, PROJECTION:[Ljava/lang/String;
    const-string v6, "(m_type=128 or m_type=132)"

    .line 205
    .local v6, selection:Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_6

    .line 206
    const-string v3, "read=0"

    invoke-static {v6, v3}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->addSelectionArgument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 209
    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_2

    .line 210
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 211
    .local v16, time:Landroid/text/format/Time;
    move-object/from16 v0, v16

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date >= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v7

    const-wide/16 v18, 0x3e8

    div-long v7, v7, v18

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->addSelectionArgument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 214
    .end local v16           #time:Landroid/text/format/Time;
    :cond_2
    if-eqz p6, :cond_3

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_3

    .line 215
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 216
    .restart local v16       #time:Landroid/text/format/Time;
    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date <= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v7

    const-wide/16 v18, 0x3e8

    div-long v7, v7, v18

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->addSelectionArgument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 220
    .end local v16           #time:Landroid/text/format/Time;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mms/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    const-string v8, "_id desc"

    move-object/from16 v3, p11

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 223
    .local v9, c:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 224
    .local v14, records:I
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 230
    :cond_4
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v15, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v14, :cond_b

    .line 232
    invoke-interface {v9, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 233
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 234
    .local v12, id:Ljava/lang/String;
    move-object/from16 v0, p11

    invoke-static {v12, v0}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->read(Ljava/lang/String;Landroid/content/ContentResolver;)Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;

    move-result-object v13

    .line 235
    .local v13, newMessage:Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;
    if-nez v13, :cond_7

    .line 231
    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 207
    .end local v9           #c:Landroid/database/Cursor;
    .end local v11           #i:I
    .end local v12           #id:Ljava/lang/String;
    .end local v13           #newMessage:Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;
    .end local v14           #records:I
    .end local v15           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :cond_6
    const/4 v3, 0x2

    move/from16 v0, p4

    if-ne v0, v3, :cond_1

    .line 208
    const-string v3, "read=1"

    invoke-static {v6, v3}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->addSelectionArgument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 238
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v11       #i:I
    .restart local v12       #id:Ljava/lang/String;
    .restart local v13       #newMessage:Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;
    .restart local v14       #records:I
    .restart local v15       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :cond_7
    if-eqz p7, :cond_8

    const-string v3, ""

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "*"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 239
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->from(Z)Ljava/lang/String;

    move-result-object v10

    .line 240
    .local v10, from:Ljava/lang/String;
    if-eqz v10, :cond_5

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5

    .line 244
    .end local v10           #from:Ljava/lang/String;
    :cond_8
    if-eqz p8, :cond_9

    const-string v3, ""

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "*"

    move-object/from16 v0, p8

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 245
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->to(Z)Ljava/lang/String;

    move-result-object v17

    .line 246
    .local v17, to:Ljava/lang/String;
    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5

    .line 250
    .end local v17           #to:Ljava/lang/String;
    :cond_9
    if-lez p10, :cond_a

    .line 251
    add-int/lit8 p10, p10, -0x1

    goto :goto_2

    .line 253
    :cond_a
    move/from16 v0, p2

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v13, v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->toMessageInfo(ZII)Lcom/broadcom/bt/service/map/MessageInfo;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    if-lez p9, :cond_5

    .line 255
    add-int/lit8 p9, p9, -0x1

    .line 256
    if-nez p9, :cond_5

    .line 262
    .end local v12           #id:Ljava/lang/String;
    .end local v13           #newMessage:Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;
    :cond_b
    return-object v15
.end method

.method public static setMessageFolder(Ljava/lang/String;ILandroid/content/ContentResolver;)V
    .locals 5
    .parameter "messageId"
    .parameter "msgBox"
    .parameter "contentResolver"

    .prologue
    const/4 v4, 0x0

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 437
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 438
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "msg_box"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    invoke-virtual {p2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 440
    return-void
.end method

.method public static setMessageReadStatus(Ljava/lang/String;BLandroid/content/ContentResolver;)V
    .locals 5
    .parameter "messageId"
    .parameter "readStatus"
    .parameter "contentResolver"

    .prologue
    const/4 v4, 0x0

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 430
    .local v0, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 431
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "read"

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 432
    invoke-virtual {p2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 433
    return-void
.end method

.method private toMessageInfo(ZII)Lcom/broadcom/bt/service/map/MessageInfo;
    .locals 10
    .parameter "includeMessageSize"
    .parameter "parameterMask"
    .parameter "maxSubjectLength"

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->getText()Ljava/lang/String;

    move-result-object v5

    .line 357
    .local v5, text:Ljava/lang/String;
    new-instance v3, Lcom/broadcom/bt/service/map/MessageInfo;

    invoke-direct {v3}, Lcom/broadcom/bt/service/map/MessageInfo;-><init>()V

    .line 360
    .local v3, mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    :try_start_0
    iget-object v6, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->id:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 361
    .local v4, msgHandle:Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const v7, 0x1e8480

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 362
    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v4           #msgHandle:Ljava/lang/Integer;
    :goto_0
    if-nez p2, :cond_2

    .line 368
    const/16 v6, 0x10ff

    iput v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 380
    :goto_1
    iget v6, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->msgBox:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->msgBox:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->msgBox:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    :cond_0
    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mIsOutbound:Z

    .line 382
    const/16 v6, 0x8

    iput-byte v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    .line 383
    if-eqz v5, :cond_4

    const/4 v6, 0x1

    :goto_3
    iput-boolean v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 385
    new-instance v0, Ljava/util/Date;

    iget-wide v6, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->date:J

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 386
    .local v0, d:Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMddHHmmss"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 388
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 389
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "T"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    const/16 v8, 0x8

    const/16 v9, 0xe

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 390
    const/4 v6, 0x0

    iput-byte v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    .line 392
    iget-boolean v6, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->isRead:Z

    iput-boolean v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    .line 394
    iget v6, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->msgBox:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    const/4 v6, 0x1

    :goto_4
    iput-boolean v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 395
    const/4 v6, 0x0

    iput-boolean v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 396
    iget-boolean v6, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->isLocked:Z

    iput-boolean v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 397
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->getTotalAttachmentSize()I

    move-result v6

    iput v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 398
    iget-object v6, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->subject:Ljava/lang/String;

    invoke-virtual {v3, v6, p3}, Lcom/broadcom/bt/service/map/MessageInfo;->setSubject(Ljava/lang/String;I)V

    .line 403
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->from(Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    iput-object v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 404
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->from(Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    .line 406
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->to(Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 407
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->to(Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    .line 409
    if-eqz p1, :cond_1

    .line 411
    iget-object v6, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->subject:Ljava/lang/String;

    if-nez v6, :cond_6

    const/4 v6, 0x0

    :goto_5
    add-int/lit8 v7, v6, 0x16

    if-nez v5, :cond_7

    const/4 v6, 0x0

    :goto_6
    add-int/2addr v6, v7

    iget v7, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    add-int/2addr v6, v7

    iput v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 416
    :cond_1
    return-object v3

    .line 363
    .end local v0           #d:Ljava/util/Date;
    .end local v2           #formatter:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 364
    .local v1, e:Ljava/lang/NumberFormatException;
    iget-object v6, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->id:Ljava/lang/String;

    iput-object v6, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    goto/16 :goto_0

    .line 377
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    iput p2, v3, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    goto/16 :goto_1

    .line 380
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 383
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 394
    .restart local v0       #d:Ljava/util/Date;
    .restart local v2       #formatter:Ljava/text/SimpleDateFormat;
    :cond_5
    const/4 v6, 0x0

    goto :goto_4

    .line 411
    :cond_6
    iget-object v6, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->subject:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_5

    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_6
.end method


# virtual methods
.method public from(Z)Ljava/lang/String;
    .locals 8
    .parameter "expand"

    .prologue
    .line 93
    const/4 v5, 0x0

    .line 94
    .local v5, result:Ljava/lang/String;
    iget-object v6, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->addrs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;

    .line 95
    .local v0, addr:Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;
    const-string v6, "137"

    iget-object v7, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    const/4 v4, 0x0

    .line 97
    .local v4, pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    if-eqz p1, :cond_1

    .line 98
    iget-object v6, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;->contactId:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;->contactId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 99
    iget-object v6, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;->contactId:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->getPersonInfoByContactId(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v4

    .line 103
    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;->addr:Ljava/lang/String;

    .line 104
    .local v1, displayAddr:Ljava/lang/String;
    const-string v6, "+1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 105
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_2
    if-eqz v4, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, newAddr:Ljava/lang/String;
    :goto_2
    if-nez v5, :cond_5

    .line 108
    move-object v5, v3

    goto :goto_0

    .line 101
    .end local v1           #displayAddr:Ljava/lang/String;
    .end local v3           #newAddr:Ljava/lang/String;
    :cond_3
    iget-object v6, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;->addr:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->getPersonInfoByPhoneNo(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v4

    goto :goto_1

    .restart local v1       #displayAddr:Ljava/lang/String;
    :cond_4
    move-object v3, v1

    .line 106
    goto :goto_2

    .line 110
    .restart local v3       #newAddr:Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 113
    .end local v0           #addr:Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;
    .end local v1           #displayAddr:Ljava/lang/String;
    .end local v3           #newAddr:Ljava/lang/String;
    .end local v4           #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :cond_6
    return-object v5
.end method

.method public getAttachmentFilenames()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, count:I
    iget-object v5, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->parts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;

    .line 168
    .local v3, part:Lcom/broadcom/bt/service/map/provider/mms/MmsPart;
    iget-object v5, v3, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->contentType:Ljava/lang/String;

    const-string v6, "application/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v3, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->contentType:Ljava/lang/String;

    const-string v6, "text/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v3           #part:Lcom/broadcom/bt/service/map/provider/mms/MmsPart;
    :cond_1
    new-array v4, v0, [Ljava/lang/String;

    .line 175
    .local v4, result:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 176
    iget-object v5, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->parts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;

    .line 177
    .restart local v3       #part:Lcom/broadcom/bt/service/map/provider/mms/MmsPart;
    iget-object v5, v3, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->contentType:Ljava/lang/String;

    const-string v6, "application/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v3, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->contentType:Ljava/lang/String;

    const-string v6, "text/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 178
    add-int/lit8 v1, v0, 0x1

    .end local v0           #count:I
    .local v1, count:I
    iget-object v5, v3, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->attachmentFilename:Ljava/lang/String;

    aput-object v5, v4, v0

    move v0, v1

    .end local v1           #count:I
    .restart local v0       #count:I
    goto :goto_1

    .line 181
    .end local v3           #part:Lcom/broadcom/bt/service/map/provider/mms/MmsPart;
    :cond_3
    return-object v4
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 141
    const/4 v2, 0x0

    .line 142
    .local v2, result:Ljava/lang/String;
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->parts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;

    .line 143
    .local v1, part:Lcom/broadcom/bt/service/map/provider/mms/MmsPart;
    iget-object v3, v1, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->contentType:Ljava/lang/String;

    const-string v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 144
    if-nez v2, :cond_1

    .line 145
    iget-object v2, v1, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->text:Ljava/lang/String;

    goto :goto_0

    .line 147
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 150
    .end local v1           #part:Lcom/broadcom/bt/service/map/provider/mms/MmsPart;
    :cond_2
    return-object v2
.end method

.method public getTotalAttachmentSize()I
    .locals 8

    .prologue
    .line 154
    const/4 v3, 0x0

    .line 155
    .local v3, size:I
    iget-object v4, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->parts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;

    .line 156
    .local v2, part:Lcom/broadcom/bt/service/map/provider/mms/MmsPart;
    iget-object v4, v2, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->contentType:Ljava/lang/String;

    const-string v5, "application/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->contentType:Ljava/lang/String;

    const-string v5, "text/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 157
    new-instance v0, Ljava/io/File;

    iget-object v4, v2, Lcom/broadcom/bt/service/map/provider/mms/MmsPart;->attachmentFilename:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, attachment:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 159
    int-to-long v4, v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v3, v4

    goto :goto_0

    .line 162
    .end local v0           #attachment:Ljava/io/File;
    .end local v2           #part:Lcom/broadcom/bt/service/map/provider/mms/MmsPart;
    :cond_1
    return v3
.end method

.method public to(Z)Ljava/lang/String;
    .locals 8
    .parameter "expand"

    .prologue
    .line 117
    const/4 v5, 0x0

    .line 118
    .local v5, result:Ljava/lang/String;
    iget-object v6, p0, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->addrs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;

    .line 119
    .local v0, addr:Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;
    const-string v6, "151"

    iget-object v7, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 120
    const/4 v4, 0x0

    .line 121
    .local v4, pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    if-eqz p1, :cond_1

    .line 122
    iget-object v6, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;->contactId:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;->contactId:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 123
    iget-object v6, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;->contactId:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->getPersonInfoByContactId(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v4

    .line 127
    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;->addr:Ljava/lang/String;

    .line 128
    .local v1, displayAddr:Ljava/lang/String;
    const-string v6, "+1"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 129
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    :cond_2
    if-eqz v4, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, newAddr:Ljava/lang/String;
    :goto_2
    if-nez v5, :cond_5

    .line 132
    move-object v5, v3

    goto :goto_0

    .line 125
    .end local v1           #displayAddr:Ljava/lang/String;
    .end local v3           #newAddr:Ljava/lang/String;
    :cond_3
    iget-object v6, v0, Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;->addr:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/broadcom/bt/service/map/provider/mms/MmsMessage;->getPersonInfoByPhoneNo(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v4

    goto :goto_1

    .restart local v1       #displayAddr:Ljava/lang/String;
    :cond_4
    move-object v3, v1

    .line 130
    goto :goto_2

    .line 134
    .restart local v3       #newAddr:Ljava/lang/String;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 137
    .end local v0           #addr:Lcom/broadcom/bt/service/map/provider/mms/MmsAddr;
    .end local v1           #displayAddr:Ljava/lang/String;
    .end local v3           #newAddr:Ljava/lang/String;
    .end local v4           #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :cond_6
    return-object v5
.end method
