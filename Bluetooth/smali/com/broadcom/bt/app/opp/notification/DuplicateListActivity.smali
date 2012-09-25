.class public Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;
.super Landroid/app/Activity;
.source "DuplicateListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;
.implements Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;,
        Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;,
        Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;
    }
.end annotation


# instance fields
.field final SELECTION_SAVE:Ljava/lang/String;

.field private mAdapter:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;

.field private mCancel:Landroid/widget/Button;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field mDupVCalActions:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;

.field mDupVCardActions:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;

.field private mInfoDialog:Landroid/app/AlertDialog;

.field private mLastSavedContentUri:Landroid/net/Uri;

.field private mListView:Landroid/widget/ListView;

.field mObjectTypeCapsStringResource:Ljava/lang/String;

.field mObjectTypeId:I

.field mObjectTypeNCapsStringResource:Ljava/lang/String;

.field mObjectTypeNStringResource:Ljava/lang/String;

.field mObjectTypeStringResource:Ljava/lang/String;

.field private mRequest:Lcom/broadcom/bt/app/opp/data/Job;

.field private mSave:Landroid/widget/Button;

.field private mSaveCount:I

.field private mSaveProgressDialog:Landroid/app/ProgressDialog;

.field private mSaveVCalThread:Ljava/lang/Thread;

.field private mSaveVCardThread:Ljava/lang/Thread;

.field mShowInfoDialog:Z

.field private mVCalUtil:Lcom/broadcom/bt/service/opp/VCalUtil;

.field private mVCardUtil:Lcom/broadcom/bt/service/opp/VCardUtil;

.field private prompt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 265
    const-string v0, "request_id = ? AND (action = 1 OR action = 2 ) AND status != 1 AND status != 4"

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->SELECTION_SAVE:Ljava/lang/String;

    .line 687
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mInfoDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mInfoDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->finishSave()V

    return-void
.end method

.method static synthetic access$400(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private cleanupFile()V
    .locals 3

    .prologue
    .line 770
    iget v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 773
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 774
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 779
    .end local v0           #f:Ljava/io/File;
    :cond_0
    return-void

    .line 770
    :cond_1
    iget v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeId:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0
.end method

.method private finishSave()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 326
    iput-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveVCardThread:Ljava/lang/Thread;

    .line 327
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mDupVCardActions:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mDupVCardActions:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;->finish()V

    .line 329
    iput-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mDupVCardActions:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;

    .line 331
    :cond_0
    iput-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveVCalThread:Ljava/lang/Thread;

    .line 332
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mDupVCalActions:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mDupVCalActions:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;->finish()V

    .line 334
    iput-object v9, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mDupVCalActions:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v1, v1, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    const-string v2, "status = 1 OR status = 4 OR action = 0"

    invoke-static {v0, v1, v2, v9}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->deleteDuplicateEntries(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    :try_start_0
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeId:I

    if-ne v0, v3, :cond_6

    .line 351
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :cond_2
    :goto_0
    const/4 v7, 0x0

    .line 363
    .local v7, noMoreEntries:Z
    const/4 v6, 0x0

    .line 365
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->DUP_CONTENT_COUNT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "count"

    aput-object v3, v2, v0

    const-string v3, "request_id = ? "

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v5, v5, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 367
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-gtz v0, :cond_3

    .line 368
    const/4 v7, 0x1

    .line 373
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 374
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 375
    const/4 v6, 0x0

    .line 378
    :cond_4
    if-eqz v7, :cond_8

    .line 380
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    const/16 v1, 0xc8

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 381
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mLastSavedContentUri:Landroid/net/Uri;

    if-nez v0, :cond_7

    move-object v0, v9

    :goto_2
    iput-object v0, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    invoke-static {v0, v1}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->updateRequest(Landroid/content/ContentResolver;Lcom/broadcom/bt/app/opp/data/Job;)Z

    .line 384
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->cleanupFile()V

    .line 387
    invoke-static {}, Lcom/broadcom/bt/app/opp/notification/EventDispatcher;->refreshCompletedNotifications()V

    .line 389
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->finish()V

    .line 396
    :cond_5
    :goto_3
    return-void

    .line 353
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #noMoreEntries:Z
    :cond_6
    const/16 v0, 0xb

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->dismissDialog(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    goto :goto_0

    .line 370
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #noMoreEntries:Z
    :catch_1
    move-exception v8

    .line 371
    .local v8, t:Ljava/lang/Throwable;
    const-string v0, "OPP.DuplicateListActivity"

    const-string v1, "Unable to get count of duplicate entries"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 381
    .end local v8           #t:Ljava/lang/Throwable;
    :cond_7
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mLastSavedContentUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 393
    :cond_8
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_5

    .line 394
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    goto :goto_3
.end method

.method private save()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 274
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveVCardThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 275
    const-string v0, "OPP.DuplicateListActivity"

    const-string v1, "Save in progress...Skipping new save request..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    return-void

    .line 279
    :cond_0
    new-array v4, v9, [Ljava/lang/String;

    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v0, v0, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    aput-object v0, v4, v1

    .line 281
    .local v4, selectArgs:[Ljava/lang/String;
    iput v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveCount:I

    .line 282
    const/4 v6, 0x0

    .line 284
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->DUP_CONTENT_COUNT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "count"

    aput-object v3, v2, v0

    const-string v3, "request_id = ? AND (action = 1 OR action = 2 ) AND status != 1 AND status != 4"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 286
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveCount:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 294
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 297
    :cond_2
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveCount:I

    if-nez v0, :cond_3

    .line 298
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->finishSave()V

    goto :goto_0

    .line 289
    :catch_0
    move-exception v7

    .line 290
    .local v7, t:Ljava/lang/Throwable;
    const-string v0, "OPP.DuplicateListActivity"

    const-string v1, "Unable to get count of records to save"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 302
    .end local v7           #t:Ljava/lang/Throwable;
    :cond_3
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->DUP_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->DUP_ALL_COLUMNS:[Ljava/lang/String;

    const-string v3, "request_id = ? AND (action = 1 OR action = 2 ) AND status != 1 AND status != 4"

    move-object v0, p0

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 304
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeId:I

    if-ne v0, v9, :cond_5

    .line 305
    if-eqz v6, :cond_4

    .line 306
    new-instance v0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;

    invoke-direct {v0, p0, v6, v8}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;-><init>(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;Landroid/database/Cursor;Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$1;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mDupVCardActions:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;

    .line 308
    :cond_4
    new-instance v0, Lcom/broadcom/bt/service/opp/VCardUtil;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/opp/VCardUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mVCardUtil:Lcom/broadcom/bt/service/opp/VCardUtil;

    .line 309
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->showDialog(I)V

    .line 310
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mVCardUtil:Lcom/broadcom/bt/service/opp/VCardUtil;

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mDupVCardActions:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCardActionWrapper;

    invoke-virtual {v1, v2, v3, p0}, Lcom/broadcom/bt/service/opp/VCardUtil;->getOrCreateStoreVCardThread(Ljava/lang/String;Ljava/util/Iterator;Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;)Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveVCardThread:Ljava/lang/Thread;

    .line 312
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveVCardThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 314
    :cond_5
    if-eqz v6, :cond_6

    .line 315
    new-instance v0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;

    invoke-direct {v0, p0, v6, v8}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;-><init>(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;Landroid/database/Cursor;Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$1;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mDupVCalActions:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;

    .line 317
    :cond_6
    new-instance v0, Lcom/broadcom/bt/service/opp/VCalUtil;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/opp/VCalUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mVCalUtil:Lcom/broadcom/bt/service/opp/VCalUtil;

    .line 318
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->showDialog(I)V

    .line 319
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mVCalUtil:Lcom/broadcom/bt/service/opp/VCalUtil;

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    iget v3, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveCount:I

    iget-object v5, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mDupVCalActions:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DupVCalActionWrapper;

    invoke-virtual {v1, v2, v3, v5, p0}, Lcom/broadcom/bt/service/opp/VCalUtil;->getOrCreateStoreThread(Ljava/lang/String;ILjava/util/Iterator;Lcom/broadcom/bt/service/opp/VCalUtil$ProgressHandler;)Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveVCalThread:Ljava/lang/Thread;

    .line 321
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveVCalThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method private setAllAction(I)V
    .locals 7
    .parameter "dupActionId"

    .prologue
    const/4 v4, 0x1

    .line 402
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 403
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "action"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 404
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->DUP_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "request_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v6, v6, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 406
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    .line 409
    :cond_0
    return-void
.end method

.method private toggleDupAction(I)I
    .locals 0
    .parameter "dupActionId"

    .prologue
    .line 413
    packed-switch p1, :pswitch_data_0

    .line 424
    :goto_0
    return p1

    .line 415
    :pswitch_0
    const/4 p1, 0x0

    .line 416
    goto :goto_0

    .line 418
    :pswitch_1
    const/4 p1, 0x1

    .line 419
    goto :goto_0

    .line 421
    :pswitch_2
    const/4 p1, 0x2

    goto :goto_0

    .line 413
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSaveProgressDialog(ILjava/lang/String;)V
    .locals 1
    .parameter "msgResId"
    .parameter "displayName"

    .prologue
    .line 557
    new-instance v0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$4;-><init>(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 565
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 509
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 510
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mVCardUtil:Lcom/broadcom/bt/service/opp/VCardUtil;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mVCardUtil:Lcom/broadcom/bt/service/opp/VCardUtil;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/opp/VCardUtil;->cancelStoreVCard()V

    .line 515
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->finishSave()V

    .line 516
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->onCancel(Landroid/content/DialogInterface;)V

    .line 520
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSave:Landroid/widget/Button;

    if-ne v0, p1, :cond_1

    .line 783
    invoke-direct {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->save()V

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCancel:Landroid/widget/Button;

    if-ne v0, p1, :cond_0

    .line 785
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 112
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->setContentView(I)V

    .line 114
    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mListView:Landroid/widget/ListView;

    .line 115
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mListView:Landroid/widget/ListView;

    const v1, 0x7f080008

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 116
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->prompt:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f080011

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSave:Landroid/widget/Button;

    .line 118
    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCancel:Landroid/widget/Button;

    .line 120
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 121
    .local v6, i:Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 122
    .local v9, requestUri:Landroid/net/Uri;
    const-string v0, "SHOW_DLG"

    invoke-virtual {v6, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mShowInfoDialog:Z

    .line 124
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v9}, Lcom/broadcom/bt/app/opp/provider/RequestQueueHelper;->getRequest(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/broadcom/bt/app/opp/data/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    .line 126
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeFromMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeId:I

    .line 130
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeId:I

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeStringResource:Ljava/lang/String;

    .line 131
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeId:I

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId_Cap(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeCapsStringResource:Ljava/lang/String;

    .line 132
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeId:I

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId_Plural(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeNStringResource:Ljava/lang/String;

    .line 133
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeId:I

    invoke-static {v0}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId_Caps_Plural(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeNCapsStringResource:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 140
    .local v7, noDupView:Landroid/widget/TextView;
    if-eqz v7, :cond_0

    .line 141
    const v0, 0x7f0500ca

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeStringResource:Ljava/lang/String;

    aput-object v2, v1, v11

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_0
    const v0, 0x7f0500df

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeId:I

    invoke-static {v2}, Lcom/broadcom/bt/app/opp/util/Utils;->getObjectTypeResourceId_Plural(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    aput-object v2, v1, v10

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/opp/BluetoothShare;->DUP_ALL_COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimetype = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "status"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " != "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "status"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " != "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCursor:Landroid/database/Cursor;

    .line 157
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 159
    new-instance v0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;

    const v1, 0x7f030006

    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;-><init>(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mAdapter:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;

    .line 160
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mAdapter:Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$DuplicateAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 162
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 165
    iget v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeId:I

    if-ne v0, v10, :cond_4

    .line 166
    const v0, 0x7f05009b

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, promptString:Ljava/lang/String;
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_3

    .line 168
    const v0, 0x7f0500e0

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->setTitle(I)V

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->prompt:Landroid/widget/TextView;

    const v1, 0x7f05008b

    new-array v2, v10, [Ljava/lang/Object;

    aput-object v8, v2, v11

    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .end local v8           #promptString:Ljava/lang/String;
    :cond_1
    iget-boolean v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mShowInfoDialog:Z

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$1;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$1;-><init>(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 194
    .end local v7           #noDupView:Landroid/widget/TextView;
    :cond_2
    return-void

    .line 170
    .restart local v7       #noDupView:Landroid/widget/TextView;
    .restart local v8       #promptString:Ljava/lang/String;
    :cond_3
    const v0, 0x7f0500e1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->setTitle(I)V

    goto :goto_0

    .line 173
    .end local v8           #promptString:Ljava/lang/String;
    :cond_4
    const v0, 0x7f05009a

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 174
    .restart local v8       #promptString:Ljava/lang/String;
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v10, :cond_5

    .line 175
    const v0, 0x7f0500e2

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->setTitle(I)V

    goto :goto_0

    .line 177
    :cond_5
    const v0, 0x7f0500e3

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->setTitle(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 224
    sparse-switch p1, :sswitch_data_0

    .line 262
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 227
    :sswitch_0
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 228
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    .line 229
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0500d1

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeNStringResource:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 232
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, -0x2

    const v3, 0x7f050097

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 233
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 234
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0500d3

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeNStringResource:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 241
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    iget v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveCount:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mSaveProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 247
    :sswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    .local v0, infoDlgBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 249
    const v1, 0x7f0500dc

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeNCapsStringResource:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 250
    const v1, 0x7f0500dd

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mObjectTypeNStringResource:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 252
    const v1, 0x7f0500de

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$2;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$2;-><init>(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 258
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mInfoDialog:Landroid/app/AlertDialog;

    .line 259
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mInfoDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 224
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0xa -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 197
    iget-object v1, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 199
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 201
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 429
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    .line 430
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 433
    :cond_0
    const/4 v0, 0x1

    .line 434
    .local v0, dupActionId:I
    const/4 v1, 0x0

    .line 435
    .local v1, dupActionIdStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    .line 436
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 438
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 440
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 444
    :cond_2
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 445
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "action"

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->toggleDupAction(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    iget-object v4, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->DUP_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id= ?"

    new-array v7, v7, [Ljava/lang/String;

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v7, v8

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 448
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_3

    .line 449
    iget-object v3, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    .line 506
    :cond_3
    return-void

    .line 446
    :cond_4
    const-string v3, ""

    goto :goto_1

    .line 441
    .end local v2           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 209
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 220
    :goto_0
    return v0

    .line 211
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->setAllAction(I)V

    goto :goto_0

    .line 214
    :pswitch_1
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->setAllAction(I)V

    goto :goto_0

    .line 217
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->setAllAction(I)V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x7f080031
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onParseComplete(Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 736
    new-instance v0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$5;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$5;-><init>(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;)V

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 741
    return-void
.end method

.method public onParseComplete(Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;)V
    .locals 1
    .parameter "res"

    .prologue
    .line 523
    new-instance v0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$3;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity$3;-><init>(Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;)V

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 528
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onVCalProcessed(Lcom/broadcom/bt/service/opp/VCalUtil$ParseResult;ILjava/lang/String;Ljava/lang/Object;ILandroid/net/Uri;)V
    .locals 9
    .parameter "res"
    .parameter "index"
    .parameter "displayName"
    .parameter "entry"
    .parameter "status"
    .parameter "storeUri"

    .prologue
    const/4 v8, 0x1

    .line 745
    const v0, 0x7f0500d5

    .line 746
    .local v0, msgResId:I
    packed-switch p5, :pswitch_data_0

    .line 762
    :goto_0
    :pswitch_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 763
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "status"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 764
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->DUP_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "request_id = ? AND record_id = ? "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 766
    invoke-direct {p0, v0, p3}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->updateSaveProgressDialog(ILjava/lang/String;)V

    .line 767
    return-void

    .line 748
    .end local v1           #values:Landroid/content/ContentValues;
    :pswitch_1
    const v0, 0x7f0500d2

    .line 749
    iput-object p6, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mLastSavedContentUri:Landroid/net/Uri;

    goto :goto_0

    .line 752
    :pswitch_2
    const v0, 0x7f0500d4

    .line 753
    iput-object p6, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mLastSavedContentUri:Landroid/net/Uri;

    goto :goto_0

    .line 756
    :pswitch_3
    const v0, 0x7f0500d5

    .line 757
    goto :goto_0

    .line 759
    :pswitch_4
    const v0, 0x7f0500d6

    goto :goto_0

    .line 746
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onVCardProcessed(Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;ILjava/lang/String;Ljava/lang/Object;ILandroid/net/Uri;)V
    .locals 9
    .parameter "res"
    .parameter "index"
    .parameter "displayName"
    .parameter "entry"
    .parameter "status"
    .parameter "storeUri"

    .prologue
    const/4 v8, 0x1

    .line 532
    const v0, 0x7f0500d5

    .line 533
    .local v0, msgResId:I
    packed-switch p5, :pswitch_data_0

    .line 549
    :goto_0
    :pswitch_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 550
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "status"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 551
    iget-object v2, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->DUP_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "request_id = ? AND record_id = ? "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mRequest:Lcom/broadcom/bt/app/opp/data/Job;

    iget-object v7, v7, Lcom/broadcom/bt/app/opp/data/Job;->mRequestId:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 553
    invoke-direct {p0, v0, p3}, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->updateSaveProgressDialog(ILjava/lang/String;)V

    .line 554
    return-void

    .line 535
    .end local v1           #values:Landroid/content/ContentValues;
    :pswitch_1
    const v0, 0x7f0500d2

    .line 536
    iput-object p6, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mLastSavedContentUri:Landroid/net/Uri;

    goto :goto_0

    .line 539
    :pswitch_2
    const v0, 0x7f0500d4

    .line 540
    iput-object p6, p0, Lcom/broadcom/bt/app/opp/notification/DuplicateListActivity;->mLastSavedContentUri:Landroid/net/Uri;

    goto :goto_0

    .line 543
    :pswitch_3
    const v0, 0x7f0500d5

    .line 544
    goto :goto_0

    .line 546
    :pswitch_4
    const v0, 0x7f0500d6

    goto :goto_0

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
