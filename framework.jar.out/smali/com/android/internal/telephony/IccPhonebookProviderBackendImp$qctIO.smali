.class Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;
.super Lcom/android/internal/telephony/IUsimInfoCallback$Stub;
.source "IccPhonebookProviderBackendImp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "qctIO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;,
        Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$Result;
    }
.end annotation


# instance fields
.field private final mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer",
            "<",
            "Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;)V
    .locals 3
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->this$0:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;

    invoke-direct {p0}, Lcom/android/internal/telephony/IUsimInfoCallback$Stub;-><init>()V

    .line 200
    new-instance v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->this$0:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;-><init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;-><init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;ILandroid/content/ContentValues;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->updateGroup(Landroid/content/Context;ILandroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->deleteGroup(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;I)Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->read(Landroid/content/Context;I)Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->newQueryEntryCursor(Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;ILandroid/content/ContentValues;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->insert(Landroid/content/Context;ILandroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;ILandroid/content/ContentValues;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->update(Landroid/content/Context;ILandroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->delete(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;I)Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->readGroup(Landroid/content/Context;I)Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->newQueryGroupCursor(Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->insertGroup(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method private delete(Landroid/content/Context;I)I
    .locals 4
    .parameter "context"
    .parameter "simIndex"

    .prologue
    const/4 v2, 0x0

    .line 389
    new-instance v1, Lcom/android/internal/telephony/UsimService;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/UsimService;-><init>(Landroid/content/Context;)V

    .line 390
    .local v1, service:Lcom/android/internal/telephony/UsimService;
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UsimService;->registerCallback(Lcom/android/internal/telephony/IUsimInfoCallback;)V

    .line 392
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->reset()V
    invoke-static {v3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1300(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)V

    .line 393
    invoke-virtual {v1, v2, p2}, Lcom/android/internal/telephony/UsimService;->PBMDeleteRecord(II)V

    .line 394
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->waitResult()Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1400(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;

    .line 395
    .local v0, result:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UsimService;->unregisterCallback(Lcom/android/internal/telephony/IUsimInfoCallback;)V

    .line 397
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->getIndex()I

    move-result v2

    .line 400
    :cond_0
    return v2
.end method

.method private deleteGroup(Landroid/content/Context;I)I
    .locals 5
    .parameter "context"
    .parameter "groupIndex"

    .prologue
    const/4 v2, 0x0

    .line 471
    if-gtz p2, :cond_1

    .line 472
    const-string v3, "IccPhonebookProvider"

    const-string v4, "gas_id MUST be greater than 0!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    :goto_0
    return v2

    .line 475
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/UsimService;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/UsimService;-><init>(Landroid/content/Context;)V

    .line 476
    .local v1, service:Lcom/android/internal/telephony/UsimService;
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UsimService;->registerCallback(Lcom/android/internal/telephony/IUsimInfoCallback;)V

    .line 477
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->reset()V
    invoke-static {v3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1300(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)V

    .line 478
    const/16 v3, 0x20

    invoke-virtual {v1, v3, p2}, Lcom/android/internal/telephony/UsimService;->PBMDeleteRecord(II)V

    .line 479
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->waitResult()Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1400(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;

    .line 480
    .local v0, result:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UsimService;->unregisterCallback(Lcom/android/internal/telephony/IUsimInfoCallback;)V

    .line 482
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->getIndex()I

    move-result v2

    goto :goto_0
.end method

.method private getInt(Landroid/content/ContentValues;Ljava/lang/String;I)I
    .locals 3
    .parameter "values"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 352
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 358
    .end local p3
    :goto_0
    return p3

    .line 356
    .restart local p3
    :cond_0
    const-string v0, "IccPhonebookProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (int) column is ommitted, use default value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "values"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 364
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 369
    .end local p3
    :goto_0
    return-object p3

    .line 367
    .restart local p3
    :cond_0
    const-string v0, "IccPhonebookProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (String) column is ommitted, use defalue value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private insert(Landroid/content/Context;ILandroid/content/ContentValues;)I
    .locals 4
    .parameter "context"
    .parameter "simIndex"
    .parameter "values"

    .prologue
    .line 222
    if-gtz p2, :cond_0

    .line 223
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid sim index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v1, 0x0

    .line 229
    :goto_0
    return v1

    .line 226
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->newNativeRecordWithoutSimIndex(Landroid/content/ContentValues;)Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    move-result-object v0

    .line 227
    .local v0, records:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    iput p2, v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->index:I

    .line 229
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->write(Landroid/content/Context;Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)I

    move-result v1

    goto :goto_0
.end method

.method private insertGroup(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 3
    .parameter "context"
    .parameter "values"

    .prologue
    .line 423
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->newNativeGroupRecordWithoutGroupIndex(Landroid/content/ContentValues;)Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    move-result-object v0

    .line 424
    .local v0, records:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    iget v1, v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->index:I

    if-eqz v1, :cond_0

    .line 425
    const-string v1, "IccPhonebookProvider"

    const-string/jumbo v2, "index MUST be 0, provided group index will be ignored"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->index:I

    .line 429
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->write(Landroid/content/Context;Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)I

    move-result v1

    return v1
.end method

.method private newNativeGroupRecordWithoutGroupIndex(Landroid/content/ContentValues;)Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 435
    new-instance v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;-><init>()V

    .line 437
    .local v0, records:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    const/16 v1, 0x20

    iput v1, v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->device:I

    .line 438
    iput v2, v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->sync_cnt:I

    .line 439
    iput v2, v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->type:I

    .line 440
    iput v2, v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->ad_type:I

    .line 442
    iput v2, v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->gas_id:I

    .line 443
    iput v2, v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->index:I

    .line 444
    sget-object v1, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Group$Column;->NAME:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->name:Ljava/lang/String;

    .line 445
    iget-object v1, v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->name:Ljava/lang/String;

    .line 446
    :cond_0
    const-string v1, ""

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->number:Ljava/lang/String;

    .line 447
    const-string v1, ""

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->additional_number:Ljava/lang/String;

    .line 448
    const-string v1, ""

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->additional_number_a:Ljava/lang/String;

    .line 449
    const-string v1, ""

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->additional_number_b:Ljava/lang/String;

    .line 450
    const-string v1, ""

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->email_address:Ljava/lang/String;

    .line 452
    return-object v0
.end method

.method private newNativeRecordWithoutSimIndex(Landroid/content/ContentValues;)Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    .locals 11
    .parameter "values"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 235
    new-instance v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;-><init>()V

    .line 237
    .local v5, records:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    iput v8, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->device:I

    .line 238
    iput v8, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->sync_cnt:I

    .line 239
    iput v8, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->type:I

    .line 240
    iput v8, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->ad_type:I

    .line 245
    sget-object v6, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Entry$Column;->ALPHA_TAG:Ljava/lang/String;

    const-string v7, ""

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->name:Ljava/lang/String;

    .line 246
    iget-object v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->name:Ljava/lang/String;

    if-nez v6, :cond_0

    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->name:Ljava/lang/String;

    .line 248
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Entry$Column;->NUMBER:Ljava/lang/String;

    const-string v7, ""

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 250
    .local v4, number:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 251
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->number:Ljava/lang/String;

    .line 257
    :goto_0
    sget-object v6, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Entry$Column;->ANRS:Ljava/lang/String;

    const-string v7, ""

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, anrs:[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v6, v0

    if-nez v6, :cond_5

    .line 259
    :cond_1
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->additional_number:Ljava/lang/String;

    .line 260
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->additional_number_a:Ljava/lang/String;

    .line 261
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->additional_number_b:Ljava/lang/String;

    .line 304
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Entry$Column;->EMAILS:Ljava/lang/String;

    const-string v7, ""

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->getString(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "~"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, emails:[Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v6, v1

    if-nez v6, :cond_7

    .line 306
    :cond_3
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->email_address:Ljava/lang/String;

    .line 321
    :goto_1
    sget-object v6, Lcom/android/internal/telephony/IccPhonebookProvider$Contract$Entry$Column;->GROUP_INDEX:Ljava/lang/String;

    invoke-direct {p0, p1, v6, v8}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->getInt(Landroid/content/ContentValues;Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->gas_id:I

    .line 326
    return-object v5

    .line 253
    .end local v0           #anrs:[Ljava/lang/String;
    .end local v1           #emails:[Ljava/lang/String;
    :cond_4
    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->detectType(Ljava/lang/String;)I
    invoke-static {v4}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1500(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->type:I

    .line 254
    iget v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->type:I

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v4, v6, v9}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1600(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->number:Ljava/lang/String;

    goto :goto_0

    .line 271
    .restart local v0       #anrs:[Ljava/lang/String;
    :cond_5
    array-length v3, v0

    .line 274
    .local v3, length:I
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->additional_number:Ljava/lang/String;

    .line 275
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->additional_number_a:Ljava/lang/String;

    .line 276
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->additional_number_b:Ljava/lang/String;

    .line 278
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 279
    packed-switch v2, :pswitch_data_0

    .line 278
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 281
    :pswitch_0
    aget-object v6, v0, v8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 282
    aget-object v6, v0, v8

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->detectType(Ljava/lang/String;)I
    invoke-static {v6}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1500(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->ad_type:I

    .line 283
    aget-object v6, v0, v8

    iget v7, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->ad_type:I

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v6, v7, v9}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1600(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->additional_number:Ljava/lang/String;

    goto :goto_3

    .line 288
    :pswitch_1
    aget-object v6, v0, v9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 289
    aget-object v6, v0, v9

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->detectType(Ljava/lang/String;)I
    invoke-static {v6}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1500(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->ad_type:I

    .line 290
    aget-object v6, v0, v9

    iget v7, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->ad_type:I

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v6, v7, v9}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1600(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->additional_number_a:Ljava/lang/String;

    goto :goto_3

    .line 294
    :pswitch_2
    aget-object v6, v0, v10

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 295
    aget-object v6, v0, v10

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->detectType(Ljava/lang/String;)I
    invoke-static {v6}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1500(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->ad_type:I

    .line 296
    aget-object v6, v0, v10

    iget v7, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->ad_type:I

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v6, v7, v9}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1600(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->additional_number_b:Ljava/lang/String;

    goto :goto_3

    .line 315
    .end local v2           #i:I
    .end local v3           #length:I
    .restart local v1       #emails:[Ljava/lang/String;
    :cond_7
    aget-object v6, v1, v8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 316
    aget-object v6, v1, v8

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->email_address:Ljava/lang/String;

    goto/16 :goto_1

    .line 318
    :cond_8
    const-string v6, ""

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->email_address:Ljava/lang/String;

    goto/16 :goto_1

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private newQueryEntryCursor(Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)Landroid/database/Cursor;
    .locals 9
    .parameter "record"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 492
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->ENTRY_PROJECTION:[Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 493
    .local v1, cursor:Landroid/database/MatrixCursor;
    sget-object v3, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->ENTRY_PROJECTION:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [Ljava/lang/Object;

    .line 494
    .local v2, row:[Ljava/lang/Object;
    if-nez p1, :cond_0

    .line 495
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 496
    const-string v3, ""

    aput-object v3, v2, v4

    .line 497
    const-string v3, ""

    aput-object v3, v2, v6

    .line 498
    const-string v3, ""

    aput-object v3, v2, v7

    .line 499
    const-string v3, ""

    aput-object v3, v2, v8

    .line 500
    const/4 v3, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 524
    :goto_0
    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 525
    return-object v1

    .line 503
    :cond_0
    iget v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 504
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->name:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, ""

    :goto_1
    aput-object v3, v2, v4

    .line 505
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->number:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->type:I

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1600(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .local v0, anrs:Ljava/lang/StringBuilder;
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->additional_number:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->ad_type:I

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1600(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->additional_number_a:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v3, ""

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->additional_number_a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 510
    const-string/jumbo v3, "~"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->additional_number_a:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->ad_type:I

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1600(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    :cond_1
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->additional_number_b:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v3, ""

    iget-object v4, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->additional_number_b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 515
    const-string/jumbo v3, "~"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->additional_number_b:Ljava/lang/String;

    iget v4, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->ad_type:I

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->access$1600(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    .line 521
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->email_address:Ljava/lang/String;

    if-nez v3, :cond_4

    const-string v3, ""

    :goto_2
    aput-object v3, v2, v8

    .line 522
    const/4 v3, 0x5

    iget v4, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->gas_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    goto/16 :goto_0

    .line 504
    .end local v0           #anrs:Ljava/lang/StringBuilder;
    :cond_3
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->name:Ljava/lang/String;

    goto :goto_1

    .line 521
    .restart local v0       #anrs:Ljava/lang/StringBuilder;
    :cond_4
    iget-object v3, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->email_address:Ljava/lang/String;

    goto :goto_2
.end method

.method private newQueryGroupCursor(Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)Landroid/database/Cursor;
    .locals 6
    .parameter "record"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 531
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->GROUP_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 532
    .local v0, cursor:Landroid/database/MatrixCursor;
    if-nez p1, :cond_0

    .line 533
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, ""

    aput-object v2, v1, v4

    .line 536
    .local v1, row:[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 544
    :goto_0
    return-object v0

    .line 538
    .end local v1           #row:[Ljava/lang/Object;
    :cond_0
    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->name:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    :goto_1
    aput-object v2, v1, v4

    .line 541
    .restart local v1       #row:[Ljava/lang/Object;
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 538
    .end local v1           #row:[Ljava/lang/Object;
    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method private read(Landroid/content/Context;I)Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    .locals 3
    .parameter "context"
    .parameter "simIndex"

    .prologue
    .line 205
    new-instance v1, Lcom/android/internal/telephony/UsimService;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/UsimService;-><init>(Landroid/content/Context;)V

    .line 206
    .local v1, service:Lcom/android/internal/telephony/UsimService;
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UsimService;->registerCallback(Lcom/android/internal/telephony/IUsimInfoCallback;)V

    .line 208
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->reset()V
    invoke-static {v2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1300(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)V

    .line 209
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/telephony/UsimService;->PBMReadRecord(II)V

    .line 210
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->waitResult()Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1400(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;

    .line 211
    .local v0, result:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UsimService;->unregisterCallback(Lcom/android/internal/telephony/IUsimInfoCallback;)V

    .line 212
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    .line 213
    :cond_0
    const/4 v2, 0x0

    .line 216
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->getNativeRecord()Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    move-result-object v2

    goto :goto_0
.end method

.method private readGroup(Landroid/content/Context;I)Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    .locals 3
    .parameter "context"
    .parameter "groupIndex"

    .prologue
    .line 407
    new-instance v1, Lcom/android/internal/telephony/UsimService;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/UsimService;-><init>(Landroid/content/Context;)V

    .line 408
    .local v1, service:Lcom/android/internal/telephony/UsimService;
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UsimService;->registerCallback(Lcom/android/internal/telephony/IUsimInfoCallback;)V

    .line 410
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->reset()V
    invoke-static {v2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1300(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)V

    .line 411
    const/16 v2, 0x20

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/telephony/UsimService;->PBMReadRecord(II)V

    .line 412
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->waitResult()Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1400(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;

    .line 413
    .local v0, result:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UsimService;->unregisterCallback(Lcom/android/internal/telephony/IUsimInfoCallback;)V

    .line 414
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    .line 415
    :cond_0
    const/4 v2, 0x0

    .line 417
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->getNativeRecord()Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    move-result-object v2

    goto :goto_0
.end method

.method private update(Landroid/content/Context;ILandroid/content/ContentValues;)I
    .locals 4
    .parameter "context"
    .parameter "simIndex"
    .parameter "values"

    .prologue
    .line 376
    if-gtz p2, :cond_0

    .line 377
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid sim index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v1, 0x0

    .line 383
    :goto_0
    return v1

    .line 380
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->newNativeRecordWithoutSimIndex(Landroid/content/ContentValues;)Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    move-result-object v0

    .line 381
    .local v0, records:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    iput p2, v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->index:I

    .line 383
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->write(Landroid/content/Context;Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)I

    move-result v1

    goto :goto_0
.end method

.method private updateGroup(Landroid/content/Context;ILandroid/content/ContentValues;)I
    .locals 4
    .parameter "context"
    .parameter "groupIndex"
    .parameter "values"

    .prologue
    .line 458
    if-gtz p2, :cond_0

    .line 459
    const-string v1, "IccPhonebookProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid group index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v1, 0x0

    .line 465
    :goto_0
    return v1

    .line 462
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->newNativeGroupRecordWithoutGroupIndex(Landroid/content/ContentValues;)Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    move-result-object v0

    .line 463
    .local v0, records:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    iput p2, v0, Lcom/android/internal/telephony/gsm/LGE_PBM_Records;->index:I

    .line 465
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->write(Landroid/content/Context;Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)I

    move-result v1

    goto :goto_0
.end method

.method private write(Landroid/content/Context;Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)I
    .locals 5
    .parameter "context"
    .parameter "records"

    .prologue
    .line 332
    new-instance v1, Lcom/android/internal/telephony/UsimService;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/UsimService;-><init>(Landroid/content/Context;)V

    .line 333
    .local v1, service:Lcom/android/internal/telephony/UsimService;
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UsimService;->registerCallback(Lcom/android/internal/telephony/IUsimInfoCallback;)V

    .line 335
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->reset()V
    invoke-static {v2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1300(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)V

    .line 336
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/UsimService;->PBMWriteRecord(Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)V

    .line 337
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->waitResult()Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1400(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;

    .line 338
    .local v0, result:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;
    iget v2, v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->mReturnCode:I

    if-eqz v2, :cond_0

    .line 339
    const-string v2, "IccPhonebookProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "write failed? error code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->mReturnCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/UsimService;->unregisterCallback(Lcom/android/internal/telephony/IUsimInfoCallback;)V

    .line 343
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;->getIndex()I

    move-result v2

    .line 346
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onPBMDeleteCB(II)V
    .locals 2
    .parameter "retPbmResult"
    .parameter "deleteIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    new-instance v1, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;-><init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;II)V

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->notifyResult(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1700(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;Ljava/lang/Object;)V

    .line 554
    return-void
.end method

.method public onPBMInfoCB(Lcom/android/internal/telephony/gsm/LGE_PBM_Record_Info;)V
    .locals 3
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 559
    const-string v0, "IccPhonebookProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unplaned get info operation [info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-void
.end method

.method public onPBMReadCB(Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)V
    .locals 2
    .parameter "records"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    new-instance v1, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;-><init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)V

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->notifyResult(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1700(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;Ljava/lang/Object;)V

    .line 557
    return-void
.end method

.method public onPBMWriteCB(II)V
    .locals 2
    .parameter "retPbmResult"
    .parameter "writtenIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->mAsyncCallHandler:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;

    new-instance v1, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO$PBMResult;-><init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;II)V

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->notifyResult(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;->access$1700(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;Ljava/lang/Object;)V

    .line 551
    return-void
.end method
