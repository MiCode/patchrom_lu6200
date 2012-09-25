.class Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;
.super Ljava/lang/Object;
.source "VCardUtil.java"

# interfaces
.implements Lcom/android/vcard/VCardEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/opp/VCardUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardDupEntryCommitter"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentDupAction:Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;

.field private mCurrentIndex:I

.field private mDupAction:I

.field private mDupActions:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessDupRecords:Z

.field private mProgressHandler:Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;

.field private mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

.field private mTimeToCommit:J

.field final synthetic this$0:Lcom/broadcom/bt/service/opp/VCardUtil;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/opp/VCardUtil;Landroid/content/ContentResolver;ILjava/util/Iterator;Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;)V
    .locals 1
    .parameter
    .parameter "resolver"
    .parameter "dupAction"
    .parameter
    .parameter "result"
    .parameter "progressHandler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I",
            "Ljava/util/Iterator",
            "<",
            "Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;",
            ">;",
            "Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;",
            "Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 729
    .local p4, dupActions:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;>;"
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->this$0:Lcom/broadcom/bt/service/opp/VCardUtil;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 730
    iput-object p2, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    .line 731
    iput p3, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mDupAction:I

    .line 732
    iput-object p4, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mDupActions:Ljava/util/Iterator;

    .line 733
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mProcessDupRecords:Z

    .line 734
    iget-boolean v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mProcessDupRecords:Z

    if-eqz v0, :cond_0

    .line 735
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mCurrentDupAction:Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;

    .line 737
    :cond_0
    iput-object p6, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;

    .line 738
    iput-object p5, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    .line 739
    return-void

    .line 733
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private addContact(Lcom/android/vcard/VCardEntry;)V
    .locals 16
    .parameter "contactStruct"

    .prologue
    .line 849
    const-string v1, "OPP.VCardReadThread"

    const-string v2, "Adding entry...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/vcard/VCardEntry;->constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v15

    .line 853
    .local v15, mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object v7

    .line 854
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_2

    .line 855
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget v2, v1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mAddedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mAddedCount:I

    .line 857
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;

    if-eqz v1, :cond_1

    .line 858
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mCurrentIndex:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v5, p1

    invoke-interface/range {v1 .. v7}, Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;->onVCardProcessed(Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;ILjava/lang/String;Ljava/lang/Object;ILandroid/net/Uri;)V

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget-object v1, v1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mCommittedIndexes:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mCurrentIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 861
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget-object v1, v1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mCommittedTypes:Ljava/util/LinkedList;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 862
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget-object v1, v1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mCommittedUris:Ljava/util/LinkedList;

    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 865
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget v2, v1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mCantCommitCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mCantCommitCount:I

    .line 866
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget-object v1, v1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mCantCommitIndexes:Ljava/util/LinkedList;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mCurrentIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 867
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;

    if-eqz v1, :cond_0

    .line 868
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mCurrentIndex:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v12, p1

    invoke-interface/range {v8 .. v14}, Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;->onVCardProcessed(Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;ILjava/lang/String;Ljava/lang/Object;ILandroid/net/Uri;)V

    goto :goto_0
.end method

.method private pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .local p1, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 828
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 834
    .local v1, results:[Landroid/content/ContentProviderResult;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, v1, v3

    if-nez v3, :cond_1

    .line 841
    .end local v1           #results:[Landroid/content/ContentProviderResult;
    :cond_0
    :goto_0
    return-object v2

    .line 834
    .restart local v1       #results:[Landroid/content/ContentProviderResult;
    :cond_1
    const/4 v3, 0x0

    aget-object v3, v1, v3

    iget-object v2, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 836
    .end local v1           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v0

    .line 837
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "OPP.VCardUtil"

    const-string v4, "%s: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 839
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 840
    .local v0, e:Landroid/content/OperationApplicationException;
    const-string v3, "OPP.VCardUtil"

    const-string v4, "%s: %s"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private recordExists(Lcom/android/vcard/VCardEntry;)Landroid/net/Uri;
    .locals 13
    .parameter "contactStruct"

    .prologue
    .line 930
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "lookup"

    aput-object v1, v2, v0

    .line 932
    .local v2, PROJ:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 933
    .local v6, c:Landroid/database/Cursor;
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getGiven()Ljava/lang/String;

    move-result-object v9

    .line 934
    .local v9, givenName:Ljava/lang/String;
    if-nez v9, :cond_0

    .line 935
    const-string v9, ""

    .line 937
    :cond_0
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getMiddle()Ljava/lang/String;

    move-result-object v11

    .line 938
    .local v11, middleName:Ljava/lang/String;
    if-nez v11, :cond_1

    .line 939
    const-string v11, ""

    .line 942
    :cond_1
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getNameData()Lcom/android/vcard/VCardEntry$NameData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vcard/VCardEntry$NameData;->getFamily()Ljava/lang/String;

    move-result-object v8

    .line 943
    .local v8, familyName:Ljava/lang/String;
    if-nez v8, :cond_2

    .line 944
    const-string v8, ""

    .line 947
    :cond_2
    invoke-virtual {p1}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    .line 948
    .local v7, displayName:Ljava/lang/String;
    if-nez v7, :cond_3

    .line 949
    const-string v7, ""

    .line 952
    :cond_3
    const/4 v10, 0x0

    .line 953
    .local v10, lookupKey:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 955
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "mimetype = \'vnd.android.cursor.item/name\' AND data2= ?  AND data5= ?  AND data3= ? "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object v11, v4, v5

    const/4 v5, 0x2

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 961
    :goto_0
    if-eqz v6, :cond_6

    .line 962
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 963
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 965
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 966
    const/4 v6, 0x0

    .line 969
    :cond_6
    if-nez v10, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 971
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "mimetype = \'vnd.android.cursor.item/name\' AND data1= ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 978
    :goto_1
    if-eqz v6, :cond_8

    .line 979
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 980
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 982
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 983
    const/4 v6, 0x0

    .line 988
    :cond_8
    const-string v0, "OPP.VCardReadThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found lookup key:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    if-nez v10, :cond_9

    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 958
    :catch_0
    move-exception v12

    .line 959
    .local v12, t:Ljava/lang/Throwable;
    const-string v0, "OPP.VCardReadThread"

    const-string v1, "Error querying for contact"

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 975
    .end local v12           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v12

    .line 976
    .restart local v12       #t:Ljava/lang/Throwable;
    const-string v0, "OPP.VCardReadThread"

    const-string v1, "Error querying for contact"

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 990
    .end local v12           #t:Ljava/lang/Throwable;
    :cond_9
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, v10}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2
.end method

.method private registerDupContact(Landroid/net/Uri;Lcom/android/vcard/VCardEntry;)V
    .locals 7
    .parameter "dupContactUri"
    .parameter "contactStruct"

    .prologue
    .line 898
    const-string v0, "OPP.VCardReadThread"

    const-string v1, "Ignoring entry...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget v1, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mDuplicateCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mDuplicateCount:I

    .line 902
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget-object v0, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mDupIndexes:Ljava/util/LinkedList;

    iget v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mCurrentIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 903
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget-object v0, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mDupUris:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 904
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget-object v0, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mDupDisplayNames:Ljava/util/LinkedList;

    invoke-virtual {p2}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 905
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;

    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget v2, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mCurrentIndex:I

    invoke-virtual {p2}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    move-object v4, p2

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;->onVCardProcessed(Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;ILjava/lang/String;Ljava/lang/Object;ILandroid/net/Uri;)V

    .line 908
    :cond_0
    return-void
.end method

.method private update(Landroid/net/Uri;Lcom/android/vcard/VCardEntry;)Landroid/net/Uri;
    .locals 6
    .parameter "contactUri"
    .parameter "contactStruct"

    .prologue
    const/4 v2, 0x0

    .line 995
    if-eqz p1, :cond_0

    .line 996
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, p1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 997
    .local v0, deleteCount:I
    if-gtz v0, :cond_1

    .line 998
    const-string v3, "OPP.VCardReadThread"

    const-string v4, "NO contacts deleted in update request!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    .end local v0           #deleteCount:I
    :cond_0
    :goto_0
    return-object v2

    .line 1001
    .restart local v0       #deleteCount:I
    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2, v3, v2}, Lcom/android/vcard/VCardEntry;->constructInsertOperations(Landroid/content/ContentResolver;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1002
    .local v1, mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->pushIntoContentResolver(Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object v2

    .line 1005
    .local v2, uri:Landroid/net/Uri;
    const-string v4, "OPP.VCardReadThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updated contact uri: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_2

    const-string v3, "null"

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private updateContact(Landroid/net/Uri;Lcom/android/vcard/VCardEntry;)V
    .locals 14
    .parameter "contactUri"
    .parameter "contactStruct"

    .prologue
    .line 875
    const-string v0, "OPP.VCardReadThread"

    const-string v1, "Updating entry...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-direct/range {p0 .. p2}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->update(Landroid/net/Uri;Lcom/android/vcard/VCardEntry;)Landroid/net/Uri;

    move-result-object v6

    .line 878
    .local v6, updatedUri:Landroid/net/Uri;
    if-eqz v6, :cond_2

    .line 879
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget v1, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mUpdatedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mUpdatedCount:I

    .line 880
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;

    if-eqz v0, :cond_1

    .line 881
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;

    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget v2, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mCurrentIndex:I

    invoke-virtual/range {p2 .. p2}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    move-object/from16 v4, p2

    invoke-interface/range {v0 .. v6}, Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;->onVCardProcessed(Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;ILjava/lang/String;Ljava/lang/Object;ILandroid/net/Uri;)V

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget-object v0, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mCommittedIndexes:Ljava/util/LinkedList;

    iget v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mCurrentIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 884
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget-object v0, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mCommittedTypes:Ljava/util/LinkedList;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 885
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget-object v0, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mCommittedUris:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 888
    :cond_2
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget v1, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mCantCommitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mCantCommitCount:I

    .line 889
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget-object v0, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mCantCommitIndexes:Ljava/util/LinkedList;

    iget v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mCurrentIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 890
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;

    if-eqz v0, :cond_0

    .line 891
    iget-object v7, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;

    iget-object v8, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget v9, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mCurrentIndex:I

    invoke-virtual/range {p2 .. p2}, Lcom/android/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    move-object/from16 v11, p2

    move-object v13, p1

    invoke-interface/range {v7 .. v13}, Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;->onVCardProcessed(Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;ILjava/lang/String;Ljava/lang/Object;ILandroid/net/Uri;)V

    goto :goto_0
.end method


# virtual methods
.method public onEnd()V
    .locals 6

    .prologue
    .line 747
    invoke-static {}, Lcom/android/vcard/VCardConfig;->showPerformanceLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    const-string v0, "OPP.VCardUtil"

    const-string v1, "time to commit entries: %d ms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mTimeToCommit:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_0
    return-void
.end method

.method public onEntryCreated(Lcom/android/vcard/VCardEntry;)V
    .locals 7
    .parameter "contactStruct"

    .prologue
    .line 754
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 755
    .local v1, start:J
    const/4 v0, 0x0

    .line 758
    .local v0, dupContactUri:Landroid/net/Uri;
    iget-boolean v3, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mProcessDupRecords:Z

    if-eqz v3, :cond_5

    .line 760
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mCurrentDupAction:Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;

    if-nez v3, :cond_1

    .line 821
    :cond_0
    :goto_0
    iget-wide v3, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mTimeToCommit:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mTimeToCommit:J

    .line 822
    iget v3, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mCurrentIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mCurrentIndex:I

    .line 824
    return-void

    .line 762
    :cond_1
    iget v3, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mCurrentIndex:I

    iget-object v4, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mCurrentDupAction:Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;

    iget v4, v4, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;->mIndex:I

    if-ne v3, v4, :cond_0

    .line 766
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mCurrentDupAction:Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;

    iget v3, v3, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;->mAction:I

    packed-switch v3, :pswitch_data_0

    .line 779
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->recordExists(Lcom/android/vcard/VCardEntry;)Landroid/net/Uri;

    move-result-object v0

    .line 780
    if-nez v0, :cond_3

    .line 781
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->addContact(Lcom/android/vcard/VCardEntry;)V

    .line 788
    :goto_1
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mDupActions:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 789
    iget-object v3, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mDupActions:Ljava/util/Iterator;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;

    iput-object v3, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mCurrentDupAction:Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;

    goto :goto_0

    .line 768
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->addContact(Lcom/android/vcard/VCardEntry;)V

    goto :goto_1

    .line 771
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->recordExists(Lcom/android/vcard/VCardEntry;)Landroid/net/Uri;

    move-result-object v0

    .line 772
    if-nez v0, :cond_2

    .line 773
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->addContact(Lcom/android/vcard/VCardEntry;)V

    goto :goto_1

    .line 775
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->updateContact(Landroid/net/Uri;Lcom/android/vcard/VCardEntry;)V

    goto :goto_1

    .line 783
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->registerDupContact(Landroid/net/Uri;Lcom/android/vcard/VCardEntry;)V

    goto :goto_1

    .line 791
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mCurrentDupAction:Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;

    goto :goto_0

    .line 797
    :cond_5
    iget v3, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->mDupAction:I

    packed-switch v3, :pswitch_data_1

    .line 812
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->recordExists(Lcom/android/vcard/VCardEntry;)Landroid/net/Uri;

    move-result-object v0

    .line 813
    if-nez v0, :cond_7

    .line 814
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->addContact(Lcom/android/vcard/VCardEntry;)V

    goto :goto_0

    .line 800
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->addContact(Lcom/android/vcard/VCardEntry;)V

    goto :goto_0

    .line 804
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->recordExists(Lcom/android/vcard/VCardEntry;)Landroid/net/Uri;

    move-result-object v0

    .line 805
    if-nez v0, :cond_6

    .line 806
    invoke-direct {p0, p1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->addContact(Lcom/android/vcard/VCardEntry;)V

    goto :goto_0

    .line 808
    :cond_6
    invoke-direct {p0, v0, p1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->updateContact(Landroid/net/Uri;Lcom/android/vcard/VCardEntry;)V

    goto :goto_0

    .line 816
    :cond_7
    invoke-direct {p0, v0, p1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;->registerDupContact(Landroid/net/Uri;Lcom/android/vcard/VCardEntry;)V

    goto :goto_0

    .line 766
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 797
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 744
    return-void
.end method
