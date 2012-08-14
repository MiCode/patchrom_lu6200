.class public final Lcom/lge/lgdrm/DrmDldClient;
.super Ljava/lang/Thread;
.source "DrmDldClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdrm/DrmDldClient$FailInfo;
    }
.end annotation


# static fields
.field public static final ERROR_CONNECT:I = 0x3

.field public static final ERROR_HTTP_404:I = 0x2

.field public static final ERROR_INTERNAL:I = 0x1

.field public static final ERROR_INTERRUPTED:I = 0x7

.field public static final ERROR_MIME_MISMATCHED:I = 0x6

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_OUT_OF_STORAGE:I = 0x5

.field public static final ERROR_RO_CORRUPTED:I = 0x4

.field private static final PREVIOUS_VERSION:Ljava/lang/String; = "3.1"

.field private static final READ_UNIT:I = 0x1000

.field public static final STATUS_ERROR:I = 0x3

.field public static final STATUS_GET_CONFIRM:I = 0x1

.field public static final STATUS_PROGRESS:I = 0x2

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DrmDldClient"

.field private static cachedUA:Ljava/lang/String;

.field private static sLocale:Ljava/util/Locale;

.field private static sLockForLocaleSettings:Ljava/lang/Object;


# instance fields
.field private final HTTP_TIMEOUT:I

.field private client:Landroid/net/http/AndroidHttpClient;

.field private context:Landroid/content/Context;

.field private errorCode:I

.field private failInfo:Lcom/lge/lgdrm/DrmDldClient$FailInfo;

.field private filename:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private interrupted:Z

.field private mimeType:Ljava/lang/String;

.field private nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

.field private objSession:Lcom/lge/lgdrm/DrmObjectSession;

.field private userAgent:Ljava/lang/String;

.field private userConfirm:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 64
    const/16 v0, 0x1e

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->HTTP_TIMEOUT:I

    .line 78
    iput v1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/lge/lgdrm/DrmDldRequest;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .parameter "request"
    .parameter "filename"
    .parameter "mimeType"
    .parameter "handler"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 64
    const/16 v0, 0x1e

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->HTTP_TIMEOUT:I

    .line 78
    iput v1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    .line 156
    iput-object p1, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 157
    iput-object p2, p0, Lcom/lge/lgdrm/DrmDldClient;->filename:Ljava/lang/String;

    .line 158
    iput-object p3, p0, Lcom/lge/lgdrm/DrmDldClient;->mimeType:Ljava/lang/String;

    .line 159
    iput-object p4, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    .line 160
    iput-object p5, p0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    .line 161
    return-void
.end method

.method protected constructor <init>(Lcom/lge/lgdrm/DrmObjectSession;Lcom/lge/lgdrm/DrmDldRequest;Landroid/content/Context;)V
    .locals 2
    .parameter "objSession"
    .parameter "request"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 64
    const/16 v0, 0x1e

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->HTTP_TIMEOUT:I

    .line 78
    iput v1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    .line 119
    iput-object p1, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    .line 120
    iput-object p2, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 121
    iput-object p3, p0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/lge/lgdrm/DrmObjectSession;Lcom/lge/lgdrm/DrmDldRequest;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .parameter "objSession"
    .parameter "request"
    .parameter "handler"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 64
    const/16 v0, 0x1e

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->HTTP_TIMEOUT:I

    .line 78
    iput v1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    .line 136
    iput-object p1, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    .line 137
    iput-object p2, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 138
    iput-object p3, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    .line 139
    iput-object p4, p0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    .line 140
    return-void
.end method

.method private checkMimeType()I
    .locals 13

    .prologue
    const/4 v12, 0x7

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v5, -0x1

    const/4 v9, 0x0

    .line 244
    const/4 v3, 0x0

    .line 247
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 248
    invoke-direct {p0, v12, v9, v9}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_0
    return v5

    .line 252
    :cond_0
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iget-object v6, v6, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 253
    :cond_1
    invoke-direct {p0, v10, v9, v9}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    new-instance v7, Lorg/apache/http/client/methods/HttpHead;

    iget-object v8, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    iget-object v8, v8, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    invoke-direct {v7, v8}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    .line 274
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 276
    .local v4, status:I
    sparse-switch v4, :sswitch_data_0

    .line 290
    invoke-direct {p0, v11, v9, v9}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    .end local v4           #status:I
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/nio/channels/ClosedByInterruptException;
    iput-boolean v10, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 262
    invoke-direct {p0, v12, v9, v9}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    .end local v0           #e:Ljava/nio/channels/ClosedByInterruptException;
    :catch_1
    move-exception v0

    .line 265
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 266
    invoke-direct {p0, v11, v9, v9}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 269
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    invoke-direct {p0, v10, v9, v9}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #status:I
    :sswitch_0
    const/4 v6, 0x2

    invoke-direct {p0, v6, v9, v9}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :sswitch_1
    const-string v6, "Content-Type"

    invoke-interface {v3, v6}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 296
    .local v1, httpHeaders:[Lorg/apache/http/Header;
    if-eqz v1, :cond_4

    .line 297
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_4

    .line 299
    aget-object v6, v1, v2

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/lgdrm/DrmDldClient;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 300
    const/4 v5, 0x0

    goto :goto_0

    .line 297
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 305
    .end local v2           #i:I
    :cond_4
    const/4 v6, 0x6

    invoke-direct {p0, v6, v9, v9}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x194 -> :sswitch_0
        0x1f6 -> :sswitch_1
    .end sparse-switch
.end method

.method private static convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "langCode"

    .prologue
    .line 941
    if-nez p0, :cond_1

    .line 942
    const/4 p0, 0x0

    .line 954
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 944
    .restart local p0
    :cond_1
    const-string/jumbo v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 946
    const-string/jumbo p0, "he"

    goto :goto_0

    .line 947
    :cond_2
    const-string/jumbo v0, "in"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 949
    const-string/jumbo p0, "id"

    goto :goto_0

    .line 950
    :cond_3
    const-string/jumbo v0, "ji"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    const-string/jumbo p0, "yi"

    goto :goto_0
.end method

.method private declared-synchronized getCurrentUserAgent()Ljava/lang/String;
    .locals 11

    .prologue
    .line 959
    monitor-enter p0

    :try_start_0
    sget-object v5, Lcom/lge/lgdrm/DrmDldClient;->sLocale:Ljava/util/Locale;

    .line 961
    .local v5, locale:Ljava/util/Locale;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 963
    .local v1, buffer:Ljava/lang/StringBuffer;
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 964
    .local v8, version:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 965
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 967
    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 977
    :goto_0
    const-string v9, "; "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 978
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 979
    .local v4, language:Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 980
    invoke-static {v4}, Lcom/lge/lgdrm/DrmDldClient;->convertObsoleteLanguageCodeToNew(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 981
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 982
    .local v2, country:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 983
    const-string v9, "-"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 984
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 990
    .end local v2           #country:Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v9, ";"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 992
    const-string v9, "REL"

    sget-object v10, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 993
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 994
    .local v7, model:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 995
    const-string v9, " "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 996
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 999
    .end local v7           #model:Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 1000
    .local v3, id:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 1001
    const-string v9, " Build/"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1002
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1004
    :cond_2
    iget-object v9, p0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040334

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1006
    .local v6, mobile:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1040333

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, base:Ljava/lang/String;
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    monitor-exit p0

    return-object v9

    .line 971
    .end local v0           #base:Ljava/lang/String;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #language:Ljava/lang/String;
    .end local v6           #mobile:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v9, "3.1"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 959
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v5           #locale:Ljava/util/Locale;
    .end local v8           #version:Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 975
    .restart local v1       #buffer:Ljava/lang/StringBuffer;
    .restart local v5       #locale:Ljava/util/Locale;
    .restart local v8       #version:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v9, "1.0"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 988
    .restart local v4       #language:Ljava/lang/String;
    :cond_5
    const-string v9, "en"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private getUserAgentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 922
    sget-object v1, Lcom/lge/lgdrm/DrmDldClient;->sLockForLocaleSettings:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 923
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/lge/lgdrm/DrmDldClient;->sLockForLocaleSettings:Ljava/lang/Object;

    .line 924
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sput-object v1, Lcom/lge/lgdrm/DrmDldClient;->sLocale:Ljava/util/Locale;

    .line 927
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 928
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v1, Lcom/lge/lgdrm/DrmDldClient;->sLocale:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/lge/lgdrm/DrmDldClient;->cachedUA:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 929
    :cond_1
    sput-object v0, Lcom/lge/lgdrm/DrmDldClient;->sLocale:Ljava/util/Locale;

    .line 930
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lge/lgdrm/DrmDldClient;->cachedUA:Ljava/lang/String;

    .line 933
    :cond_2
    sget-object v1, Lcom/lge/lgdrm/DrmDldClient;->cachedUA:Ljava/lang/String;

    return-object v1
.end method

.method private httpTransaction(Lcom/lge/lgdrm/DrmDldRequest;)I
    .locals 21
    .parameter "request"

    .prologue
    .line 318
    const/4 v5, 0x0

    .line 319
    .local v5, content:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 322
    .local v10, httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-direct/range {p0 .. p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 323
    const/16 v18, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 324
    const/4 v15, -0x1

    .line 553
    :goto_0
    return v15

    .line 328
    :cond_0
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->httpMethod:I

    move/from16 v18, v0

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 330
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v10           #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    .local v11, httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    move-object v10, v11

    .line 348
    .end local v11           #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v10       #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1}, Lcom/lge/lgdrm/DrmDldClient;->setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/lge/lgdrm/DrmDldRequest;)I

    move-result v18

    if-eqz v18, :cond_2

    .line 350
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 351
    const/4 v15, -0x1

    goto :goto_0

    .line 333
    :cond_1
    :try_start_1
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v10           #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v11       #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    move-object v10, v11

    .end local v11           #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v10       #httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_1

    .line 335
    :catch_0
    move-exception v7

    .line 336
    .local v7, e:Ljava/lang/IllegalArgumentException;
    const-string v18, "DrmDldClient"

    const-string/jumbo v19, "httpTransaction() : Invalid URL"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 340
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v15, -0x1

    goto :goto_0

    .line 342
    .end local v7           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v7

    .line 343
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 344
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 345
    const/4 v15, -0x1

    goto :goto_0

    .line 355
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 356
    const/16 v18, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 357
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 361
    :cond_3
    const/4 v14, 0x0

    .line 363
    .local v14, response:Lorg/apache/http/HttpResponse;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v14

    .line 378
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 380
    .local v16, status:I
    sparse-switch v16, :sswitch_data_0

    .line 406
    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 364
    .end local v16           #status:I
    :catch_2
    move-exception v7

    .line 365
    .local v7, e:Ljava/nio/channels/ClosedByInterruptException;
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 366
    const/16 v18, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 367
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 368
    .end local v7           #e:Ljava/nio/channels/ClosedByInterruptException;
    :catch_3
    move-exception v7

    .line 369
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 370
    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 372
    .end local v7           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 373
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 374
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 375
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 389
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v16       #status:I
    :sswitch_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 411
    :sswitch_1
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 412
    .local v8, entity:Lorg/apache/http/HttpEntity;
    if-nez v8, :cond_5

    .line 413
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 414
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 415
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 396
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    :cond_4
    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 401
    :sswitch_2
    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 402
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 419
    .restart local v8       #entity:Lorg/apache/http/HttpEntity;
    :cond_5
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v9

    .line 420
    .local v9, hdr:Lorg/apache/http/Header;
    if-nez v9, :cond_6

    .line 421
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 422
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 423
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 427
    :cond_6
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, contentType:Ljava/lang/String;
    if-nez v6, :cond_7

    .line 429
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 430
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 431
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 435
    :cond_7
    const-string v18, "[;]"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 436
    .local v17, subs:[Ljava/lang/String;
    if-nez v17, :cond_8

    .line 437
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 438
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 439
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 441
    :cond_8
    const/16 v18, 0x0

    aget-object v18, v17, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 445
    const/16 v18, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 446
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 450
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    move-object/from16 v18, v0

    if-nez v18, :cond_a

    .line 452
    const/16 v18, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/lge/lgdrm/DrmManager;->createObjectSession(ILandroid/content/Context;)Lcom/lge/lgdrm/DrmObjectSession;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    move-object/from16 v18, v0

    if-nez v18, :cond_a

    .line 454
    const-string v18, "DrmDldClient"

    const-string v19, "Failed to create DRM object session"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 456
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 462
    :cond_a
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    move-result-object v5

    .line 493
    const/4 v4, 0x0

    .line 494
    .local v4, attribute:I
    :try_start_4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    .line 495
    const/16 v4, 0x8

    .line 498
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/lgdrm/DrmDldClient;->filename:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1, v4}, Lcom/lge/lgdrm/DrmObjectSession;->processInit(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_c

    .line 499
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 500
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    .line 501
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 463
    .end local v4           #attribute:I
    :catch_5
    move-exception v7

    .line 464
    .local v7, e:Ljava/nio/channels/ClosedByInterruptException;
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 465
    const/16 v18, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 466
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 467
    .end local v7           #e:Ljava/nio/channels/ClosedByInterruptException;
    :catch_6
    move-exception v7

    .line 468
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 473
    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 474
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 475
    .end local v7           #e:Ljava/io/IOException;
    :catch_7
    move-exception v7

    .line 476
    .local v7, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 477
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 478
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 479
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 480
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catch_8
    move-exception v7

    .line 481
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 487
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 488
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 503
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v4       #attribute:I
    :catch_9
    move-exception v7

    .line 504
    .local v7, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 505
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 506
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 507
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 508
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catch_a
    move-exception v7

    .line 509
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 510
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 511
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 512
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 515
    .end local v7           #e:Ljava/lang/Exception;
    :cond_c
    const/4 v15, 0x0

    .line 516
    .local v15, retVal:I
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 518
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v5, v1, v2}, Lcom/lge/lgdrm/DrmDldClient;->processData(Ljava/io/InputStream;J)I

    move-result v15

    .line 536
    :goto_2
    :try_start_5
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 538
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d

    goto/16 :goto_0

    .line 539
    :catch_b
    move-exception v7

    .line 540
    .local v7, e:Ljava/nio/channels/ClosedByInterruptException;
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 541
    const/16 v18, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 542
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 520
    .end local v7           #e:Ljava/nio/channels/ClosedByInterruptException;
    :cond_d
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    .line 522
    .local v12, length:J
    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-gtz v18, :cond_e

    .line 527
    const-wide/16 v18, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v5, v1, v2}, Lcom/lge/lgdrm/DrmDldClient;->processData(Ljava/io/InputStream;J)I

    move-result v15

    goto :goto_2

    .line 530
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13}, Lcom/lge/lgdrm/DrmDldClient;->processData(Ljava/io/InputStream;J)I

    move-result v15

    goto :goto_2

    .line 543
    .end local v12           #length:J
    :catch_c
    move-exception v7

    .line 544
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 545
    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 546
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 547
    .end local v7           #e:Ljava/io/IOException;
    :catch_d
    move-exception v7

    .line 548
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 549
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 550
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 380
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x194 -> :sswitch_2
        0x1f4 -> :sswitch_0
        0x1f6 -> :sswitch_1
    .end sparse-switch
.end method

.method private isInterrupt()Z
    .locals 2

    .prologue
    .line 824
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    if-eqz v0, :cond_1

    .line 825
    :cond_0
    const-string v0, "DrmDldClient"

    const-string v1, "Thread was interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v0, 0x1

    .line 828
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processData(Ljava/io/InputStream;J)I
    .locals 10
    .parameter "in"
    .parameter "length"

    .prologue
    .line 634
    const/16 v6, 0x1000

    new-array v0, v6, [B

    .line 637
    .local v0, data:[B
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-nez v6, :cond_4

    .line 641
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 642
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 643
    const/4 v6, -0x1

    .line 774
    :goto_0
    return v6

    .line 646
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 647
    .local v3, readLen:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_3

    .line 684
    .end local v3           #readLen:I
    :cond_2
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 685
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 686
    const/4 v6, -0x1

    goto :goto_0

    .line 652
    .restart local v3       #readLen:I
    :cond_3
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6, v0, v3}, Lcom/lge/lgdrm/DrmObjectSession;->processUpdate([BI)I

    move-result v6

    if-eqz v6, :cond_0

    .line 654
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 655
    const/4 v6, -0x1

    goto :goto_0

    .line 659
    .end local v3           #readLen:I
    :cond_4
    const/4 v2, 0x0

    .line 660
    .local v2, index:I
    :goto_1
    int-to-long v6, v2

    cmp-long v6, v6, p2

    if-gez v6, :cond_2

    .line 662
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 663
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 664
    const/4 v6, -0x1

    goto :goto_0

    .line 667
    :cond_5
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .line 668
    .restart local v3       #readLen:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_6

    .line 670
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 671
    const/4 v6, -0x1

    goto :goto_0

    .line 674
    :cond_6
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6, v0, v3}, Lcom/lge/lgdrm/DrmObjectSession;->processUpdate([BI)I

    move-result v6

    if-eqz v6, :cond_7

    .line 676
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 677
    const/4 v6, -0x1

    goto :goto_0

    .line 679
    :cond_7
    add-int/2addr v2, v3

    goto :goto_1

    .line 689
    .end local v2           #index:I
    .end local v3           #readLen:I
    :cond_8
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmObjectSession;->processStatus()I

    move-result v4

    .line 690
    .local v4, retVal:I
    const/4 v5, 0x2

    .line 691
    .local v5, userResponse:I
    packed-switch v4, :pswitch_data_0

    .line 722
    :goto_2
    :pswitch_0
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 723
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 724
    const/4 v6, -0x1

    goto :goto_0

    .line 693
    :pswitch_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 694
    const/4 v6, -0x1

    goto :goto_0

    .line 698
    :pswitch_2
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    if-eqz v6, :cond_c

    .line 700
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    .line 702
    :goto_3
    iget v6, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    if-eqz v6, :cond_a

    .line 707
    iget v6, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    if-eqz v6, :cond_9

    iget v6, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    .line 709
    :cond_9
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 710
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 705
    :cond_a
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_3

    .line 755
    .end local v4           #retVal:I
    .end local v5           #userResponse:I
    :catch_0
    move-exception v1

    .line 756
    .local v1, e:Ljava/lang/InterruptedException;
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 757
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 758
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 713
    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v4       #retVal:I
    .restart local v5       #userResponse:I
    :cond_b
    const/4 v6, 0x2

    :try_start_1
    invoke-direct {p0, v6}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 759
    .end local v4           #retVal:I
    .end local v5           #userResponse:I
    :catch_1
    move-exception v1

    .line 760
    .local v1, e:Ljava/nio/channels/ClosedByInterruptException;
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/lgdrm/DrmDldClient;->interrupted:Z

    .line 761
    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 762
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 716
    .end local v1           #e:Ljava/nio/channels/ClosedByInterruptException;
    .restart local v4       #retVal:I
    .restart local v5       #userResponse:I
    :cond_c
    const/4 v5, 0x1

    goto :goto_2

    .line 727
    :cond_d
    :try_start_2
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/lge/lgdrm/DrmObjectSession;->processEnd(ILandroid/content/ComponentName;)I

    move-result v4

    .line 728
    const/4 v6, -0x1

    if-ne v4, v6, :cond_e

    .line 729
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmObjectSession;->getFailReason()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 747
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 750
    :goto_4
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 731
    :pswitch_3
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    .line 763
    .end local v4           #retVal:I
    .end local v5           #userResponse:I
    :catch_2
    move-exception v1

    .line 764
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 766
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 767
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 736
    .end local v1           #e:Ljava/io/IOException;
    .restart local v4       #retVal:I
    .restart local v5       #userResponse:I
    :pswitch_4
    const/4 v6, 0x1

    :try_start_3
    iget-object v7, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/lge/lgdrm/DrmObjectSession;->getFailInfo(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/lge/lgdrm/DrmObjectSession;->getFailInfo(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 768
    .end local v4           #retVal:I
    .end local v5           #userResponse:I
    :catch_3
    move-exception v1

    .line 770
    .local v1, e:Ljava/lang/Exception;
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 771
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 741
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #retVal:I
    .restart local v5       #userResponse:I
    :pswitch_5
    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_4
    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 744
    :pswitch_6
    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 751
    :cond_e
    const/4 v6, 0x4

    if-ne v4, v6, :cond_f

    .line 753
    iget-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v6}, Lcom/lge/lgdrm/DrmObjectSession;->getNextRequest()Lcom/lge/lgdrm/DrmDldRequest;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 774
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 691
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 729
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private processRequest()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 211
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    .line 214
    iget-object v3, p0, Lcom/lge/lgdrm/DrmDldClient;->mimeType:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->checkMimeType()I

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    :goto_0
    return v1

    .line 220
    :cond_0
    const/4 v0, 0x0

    .line 221
    .local v0, currentRequest:Lcom/lge/lgdrm/DrmDldRequest;
    :cond_1
    iget-object v3, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    if-eqz v3, :cond_2

    .line 222
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 223
    iput-object v4, p0, Lcom/lge/lgdrm/DrmDldClient;->nextRequest:Lcom/lge/lgdrm/DrmDldRequest;

    .line 225
    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmDldClient;->httpTransaction(Lcom/lge/lgdrm/DrmDldRequest;)I

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 230
    :cond_2
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    if-eqz v1, :cond_3

    .line 231
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v1, v2}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 232
    iput-object v4, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    :cond_3
    move v1, v2

    .line 234
    goto :goto_0
.end method

.method private sendStatus(I)V
    .locals 6
    .parameter "processStatus"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 841
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 846
    :cond_1
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->isInterrupt()Z

    move-result v1

    if-nez v1, :cond_0

    .line 850
    if-nez p1, :cond_2

    .line 851
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 852
    :cond_2
    if-ne p1, v3, :cond_3

    .line 853
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 854
    :cond_3
    if-ne p1, v2, :cond_4

    .line 855
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 856
    :cond_4
    if-ne p1, v5, :cond_0

    .line 857
    iget v1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    if-eqz v1, :cond_0

    .line 861
    const/4 v0, 0x0

    .line 862
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->failInfo:Lcom/lge/lgdrm/DrmDldClient$FailInfo;

    if-eqz v1, :cond_5

    .line 864
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    iget-object v3, p0, Lcom/lge/lgdrm/DrmDldClient;->failInfo:Lcom/lge/lgdrm/DrmDldClient$FailInfo;

    invoke-virtual {v1, v5, v2, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 870
    :goto_1
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 866
    :cond_5
    iget-object v1, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    iget v2, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    invoke-virtual {v1, v5, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    goto :goto_1
.end method

.method private setError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "errorCode"
    .parameter "errorMsg"
    .parameter "redirectURL"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 795
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    if-eqz v0, :cond_0

    .line 796
    const-string v0, "DrmDldClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setError() : Destroy session errCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    if-ne p1, v3, :cond_2

    .line 798
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    .line 804
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    .line 807
    :cond_0
    iget v0, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    if-eqz v0, :cond_4

    .line 816
    :cond_1
    :goto_1
    return-void

    .line 799
    :cond_2
    if-ne p1, v4, :cond_3

    .line 800
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v0, v3}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    goto :goto_0

    .line 802
    :cond_3
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->objSession:Lcom/lge/lgdrm/DrmObjectSession;

    invoke-virtual {v0, v4}, Lcom/lge/lgdrm/DrmObjectSession;->destroySession(I)V

    goto :goto_0

    .line 812
    :cond_4
    iput p1, p0, Lcom/lge/lgdrm/DrmDldClient;->errorCode:I

    .line 813
    if-eqz p2, :cond_1

    .line 814
    new-instance v0, Lcom/lge/lgdrm/DrmDldClient$FailInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/lge/lgdrm/DrmDldClient$FailInfo;-><init>(Lcom/lge/lgdrm/DrmDldClient;ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->failInfo:Lcom/lge/lgdrm/DrmDldClient$FailInfo;

    goto :goto_1
.end method

.method private setHttpHeader(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/lge/lgdrm/DrmDldRequest;)I
    .locals 5
    .parameter "httpRequest"
    .parameter "request"

    .prologue
    const/4 v4, 0x1

    .line 567
    iget v1, p2, Lcom/lge/lgdrm/DrmDldRequest;->httpMethod:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 569
    iget v1, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v1, v4, :cond_1

    .line 570
    const-string v1, "Accept"

    const-string v2, "application/vnd.oma.drm.roap-trigger+xml, application/vnd.oma.drm.roap-pdu+xml, multipart/related"

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :goto_0
    const-string v1, "Connection"

    const-string v2, "Keep Alive, Keep-Alive"

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    const-string v1, "Cache-Control"

    const-string/jumbo v2, "no-cache"

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string v1, "Pragma"

    const-string/jumbo v2, "no-cache"

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget v1, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v1, v4, :cond_0

    .line 616
    const-string v1, "DRM-Version"

    const-string v2, "2.1"

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 572
    :cond_1
    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_2
    iget v1, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v1, v4, :cond_4

    .line 577
    const-string v1, "Accept"

    const-string v2, "application/vnd.oma.drm.roap-trigger+xml, multipart/related"

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_3
    :goto_2
    new-instance v0, Lorg/apache/http/entity/InputStreamEntity;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p2, Lcom/lge/lgdrm/DrmDldRequest;->data:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p2, Lcom/lge/lgdrm/DrmDldRequest;->data:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 595
    .local v0, postEntity:Lorg/apache/http/entity/InputStreamEntity;
    if-nez v0, :cond_a

    .line 596
    const-string v1, "DrmDldClient"

    const-string/jumbo v2, "setHttpHeader() : Fail to create postEntity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v1, -0x1

    goto :goto_1

    .line 578
    .end local v0           #postEntity:Lorg/apache/http/entity/InputStreamEntity;
    :cond_4
    iget v1, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 579
    const-string v1, "SOAPAction"

    const-string/jumbo v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcquireLicense"

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 580
    :cond_5
    iget v1, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 581
    const-string v1, "SOAPAction"

    const-string/jumbo v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/AcknowledgeLicense"

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 582
    :cond_6
    iget v1, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 583
    const-string v1, "SOAPAction"

    const-string/jumbo v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/JoinDomain"

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 584
    :cond_7
    iget v1, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_8

    .line 585
    const-string v1, "SOAPAction"

    const-string/jumbo v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/LeaveDomain"

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 586
    :cond_8
    iget v1, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    .line 587
    const-string v1, "SOAPAction"

    const-string/jumbo v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/ProcessMeteringData"

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 588
    :cond_9
    iget v1, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    .line 589
    const-string v1, "SOAPAction"

    const-string/jumbo v2, "http://schemas.microsoft.com/DRM/2007/03/protocols/GetMeteringCertificate"

    invoke-virtual {p1, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 601
    .restart local v0       #postEntity:Lorg/apache/http/entity/InputStreamEntity;
    :cond_a
    iget v1, p2, Lcom/lge/lgdrm/DrmDldRequest;->requestType:I

    if-ne v1, v4, :cond_b

    .line 602
    const-string v1, "application/vnd.oma.drm.roap-pdu+xml"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    :goto_3
    move-object v1, p1

    .line 607
    check-cast v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_0

    .line 604
    :cond_b
    const-string/jumbo v1, "text/xml; charset=utf-8"

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 167
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->userAgent:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 173
    const-string v0, "DrmDldClient"

    const-string/jumbo v1, "run() : Fail to get UAString"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0, v4, v3, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0, v5}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    .line 201
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->userAgent:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    .line 181
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    if-nez v0, :cond_2

    .line 182
    const-string v0, "DrmDldClient"

    const-string/jumbo v1, "run() : Fail to create http client"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct {p0, v4, v3, v3}, Lcom/lge/lgdrm/DrmDldClient;->setError(ILjava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0, v5}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string/jumbo v1, "http.socket.timeout"

    const/16 v2, 0x7530

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 190
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string/jumbo v1, "http.protocol.handle-redirects"

    invoke-interface {v0, v1, v4}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 192
    invoke-direct {p0}, Lcom/lge/lgdrm/DrmDldClient;->processRequest()I

    move-result v0

    if-nez v0, :cond_3

    .line 193
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    .line 198
    :goto_1
    const-string v0, "DrmDldClient"

    const-string v1, "Close HTTP Client"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 200
    iput-object v3, p0, Lcom/lge/lgdrm/DrmDldClient;->client:Landroid/net/http/AndroidHttpClient;

    goto :goto_0

    .line 195
    :cond_3
    invoke-direct {p0, v5}, Lcom/lge/lgdrm/DrmDldClient;->sendStatus(I)V

    goto :goto_1
.end method

.method public setUserConfirm(Z)V
    .locals 1
    .parameter "agreed"

    .prologue
    .line 880
    if-eqz p1, :cond_0

    .line 881
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    .line 885
    :goto_0
    return-void

    .line 883
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/lgdrm/DrmDldClient;->userConfirm:I

    goto :goto_0
.end method
