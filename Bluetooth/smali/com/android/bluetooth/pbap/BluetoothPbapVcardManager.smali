.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;,
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    }
.end annotation


# static fields
.field private static final CLAUSE_ONLY_VISIBLE:Ljava/lang/String;

.field static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final ICC_CONTENT_URI:Landroid/net/Uri;

.field static final ICC_NAME_PROJECTION:[Ljava/lang/String;

.field static final ICC_PHONES_PROJECTION:[Ljava/lang/String;

.field static final PHONES_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field mParamFilter:[B

.field private mResolver:Landroid/content/ContentResolver;

.field private mUseFilter:Z

.field private mVcardResults:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data2"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 103
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CLAUSE_ONLY_VISIBLE:Ljava/lang/String;

    .line 121
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->ICC_CONTENT_URI:Landroid/net/Uri;

    .line 133
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->ICC_NAME_PROJECTION:[Ljava/lang/String;

    .line 137
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->ICC_PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mVcardResults:Ljava/lang/StringBuilder;

    .line 88
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mParamFilter:[B

    .line 144
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    .line 145
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mVcardResults:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mVcardResults:Ljava/lang/StringBuilder;

    return-object p1
.end method


# virtual methods
.method public BtUiSendLogData(Ljava/lang/String;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 749
    const-string v0, "com.android.btui.log_viewer"

    .line 750
    .local v0, ACTION_LOG_VIEWER:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "log_data"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 752
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 753
    return-void
.end method

.method public final composeAndSendCallLogVcards(ILjavax/obex/Operation;IIZ)I
    .locals 19
    .parameter "type"
    .parameter "op"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "vcardType21"

    .prologue
    .line 388
    const/4 v2, 0x1

    move/from16 v0, p3

    if-lt v0, v2, :cond_0

    move/from16 v0, p3

    move/from16 v1, p4

    if-le v0, v1, :cond_1

    .line 389
    :cond_0
    const-string v2, "BluetoothPbapVcardManager"

    const-string v6, "internal error: startPoint or endPoint is not correct."

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/16 v2, 0xd0

    .line 444
    :goto_0
    return v2

    .line 392
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v5

    .line 394
    .local v5, typeSelection:Ljava/lang/String;
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 395
    .local v3, myUri:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v2

    .line 398
    .local v4, CALLLOG_PROJECTION:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 400
    .local v12, ID_COLUMN_INDEX:I
    const/4 v13, 0x0

    .line 401
    .local v13, callsCursor:Landroid/database/Cursor;
    const-wide/16 v17, 0x0

    .line 402
    .local v17, startPointId:J
    const-wide/16 v14, 0x0

    .line 405
    .local v14, endPointId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const-string v7, "_id DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 407
    if-eqz v13, :cond_2

    .line 408
    add-int/lit8 v2, p3, -0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 409
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 410
    const-string v2, "BluetoothPbapVcardManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call Log query startPointId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v17

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_4

    .line 412
    move-wide/from16 v14, v17

    .line 417
    :goto_1
    const-string v2, "BluetoothPbapVcardManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call log query endPointId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :cond_2
    if-eqz v13, :cond_3

    .line 421
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 426
    :cond_3
    move/from16 v0, p3

    move/from16 v1, p4

    if-ne v0, v1, :cond_6

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 436
    .local v16, recordSelection:Ljava/lang/String;
    :goto_2
    if-nez v5, :cond_7

    .line 437
    move-object/from16 v8, v16

    .line 442
    .local v8, selection:Ljava/lang/String;
    :goto_3
    const-string v2, "BluetoothPbapVcardManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call log query selection is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v9, p5

    invoke-virtual/range {v6 .. v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;Z)I

    move-result v2

    goto/16 :goto_0

    .line 414
    .end local v8           #selection:Ljava/lang/String;
    .end local v16           #recordSelection:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, p4, -0x1

    :try_start_1
    invoke-interface {v13, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 415
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v14

    goto :goto_1

    .line 420
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_5

    .line 421
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 420
    :cond_5
    throw v2

    .line 431
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id>="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "_id"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "<="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v17

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .restart local v16       #recordSelection:Ljava/lang/String;
    goto :goto_2

    .line 439
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") AND ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .restart local v8       #selection:Ljava/lang/String;
    goto/16 :goto_3
.end method

.method public final composeAndSendPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;IZ[B)I
    .locals 12
    .parameter "op"
    .parameter "offset"
    .parameter "vcardType21"
    .parameter "ownerVCard"
    .parameter "orderByWhat"
    .parameter "useFilter"
    .parameter "appParam"

    .prologue
    .line 505
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mUseFilter:Z

    .line 506
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mParamFilter:[B

    .line 508
    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 509
    const-string v1, "BluetoothPbapVcardManager"

    const-string v3, "Internal error: offset is not correct."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/16 v1, 0xd0

    .line 558
    :goto_0
    return v1

    .line 512
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 513
    .local v2, myUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 514
    .local v9, contactCursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 515
    .local v5, selection:Ljava/lang/String;
    const-wide/16 v10, 0x0

    .line 516
    .local v10, contactId:J
    sget v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_4

    .line 518
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CLAUSE_ONLY_VISIBLE:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    .end local v5           #selection:Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 520
    if-eqz v9, :cond_1

    .line 521
    add-int/lit8 v1, p2, -0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 522
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 523
    const-string v1, "BluetoothPbapVcardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query startPointId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    :cond_1
    if-eqz v9, :cond_2

    .line 527
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 554
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 556
    .restart local v5       #selection:Ljava/lang/String;
    const-string v1, "BluetoothPbapVcardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query selection is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;Z)I

    move-result v1

    goto :goto_0

    .line 526
    .end local v5           #selection:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    .line 527
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 526
    :cond_3
    throw v1

    .line 530
    .restart local v5       #selection:Ljava/lang/String;
    :cond_4
    sget v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    move/from16 v0, p5

    if-ne v0, v1, :cond_7

    .line 533
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CLAUSE_ONLY_VISIBLE:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "display_name COLLATE LOCALIZED ASC"

    .end local v5           #selection:Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 540
    if-eqz v9, :cond_5

    .line 541
    add-int/lit8 v1, p2, -0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 542
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 543
    const-string v1, "BluetoothPbapVcardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query startPointId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 546
    :cond_5
    if-eqz v9, :cond_2

    .line 547
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 546
    :catchall_1
    move-exception v1

    if-eqz v9, :cond_6

    .line 547
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 546
    :cond_6
    throw v1

    .line 551
    .restart local v5       #selection:Ljava/lang/String;
    :cond_7
    const-string v1, "BluetoothPbapVcardManager"

    const-string v3, "Parameter orderByWhat is not supported!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/16 v1, 0xd0

    goto/16 :goto_0
.end method

.method public final composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;Z[B)I
    .locals 15
    .parameter "op"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "vcardType21"
    .parameter "ownerVCard"
    .parameter "useFilter"
    .parameter "appParam"

    .prologue
    .line 453
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mUseFilter:Z

    .line 454
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mParamFilter:[B

    .line 456
    const/4 v2, 0x1

    move/from16 v0, p2

    if-lt v0, v2, :cond_0

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    .line 457
    :cond_0
    const-string v2, "BluetoothPbapVcardManager"

    const-string v4, "internal error: startPoint or endPoint is not correct."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/16 v2, 0xd0

    .line 496
    :goto_0
    return v2

    .line 460
    :cond_1
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 462
    .local v3, myUri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 463
    .local v10, contactCursor:Landroid/database/Cursor;
    const-wide/16 v13, 0x0

    .line 464
    .local v13, startPointId:J
    const-wide/16 v11, 0x0

    .line 466
    .local v11, endPointId:J
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CLAUSE_ONLY_VISIBLE:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 468
    if-eqz v10, :cond_2

    .line 469
    add-int/lit8 v2, p2, -0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 470
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 471
    const-string v2, "BluetoothPbapVcardManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query startPointId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    .line 473
    move-wide v11, v13

    .line 478
    :goto_1
    const-string v2, "BluetoothPbapVcardManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query endPointId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :cond_2
    if-eqz v10, :cond_3

    .line 482
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 487
    :cond_3
    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_6

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 494
    .local v6, selection:Ljava/lang/String;
    :goto_2
    const-string v2, "BluetoothPbapVcardManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query selection is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v9, 0x1

    move-object v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;Z)I

    move-result v2

    goto/16 :goto_0

    .line 475
    .end local v6           #selection:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, p3, -0x1

    :try_start_1
    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 476
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v11

    goto :goto_1

    .line 481
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_5

    .line 482
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 481
    :cond_5
    throw v2

    .line 490
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id>="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #selection:Ljava/lang/String;
    goto :goto_2
.end method

.method public final composeAndSendSIMCallLogVcards(ILjavax/obex/Operation;IIZ)I
    .locals 2
    .parameter "type"
    .parameter "op"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "vcardType21"

    .prologue
    .line 979
    const-string v0, "BluetoothPbapVcardManager"

    const-string v1, "[composeAndSendSIMCallLogVcards] CallLog is not supported!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const/16 v0, 0xd0

    return v0
.end method

.method public final composeAndSendSIMPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;IZ[B)I
    .locals 7
    .parameter "op"
    .parameter "offset"
    .parameter "vcardType21"
    .parameter "ownerVCard"
    .parameter "orderByWhat"
    .parameter "useFilter"
    .parameter "appParam"

    .prologue
    const/16 v0, 0xd0

    .line 860
    iput-boolean p6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mUseFilter:Z

    .line 861
    iput-object p7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mParamFilter:[B

    .line 863
    if-gez p2, :cond_0

    .line 864
    const-string v1, "BluetoothPbapVcardManager"

    const-string v2, "Internal error: offset is not correct."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :goto_0
    return v0

    .line 867
    :cond_0
    const/4 v6, 0x0

    .line 869
    .local v6, sortOrder:Ljava/lang/String;
    sget v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p5, v1, :cond_1

    .line 870
    const/4 v6, 0x0

    .line 878
    :goto_1
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendSIMVCards(Ljavax/obex/Operation;IIZZLjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 871
    :cond_1
    sget v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    if-ne p5, v1, :cond_2

    .line 872
    const-string v6, "name"

    goto :goto_1

    .line 874
    :cond_2
    const-string v1, "BluetoothPbapVcardManager"

    const-string v2, "Parameter orderByWhat is not supported!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final composeAndSendSIMPhonebookVcards(Ljavax/obex/Operation;IIZZ[B)I
    .locals 7
    .parameter "op"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "vcardType21"
    .parameter "useFilter"
    .parameter "appParam"

    .prologue
    .line 885
    iput-boolean p5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mUseFilter:Z

    .line 886
    iput-object p6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mParamFilter:[B

    .line 888
    if-ltz p2, :cond_0

    if-le p2, p3, :cond_1

    .line 889
    :cond_0
    const-string v0, "BluetoothPbapVcardManager"

    const-string v1, "internal error: startPoint or endPoint is not correct."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/16 v0, 0xd0

    .line 893
    :goto_0
    return v0

    :cond_1
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendSIMVCards(Ljavax/obex/Operation;IIZZLjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final composeAndSendSIMVCards(Ljavax/obex/Operation;IIZZLjava/lang/String;)I
    .locals 11
    .parameter "op"
    .parameter "startPoint"
    .parameter "endPoint"
    .parameter "vcardType21"
    .parameter "isContacts"
    .parameter "sortOrder"

    .prologue
    .line 899
    const-wide/16 v4, 0x0

    .line 900
    .local v4, timestamp:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 902
    if-eqz p5, :cond_9

    .line 903
    const/4 v2, 0x0

    .line 907
    .local v2, composer:Lcom/android/vcard/VCardSIMComposer;
    if-eqz p4, :cond_1

    .line 908
    const/high16 v6, -0x4000

    .line 912
    .local v6, vcardType:I
    :goto_0
    const/high16 v7, 0x80

    or-int/2addr v6, v7

    .line 915
    :try_start_0
    const-string v1, "UTF-8"

    .line 916
    .local v1, charset:Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mUseFilter:Z

    if-eqz v7, :cond_2

    .line 917
    const-string v7, "BluetoothPbapVcardManager"

    const-string v8, "[BTUI] [PBAP] call VCardSIMComposer() : DO use filter"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/high16 v7, 0x8

    or-int/2addr v6, v7

    .line 919
    new-instance v3, Lcom/android/vcard/VCardSIMComposer;

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mParamFilter:[B

    invoke-direct {v3, v7, v6, v1, v8}, Lcom/android/vcard/VCardSIMComposer;-><init>(Landroid/content/Context;ILjava/lang/String;[B)V

    .end local v2           #composer:Lcom/android/vcard/VCardSIMComposer;
    .local v3, composer:Lcom/android/vcard/VCardSIMComposer;
    move-object v2, v3

    .line 927
    .end local v3           #composer:Lcom/android/vcard/VCardSIMComposer;
    .restart local v2       #composer:Lcom/android/vcard/VCardSIMComposer;
    :goto_1
    new-instance v7, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$2;

    invoke-direct {v7, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$2;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V

    invoke-virtual {v2, v7}, Lcom/android/vcard/VCardSIMComposer;->setPhoneNumberTranslationCallback(Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)V

    .line 940
    new-instance v7, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;

    const/4 v8, 0x0

    invoke-direct {v7, p0, p1, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer2;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/android/vcard/VCardSIMComposer;->addHandler(Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;)V

    .line 941
    sget-object v7, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->ICC_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v2, v7, v8, v9, v0}, Lcom/android/vcard/VCardSIMComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_3

    .line 942
    const/16 v7, 0xd0

    .line 962
    if-eqz v2, :cond_0

    .line 963
    :goto_2
    invoke-virtual {v2}, Lcom/android/vcard/VCardSIMComposer;->terminate()V

    .line 974
    .end local v1           #charset:Ljava/lang/String;
    .end local v2           #composer:Lcom/android/vcard/VCardSIMComposer;
    .end local v6           #vcardType:I
    .end local p1
    :cond_0
    :goto_3
    return v7

    .line 910
    .restart local v2       #composer:Lcom/android/vcard/VCardSIMComposer;
    .restart local p1
    :cond_1
    const v6, -0x3fffffff

    .restart local v6       #vcardType:I
    goto :goto_0

    .line 921
    .restart local v1       #charset:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v7, "BluetoothPbapVcardManager"

    const-string v8, "[BTUI] [PBAP] call VCardSIMComposer() : NOT use filter"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    new-instance v3, Lcom/android/vcard/VCardSIMComposer;

    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7, v6, v1}, Lcom/android/vcard/VCardSIMComposer;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .end local v2           #composer:Lcom/android/vcard/VCardSIMComposer;
    .restart local v3       #composer:Lcom/android/vcard/VCardSIMComposer;
    move-object v2, v3

    .end local v3           #composer:Lcom/android/vcard/VCardSIMComposer;
    .restart local v2       #composer:Lcom/android/vcard/VCardSIMComposer;
    goto :goto_1

    .line 945
    :cond_3
    invoke-virtual {v2, p2}, Lcom/android/vcard/VCardSIMComposer;->moveToPosition(I)Z

    .line 946
    :cond_4
    invoke-virtual {v2}, Lcom/android/vcard/VCardSIMComposer;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_5

    .line 947
    sget-boolean v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v7, :cond_7

    .line 948
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1
    const/4 v7, 0x1

    iput-boolean v7, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 949
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 962
    :cond_5
    if-eqz v2, :cond_6

    .line 963
    invoke-virtual {v2}, Lcom/android/vcard/VCardSIMComposer;->terminate()V

    .line 971
    :cond_6
    const-string v7, "BluetoothPbapVcardManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Total vcard composing and sending out takes "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/16 v7, 0xa0

    goto :goto_3

    .line 952
    .restart local p1
    :cond_7
    :try_start_2
    invoke-virtual {v2}, Lcom/android/vcard/VCardSIMComposer;->getPosition()I

    move-result v7

    if-gt v7, p3, :cond_5

    .line 955
    invoke-virtual {v2}, Lcom/android/vcard/VCardSIMComposer;->createOneEntry()Z

    move-result v7

    if-nez v7, :cond_4

    .line 956
    const-string v7, "BluetoothPbapVcardManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to read a contact. Error reason: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/vcard/VCardSIMComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 958
    const/16 v7, 0xd0

    .line 962
    if-eqz v2, :cond_0

    goto/16 :goto_2

    .end local v1           #charset:Ljava/lang/String;
    .end local p1
    :catchall_0
    move-exception v7

    if-eqz v2, :cond_8

    .line 963
    invoke-virtual {v2}, Lcom/android/vcard/VCardSIMComposer;->terminate()V

    .line 962
    :cond_8
    throw v7

    .line 967
    .end local v2           #composer:Lcom/android/vcard/VCardSIMComposer;
    .end local v6           #vcardType:I
    .restart local p1
    :cond_9
    const-string v7, "BluetoothPbapVcardManager"

    const-string v8, "[composeAndSendSIMVCards] CallLog is not supported!!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/16 v7, 0xd0

    goto/16 :goto_3
.end method

.method public final composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;Z)I
    .locals 14
    .parameter "op"
    .parameter "selection"
    .parameter "vcardType21"
    .parameter "ownerVCard"
    .parameter "isContacts"

    .prologue
    .line 563
    const-wide/16 v6, 0x0

    .line 564
    .local v6, timestamp:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 566
    if-eqz p5, :cond_12

    .line 567
    const/4 v4, 0x0

    .line 568
    .local v4, composer:Lcom/android/vcard/VCardComposer;
    const/4 v1, 0x0

    .line 572
    .local v1, buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    if-eqz p3, :cond_3

    .line 573
    const/high16 v9, -0x4000

    .line 577
    .local v9, vcardType:I
    :goto_0
    const/high16 v10, 0x80

    or-int/2addr v9, v10

    .line 580
    :try_start_0
    const-string v3, "UTF-8"

    .line 581
    .local v3, charset:Ljava/lang/String;
    iget-boolean v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mUseFilter:Z

    if-eqz v10, :cond_4

    .line 582
    const-string v10, "BluetoothPbapVcardManager"

    const-string v11, "[BTUI] [PBAP] call VCardComposer() : DO use filter"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/high16 v10, 0x8

    or-int/2addr v9, v10

    .line 584
    new-instance v5, Lcom/android/vcard/VCardComposer;

    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mParamFilter:[B

    invoke-direct {v5, v10, v9, v3, v11}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;[B)V

    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .local v5, composer:Lcom/android/vcard/VCardComposer;
    move-object v4, v5

    .line 595
    .end local v5           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v4       #composer:Lcom/android/vcard/VCardComposer;
    :goto_1
    new-instance v10, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;

    invoke-direct {v10, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V

    invoke-virtual {v4, v10}, Lcom/android/vcard/VCardComposer;->setPhoneNumberTranslationCallback(Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)V

    .line 608
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    move-object/from16 v0, p4

    invoke-direct {v2, p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v2, buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_1
    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const-string v12, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v4, v10, v0, v11, v12}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result v10

    if-nez v10, :cond_6

    .line 611
    :cond_0
    const/16 v10, 0xd0

    .line 635
    if-eqz v4, :cond_1

    .line 636
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 638
    :cond_1
    if-eqz v2, :cond_2

    .line 639
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_2
    move-object v1, v2

    .line 682
    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3           #charset:Ljava/lang/String;
    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .end local v9           #vcardType:I
    .end local p1
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :goto_2
    return v10

    .line 575
    .restart local v4       #composer:Lcom/android/vcard/VCardComposer;
    .restart local p1
    :cond_3
    const v9, -0x3fffffff

    .restart local v9       #vcardType:I
    goto :goto_0

    .line 586
    .restart local v3       #charset:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v10, "BluetoothPbapVcardManager"

    const-string v11, "[BTUI] [PBAP] call VCardComposer() : NOT use filter"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance v5, Lcom/android/vcard/VCardComposer;

    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct {v5, v10, v9, v3, v11}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v5       #composer:Lcom/android/vcard/VCardComposer;
    move-object v4, v5

    .end local v5           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v4       #composer:Lcom/android/vcard/VCardComposer;
    goto :goto_1

    .line 631
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .local v8, vcard:Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual {p0, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->BtUiSendLogData(Ljava/lang/String;)V

    .line 614
    .end local v8           #vcard:Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_7

    .line 615
    sget-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v10, :cond_a

    .line 616
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1
    const/4 v10, 0x1

    iput-boolean v10, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 617
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 635
    :cond_7
    if-eqz v4, :cond_8

    .line 636
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 638
    :cond_8
    if-eqz v2, :cond_9

    .line 639
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_9
    move-object v1, v2

    .line 679
    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v3           #charset:Ljava/lang/String;
    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .end local v9           #vcardType:I
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :goto_3
    const-string v10, "BluetoothPbapVcardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Total vcard composing and sending out takes "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/16 v10, 0xa0

    goto :goto_2

    .line 620
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3       #charset:Ljava/lang/String;
    .restart local v4       #composer:Lcom/android/vcard/VCardComposer;
    .restart local v9       #vcardType:I
    .restart local p1
    :cond_a
    :try_start_4
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v8

    .line 621
    .restart local v8       #vcard:Ljava/lang/String;
    if-nez v8, :cond_d

    .line 622
    const-string v10, "BluetoothPbapVcardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to read a contact. Error reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 624
    const/16 v10, 0xd0

    .line 635
    if-eqz v4, :cond_b

    .line 636
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 638
    :cond_b
    if-eqz v2, :cond_c

    .line 639
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_c
    move-object v1, v2

    .line 624
    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_2

    .line 626
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :cond_d
    :try_start_5
    invoke-virtual {v2, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-result v10

    if-nez v10, :cond_5

    .line 628
    const/16 v10, 0xd0

    .line 635
    if-eqz v4, :cond_e

    .line 636
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 638
    :cond_e
    if-eqz v2, :cond_f

    .line 639
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_f
    move-object v1, v2

    .line 628
    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_2

    .line 635
    .end local v3           #charset:Ljava/lang/String;
    .end local v8           #vcard:Ljava/lang/String;
    :catchall_0
    move-exception v10

    .end local p1
    :goto_4
    if-eqz v4, :cond_10

    .line 636
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 638
    :cond_10
    if-eqz v1, :cond_11

    .line 639
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 635
    :cond_11
    throw v10

    .line 643
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v4           #composer:Lcom/android/vcard/VCardComposer;
    .end local v9           #vcardType:I
    .restart local p1
    :cond_12
    const/4 v4, 0x0

    .line 644
    .local v4, composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    const/4 v1, 0x0

    .line 647
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_6
    new-instance v5, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 648
    .end local v4           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .local v5, composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :try_start_7
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    move-object/from16 v0, p4

    invoke-direct {v2, p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 649
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    :try_start_8
    sget-object v10, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const-string v12, "_id DESC"

    move-object/from16 v0, p2

    invoke-virtual {v5, v10, v0, v11, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result v10

    if-nez v10, :cond_17

    .line 652
    :cond_13
    const/16 v10, 0xd0

    .line 670
    if-eqz v5, :cond_14

    .line 671
    invoke-virtual {v5}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 673
    :cond_14
    if-eqz v2, :cond_15

    .line 674
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_15
    move-object v1, v2

    .line 652
    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_2

    .line 667
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v8       #vcard:Ljava/lang/String;
    :cond_16
    :try_start_9
    invoke-virtual {v2, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z

    .line 655
    .end local v8           #vcard:Ljava/lang/String;
    :cond_17
    invoke-virtual {v5}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_18

    .line 656
    sget-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v10, :cond_1b

    .line 657
    check-cast p1, Ljavax/obex/ServerOperation;

    .end local p1
    const/4 v10, 0x1

    iput-boolean v10, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 658
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 670
    :cond_18
    if-eqz v5, :cond_19

    .line 671
    invoke-virtual {v5}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 673
    :cond_19
    if-eqz v2, :cond_1a

    .line 674
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_1a
    move-object v1, v2

    .line 676
    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_3

    .line 661
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local p1
    :cond_1b
    :try_start_a
    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->createOneEntry(Z)Ljava/lang/String;

    move-result-object v8

    .line 662
    .restart local v8       #vcard:Ljava/lang/String;
    if-nez v8, :cond_16

    .line 663
    const-string v10, "BluetoothPbapVcardManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to read a contact. Error reason: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 665
    const/16 v10, 0xd0

    .line 670
    if-eqz v5, :cond_1c

    .line 671
    invoke-virtual {v5}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 673
    :cond_1c
    if-eqz v2, :cond_1d

    .line 674
    invoke-virtual {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    :cond_1d
    move-object v1, v2

    .line 665
    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_2

    .line 670
    .end local v5           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .end local v8           #vcard:Ljava/lang/String;
    .restart local v4       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :catchall_1
    move-exception v10

    .end local p1
    :goto_5
    if-eqz v4, :cond_1e

    .line 671
    invoke-virtual {v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 673
    :cond_1e
    if-eqz v1, :cond_1f

    .line 674
    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 670
    :cond_1f
    throw v10

    .end local v4           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v5       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local p1
    :catchall_2
    move-exception v10

    move-object v4, v5

    .end local v5           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v4       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    goto :goto_5

    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .end local v4           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .end local p1
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v5       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    :catchall_3
    move-exception v10

    move-object v1, v2

    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    move-object v4, v5

    .end local v5           #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    .restart local v4       #composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    goto :goto_5

    .line 635
    .end local v1           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v2       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v3       #charset:Ljava/lang/String;
    .local v4, composer:Lcom/android/vcard/VCardComposer;
    .restart local v9       #vcardType:I
    :catchall_4
    move-exception v10

    move-object v1, v2

    .end local v2           #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    .restart local v1       #buffer:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
    goto/16 :goto_4
.end method

.method public final getCallHistorySize(I)I
    .locals 8
    .parameter "type"

    .prologue
    .line 189
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 190
    .local v1, myUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, selection:Ljava/lang/String;
    const/4 v7, 0x0

    .line 192
    .local v7, size:I
    const/4 v6, 0x0

    .line 194
    .local v6, callCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 196
    if-eqz v6, :cond_0

    .line 197
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 200
    :cond_0
    if-eqz v6, :cond_1

    .line 201
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_1
    return v7

    .line 200
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 201
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_2
    throw v0
.end method

.method public final getContactsSize()I
    .locals 8

    .prologue
    .line 172
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 173
    .local v1, myUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 174
    .local v7, size:I
    const/4 v6, 0x0

    .line 176
    .local v6, contactCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CLAUSE_ONLY_VISIBLE:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 177
    if-eqz v6, :cond_0

    .line 178
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v7, v0, 0x1

    .line 181
    :cond_0
    if-eqz v6, :cond_1

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_1
    return v7

    .line 181
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 181
    :cond_2
    throw v0
.end method

.method public final getNewMissedCallCount()I
    .locals 10

    .prologue
    .line 209
    const/4 v6, 0x0

    .line 211
    .local v6, count:I
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 213
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v1, "type="

    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .local v9, where:Ljava/lang/StringBuilder;
    const/4 v1, 0x3

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, " AND new=1"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 219
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 220
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 221
    const-string v1, "BluetoothPbapVcardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] getNewMissedCallCount() : count ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #where:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return v6

    .line 224
    :catch_0
    move-exception v8

    .line 225
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "BluetoothPbapVcardManager"

    const-string v2, "[BTUI] cannot resolve new missed call count"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final getOwnerPhoneNumberVcard(Z)Ljava/lang/String;
    .locals 5
    .parameter "vcardType21"

    .prologue
    .line 149
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;)V

    .line 150
    .local v0, composer:Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, name:Ljava/lang/String;
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneNum()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, number:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->composeVCardForPhoneOwnNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, vcard:Ljava/lang/String;
    return-object v3
.end method

.method public final getPhonebookNameList(I)Ljava/util/ArrayList;
    .locals 9
    .parameter "orderByWhat"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v8, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 274
    .local v1, myUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 276
    .local v6, contactCursor:Landroid/database/Cursor;
    :try_start_0
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p1, v0, :cond_3

    .line 277
    const-string v0, "BluetoothPbapVcardManager"

    const-string v2, "getPhonebookNameList, order by index"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CLAUSE_ONLY_VISIBLE:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 291
    :cond_0
    :goto_0
    if-eqz v6, :cond_4

    .line 292
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 294
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 295
    .local v7, name:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 298
    :cond_1
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 302
    .end local v7           #name:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 303
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_2
    throw v0

    .line 280
    :cond_3
    :try_start_1
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    if-ne p1, v0, :cond_0

    .line 281
    const-string v0, "BluetoothPbapVcardManager"

    const-string v2, "getPhonebookNameList, order by alpha"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CONTACTS_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CLAUSE_ONLY_VISIBLE:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name COLLATE LOCALIZED ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 302
    :cond_4
    if-eqz v6, :cond_5

    .line 303
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 306
    :cond_5
    return-object v8
.end method

.method public final getPhonebookNumberList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v7, numberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 315
    .local v1, myUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 317
    .local v8, phoneCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CLAUSE_ONLY_VISIBLE:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "data1 ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 319
    if-eqz v8, :cond_3

    .line 320
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 322
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 324
    .local v6, number:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 325
    const/16 v0, 0x2c

    const/16 v2, 0x70

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 326
    const/16 v0, 0x3b

    const/16 v2, 0x77

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 329
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x7f050124

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 332
    :cond_1
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 336
    .end local v6           #number:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 337
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_2
    throw v0

    :cond_3
    if-eqz v8, :cond_4

    .line 337
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 340
    :cond_4
    return-object v7
.end method

.method public final getPhonebookSize(I)I
    .locals 4
    .parameter "type"

    .prologue
    .line 159
    packed-switch p1, :pswitch_data_0

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getCallHistorySize(I)I

    move-result v0

    .line 167
    .local v0, size:I
    :goto_0
    const-string v1, "BluetoothPbapVcardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhonebookSzie size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return v0

    .line 161
    .end local v0           #size:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getContactsSize()I

    move-result v0

    .line 162
    .restart local v0       #size:I
    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSIMCallHistorySize(I)I
    .locals 2
    .parameter "type"

    .prologue
    .line 788
    const-string v0, "BluetoothPbapVcardManager"

    const-string v1, "getSIMPhonebookSize is not support!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    const/4 v0, 0x0

    return v0
.end method

.method public final getSIMContactsSize()I
    .locals 8

    .prologue
    .line 771
    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->ICC_CONTENT_URI:Landroid/net/Uri;

    .line 772
    .local v1, myUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 773
    .local v7, size:I
    const/4 v6, 0x0

    .line 775
    .local v6, contactCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 776
    if-eqz v6, :cond_0

    .line 777
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 780
    :cond_0
    if-eqz v6, :cond_1

    .line 781
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 784
    :cond_1
    return v7

    .line 780
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 781
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 780
    :cond_2
    throw v0
.end method

.method public final getSIMPhonebookNameList(I)Ljava/util/ArrayList;
    .locals 9
    .parameter "orderByWhat"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 795
    .local v8, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->ICC_CONTENT_URI:Landroid/net/Uri;

    .line 796
    .local v1, myUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 798
    .local v6, contactCursor:Landroid/database/Cursor;
    :try_start_0
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p1, v0, :cond_3

    .line 799
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->ICC_NAME_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 803
    :cond_0
    :goto_0
    if-eqz v6, :cond_4

    .line 804
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 806
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 807
    .local v7, name:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x104000e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 810
    :cond_1
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 814
    .end local v7           #name:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 815
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 814
    :cond_2
    throw v0

    .line 800
    :cond_3
    :try_start_1
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    if-ne p1, v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->ICC_NAME_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_0

    .line 814
    :cond_4
    if-eqz v6, :cond_5

    .line 815
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 818
    :cond_5
    return-object v8
.end method

.method public final getSIMPhonebookNumberList(I)Ljava/util/ArrayList;
    .locals 9
    .parameter "orderByWhat"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 824
    .local v7, numberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->ICC_CONTENT_URI:Landroid/net/Uri;

    .line 825
    .local v1, myUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 827
    .local v8, phoneCursor:Landroid/database/Cursor;
    :try_start_0
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    if-ne p1, v0, :cond_3

    .line 828
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->ICC_PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 832
    :goto_0
    if-eqz v8, :cond_4

    .line 833
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 835
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 837
    .local v6, number:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 838
    const/16 v0, 0x2c

    const/16 v2, 0x70

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 839
    const/16 v0, 0x3b

    const/16 v2, 0x77

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 842
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v2, 0x7f050124

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 845
    :cond_1
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 849
    .end local v6           #number:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 850
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 849
    :cond_2
    throw v0

    .line 830
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->ICC_PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    goto :goto_0

    .line 849
    :cond_4
    if-eqz v8, :cond_5

    .line 850
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 853
    :cond_5
    return-object v7
.end method

.method public final getSIMPhonebookSize(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 759
    packed-switch p1, :pswitch_data_0

    .line 764
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getSIMCallHistorySize(I)I

    move-result v0

    .line 767
    .local v0, size:I
    :goto_0
    return v0

    .line 761
    .end local v0           #size:I
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getSIMContactsSize()I

    move-result v0

    .line 762
    .restart local v0       #size:I
    goto :goto_0

    .line 759
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final loadCallHistoryList(I)Ljava/util/ArrayList;
    .locals 11
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 232
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 233
    .local v1, myUri:Landroid/net/Uri;
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v4

    const-string v0, "name"

    aput-object v0, v2, v5

    .line 237
    .local v2, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 238
    .local v7, CALLS_NUMBER_COLUMN_INDEX:I
    const/4 v6, 0x1

    .line 240
    .local v6, CALLS_NAME_COLUMN_INDEX:I
    const/4 v8, 0x0

    .line 241
    .local v8, callCursor:Landroid/database/Cursor;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 245
    if-eqz v8, :cond_3

    .line 246
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 248
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 249
    .local v10, name:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 252
    const-string v0, "-1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v4, 0x7f050004

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 258
    :cond_1
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 262
    .end local v10           #name:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 263
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 262
    :cond_2
    throw v0

    :cond_3
    if-eqz v8, :cond_4

    .line 263
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_4
    return-object v9
.end method
