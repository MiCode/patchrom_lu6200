.class public Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;
.super Ljava/lang/Object;
.source "LGE_MMS_HiddenConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmsHiddenPrefProvider"

.field private static mAnony_spam_set:Z

.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static mContext:Landroid/content/Context;

.field private static mCursor:Landroid/database/Cursor;

.field private static mSmscodeSet:Ljava/lang/String;

.field private static mSpam_set:Z


# instance fields
.field private final mMMSHiddenObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mSpam_set:Z

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mAnony_spam_set:Z

    .line 17
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mSmscodeSet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig$1;-><init>(Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mMMSHiddenObserver:Landroid/database/ContentObserver;

    .line 32
    sput-object p1, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p0}, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->loadHiddenPrefSettings()V

    .line 34
    sget-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MmsHidden;->MMSHIDDENPREF_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mMMSHiddenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 35
    return-void
.end method


# virtual methods
.method public destory(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 38
    sget-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mMMSHiddenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    const-string v0, "MmsHiddenPrefProvider"

    const-string v1, "LGE_MMS_HiddenConfig destory null error!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAnonySpamSetState()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mAnony_spam_set:Z

    return v0
.end method

.method public getSmsCodeSet()Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 57
    .local v1, getSmscodeSet:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mSmscodeSet:Ljava/lang/String;

    const/16 v3, 0x3e8

    invoke-static {v3}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const/16 v2, 0x3e8

    invoke-static {v2}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    :goto_0
    return-object v1

    .line 59
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mSmscodeSet:Ljava/lang/String;

    const/16 v3, 0x26

    invoke-static {v3}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    const/16 v2, 0x26

    invoke-static {v2}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 62
    :cond_1
    const/16 v2, 0x26

    invoke-static {v2}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "MmsHiddenPrefProvider"

    const-string v3, "Unsupported encoding"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSpamSetState()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mSpam_set:Z

    return v0
.end method

.method public loadHiddenPrefSettings()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 71
    sget-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mContentResolver:Landroid/content/ContentResolver;

    .line 72
    const-string v0, "MmsHiddenPrefProvider"

    const-string v1, "MmsHiddenConfig.loadHiddenPrefSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MmsHidden;->MMSHIDDENPREF_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mCursor:Landroid/database/Cursor;

    .line 76
    const-string v0, "MmsHiddenPrefProvider"

    const-string/jumbo v1, "line 127 : mContentResolver.query(MmsHidden.MMSHIDDENPREF_URI, null, null, null, null)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 90
    sget-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mCursor:Landroid/database/Cursor;

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_0
    return-void

    .line 80
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 81
    const-string v0, "MmsHiddenPrefProvider"

    const-string/jumbo v1, "line 129 : mCursor.moveToFirst()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mCursor:Landroid/database/Cursor;

    sget-object v1, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "spam_set"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v7, :cond_2

    move v0, v7

    :goto_1
    sput-boolean v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mSpam_set:Z

    .line 83
    sget-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mCursor:Landroid/database/Cursor;

    sget-object v1, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mCursor:Landroid/database/Cursor;

    const-string v2, "anony_spam_set"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v7, :cond_3

    move v0, v7

    :goto_2
    sput-boolean v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mAnony_spam_set:Z

    .line 84
    sget-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mCursor:Landroid/database/Cursor;

    sget-object v1, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "smscodeset"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mSmscodeSet:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 90
    sget-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    :cond_2
    move v0, v8

    .line 82
    goto :goto_1

    :cond_3
    move v0, v8

    .line 83
    goto :goto_2

    .line 85
    :catch_0
    move-exception v6

    .line 86
    .local v6, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "MmsHiddenPrefProvider"

    const-string/jumbo v1, "loadHiddenPrefSettings().Database Exception error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v0, "MmsHiddenPrefProvider"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    sget-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mCursor:Landroid/database/Cursor;

    goto :goto_0

    .line 90
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_4

    .line 92
    sget-object v1, Lcom/android/internal/telephony/LGE_MMS_HiddenConfig;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 90
    :cond_4
    throw v0
.end method
