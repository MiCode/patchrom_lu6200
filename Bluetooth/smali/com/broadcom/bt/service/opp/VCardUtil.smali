.class public Lcom/broadcom/bt/service/opp/VCardUtil;
.super Ljava/lang/Object;
.source "VCardUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;,
        Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;,
        Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;,
        Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;,
        Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;
    }
.end annotation


# static fields
.field private static final MULTI_VCARD_URI:Ljava/lang/String;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mContext:Landroid/content/Context;

.field private mDefaultVcardType:I

.field private mReadThread:Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 357
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/broadcom/bt/service/opp/VCardUtil;->MULTI_VCARD_URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 390
    sget v0, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    invoke-direct {p0, p1, v0}, Lcom/broadcom/bt/service/opp/VCardUtil;-><init>(Landroid/content/Context;I)V

    .line 391
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "ctx"
    .parameter "defaultVCardType"

    .prologue
    .line 393
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mContext:Landroid/content/Context;

    .line 395
    iput p2, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mDefaultVcardType:I

    .line 396
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/opp/VCardUtil;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/opp/VCardUtil;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mDefaultVcardType:I

    return v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/service/opp/VCardUtil;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Z
    .locals 4
    .parameter "ctx"
    .parameter "f"
    .parameter "uri"

    .prologue
    .line 490
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/broadcom/bt/service/opp/VCardUtil;->MULTI_VCARD_URI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/opp/VCardUtil;->createFileFromVcardUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Z

    move-result v1

    .line 498
    :goto_0
    return v1

    .line 493
    :cond_0
    invoke-static {p0, p2}, Lcom/broadcom/bt/service/opp/VCardUtil;->getContactAsVcardUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 494
    .local v0, vcardUri:Landroid/net/Uri;
    const-string v1, "OPP.VCardReadThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VCardURI = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    if-nez v0, :cond_1

    .line 496
    const/4 v1, 0x0

    goto :goto_0

    .line 498
    :cond_1
    invoke-static {p0, p1, v0}, Lcom/broadcom/bt/service/opp/VCardUtil;->createFileFromVcardUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Z

    move-result v1

    goto :goto_0
.end method

.method public static createFileFromVcardUri(Landroid/content/Context;Ljava/io/File;Landroid/net/Uri;)Z
    .locals 10
    .parameter "ctx"
    .parameter "f"
    .parameter "uri"

    .prologue
    const/4 v7, 0x0

    .line 508
    const/4 v4, 0x0

    .line 509
    .local v4, hasError:Z
    const/4 v5, 0x0

    .line 510
    .local v5, ios:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 512
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 513
    if-nez v5, :cond_1

    move v7, v4

    .line 550
    :cond_0
    :goto_0
    return v7

    .line 516
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 517
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 519
    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 521
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    if-nez v3, :cond_3

    .line 523
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    move v7, v4

    .line 525
    goto :goto_0

    .line 529
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_3
    const/16 v8, 0x7d0

    new-array v0, v8, [B

    .line 530
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 531
    .local v1, bytesRead:I
    :cond_4
    :goto_1
    const/4 v8, 0x0

    const/16 v9, 0x7d0

    invoke-virtual {v5, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_7

    .line 532
    if-lez v1, :cond_4

    .line 533
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 536
    .end local v0           #buf:[B
    .end local v1           #bytesRead:I
    :catch_0
    move-exception v6

    move-object v2, v3

    .line 537
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .local v6, t:Ljava/lang/Throwable;
    :goto_2
    const/4 v4, 0x1

    .line 538
    const-string v8, "OPP.VCardReadThread"

    const-string v9, "Unable to open content stream for multi-vcard"

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    .end local v6           #t:Ljava/lang/Throwable;
    :goto_3
    if-eqz v5, :cond_5

    .line 542
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 545
    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    .line 547
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 550
    :cond_6
    :goto_5
    if-nez v4, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #buf:[B
    .restart local v1       #bytesRead:I
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_7
    move-object v2, v3

    .line 539
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 543
    .end local v0           #buf:[B
    .end local v1           #bytesRead:I
    :catch_1
    move-exception v8

    goto :goto_4

    .line 548
    :catch_2
    move-exception v8

    goto :goto_5

    .line 536
    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method private static getContactAsVcardUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 9
    .parameter "ctx"
    .parameter "uri"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 555
    if-nez p1, :cond_1

    move-object p1, v6

    .line 585
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 559
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    .line 560
    .local v3, paths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 561
    .local v2, pathSize:I
    if-lt v2, v7, :cond_3

    .line 562
    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 564
    .local v1, path1:Ljava/lang/String;
    const-string v5, "as_vcard"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "vcard"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "myprofile"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 571
    const-string v5, "lookup"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 572
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 577
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, p1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 578
    .local v0, lookupUri:Landroid/net/Uri;
    if-eqz v0, :cond_3

    .line 579
    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x2

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v7, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 581
    .end local v0           #lookupUri:Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 582
    .local v4, t:Ljava/lang/Throwable;
    const-string v5, "OPP.VCardReadThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to get lookup uri from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1           #path1:Ljava/lang/String;
    .end local v4           #t:Ljava/lang/Throwable;
    :cond_3
    move-object p1, v6

    .line 585
    goto :goto_0
.end method


# virtual methods
.method public cancelStoreVCard()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mReadThread:Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mReadThread:Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->cancel()V

    .line 483
    :cond_0
    return-void
.end method

.method public getOrCreateStoreVCardThread(Ljava/lang/String;ILcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;)Ljava/lang/Thread;
    .locals 4
    .parameter "filePath"
    .parameter "defaultDupAction"
    .parameter "progressHandler"

    .prologue
    const/4 v1, 0x0

    .line 417
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mReadThread:Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;

    if-nez v2, :cond_1

    .line 418
    new-instance v2, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;-><init>(Lcom/broadcom/bt/service/opp/VCardUtil;)V

    iput-object v2, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mReadThread:Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;

    .line 424
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 425
    .local v0, fileUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mReadThread:Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;

    invoke-virtual {v2, v0, p2, v1, p3}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->init(Landroid/net/Uri;ILjava/util/Iterator;Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;)V

    .line 426
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mReadThread:Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;

    .end local v0           #fileUri:Landroid/net/Uri;
    :goto_0
    return-object v1

    .line 419
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mReadThread:Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;

    #getter for: Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mIsRunning:Z
    invoke-static {v2}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->access$300(Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    const-string v2, "OPP.VCardReadThread"

    const-string v3, "ERROR: read thread running!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getOrCreateStoreVCardThread(Ljava/lang/String;Ljava/util/Iterator;Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;)Ljava/lang/Thread;
    .locals 3
    .parameter "filePath"
    .parameter
    .parameter "progressHandler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;",
            ">;",
            "Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;",
            ")",
            "Ljava/lang/Thread;"
        }
    .end annotation

    .prologue
    .line 453
    .local p2, dupActions:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 454
    .local v0, fileUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mReadThread:Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;

    if-nez v1, :cond_1

    .line 455
    new-instance v1, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;-><init>(Lcom/broadcom/bt/service/opp/VCardUtil;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mReadThread:Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mReadThread:Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2, p3}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->init(Landroid/net/Uri;ILjava/util/Iterator;Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;)V

    .line 461
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mReadThread:Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;

    :goto_0
    return-object v1

    .line 456
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mReadThread:Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;

    #getter for: Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mIsRunning:Z
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->access$300(Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    const-string v1, "OPP.VCardReadThread"

    const-string v2, "ERROR: read thread running!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public storeVCard(Ljava/lang/String;ILcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;Landroid/os/Handler;)Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;
    .locals 3
    .parameter "filePath"
    .parameter "defaultDupAction"
    .parameter "progressHandler"
    .parameter "asyncHandler"

    .prologue
    const/4 v0, 0x0

    .line 437
    invoke-virtual {p0, p1, p2, p3}, Lcom/broadcom/bt/service/opp/VCardUtil;->getOrCreateStoreVCardThread(Ljava/lang/String;ILcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;)Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_0

    .line 438
    const-string v1, "OPP.VCardReadThread"

    const-string v2, "Unable to create read thread!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :goto_0
    return-object v0

    .line 442
    :cond_0
    if-eqz p4, :cond_1

    .line 443
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mReadThread:Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;

    invoke-virtual {p4, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mReadThread:Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->run()V

    .line 447
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil;->mReadThread:Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->getResult()Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    move-result-object v0

    goto :goto_0
.end method
