.class Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;
.super Ljava/lang/Thread;
.source "VCardUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/opp/VCardUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardReadThread"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mDefaultDupAction:I

.field private mDoCountOnly:Z

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

.field private mIsRunning:Z

.field private mProgressHandler:Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;

.field private mResolver:Landroid/content/ContentResolver;

.field private mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

.field private mTempFile:Ljava/io/File;

.field private mUri:Landroid/net/Uri;

.field private mVCardParser:Lcom/android/vcard/VCardParser;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/broadcom/bt/service/opp/VCardUtil;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/opp/VCardUtil;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCardUtil;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 118
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->init()V

    .line 119
    return-void
.end method

.method static synthetic access$300(Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mIsRunning:Z

    return v0
.end method

.method private doActuallyReadOneVCard(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;Lcom/android/vcard/VCardSourceDetector;Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;)V
    .locals 10
    .parameter "uri"
    .parameter "account"
    .parameter "charset"
    .parameter "detector"
    .parameter "result"

    .prologue
    .line 281
    if-nez p3, :cond_0

    .line 282
    const-string p3, "UTF-8"

    .line 284
    :cond_0
    new-instance v8, Lcom/android/vcard/VCardEntryConstructor;

    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCardUtil;

    #getter for: Lcom/broadcom/bt/service/opp/VCardUtil;->mDefaultVcardType:I
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/VCardUtil;->access$100(Lcom/broadcom/bt/service/opp/VCardUtil;)I

    move-result v1

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCardUtil;

    #getter for: Lcom/broadcom/bt/service/opp/VCardUtil;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/broadcom/bt/service/opp/VCardUtil;->access$200(Lcom/broadcom/bt/service/opp/VCardUtil;)Landroid/accounts/Account;

    move-result-object v2

    invoke-direct {v8, v1, v2, p3}, Lcom/android/vcard/VCardEntryConstructor;-><init>(ILandroid/accounts/Account;Ljava/lang/String;)V

    .line 286
    .local v8, builder:Lcom/android/vcard/VCardEntryConstructor;
    new-instance v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;

    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCardUtil;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mDefaultDupAction:I

    iget-object v4, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mDupActions:Ljava/util/Iterator;

    iget-object v5, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget-object v6, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;

    invoke-direct/range {v0 .. v6}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;-><init>(Lcom/broadcom/bt/service/opp/VCardUtil;Landroid/content/ContentResolver;ILjava/util/Iterator;Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;)V

    .line 287
    .local v0, committer:Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupEntryCommitter;
    invoke-virtual {v8, v0}, Lcom/android/vcard/VCardEntryConstructor;->addEntryHandler(Lcom/android/vcard/VCardEntryHandler;)V

    .line 289
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, v8

    move-object v5, p4

    move-object v7, p5

    :try_start_0
    invoke-direct/range {v1 .. v7}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->readOneVCardFile(Landroid/net/Uri;Ljava/lang/String;Lcom/android/vcard/VCardInterpreter;Lcom/android/vcard/VCardSourceDetector;ZLcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;)V
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v9

    .line 291
    .local v9, e:Lcom/android/vcard/exception/VCardNestedException;
    const-string v1, "OPP.VCardUtil"

    const-string v2, "Never reach here."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p5, v9}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->setError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private finish()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 267
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mTempFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mTempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const-string v0, "OPP.VCardUtil"

    const-string v1, "Failed to delete a cache file."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mTempFile:Ljava/io/File;

    .line 273
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mIsRunning:Z

    .line 274
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCardUtil;

    #getter for: Lcom/broadcom/bt/service/opp/VCardUtil;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/VCardUtil;->access$000(Lcom/broadcom/bt/service/opp/VCardUtil;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    .line 134
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCardUtil;

    #getter for: Lcom/broadcom/bt/service/opp/VCardUtil;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/broadcom/bt/service/opp/VCardUtil;->access$000(Lcom/broadcom/bt/service/opp/VCardUtil;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 136
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "OPP.VCardUtil"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 139
    return-void
.end method

.method private onError(Landroid/net/Uri;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "targetUri"
    .parameter "t"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    invoke-virtual {v0, p2}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->setError(Ljava/lang/Throwable;)V

    .line 115
    return-void
.end method

.method private readOneVCardFile(Landroid/net/Uri;Ljava/lang/String;Lcom/android/vcard/VCardInterpreter;Lcom/android/vcard/VCardSourceDetector;ZLcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;)V
    .locals 8
    .parameter "uri"
    .parameter "charset"
    .parameter "builder"
    .parameter "detector"
    .parameter "throwNestedException"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardNestedException;
        }
    .end annotation

    .prologue
    .line 302
    :try_start_0
    iget-object v5, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 303
    .local v4, is:Ljava/io/InputStream;
    new-instance v6, Lcom/android/vcard/VCardParser_V21;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v5

    :goto_0
    invoke-direct {v6, v5}, Lcom/android/vcard/VCardParser_V21;-><init>(I)V

    iput-object v6, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_5

    .line 306
    :try_start_1
    iget-object v5, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v5, v4, p3}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    if-eqz v4, :cond_0

    .line 327
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_2 .. :try_end_2} :catch_5

    .line 343
    .end local v4           #is:Ljava/io/InputStream;
    :cond_0
    :goto_1
    return-void

    .line 303
    .restart local v4       #is:Ljava/io/InputStream;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v2

    .line 309
    .local v2, e1:Lcom/android/vcard/exception/VCardVersionException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 312
    :goto_2
    :try_start_4
    instance-of v5, p3, Lcom/android/vcard/VCardEntryConstructor;

    if-eqz v5, :cond_2

    .line 314
    move-object v0, p3

    check-cast v0, Lcom/android/vcard/VCardEntryConstructor;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/vcard/VCardEntryConstructor;->clear()V

    .line 316
    :cond_2
    iget-object v5, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .line 319
    :try_start_5
    new-instance v5, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v5}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    iput-object v5, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    .line 320
    iget-object v5, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v5, v4, p3}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;Lcom/android/vcard/VCardInterpreter;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_5 .. :try_end_5} :catch_2

    .line 325
    if-eqz v4, :cond_0

    .line 327
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_1

    .line 328
    .end local v2           #e1:Lcom/android/vcard/exception/VCardVersionException;
    :catch_1
    move-exception v5

    goto :goto_1

    .line 321
    .restart local v2       #e1:Lcom/android/vcard/exception/VCardVersionException;
    :catch_2
    move-exception v3

    .line 322
    .local v3, e2:Lcom/android/vcard/exception/VCardVersionException;
    :try_start_7
    new-instance v5, Lcom/android/vcard/exception/VCardException;

    const-string v6, "vCard with unspported version."

    invoke-direct {v5, v6}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 325
    .end local v2           #e1:Lcom/android/vcard/exception/VCardVersionException;
    .end local v3           #e2:Lcom/android/vcard/exception/VCardVersionException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_3

    .line 327
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_8 .. :try_end_8} :catch_5

    .line 325
    :cond_3
    :goto_3
    :try_start_9
    throw v5
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/android/vcard/exception/VCardNotSupportedException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_9 .. :try_end_9} :catch_5

    .line 332
    .end local v4           #is:Ljava/io/InputStream;
    :catch_3
    move-exception v1

    .line 333
    .local v1, e:Ljava/io/IOException;
    const-string v5, "OPP.VCardUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException was emitted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {p6, v1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->setError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 335
    .end local v1           #e:Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 336
    .local v1, e:Lcom/android/vcard/exception/VCardNotSupportedException;
    instance-of v5, v1, Lcom/android/vcard/exception/VCardNestedException;

    if-eqz v5, :cond_4

    if-eqz p5, :cond_4

    .line 337
    check-cast v1, Lcom/android/vcard/exception/VCardNestedException;

    .end local v1           #e:Lcom/android/vcard/exception/VCardNotSupportedException;
    throw v1

    .line 339
    .restart local v1       #e:Lcom/android/vcard/exception/VCardNotSupportedException;
    :cond_4
    invoke-virtual {p6, v1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->setError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 340
    .end local v1           #e:Lcom/android/vcard/exception/VCardNotSupportedException;
    :catch_5
    move-exception v1

    .line 341
    .local v1, e:Lcom/android/vcard/exception/VCardException;
    invoke-virtual {p6, v1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->setError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 310
    .end local v1           #e:Lcom/android/vcard/exception/VCardException;
    .restart local v2       #e1:Lcom/android/vcard/exception/VCardVersionException;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_6
    move-exception v5

    goto :goto_2

    .line 328
    .end local v2           #e1:Lcom/android/vcard/exception/VCardVersionException;
    :catch_7
    move-exception v6

    goto :goto_3
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mCanceled:Z

    .line 347
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParser;->cancel()V

    .line 350
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 158
    :cond_0
    return-void
.end method

.method public getResult()Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    return-object v0
.end method

.method public init(Landroid/net/Uri;ILjava/util/Iterator;Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;)V
    .locals 2
    .parameter "fileUri"
    .parameter "defaultDupAction"
    .parameter
    .parameter "progressHandler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Ljava/util/Iterator",
            "<",
            "Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;",
            ">;",
            "Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    .local p3, dupActions:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/broadcom/bt/service/opp/VCardUtil$VCardDupAction;>;"
    iput-object p1, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mUri:Landroid/net/Uri;

    .line 123
    iput p2, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mDefaultDupAction:I

    .line 124
    iput-object p3, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mDupActions:Ljava/util/Iterator;

    .line 125
    iput-object p4, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;

    .line 126
    new-instance v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->this$0:Lcom/broadcom/bt/service/opp/VCardUtil;

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;-><init>(Lcom/broadcom/bt/service/opp/VCardUtil;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    .line 127
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mFilepath:Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mDoCountOnly:Z

    .line 129
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->init()V

    .line 130
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 162
    const-string v0, "OPP.VCardReadThread"

    const-string v2, "run()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mIsRunning:Z

    .line 165
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 166
    iput-object v5, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mTempFile:Ljava/io/File;

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 172
    iget-object v1, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mUri:Landroid/net/Uri;

    .line 177
    .local v1, targetUri:Landroid/net/Uri;
    new-instance v3, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v3}, Lcom/android/vcard/VCardEntryCounter;-><init>()V

    .line 178
    .local v3, counter:Lcom/android/vcard/VCardEntryCounter;
    new-instance v4, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v4}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    .local v4, detector:Lcom/android/vcard/VCardSourceDetector;
    :try_start_1
    const-string v2, "UTF-8"

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->readOneVCardFile(Landroid/net/Uri;Ljava/lang/String;Lcom/android/vcard/VCardInterpreter;Lcom/android/vcard/VCardSourceDetector;ZLcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;)V
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    iget-boolean v0, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mSuccess:Z

    if-nez v0, :cond_3

    .line 196
    const-string v0, "OPP.VCardReadThread"

    const-string v2, "run(): error occurred. Aborting"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    invoke-interface {v0, v2}, Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;->onParseComplete(Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;)V

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->finish()V

    .line 263
    .end local v1           #targetUri:Landroid/net/Uri;
    .end local v3           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v4           #detector:Lcom/android/vcard/VCardSourceDetector;
    :cond_1
    :goto_1
    return-void

    .line 184
    .restart local v1       #targetUri:Landroid/net/Uri;
    .restart local v3       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v4       #detector:Lcom/android/vcard/VCardSourceDetector;
    :catch_0
    move-exception v11

    .line 185
    .local v11, e2:Lcom/android/vcard/exception/VCardNestedException;
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    invoke-virtual {v0, v11}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->setError(Ljava/lang/Throwable;)V

    .line 186
    const-string v0, "OPP.VCardUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Must not reach here. "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 255
    .end local v1           #targetUri:Landroid/net/Uri;
    .end local v3           #counter:Lcom/android/vcard/VCardEntryCounter;
    .end local v4           #detector:Lcom/android/vcard/VCardSourceDetector;
    .end local v11           #e2:Lcom/android/vcard/exception/VCardNestedException;
    :catch_1
    move-exception v12

    .line 256
    .local v12, t:Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v12}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->onError(Landroid/net/Uri;Ljava/lang/Throwable;)V

    .line 258
    .end local v12           #t:Ljava/lang/Throwable;
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->finish()V

    .line 260
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mProgressHandler:Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;

    iget-object v2, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    invoke-interface {v0, v2}, Lcom/broadcom/bt/service/opp/VCardUtil$ProgressHandler;->onParseComplete(Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;)V

    goto :goto_1

    .line 206
    .restart local v1       #targetUri:Landroid/net/Uri;
    .restart local v3       #counter:Lcom/android/vcard/VCardEntryCounter;
    .restart local v4       #detector:Lcom/android/vcard/VCardSourceDetector;
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    invoke-virtual {v3}, Lcom/android/vcard/VCardEntryCounter;->getCount()I

    move-result v2

    iput v2, v0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;->mCount:I

    .line 207
    iget-boolean v0, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mDoCountOnly:Z

    if-eqz v0, :cond_4

    .line 209
    const-string v0, "OPP.VCardReadThread"

    const-string v2, "run(): mDoCountOnly=true...Exiting without parsing vCard"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-direct {p0}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->finish()V

    goto :goto_1

    .line 216
    :cond_4
    invoke-virtual {v4}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v8

    .line 217
    .local v8, charset:Ljava/lang/String;
    const/4 v7, 0x0

    iget-object v10, p0, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->mResult:Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;

    move-object v5, p0

    move-object v6, v1

    move-object v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/broadcom/bt/service/opp/VCardUtil$VCardReadThread;->doActuallyReadOneVCard(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;Lcom/android/vcard/VCardSourceDetector;Lcom/broadcom/bt/service/opp/VCardUtil$VCardParseResult;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method
