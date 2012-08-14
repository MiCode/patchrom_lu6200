.class Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;
.super Ljava/lang/Object;
.source "IccPhonebookProvider.java"

# interfaces
.implements Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhonebookProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IccPhonebookProviderBackendImp"
.end annotation


# static fields
.field private static final EMPTY_ENTRY:[Ljava/lang/Object; = null

.field private static final EMPTY_GROUP:[Ljava/lang/Object; = null

.field private static final EMPTY_INFO:[Ljava/lang/Object; = null

.field private static final TAG:Ljava/lang/String; = "IccPhonebookProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 493
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    .line 494
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 495
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    .line 496
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v4

    .line 497
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 498
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    .line 499
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    .line 500
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 501
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 502
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 503
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/16 v1, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 504
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/16 v1, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 505
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/16 v1, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 506
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/16 v1, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 507
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/16 v1, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 508
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/16 v1, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 509
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/16 v1, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 514
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->ENTRY_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_ENTRY:[Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_ENTRY:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 516
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_ENTRY:[Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v4

    .line 517
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_ENTRY:[Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v5

    .line 518
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_ENTRY:[Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v6

    .line 519
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_ENTRY:[Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v7

    .line 520
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_ENTRY:[Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 525
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->GROUP_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_GROUP:[Ljava/lang/Object;

    .line 526
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_GROUP:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 527
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_GROUP:[Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v4

    .line 528
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 532
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 533
    const-string v0, "IccPhonebookProvider"

    const-string v1, "*** NoSim IccPhonebookProvider ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-void
.end method


# virtual methods
.method public deleteEntry(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "simIndex"

    .prologue
    .line 574
    const/4 v0, 0x0

    return v0
.end method

.method public deleteGroup(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "groupIndex"

    .prologue
    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public insertEntry(Landroid/content/Context;ILandroid/content/ContentValues;)I
    .locals 1
    .parameter "context"
    .parameter "simIndex"
    .parameter "values"

    .prologue
    .line 560
    const/4 v0, 0x0

    return v0
.end method

.method public insertGroup(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 1
    .parameter "context"
    .parameter "values"

    .prologue
    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public readEntry(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 2
    .parameter "context"
    .parameter "simIndex"

    .prologue
    .line 550
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->ENTRY_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 551
    .local v0, cursor:Landroid/database/MatrixCursor;
    sget-object v1, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_ENTRY:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 553
    return-object v0
.end method

.method public readGroup(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 2
    .parameter "context"
    .parameter "groupIndex"

    .prologue
    .line 581
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->ENTRY_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 582
    .local v0, cursor:Landroid/database/MatrixCursor;
    sget-object v1, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_GROUP:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 584
    return-object v0
.end method

.method public readInfo(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 2
    .parameter "Context"

    .prologue
    .line 540
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 541
    .local v0, cursor:Landroid/database/MatrixCursor;
    sget-object v1, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 543
    return-object v0
.end method

.method public updateEntry(Landroid/content/Context;ILandroid/content/ContentValues;)I
    .locals 1
    .parameter "context"
    .parameter "simIndex"
    .parameter "values"

    .prologue
    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method public updateGroup(Landroid/content/Context;ILandroid/content/ContentValues;)I
    .locals 1
    .parameter "context"
    .parameter "groupIndex"
    .parameter "values"

    .prologue
    .line 598
    const/4 v0, 0x0

    return v0
.end method
