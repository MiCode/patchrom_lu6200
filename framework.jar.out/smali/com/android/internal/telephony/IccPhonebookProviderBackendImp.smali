.class Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;
.super Ljava/lang/Object;
.source "IccPhonebookProviderBackendImp.java"

# interfaces
.implements Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$1;,
        Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$AsyncCallSynchronizer;,
        Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;,
        Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DEBUG_V:Z = false

.field private static final EMPTY_ENTRY:[Ljava/lang/Object; = null

.field private static final EMPTY_GROUP:[Ljava/lang/Object; = null

.field private static final EMPTY_INFO:[Ljava/lang/Object; = null

.field private static final STATUS_NOENTRY:I = 0x2

.field private static final SUPPORT_GROUP:Z = true

.field private static final TAG:Ljava/lang/String; = "IccPhonebookProvider"


# instance fields
.field private mIO:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;

.field private mInfo:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->INFO_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/16 v1, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 46
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    .line 47
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v4

    .line 48
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    .line 49
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    .line 50
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    .line 51
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 52
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 53
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 54
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/16 v1, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 55
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/16 v1, 0xa

    const-string v2, ""

    aput-object v2, v0, v1

    .line 56
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/16 v1, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 57
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/16 v1, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 58
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/16 v1, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 59
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    const/16 v1, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 60
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 65
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->ENTRY_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_ENTRY:[Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_ENTRY:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 67
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_ENTRY:[Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v4

    .line 68
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_ENTRY:[Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v5

    .line 69
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_ENTRY:[Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v6

    .line 70
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_ENTRY:[Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v7

    .line 71
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_ENTRY:[Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 76
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider$Contract;->GROUP_PROJECTION:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_GROUP:[Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_GROUP:[Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 78
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_GROUP:[Ljava/lang/Object;

    const-string v1, ""

    aput-object v1, v0, v4

    .line 79
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;-><init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->mIO:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;

    .line 84
    new-instance v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;-><init>(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->mInfo:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;

    .line 89
    const-string v0, "IccPhonebookProvider"

    const-string v1, "*** QCT IccPhonebookProvider ***"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v0, "IccPhonebookProvider"

    const-string/jumbo v1, "| SUPPORT_GROUP=true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method

.method static synthetic access$1500(Ljava/lang/String;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-static {p0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->detectType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 25
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->EMPTY_INFO:[Ljava/lang/Object;

    return-object v0
.end method

.method private static convertValidSeparators(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 6
    .parameter "number"
    .parameter "type"
    .parameter "inverse"

    .prologue
    const/16 v5, 0x2b

    .line 973
    if-nez p0, :cond_0

    .line 974
    const-string v4, ""

    .line 992
    :goto_0
    return-object v4

    .line 976
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 977
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 979
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 980
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 982
    .local v0, c:C
    if-eqz p2, :cond_2

    .line 989
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 979
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 985
    :cond_2
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    if-nez v1, :cond_1

    if-eq v0, v5, :cond_1

    .line 986
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 992
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static detectType(Ljava/lang/String;)I
    .locals 3
    .parameter "num"

    .prologue
    const/4 v0, 0x0

    .line 957
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 965
    :cond_0
    :goto_0
    return v0

    .line 961
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 962
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public deleteEntry(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "simIndex"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->mIO:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->delete(Landroid/content/Context;I)I
    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->access$600(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public deleteGroup(Landroid/content/Context;I)I
    .locals 1
    .parameter "context"
    .parameter "groupIndex"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->mIO:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->deleteGroup(Landroid/content/Context;I)I
    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->access$1100(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public insertEntry(Landroid/content/Context;ILandroid/content/ContentValues;)I
    .locals 1
    .parameter "context"
    .parameter "simIndex"
    .parameter "values"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->mIO:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->insert(Landroid/content/Context;ILandroid/content/ContentValues;)I
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->access$400(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;ILandroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public insertGroup(Landroid/content/Context;Landroid/content/ContentValues;)I
    .locals 1
    .parameter "context"
    .parameter "values"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->mIO:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->insertGroup(Landroid/content/Context;Landroid/content/ContentValues;)I
    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->access$900(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public readEntry(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 2
    .parameter "context"
    .parameter "simIndex"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->mIO:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->read(Landroid/content/Context;I)Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    invoke-static {v1, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->access$200(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;I)Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    move-result-object v0

    .line 105
    .local v0, record:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->mIO:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->newQueryEntryCursor(Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)Landroid/database/Cursor;
    invoke-static {v1, v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->access$300(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public readGroup(Landroid/content/Context;I)Landroid/database/Cursor;
    .locals 2
    .parameter "context"
    .parameter "groupIndex"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->mIO:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->readGroup(Landroid/content/Context;I)Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    invoke-static {v1, p1, p2}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->access$700(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;I)Lcom/android/internal/telephony/gsm/LGE_PBM_Records;

    move-result-object v0

    .line 134
    .local v0, record:Lcom/android/internal/telephony/gsm/LGE_PBM_Records;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->mIO:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->newQueryGroupCursor(Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)Landroid/database/Cursor;
    invoke-static {v1, v0}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->access$800(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Lcom/android/internal/telephony/gsm/LGE_PBM_Records;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public readInfo(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->mInfo:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->read(Landroid/content/Context;)Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;->access$100(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctInfo;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public updateEntry(Landroid/content/Context;ILandroid/content/ContentValues;)I
    .locals 1
    .parameter "context"
    .parameter "simIndex"
    .parameter "values"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->mIO:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->update(Landroid/content/Context;ILandroid/content/ContentValues;)I
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->access$500(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;ILandroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method public updateGroup(Landroid/content/Context;ILandroid/content/ContentValues;)I
    .locals 1
    .parameter "context"
    .parameter "groupIndex"
    .parameter "values"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp;->mIO:Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;

    #calls: Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->updateGroup(Landroid/content/Context;ILandroid/content/ContentValues;)I
    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;->access$1000(Lcom/android/internal/telephony/IccPhonebookProviderBackendImp$qctIO;Landroid/content/Context;ILandroid/content/ContentValues;)I

    move-result v0

    return v0
.end method
