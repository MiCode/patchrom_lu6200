.class public Lcom/android/internal/telephony/IccPhonebookProvider;
.super Landroid/content/ContentProvider;
.source "IccPhonebookProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;,
        Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;,
        Lcom/android/internal/telephony/IccPhonebookProvider$Contract;
    }
.end annotation


# static fields
.field private static final ADN_GROUP_INDEX:I = 0x1

.field private static final ADN_INDEX:I = 0x0

.field private static final ADN_INFO:I = 0x2

.field private static final ALLOWED_PACKAGE:[Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field private static final DEBUG_V:Z = false

.field private static final TAG:Ljava/lang/String; = "IccPhonebookProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;

.field private static final sBackend:Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 235
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 237
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "icc-phonebook"

    const-string v2, "adn/#"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "icc-phonebook"

    const-string v2, "adn/info"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 239
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string/jumbo v1, "icc-phonebook"

    const-string v2, "adn/group/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 244
    invoke-static {}, Lcom/android/internal/telephony/IccPhonebookProvider;->loadBackend()Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider;->sBackend:Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;

    .line 460
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.android.contacts"

    aput-object v1, v0, v3

    const-string v1, "com.lge.contacts.sim.test"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/IccPhonebookProvider;->ALLOWED_PACKAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 487
    return-void
.end method

.method private static dumpCallerPackage(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 477
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 478
    .local v5, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, callerPackages:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 480
    .local v1, callerPackage:Ljava/lang/String;
    const-string v6, "IccPhonebookProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "caller info| "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 482
    .end local v1           #callerPackage:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getIndexFromUrl(Landroid/net/Uri;)I
    .locals 5
    .parameter "url"

    .prologue
    .line 449
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, index:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 454
    .end local v1           #index:Ljava/lang/String;
    :goto_0
    return v2

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "IccPhonebookProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t extract index from url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isAllowedCallerPackage(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    .line 465
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 466
    .local v6, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, callerPackages:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    .line 468
    .local v1, callerPackage:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, index:I
    :goto_1
    sget-object v7, Lcom/android/internal/telephony/IccPhonebookProvider;->ALLOWED_PACKAGE:[Ljava/lang/String;

    array-length v7, v7

    if-ge v4, v7, :cond_1

    .line 469
    sget-object v7, Lcom/android/internal/telephony/IccPhonebookProvider;->ALLOWED_PACKAGE:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 470
    const/4 v7, 0x1

    .line 473
    .end local v1           #callerPackage:Ljava/lang/String;
    .end local v4           #index:I
    :goto_2
    return v7

    .line 468
    .restart local v1       #callerPackage:Ljava/lang/String;
    .restart local v4       #index:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 467
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 473
    .end local v1           #callerPackage:Ljava/lang/String;
    .end local v4           #index:I
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private static loadBackend()Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;
    .locals 7

    .prologue
    .line 249
    const/4 v2, 0x0

    .line 251
    .local v2, clz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    const-string v5, "com.android.internal.telephony.IccPhonebookProviderBackendImp"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 256
    :goto_0
    const/4 v1, 0x0

    .line 257
    .local v1, backend:Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;
    if-eqz v2, :cond_0

    .line 259
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 268
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 269
    new-instance v1, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;

    .end local v1           #backend:Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;
    invoke-direct {v1}, Lcom/android/internal/telephony/IccPhonebookProvider$IccPhonebookProviderBackendImp;-><init>()V

    .line 271
    .restart local v1       #backend:Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;
    :cond_1
    return-object v1

    .line 260
    :catch_0
    move-exception v3

    .line 261
    .local v3, e1:Ljava/lang/IllegalAccessException;
    const-string v5, "IccPhonebookProvider"

    const-string/jumbo v6, "illegal access"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 262
    .end local v3           #e1:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v4

    .line 263
    .local v4, e2:Ljava/lang/InstantiationException;
    const-string v5, "IccPhonebookProvider"

    const-string v6, "InstantiationException"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 252
    .end local v1           #backend:Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;
    .end local v4           #e2:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 374
    sget-object v4, Lcom/android/internal/telephony/IccPhonebookProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 402
    :goto_0
    return v2

    .line 376
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProvider;->getIndexFromUrl(Landroid/net/Uri;)I

    move-result v1

    .line 377
    .local v1, simIndex:I
    if-gtz v1, :cond_0

    .line 378
    const-string v3, "IccPhonebookProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid delete simIndex (url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/IccPhonebookProvider;->sBackend:Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhonebookProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;->deleteEntry(Landroid/content/Context;I)I

    move-result v4

    if-eq v1, v4, :cond_1

    .line 382
    const-string v3, "IccPhonebookProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requested delete simIndex("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is not matched to backend result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v2, v3

    .line 385
    goto :goto_0

    .line 388
    .end local v1           #simIndex:I
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProvider;->getIndexFromUrl(Landroid/net/Uri;)I

    move-result v0

    .line 389
    .local v0, groupIndex:I
    if-gtz v0, :cond_2

    .line 390
    const-string v3, "IccPhonebookProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid delete groupIndex (url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/IccPhonebookProvider;->sBackend:Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhonebookProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;->deleteGroup(Landroid/content/Context;I)I

    move-result v4

    if-eq v0, v4, :cond_3

    .line 394
    const-string v3, "IccPhonebookProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requested delete groupIndex("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is not matched to backend result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    move v2, v3

    .line 397
    goto/16 :goto_0

    .line 400
    .end local v0           #groupIndex:I
    :pswitch_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot delete URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 278
    sget-object v0, Lcom/android/internal/telephony/IccPhonebookProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 278
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const/4 v3, 0x0

    .line 333
    sget-object v4, Lcom/android/internal/telephony/IccPhonebookProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 362
    :goto_0
    return-object v3

    .line 335
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProvider;->getIndexFromUrl(Landroid/net/Uri;)I

    move-result v2

    .line 336
    .local v2, simIndex:I
    if-gtz v2, :cond_0

    .line 337
    const-string v4, "IccPhonebookProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid insert simIndex (url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/IccPhonebookProvider;->sBackend:Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhonebookProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5, v2, p2}, Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;->insertEntry(Landroid/content/Context;ILandroid/content/ContentValues;)I

    move-result v4

    if-eq v2, v4, :cond_1

    .line 341
    const-string v4, "IccPhonebookProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requested insert simIndex("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is not matched to backend result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 345
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "content://icc/adn/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 350
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v2           #simIndex:I
    :pswitch_1
    sget-object v4, Lcom/android/internal/telephony/IccPhonebookProvider;->sBackend:Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhonebookProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;->insertGroup(Landroid/content/Context;Landroid/content/ContentValues;)I

    move-result v1

    .line 351
    .local v1, groupIndex:I
    if-gtz v1, :cond_2

    .line 352
    const-string v4, "IccPhonebookProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requested insert groupIndex("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") is not matched to backend result"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 355
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "content://icc/adn/group/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .restart local v0       #buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_0

    .line 360
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v1           #groupIndex:I
    :pswitch_2
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot insert into URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    const/4 v2, 0x0

    .line 299
    sget-object v3, Lcom/android/internal/telephony/IccPhonebookProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 320
    :goto_0
    return-object v2

    .line 301
    :pswitch_0
    sget-object v2, Lcom/android/internal/telephony/IccPhonebookProvider;->sBackend:Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhonebookProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;->readInfo(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 304
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProvider;->getIndexFromUrl(Landroid/net/Uri;)I

    move-result v1

    .line 305
    .local v1, simIndex:I
    if-gtz v1, :cond_0

    .line 306
    const-string v3, "IccPhonebookProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invali query simIndex (url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/IccPhonebookProvider;->sBackend:Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhonebookProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;->readEntry(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 312
    .end local v1           #simIndex:I
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProvider;->getIndexFromUrl(Landroid/net/Uri;)I

    move-result v0

    .line 313
    .local v0, groupIndex:I
    if-gtz v0, :cond_1

    .line 314
    const-string v3, "IccPhonebookProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid query groupIndex (url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 317
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/IccPhonebookProvider;->sBackend:Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhonebookProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;->readGroup(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 414
    sget-object v4, Lcom/android/internal/telephony/IccPhonebookProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 442
    :goto_0
    return v2

    .line 416
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProvider;->getIndexFromUrl(Landroid/net/Uri;)I

    move-result v1

    .line 417
    .local v1, simIndex:I
    if-gtz v1, :cond_0

    .line 418
    const-string v3, "IccPhonebookProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid update simIndex (url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 421
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/IccPhonebookProvider;->sBackend:Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhonebookProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5, v1, p2}, Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;->updateEntry(Landroid/content/Context;ILandroid/content/ContentValues;)I

    move-result v4

    if-eq v1, v4, :cond_1

    .line 422
    const-string v3, "IccPhonebookProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requested update simIndex("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is not match to backend result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v2, v3

    .line 425
    goto :goto_0

    .line 428
    .end local v1           #simIndex:I
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhonebookProvider;->getIndexFromUrl(Landroid/net/Uri;)I

    move-result v0

    .line 429
    .local v0, groupIndex:I
    if-gtz v0, :cond_2

    .line 430
    const-string v3, "IccPhonebookProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid update groupIndex (url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 433
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/IccPhonebookProvider;->sBackend:Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhonebookProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5, v0, p2}, Lcom/android/internal/telephony/IccPhonebookProvider$IBackend;->updateGroup(Landroid/content/Context;ILandroid/content/ContentValues;)I

    move-result v4

    if-eq v0, v4, :cond_3

    .line 434
    const-string v3, "IccPhonebookProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requested update groupIndex("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is not matched to backend result"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    move v2, v3

    .line 437
    goto/16 :goto_0

    .line 440
    .end local v0           #groupIndex:I
    :pswitch_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot update URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
