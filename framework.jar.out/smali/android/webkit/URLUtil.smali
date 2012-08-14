.class public final Landroid/webkit/URLUtil;
.super Ljava/lang/Object;
.source "URLUtil.java"


# static fields
.field static final ASSET_BASE:Ljava/lang/String; = "file:///android_asset/"

.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final COUNTRY_CODE:Ljava/lang/String; = null

.field private static final DEFAULT_ENCODING_TYPE:Ljava/lang/String; = "ISO-8859-1"

.field private static final DEFAULT_ENCODING_TYPE_JAVA:Ljava/lang/String; = "UTF-8"

.field static final FILE_BASE:Ljava/lang/String; = "file://"

.field private static final KR_ENCODINGTYPES:[Ljava/lang/String; = null

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final NOKR_ENCODINGTYPES:[Ljava/lang/String; = null

.field static final PROXY_BASE:Ljava/lang/String; = "file:///cookieless_proxy/"

.field static final RESOURCE_BASE:Ljava/lang/String; = "file:///android_res/"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EUC-KR"

    aput-object v1, v0, v4

    const-string v1, "UTF-8"

    aput-object v1, v0, v5

    const-string v1, "UTF-16"

    aput-object v1, v0, v3

    const-string v1, "US-ASCII"

    aput-object v1, v0, v6

    const-string v1, "UTF-16BE"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "UTF-16LE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ISO-2022-KR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ISO-8859-1"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/URLUtil;->KR_ENCODINGTYPES:[Ljava/lang/String;

    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UTF-8"

    aput-object v1, v0, v4

    const-string v1, "EUC-KR"

    aput-object v1, v0, v5

    const-string v1, "UTF-16"

    aput-object v1, v0, v3

    const-string v1, "US-ASCII"

    aput-object v1, v0, v6

    const-string v1, "UTF-16BE"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "UTF-16LE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ISO-2022-KR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ISO-8859-1"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/URLUtil;->NOKR_ENCODINGTYPES:[Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkit/URLUtil;->COUNTRY_CODE:Ljava/lang/String;

    .line 432
    const-string v0, "attachment;\\s*filename\\s*=\\s*(\"?)([^\"]*)\\1\\s*$"

    invoke-static {v0, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "inQuery"
    .parameter "template"
    .parameter "queryPlaceHolder"

    .prologue
    const/4 v4, 0x0

    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 111
    .local v2, placeHolderIndex:I
    if-gez v2, :cond_0

    .line 129
    :goto_0
    return-object v4

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :try_start_0
    const-string/jumbo v5, "utf-8"

    invoke-static {p0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, query:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 122
    .end local v3           #query:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 123
    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method public static decode([B)[B
    .locals 9
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 133
    array-length v6, p0

    if-nez v6, :cond_0

    .line 134
    new-array v2, v8, [B

    .line 156
    :goto_0
    return-object v2

    .line 138
    :cond_0
    array-length v6, p0

    new-array v5, v6, [B

    .line 140
    .local v5, tempData:[B
    const/4 v3, 0x0

    .line 141
    .local v3, tempCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, p0

    if-ge v1, v6, :cond_3

    .line 142
    aget-byte v0, p0, v1

    .line 143
    .local v0, b:B
    const/16 v6, 0x25

    if-ne v0, v6, :cond_1

    .line 144
    array-length v6, p0

    sub-int/2addr v6, v1

    const/4 v7, 0x2

    if-le v6, v7, :cond_2

    .line 145
    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p0, v6

    invoke-static {v6}, Landroid/webkit/URLUtil;->parseHex(B)I

    move-result v6

    mul-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, p0, v7

    invoke-static {v7}, Landroid/webkit/URLUtil;->parseHex(B)I

    move-result v7

    add-int/2addr v6, v7

    int-to-byte v0, v6

    .line 147
    add-int/lit8 v1, v1, 0x2

    .line 152
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .end local v3           #tempCount:I
    .local v4, tempCount:I
    aput-byte v0, v5, v3

    .line 141
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    .end local v4           #tempCount:I
    .restart local v3       #tempCount:I
    goto :goto_1

    .line 149
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid format"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 154
    .end local v0           #b:B
    :cond_3
    new-array v2, v3, [B

    .line 155
    .local v2, retData:[B
    invoke-static {v5, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private static getEncordingType(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "fileName"

    .prologue
    .line 459
    const/4 v4, 0x0

    .line 461
    .local v4, midStr:Ljava/lang/String;
    sget-object v6, Landroid/webkit/URLUtil;->COUNTRY_CODE:Ljava/lang/String;

    const-string v7, "KR"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 462
    sget-object v0, Landroid/webkit/URLUtil;->KR_ENCODINGTYPES:[Ljava/lang/String;

    .line 467
    .local v0, ENCODINGTYPES:[Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    move-object v5, v4

    .end local v4           #midStr:Ljava/lang/String;
    .local v5, midStr:Ljava/lang/String;
    :goto_1
    :try_start_0
    array-length v6, v0

    if-ge v3, v6, :cond_2

    .line 468
    new-instance v4, Ljava/lang/String;

    const-string v6, "ISO-8859-1"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    aget-object v7, v0, v3

    invoke-direct {v4, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    .end local v5           #midStr:Ljava/lang/String;
    .restart local v4       #midStr:Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/lang/String;

    aget-object v6, v0, v3

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "ISO-8859-1"

    invoke-direct {v1, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 471
    .local v1, cmpStr:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 472
    aget-object v6, v0, v3
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 478
    .end local v1           #cmpStr:Ljava/lang/String;
    :goto_2
    return-object v6

    .line 464
    .end local v0           #ENCODINGTYPES:[Ljava/lang/String;
    .end local v3           #i:I
    :cond_0
    sget-object v0, Landroid/webkit/URLUtil;->NOKR_ENCODINGTYPES:[Ljava/lang/String;

    .restart local v0       #ENCODINGTYPES:[Ljava/lang/String;
    goto :goto_0

    .line 467
    .restart local v1       #cmpStr:Ljava/lang/String;
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    .end local v4           #midStr:Ljava/lang/String;
    .restart local v5       #midStr:Ljava/lang/String;
    goto :goto_1

    .end local v1           #cmpStr:Ljava/lang/String;
    :cond_2
    move-object v4, v5

    .line 478
    .end local v5           #midStr:Ljava/lang/String;
    .restart local v4       #midStr:Ljava/lang/String;
    :goto_3
    const-string v6, "UTF-8"

    goto :goto_2

    .line 475
    .end local v4           #midStr:Ljava/lang/String;
    .restart local v5       #midStr:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 476
    .end local v5           #midStr:Ljava/lang/String;
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    .restart local v4       #midStr:Ljava/lang/String;
    :goto_4
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_3

    .line 475
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    goto :goto_4
.end method

.method private static getURLEncodingType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "url"

    .prologue
    .line 483
    sget-object v4, Landroid/webkit/URLUtil;->COUNTRY_CODE:Ljava/lang/String;

    const-string v5, "KR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 484
    sget-object v0, Landroid/webkit/URLUtil;->KR_ENCODINGTYPES:[Ljava/lang/String;

    .line 488
    .local v0, ENCODINGTYPES:[Ljava/lang/String;
    :goto_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    :try_start_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 489
    new-instance v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    aget-object v5, v0, v3

    invoke-static {p0, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v3

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 490
    .local v1, cmp:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 491
    aget-object v4, v0, v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 497
    .end local v1           #cmp:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 486
    .end local v0           #ENCODINGTYPES:[Ljava/lang/String;
    .end local v3           #i:I
    :cond_0
    sget-object v0, Landroid/webkit/URLUtil;->NOKR_ENCODINGTYPES:[Ljava/lang/String;

    .restart local v0       #ENCODINGTYPES:[Ljava/lang/String;
    goto :goto_0

    .line 488
    .restart local v1       #cmp:Ljava/lang/String;
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 494
    .end local v1           #cmp:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 495
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 497
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :cond_2
    const-string v4, "UTF-8"

    goto :goto_2
.end method

.method public static final guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "url"
    .parameter "contentDisposition"
    .parameter "mimeType"

    .prologue
    .line 326
    const/4 v6, 0x0

    .line 327
    .local v6, filename:Ljava/lang/String;
    const/4 v5, 0x0

    .line 330
    .local v5, extension:Ljava/lang/String;
    if-nez v6, :cond_0

    if-eqz p1, :cond_0

    .line 331
    invoke-static/range {p1 .. p1}, Landroid/webkit/URLUtil;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 332
    if-eqz v6, :cond_0

    .line 333
    const/16 v12, 0x2f

    invoke-virtual {v6, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    add-int/lit8 v8, v12, 0x1

    .line 334
    .local v8, index:I
    if-lez v8, :cond_0

    .line 335
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 340
    .end local v8           #index:I
    :cond_0
    sget-object v12, Landroid/webkit/URLUtil;->COUNTRY_CODE:Ljava/lang/String;

    const-string v13, "KR"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    if-eqz v6, :cond_5

    .line 342
    :try_start_0
    new-instance v12, Ljava/lang/String;

    const-string v13, "ISO-8859-1"

    invoke-virtual {v6, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    invoke-static {v6}, Landroid/webkit/URLUtil;->getEncordingType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v12}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 376
    :cond_1
    :goto_0
    sget-object v12, Landroid/webkit/URLUtil;->COUNTRY_CODE:Ljava/lang/String;

    const-string v13, "KR"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    if-eqz v6, :cond_8

    .line 378
    :try_start_1
    new-instance v7, Ljava/lang/String;

    invoke-static {v6}, Landroid/webkit/URLUtil;->getURLEncodingType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v6           #filename:Ljava/lang/String;
    .local v7, filename:Ljava/lang/String;
    move-object v6, v7

    .line 389
    .end local v7           #filename:Ljava/lang/String;
    .restart local v6       #filename:Ljava/lang/String;
    :cond_2
    :goto_1
    const/16 v12, 0x2e

    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 390
    .local v2, dotIndex:I
    if-gez v2, :cond_b

    .line 391
    if-eqz p2, :cond_3

    .line 392
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 393
    if-eqz v5, :cond_3

    .line 394
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 397
    :cond_3
    if-nez v5, :cond_4

    .line 398
    if-eqz p2, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "text/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 399
    const-string/jumbo v12, "text/html"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 400
    const-string v5, ".html"

    .line 428
    :cond_4
    :goto_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 345
    .end local v2           #dotIndex:I
    :catch_0
    move-exception v4

    .line 346
    .local v4, e2:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 351
    .end local v4           #e2:Ljava/io/UnsupportedEncodingException;
    :cond_5
    if-nez v6, :cond_1

    .line 354
    sget-object v12, Landroid/webkit/URLUtil;->COUNTRY_CODE:Ljava/lang/String;

    const-string v13, "KR"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 355
    move-object v1, p0

    .line 359
    .local v1, decodedUrl:Ljava/lang/String;
    :goto_3
    if-eqz v1, :cond_1

    .line 360
    const/16 v12, 0x3f

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 362
    .local v10, queryIndex:I
    if-lez v10, :cond_6

    .line 363
    const/4 v12, 0x0

    invoke-virtual {v1, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 365
    :cond_6
    const-string v12, "/"

    invoke-virtual {v1, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 366
    const/16 v12, 0x2f

    invoke-virtual {v1, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    add-int/lit8 v8, v12, 0x1

    .line 367
    .restart local v8       #index:I
    if-lez v8, :cond_1

    .line 368
    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 357
    .end local v1           #decodedUrl:Ljava/lang/String;
    .end local v8           #index:I
    .end local v10           #queryIndex:I
    :cond_7
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #decodedUrl:Ljava/lang/String;
    goto :goto_3

    .line 379
    .end local v1           #decodedUrl:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 380
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_1

    .line 383
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :cond_8
    if-nez v6, :cond_2

    .line 384
    const-string v6, "downloadfile"

    goto/16 :goto_1

    .line 402
    .restart local v2       #dotIndex:I
    :cond_9
    const-string v5, ".txt"

    goto :goto_2

    .line 405
    :cond_a
    const-string v5, ".bin"

    goto :goto_2

    .line 409
    :cond_b
    if-eqz p2, :cond_c

    .line 412
    const/16 v12, 0x2e

    invoke-virtual {v6, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 413
    .local v9, lastDotIndex:I
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v12

    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 415
    .local v11, typeFromExt:Ljava/lang/String;
    if-eqz v11, :cond_c

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 416
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 417
    if-eqz v5, :cond_c

    .line 418
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 422
    .end local v9           #lastDotIndex:I
    .end local v11           #typeFromExt:Ljava/lang/String;
    :cond_c
    if-nez v5, :cond_d

    .line 423
    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 425
    :cond_d
    const/4 v12, 0x0

    invoke-virtual {v6, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2
.end method

.method public static guessUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "inUrl"

    .prologue
    .line 65
    move-object v1, p0

    .line 70
    .local v1, retVal:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 105
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 71
    .restart local p0
    :cond_1
    const-string v3, "about:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    const-string v3, "data:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 75
    const-string v3, "file:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 77
    const-string/jumbo v3, "javascript:"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "rtsp:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 87
    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 91
    :cond_2
    :try_start_0
    new-instance v2, Landroid/net/WebAddress;

    invoke-direct {v2, p0}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .local v2, webAddress:Landroid/net/WebAddress;
    invoke-virtual {v2}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "www."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".com"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/WebAddress;->setHost(Ljava/lang/String;)V

    .line 105
    :cond_3
    invoke-virtual {v2}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 92
    .end local v2           #webAddress:Landroid/net/WebAddress;
    :catch_0
    move-exception v0

    .local v0, ex:Landroid/net/ParseException;
    move-object p0, v1

    .line 97
    goto :goto_0
.end method

.method public static isAboutUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 231
    if-eqz p0, :cond_0

    const-string v0, "about:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAssetUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 197
    if-eqz p0, :cond_0

    const-string v0, "file:///android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isContentUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 280
    if-eqz p0, :cond_0

    const-string v0, "content:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCookielessProxyUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    if-eqz p0, :cond_0

    const-string v0, "file:///cookieless_proxy/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDataUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 238
    if-eqz p0, :cond_0

    const-string v0, "data:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFileUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 222
    if-eqz p0, :cond_0

    const-string v0, "file://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "file:///android_asset/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file:///cookieless_proxy/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHttpUrl(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 252
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isHttpsUrl(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 261
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isJavaScriptUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 245
    if-eqz p0, :cond_0

    const-string/jumbo v0, "javascript:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkUrl(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 270
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isResourceUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 205
    if-eqz p0, :cond_0

    const-string v0, "file:///android_res/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidUrl(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    const/4 v0, 0x0

    .line 287
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isResourceUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "contentDisposition"

    .prologue
    .line 447
    :try_start_0
    sget-object v1, Landroid/webkit/URLUtil;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 448
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 454
    .end local v0           #m:Ljava/util/regex/Matcher;
    :goto_0
    return-object v1

    .line 451
    :catch_0
    move-exception v1

    .line 454
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static parseHex(B)I
    .locals 3
    .parameter "b"

    .prologue
    .line 186
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    .line 188
    :goto_0
    return v0

    .line 187
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 188
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 190
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stripAnchor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 305
    const/16 v1, 0x23

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 306
    .local v0, anchorIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 307
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 309
    .end local p0
    :cond_0
    return-object p0
.end method

.method static verifyURLEncoding(Ljava/lang/String;)Z
    .locals 6
    .parameter "url"

    .prologue
    const/16 v5, 0x25

    const/4 v3, 0x0

    .line 163
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 164
    .local v0, count:I
    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v3

    .line 168
    :cond_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 169
    .local v2, index:I
    :goto_1
    if-ltz v2, :cond_2

    if-ge v2, v0, :cond_2

    .line 170
    add-int/lit8 v4, v0, -0x2

    if-ge v2, v4, :cond_0

    .line 172
    add-int/lit8 v2, v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Landroid/webkit/URLUtil;->parseHex(B)I

    .line 173
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Landroid/webkit/URLUtil;->parseHex(B)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_1

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, e:Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 182
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method
