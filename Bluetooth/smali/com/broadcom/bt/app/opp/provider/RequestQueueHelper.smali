.class public Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;
.super Ljava/lang/Object;
.source "RequestQueueHelper.java"


# static fields
.field private static final COUNT_ONLY:[Ljava/lang/String;

.field private static final COUNT_URI:Landroid/net/Uri;

.field private static final DUP_REQUEST_ID_URI:Landroid/net/Uri;

.field private static final ID_ONLY:[Ljava/lang/String;

.field private static mDisplayedMaxToast:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->ID_ONLY:[Ljava/lang/String;

    .line 43
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "count"

    aput-object v1, v0, v2

    sput-object v0, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->COUNT_ONLY:[Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "count"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->COUNT_URI:Landroid/net/Uri;

    .line 46
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothShare;->DUP_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "requestid"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->DUP_REQUEST_ID_URI:Landroid/net/Uri;

    .line 189
    sput-boolean v2, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->mDisplayedMaxToast:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addRequest(Lcom/broadcom/bt/app/opp/util/BaseService;Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;ZZ)Landroid/net/Uri;
    .locals 7
    .parameter "ctx"
    .parameter "contentResolver"
    .parameter "j"
    .parameter "checkQueueLimit"
    .parameter "dispatchEvent"

    .prologue
    const/4 v3, 0x0

    .line 209
    if-eqz p3, :cond_2

    :try_start_0
    invoke-static {p0, p1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->cleanQueue(Lcom/broadcom/bt/app/opp/util/BaseService;Landroid/content/ContentResolver;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 210
    const-string v4, "RequestQueueHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Queue full"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-boolean v4, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->mDisplayedMaxToast:Z

    if-nez v4, :cond_0

    .line 213
    invoke-static {p0}, Lcom/broadcom/bt/app/opp/notification/NotificationUtils;->showToast_TooManyRequests(Landroid/content/Context;)V

    .line 214
    const/4 v4, 0x1

    sput-boolean v4, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->mDisplayedMaxToast:Z

    :cond_0
    move-object v1, v3

    .line 240
    :cond_1
    :goto_0
    return-object v1

    .line 220
    :cond_2
    const/4 v4, 0x0

    sput-boolean v4, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->mDisplayedMaxToast:Z

    .line 222
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-static {p2, v5}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->toContentValues_AllFields(Lcom/broadcom/bt/app/opp/data/Job;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 224
    .local v1, returnedUri:Landroid/net/Uri;
    if-eqz v1, :cond_3

    .line 226
    :try_start_1
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    :cond_3
    :goto_1
    if-eqz p4, :cond_1

    .line 233
    :try_start_2
    invoke-static {p2}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->requestAdded(Lcom/broadcom/bt/app/opp/data/Job;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 238
    .end local v1           #returnedUri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 239
    .local v2, t:Ljava/lang/Throwable;
    const-string v4, "RequestQueueHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Unable to add job to queue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    .line 240
    goto :goto_0

    .line 227
    .end local v2           #t:Ljava/lang/Throwable;
    .restart local v1       #returnedUri:Landroid/net/Uri;
    :catch_1
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v4, "RequestQueueHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "addRequest: unable to get id of newly created request"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public static final cancelRequests_All(Landroid/content/ContentResolver;)I
    .locals 6
    .parameter "contentResolver"

    .prologue
    .line 695
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 696
    .local v2, v:Landroid/content/ContentValues;
    const-string v3, "status"

    const/16 v4, 0x1ea

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    const-string v3, "cancel_requested"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    const-string v3, "end_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 699
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "status = 190 OR status = 192"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 703
    .local v1, result:I
    const-string v3, "RequestQueueHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Rows Updated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    .end local v1           #result:I
    .end local v2           #v:Landroid/content/ContentValues;
    :goto_0
    return v1

    .line 706
    :catch_0
    move-exception v0

    .line 707
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "RequestQueueHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Error cancelling all pending TX "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 708
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static cleanQueue(Lcom/broadcom/bt/app/opp/util/BaseService;Landroid/content/ContentResolver;)Z
    .locals 16
    .parameter "ctx"
    .parameter "contentResolver"

    .prologue
    .line 285
    const/4 v1, 0x5

    new-array v15, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "direction = 0 AND status = 200"

    aput-object v2, v15, v1

    const/4 v1, 0x1

    const-string v2, "direction = 0 AND status > 400"

    aput-object v2, v15, v1

    const/4 v1, 0x2

    const-string v2, "direction = 1 AND status > 400 AND status != 486"

    aput-object v2, v15, v1

    const/4 v1, 0x3

    const-string v2, "direction = 1 AND status = 200"

    aput-object v2, v15, v1

    const/4 v1, 0x4

    const-string v2, "direction = 1 AND status = 486"

    aput-object v2, v15, v1

    .line 296
    .local v15, transType:[Ljava/lang/String;
    const-string v1, "status!=190 AND status!=192"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getCount(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 299
    .local v10, entryCount:I
    add-int/lit16 v1, v10, -0x3e8

    add-int/lit8 v14, v1, 0x1

    .line 300
    .local v14, toDelete:I
    if-gtz v14, :cond_0

    .line 301
    const/4 v1, 0x1

    .line 345
    :goto_0
    return v1

    .line 304
    :cond_0
    const-string v1, "RequestQueueHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "****Deleting from queue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    .line 307
    .local v7, delRequestId:[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, step:I
    :goto_1
    array-length v1, v15

    if-ge v13, v1, :cond_5

    if-lez v14, :cond_5

    .line 309
    const-string v1, "RequestQueueHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v15, v13

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->ID_ONLY:[Ljava/lang/String;

    aget-object v4, v15, v13

    const/4 v5, 0x0

    const-string v6, "end_timestamp"

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 313
    .local v12, sent:Landroid/database/Cursor;
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 314
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 315
    const/4 v12, 0x0

    .line 307
    :cond_1
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 319
    :cond_2
    const/4 v11, -0x1

    .line 322
    .local v11, id:I
    if-eqz v12, :cond_3

    .line 324
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 329
    :cond_3
    const/4 v1, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 331
    const-string v1, "RequestQueueHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting requestId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v7, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id= ?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 334
    .local v8, delRes:I
    invoke-static {v11}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->remove(I)V

    .line 335
    sub-int/2addr v14, v8

    .line 337
    const-string v1, "RequestQueueHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Rows left to delete = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .end local v8           #delRes:I
    :goto_3
    const/4 v1, 0x1

    if-lt v14, v1, :cond_4

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 340
    :cond_4
    if-eqz v12, :cond_1

    .line 341
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 325
    :catch_0
    move-exception v9

    .line 326
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "RequestQueueHelper"

    const-string v2, "Unable to parse for id"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 345
    .end local v9           #e:Ljava/lang/Exception;
    .end local v11           #id:I
    .end local v12           #sent:Landroid/database/Cursor;
    :cond_5
    if-gtz v14, :cond_6

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static createDupValuesForInsert(Lcom/broadcom/bt/app/opp/data/Job;)Landroid/content/ContentValues;
    .locals 3
    .parameter "request"

    .prologue
    .line 843
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 844
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "request_id"

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-string v1, "_data"

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v1, "hint"

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-string v1, "mimetype"

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    return-object v0
.end method

.method public static createDuplicateUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "requestId"

    .prologue
    .line 839
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothShare;->DUP_CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestid/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static createError(IZ)Landroid/content/ContentValues;
    .locals 4
    .parameter "status"
    .parameter "addEndTime"

    .prologue
    .line 632
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 633
    .local v0, v:Landroid/content/ContentValues;
    const-string v1, "status"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 634
    if-eqz p1, :cond_0

    .line 635
    const-string v1, "end_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 637
    :cond_0
    return-object v0
.end method

.method public static deleteDuplicateEntries(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "resolver"
    .parameter "requestId"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 861
    sget-object v0, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->DUP_REQUEST_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final deleteRequest(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "contentResolver"
    .parameter "requestUri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 432
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getBoolean(Landroid/database/Cursor;IZ)Z
    .locals 4
    .parameter "c"
    .parameter "columnId"
    .parameter "defaultValue"

    .prologue
    const/4 v1, 0x1

    .line 67
    if-eqz p0, :cond_0

    .line 68
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v1, v2, :cond_1

    :goto_0
    move p2, v1

    .line 73
    .end local p2
    :cond_0
    :goto_1
    return p2

    .line 68
    .restart local p2
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "RequestQueueHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get boolean value from column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getCount(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "contentResolver"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 253
    const/4 v6, 0x0

    .line 254
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 256
    .local v7, count:I
    :try_start_0
    sget-object v1, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->COUNT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->COUNT_ONLY:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 257
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getInt(Landroid/database/Cursor;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 263
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 265
    const/4 v6, 0x0

    .line 267
    :cond_1
    return v7

    .line 260
    :catch_0
    move-exception v8

    .line 261
    .local v8, e:Ljava/lang/Throwable;
    const-string v0, "RequestQueueHelper"

    const-string v1, "Unable to get count of entries"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getInt(Landroid/database/Cursor;I)I
    .locals 4
    .parameter "c"
    .parameter "columnId"

    .prologue
    .line 91
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 94
    :goto_0
    return v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "RequestQueueHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get integer value from column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getLong(Landroid/database/Cursor;I)J
    .locals 6
    .parameter "c"
    .parameter "columnId"

    .prologue
    const-wide/16 v1, -0x1

    .line 79
    if-eqz p0, :cond_0

    .line 80
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 85
    :cond_0
    :goto_0
    return-wide v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, t:Ljava/lang/Throwable;
    const-string v3, "RequestQueueHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to get long value from column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static final getNextPendingRequest(Landroid/content/ContentResolver;ILcom/broadcom/bt/app/opp/data/Job;)Z
    .locals 8
    .parameter "contentResolver"
    .parameter "role"
    .parameter "j"

    .prologue
    const/4 v4, 0x0

    .line 406
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->ALL_COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "role = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "status"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xbe

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 408
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 409
    .local v7, requestFound:Z
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    invoke-static {v6, p2}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->toJobObject_AllColumnSelector(Landroid/database/Cursor;Lcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/data/Job;

    .line 411
    const/4 v7, 0x1

    .line 416
    :goto_0
    if-eqz v6, :cond_0

    .line 417
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 418
    const/4 v6, 0x0

    .line 420
    :cond_0
    return v7

    .line 413
    :cond_1
    const-string v0, "RequestQueueHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Next pending job not found!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static final getRequest(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/broadcom/bt/app/opp/data/Job;
    .locals 8
    .parameter "contentResolver"
    .parameter "requestUri"

    .prologue
    const/4 v3, 0x0

    .line 371
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->ALL_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 372
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 373
    .local v7, j:Lcom/broadcom/bt/app/opp/data/Job;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-static {v6, v3}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->toJobObject_AllColumnSelector(Landroid/database/Cursor;Lcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v7

    .line 376
    :cond_0
    if-nez v7, :cond_1

    .line 377
    const-string v0, "RequestQueueHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Job not found!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_1
    if-eqz v6, :cond_2

    .line 381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 382
    const/4 v6, 0x0

    .line 384
    :cond_2
    return-object v7
.end method

.method public static getRequestType_Direction_Status(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/broadcom/bt/app/opp/data/Job;
    .locals 8
    .parameter "contentResolver"
    .parameter "requestUri"

    .prologue
    const/4 v3, 0x0

    .line 525
    new-instance v7, Lcom/broadcom/bt/app/opp/data/Job;

    invoke-direct {v7}, Lcom/broadcom/bt/app/opp/data/Job;-><init>()V

    .line 526
    .local v7, r:Lcom/broadcom/bt/app/opp/data/Job;
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->ALL_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 528
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 529
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    const/16 v0, 0xf

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    .line 531
    const/16 v0, 0x9

    invoke-static {v6, v0}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getInt(Landroid/database/Cursor;I)I

    move-result v0

    iput v0, v7, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 532
    const/4 v0, 0x5

    invoke-static {v6, v0}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getInt(Landroid/database/Cursor;I)I

    move-result v0

    iput v0, v7, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 533
    const/16 v0, 0x11

    invoke-static {v6, v0}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getInt(Landroid/database/Cursor;I)I

    move-result v0

    iput v0, v7, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    .line 535
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 538
    :cond_1
    return-object v7
.end method

.method public static getRmDeleteSelector(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .parameter "deleteSelection"

    .prologue
    .line 740
    if-nez p0, :cond_0

    .line 741
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 746
    .restart local p0
    :cond_0
    const-string v1, "( direction = 0)"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 759
    const-string v1, " OR "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    :cond_1
    const/4 v0, 0x4

    .line 769
    .local v0, rxMask:I
    or-int/lit8 v0, v0, 0x1

    .line 779
    const-string v1, "( direction = 1 AND "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-static {p0, v0}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getRmStatusSelector(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 782
    const-string v1, " ) "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    return-object p0
.end method

.method public static getRmStatusSelector(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 3
    .parameter "builder"
    .parameter "statusBitmap"

    .prologue
    const/4 v2, 0x1

    .line 792
    if-eqz p1, :cond_0

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-object p0

    .line 796
    :cond_1
    if-nez p0, :cond_2

    .line 797
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 800
    .restart local p0
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_6

    .line 801
    const-string v1, " NOT ( "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    const/4 v0, 0x0

    .line 803
    .local v0, moreThanOne:Z
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_3

    .line 804
    const-string v1, "status = 190"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    const/4 v0, 0x1

    .line 807
    :cond_3
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_4

    .line 808
    if-eqz v0, :cond_5

    .line 809
    const-string v1, " OR "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    :goto_1
    const-string v1, "status = 200"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    :cond_4
    const-string v1, " )"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 811
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 818
    .end local v0           #moreThanOne:Z
    :cond_6
    const-string v1, " ( "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    const/4 v0, 0x0

    .line 820
    .restart local v0       #moreThanOne:Z
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v2, :cond_7

    .line 821
    const-string v1, "status = 190"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    const/4 v0, 0x1

    .line 824
    :cond_7
    and-int/lit8 v1, p1, 0x2

    if-ne v1, v2, :cond_8

    .line 825
    if-eqz v0, :cond_9

    .line 826
    const-string v1, " OR "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    :goto_2
    const-string v1, "status = 200"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    :cond_8
    const-string v1, " )"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 828
    :cond_9
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public static setCancelRequested(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 6
    .parameter "contentResolver"
    .parameter "jobUri"

    .prologue
    .line 596
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 597
    .local v2, v:Landroid/content/ContentValues;
    const-string v3, "cancel_requested"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 598
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 600
    .local v1, result:I
    const-string v3, "RequestQueueHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Rows Updated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    .end local v1           #result:I
    .end local v2           #v:Landroid/content/ContentValues;
    :goto_0
    return v1

    .line 603
    :catch_0
    move-exception v0

    .line 604
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "RequestQueueHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Error updating request status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setCancelRequested_PendingRequestsInTransaction(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 8
    .parameter "resolver"
    .parameter "transactionId"

    .prologue
    const/4 v7, 0x0

    .line 669
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 670
    .local v3, v:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 671
    .local v0, timestamp:J
    const-string v4, "status"

    const/16 v5, 0x1ea

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 672
    const-string v4, "timestamp"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 673
    const-string v4, "end_timestamp"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 674
    const-string v4, "cancel_requested"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 675
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "transaction_id = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "status"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xbe

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OR "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "status"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xc0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v3, v5, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 680
    .local v2, updateCount:I
    if-gtz v2, :cond_0

    .line 681
    const-string v4, "RequestQueueHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to change pending requests in transaction to canceled. No pending requests in transaction "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 685
    :cond_0
    return-void
.end method

.method public static setHidden(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v2, 0x1

    .line 581
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 582
    .local v0, updateValues:Landroid/content/ContentValues;
    const-string v1, "visibility"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 583
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 584
    return-void
.end method

.method public static final startRequestStatus(Lcom/broadcom/bt/app/opp/util/BaseService;Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/broadcom/bt/app/opp/data/Job;Z)I
    .locals 6
    .parameter "ctx"
    .parameter "contentResolver"
    .parameter "jobUri"
    .parameter "j"
    .parameter "dispatchEvent"

    .prologue
    .line 447
    :try_start_0
    const-string v4, "RequestQueueHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :goto_0
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 450
    .local v2, v:Landroid/content/ContentValues;
    const-string v3, "status"

    iget v4, p3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 451
    const-string v3, "current_bytes"

    iget-wide v4, p3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 452
    const-string v3, "total_bytes"

    iget-wide v4, p3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 453
    const-string v3, "timestamp"

    iget-wide v4, p3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 460
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 462
    .local v1, updated:I
    if-eqz p4, :cond_0

    .line 463
    invoke-static {p3}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->requestStarted(Lcom/broadcom/bt/app/opp/data/Job;)V

    .line 467
    .end local v1           #updated:I
    .end local v2           #v:Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return v1

    .line 447
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static final toContentValues_AllFields(Lcom/broadcom/bt/app/opp/data/Job;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 3
    .parameter "j"
    .parameter "v"

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    new-instance p1, Landroid/content/ContentValues;

    .end local p1
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothShare;->ALL_COLUMNS:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {p1, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 156
    .restart local p1
    :cond_0
    const-string v0, "role"

    iget v1, p0, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string v0, "direction"

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v0, "request_type"

    iget v1, p0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "transaction_id"

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/data/Job;->mTransactionId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "uri"

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "mimetype"

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "_data"

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "hint"

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "destination"

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "destination_name"

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/data/Job;->mRemoteName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v0, "status"

    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v0, "current_bytes"

    iget-wide v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 173
    const-string v0, "total_bytes"

    iget-wide v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 175
    const-string v0, "timestamp"

    iget-wide v1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 176
    const-string v0, "end_timestamp"

    iget-wide v1, p0, Lcom/broadcom/bt/app/opp/data/Job;->mEndTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    const-string v1, "cancel_requested"

    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/data/Job;->mCancelRequested:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    return-object p1

    .line 178
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final toJobObject_AllColumnSelector(Landroid/database/Cursor;Lcom/broadcom/bt/app/opp/data/Job;)Lcom/broadcom/bt/app/opp/data/Job;
    .locals 3
    .parameter "c"
    .parameter "j"

    .prologue
    const/4 v2, 0x0

    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance p1, Lcom/broadcom/bt/app/opp/data/Job;

    .end local p1
    invoke-direct {p1}, Lcom/broadcom/bt/app/opp/data/Job;-><init>()V

    .line 112
    .restart local p1
    :cond_0
    if-eqz p0, :cond_1

    .line 113
    invoke-static {p0, v2}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getInt(Landroid/database/Cursor;I)I

    move-result v0

    iput v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    .line 114
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getInt(Landroid/database/Cursor;I)I

    move-result v0

    iput v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    .line 115
    const/16 v0, 0x11

    invoke-static {p0, v0}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getInt(Landroid/database/Cursor;I)I

    move-result v0

    iput v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestType:I

    .line 116
    const/16 v0, 0xe

    invoke-static {p0, v0}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getInt(Landroid/database/Cursor;I)I

    move-result v0

    iput v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRole:I

    .line 117
    const/16 v0, 0xf

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    .line 118
    const/16 v0, 0x10

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mTransactionId:Ljava/lang/String;

    .line 119
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 120
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    .line 121
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    .line 122
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    .line 123
    const/4 v0, 0x6

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    .line 124
    const/16 v0, 0x12

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mRemoteName:Ljava/lang/String;

    .line 125
    const/16 v0, 0x9

    invoke-static {p0, v0}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getInt(Landroid/database/Cursor;I)I

    move-result v0

    iput v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 126
    const/16 v0, 0xb

    invoke-static {p0, v0}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getLong(Landroid/database/Cursor;I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    .line 127
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getLong(Landroid/database/Cursor;I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    .line 128
    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getLong(Landroid/database/Cursor;I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    .line 129
    const/16 v0, 0x13

    invoke-static {p0, v0}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getLong(Landroid/database/Cursor;I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mEndTimestamp:J

    .line 130
    const/16 v0, 0x14

    invoke-static {p0, v0, v2}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getBoolean(Landroid/database/Cursor;IZ)Z

    move-result v0

    iput-boolean v0, p1, Lcom/broadcom/bt/app/opp/data/Job;->mCancelRequested:Z

    .line 138
    :cond_1
    return-object p1
.end method

.method public static unsetCancelRequested(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .locals 7
    .parameter "contentResolver"
    .parameter "jobUri"

    .prologue
    const/4 v3, 0x0

    .line 613
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 614
    .local v2, v:Landroid/content/ContentValues;
    const-string v4, "cancel_requested"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 615
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 617
    .local v1, result:I
    const-string v4, "RequestQueueHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Rows Updated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .end local v1           #result:I
    .end local v2           #v:Landroid/content/ContentValues;
    :goto_0
    return v1

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "RequestQueueHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Error updating request status"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 622
    goto :goto_0
.end method

.method public static updateDupValuesForInsert(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 2
    .parameter "values"
    .parameter "recordId"
    .parameter "displayName"
    .parameter "storeUri"

    .prologue
    .line 852
    const-string v0, "display_name"

    invoke-virtual {p0, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v0, "record_id"

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    const-string v0, "action"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v0, "status"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v1, "uri"

    if-nez p3, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    return-object p0

    .line 856
    :cond_0
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z
    .locals 5
    .parameter "contentResolver"
    .parameter "j"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 356
    invoke-virtual {p1}, Lcom/broadcom/bt/app/opp/data/Job;->getJobUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v4}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->toContentValues_AllFields(Lcom/broadcom/bt/app/opp/data/Job;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 358
    .local v0, updated:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final updateRequestStatus(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/broadcom/bt/app/opp/data/Job;)I
    .locals 7
    .parameter "contentResolver"
    .parameter "jobUri"
    .parameter "j"

    .prologue
    const/4 v3, 0x0

    .line 486
    :try_start_0
    const-string v5, "RequestQueueHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "Updating request status ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez p1, :cond_0

    const-string v4, ""

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    if-nez p1, :cond_1

    .line 490
    const/4 v1, -0x1

    .line 513
    :goto_1
    return v1

    .line 486
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 493
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 494
    .local v2, v:Landroid/content/ContentValues;
    const-string v4, "status"

    iget v5, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 495
    const-string v4, "current_bytes"

    iget-wide v5, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 496
    const-string v4, "total_bytes"

    iget-wide v5, p2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 497
    const-string v4, "end_timestamp"

    iget-wide v5, p2, Lcom/broadcom/bt/app/opp/data/Job;->mEndTimestamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 505
    if-nez p1, :cond_2

    move v1, v3

    goto :goto_1

    .line 506
    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 508
    .local v1, result:I
    const-string v4, "RequestQueueHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Rows Updated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 511
    .end local v1           #result:I
    .end local v2           #v:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 512
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "RequestQueueHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Error updating request status"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 513
    goto :goto_1
.end method

.method public static updateStatus_Error(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    .locals 2
    .parameter "resolver"
    .parameter "jobUri"
    .parameter "errorCode"

    .prologue
    const/4 v1, 0x0

    .line 628
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->createError(IZ)Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 629
    return-void
.end method
