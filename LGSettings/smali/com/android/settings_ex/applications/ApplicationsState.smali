.class public Lcom/android/settings_ex/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;,
        Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;,
        Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;,
        Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;,
        Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_SD_CARD_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

.field static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final THIRD_PARTY_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

.field static sInstance:Lcom/android/settings_ex/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurCallbacks:Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurId:J

.field final mEntriesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mInterestingConfigChanges:Lcom/android/settings_ex/applications/InterestingConfigChanges;

.field final mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

.field mPackageIntentReceiver:Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;

.field mRebuildAsync:Z

.field mRebuildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildFilter:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

.field mRebuildRequested:Z

.field mRebuildResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mRebuildSync:Ljava/lang/Object;

.field mResumed:Z

.field final mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 4
    .parameter "app"

    .prologue
    const-wide/16 v1, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings_ex/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settings_ex/applications/InterestingConfigChanges;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    iput-wide v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurId:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/settings_ex/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    iput-object p1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 379
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationsState.Loader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/settings_ex/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    :try_start_1
    monitor-exit v1

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 401
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getInstance(Landroid/app/Application;)Lcom/android/settings_ex/applications/ApplicationsState;
    .locals 2
    .parameter "app"

    .prologue
    sget-object v1, Lcom/android/settings_ex/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->sInstance:Lcom/android/settings_ex/applications/ApplicationsState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->sInstance:Lcom/android/settings_ex/applications/ApplicationsState;

    :cond_0
    sget-object v0, Lcom/android/settings_ex/applications/ApplicationsState;->sInstance:Lcom/android/settings_ex/applications/ApplicationsState;

    monitor-exit v1

    return-object v0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .parameter "ps"

    .prologue
    .line 702
    if-eqz p1, :cond_0

    .line 703
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    .line 706
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method private getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .parameter "ps"

    .prologue
    .line 695
    if-eqz p1, :cond_0

    .line 696
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    .line 698
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 65
    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, tmp:Ljava/lang/String;
    sget-object v1, Lcom/android/settings_ex/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 621
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 634
    monitor-exit v2

    goto :goto_0

    .line 647
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 648
    :catch_0
    move-exception v1

    goto :goto_0

    .line 636
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2200

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, info:Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method ensureIcon(Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    iget-object v0, p1, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    .line 583
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getEntry(Ljava/lang/String;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .locals 5
    .parameter "packageName"

    .prologue
    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .local v0, entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 566
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    monitor-exit v4

    return-object v0

    .line 564
    .restart local v1       #i:I
    .restart local v2       #info:Landroid/content/pm/ApplicationInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .locals 6
    .parameter "info"

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .local v0, entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .end local v0           #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurId:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .restart local v0       #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method handleRebuildList()V
    .locals 11

    .prologue
    iget-object v9, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-boolean v8, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildRequested:Z

    if-nez v8, :cond_0

    monitor-exit v9

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildFilter:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    .local v3, filter:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildComparator:Ljava/util/Comparator;

    .local v1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildRequested:Z

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildFilter:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildComparator:Ljava/util/Comparator;

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, -0x2

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;->init()V

    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, filteredApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 526
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 527
    .local v6, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_2

    invoke-interface {v3, v6}, Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_2
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    move-result-object v2

    .local v2, entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    iget-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v2           #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    .end local v3           #filter:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;
    .end local v4           #filteredApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    .end local v5           #i:I
    .end local v6           #info:Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .restart local v1       #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    .restart local v3       #filter:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;
    :catchall_1
    move-exception v8

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v8

    .line 535
    .restart local v0       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v4       #filteredApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    .restart local v5       #i:I
    .restart local v6       #info:Landroid/content/pm/ApplicationInfo;
    :catchall_2
    move-exception v8

    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v8

    .end local v6           #info:Landroid/content/pm/ApplicationInfo;
    :cond_4
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v9, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v9

    :try_start_6
    iget-boolean v8, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildRequested:Z

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildAsync:Z

    if-nez v8, :cond_6

    iput-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildResult:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    :cond_5
    :goto_2
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/16 v8, 0xa

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    :cond_6
    :try_start_7
    iget-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v4}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 550
    .local v7, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    invoke-virtual {v8, v7}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 554
    .end local v7           #msg:Landroid/os/Message;
    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v8
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;)I
    .locals 2
    .parameter "pkgName"

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 616
    .end local v0           #i:I
    :goto_1
    return v0

    .line 611
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 616
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method invalidatePackage(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->removePackage(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method pause()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mResumed:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebuild(Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 10
    .parameter "filter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;>;"
    iget-object v5, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v5

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildRequested:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildAsync:Z

    iput-object p1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildFilter:Lcom/android/settings_ex/applications/ApplicationsState$AppFilter;

    iput-object p2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildComparator:Ljava/util/Comparator;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildResult:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0xfa

    add-long v2, v6, v8

    .local v2, waitend:J
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildResult:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .local v0, now:J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .end local v0           #now:J
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildAsync:Z

    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildResult:Ljava/util/ArrayList;

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    .line 486
    .restart local v0       #now:J
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    sub-long v6, v2, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v4

    goto :goto_0

    .line 494
    .end local v0           #now:J
    .end local v2           #waitend:J
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public release()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removePackage(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v1

    .local v1, idx:I
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .local v0, entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mMainHandler:Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .end local v0           #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    :cond_1
    monitor-exit v3

    return-void

    .end local v1           #idx:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method requestSize(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    iget-object v2, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .local v0, entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    :cond_0
    monitor-exit v2

    return-void

    .end local v0           #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resume(Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;)V
    .locals 6
    .parameter "callbacks"

    .prologue
    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iput-object p1, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings_ex/applications/ApplicationsState$Callbacks;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mResumed:Z

    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settings_ex/applications/ApplicationsState;Lcom/android/settings_ex/applications/ApplicationsState$1;)V

    iput-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v3}, Lcom/android/settings_ex/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x2200

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settings_ex/applications/InterestingConfigChanges;

    iget-object v5, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 437
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_5

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_5

    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 443
    .restart local v2       #info:Landroid/content/pm/ApplicationInfo;
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v5, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    .local v0, entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_3

    iput-object v2, v0, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_1

    .end local v0           #entry:Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 448
    .restart local v1       #i:I
    :cond_6
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    :cond_7
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method sumCacheSizes()J
    .locals 7

    .prologue
    const-wide/16 v1, 0x0

    .local v1, sum:J
    iget-object v4, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/ApplicationsState$AppEntry;

    iget-wide v5, v3, Lcom/android/settings_ex/applications/ApplicationsState$SizeInfo;->cacheSize:J

    add-long/2addr v1, v5

    .line 602
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 606
    :cond_0
    monitor-exit v4

    .line 607
    return-wide v1

    .line 606
    .end local v0           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
