.class public Lcom/broadcom/bt/app/opp/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final mNeedMoveImg:Z

.field private static final mNeedMoveMisc:Z

.field private static final mNeedMoveMus:Z

.field private static final mNeedMoveVid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 66
    sget-object v0, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->OPP_EXCHANGE_PATH:Ljava/lang/String;

    sget-object v3, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->mimgSdcardLocation:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/broadcom/bt/app/opp/util/Utils;->mNeedMoveImg:Z

    .line 68
    sget-object v0, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->OPP_EXCHANGE_PATH:Ljava/lang/String;

    sget-object v3, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->mmusSdcardLocation:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/broadcom/bt/app/opp/util/Utils;->mNeedMoveMus:Z

    .line 70
    sget-object v0, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->OPP_EXCHANGE_PATH:Ljava/lang/String;

    sget-object v3, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->mvidSdcardLocation:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/broadcom/bt/app/opp/util/Utils;->mNeedMoveMisc:Z

    .line 72
    sget-object v0, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->OPP_EXCHANGE_PATH:Ljava/lang/String;

    sget-object v3, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->mmiscSdcardLocation:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    sput-boolean v1, Lcom/broadcom/bt/app/opp/util/Utils;->mNeedMoveVid:Z

    return-void

    :cond_0
    move v0, v2

    .line 66
    goto :goto_0

    :cond_1
    move v0, v2

    .line 68
    goto :goto_1

    :cond_2
    move v0, v2

    .line 70
    goto :goto_2

    :cond_3
    move v1, v2

    .line 72
    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canResolveFilePath(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2
    .parameter "ctx"
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 517
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, uriString:Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/broadcom/bt/app/opp/data/Constants;->CONTACT_URI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/broadcom/bt/app/opp/data/Constants;->GROUP_URI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 520
    :cond_0
    const/4 v1, 0x0

    .line 522
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static checkDestinationDir(I)Z
    .locals 3
    .parameter "fileType"

    .prologue
    .line 363
    invoke-static {p0}, Lcom/broadcom/bt/app/opp/util/Utils;->getDestinationDir(I)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, destDir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    const/4 v2, 0x1

    .line 369
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    goto :goto_0
.end method

.method public static getContentFilePath(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "ctx"
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    const/4 v11, 0x0

    .line 533
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/app/opp/util/Utils;->canResolveFilePath(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v9, v11

    .line 570
    :goto_0
    return-object v9

    .line 537
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 538
    .local v10, uriString:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_1

    .line 539
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 543
    :cond_1
    const/4 v9, 0x0

    .line 544
    .local v9, filePath:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 545
    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez v0, :cond_2

    move-object v9, v11

    .line 546
    goto :goto_0

    .line 548
    :cond_2
    const/4 v6, 0x0

    .line 550
    .local v6, c:Landroid/database/Cursor;
    const/4 v1, 0x2

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 554
    :goto_1
    if-nez v6, :cond_3

    move-object v9, v11

    .line 555
    goto :goto_0

    .line 551
    :catch_0
    move-exception v8

    .line 552
    .local v8, e:Ljava/lang/Throwable;
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->getLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Unable to get content file path"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 556
    .end local v8           #e:Ljava/lang/Throwable;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 560
    const-string v1, "_data"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 561
    .local v7, colIndex:I
    if-ltz v7, :cond_4

    .line 562
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 568
    .end local v7           #colIndex:I
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getDestinationDir(I)Ljava/lang/String;
    .locals 1
    .parameter "fileType"

    .prologue
    .line 375
    sget-object v0, Lcom/broadcom/bt/app/opp/OppApplicationConfig;->OPP_EXCHANGE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static getFileBase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 277
    if-nez p0, :cond_1

    .line 278
    const/4 p0, 0x0

    .line 283
    .end local p0
    .local v0, index:I
    :cond_0
    :goto_0
    return-object p0

    .line 279
    .end local v0           #index:I
    .restart local p0
    :cond_1
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 280
    .restart local v0       #index:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 281
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "fileName"

    .prologue
    const/4 v1, 0x0

    .line 294
    if-nez p0, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-object v1

    .line 296
    :cond_1
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 297
    .local v0, index:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 298
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 627
    if-eqz p0, :cond_1

    .line 628
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, fileName:Ljava/lang/String;
    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 630
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 634
    .end local v0           #fileName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 259
    if-nez p0, :cond_1

    .line 260
    const/4 p0, 0x0

    .line 266
    .end local p0
    .local v0, index:I
    :cond_0
    :goto_0
    return-object p0

    .line 262
    .end local v0           #index:I
    .restart local p0
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 263
    .restart local v0       #index:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 264
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileExtension"

    .prologue
    .line 212
    if-nez p0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNewFileName(Ljava/io/File;)Ljava/io/File;
    .locals 10
    .parameter "f"

    .prologue
    .line 592
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 610
    .end local p0
    :goto_0
    return-object p0

    .line 595
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 596
    .local v5, fileName:Ljava/lang/String;
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileBase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 597
    .local v3, fileBaseName:Ljava/lang/String;
    move-object v1, v3

    .line 598
    .local v1, currentFileBaseName:Ljava/lang/String;
    invoke-static {v5}, Lcom/broadcom/bt/app/opp/util/Utils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 599
    .local v4, fileExt:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 600
    .local v2, dir:Ljava/io/File;
    const/4 v6, 0x0

    .line 601
    .local v6, newFile:Ljava/io/File;
    const/4 v0, 0x2

    .line 603
    .local v0, count:I
    :cond_1
    const/16 v7, 0x2710

    if-lt v0, v7, :cond_2

    .line 604
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 605
    const/4 v0, 0x2

    .line 607
    :cond_2
    new-instance v6, Ljava/io/File;

    .end local v6           #newFile:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 608
    .restart local v6       #newFile:Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    .line 609
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    move-object p0, v6

    .line 610
    goto :goto_0
.end method

.method public static getObjectTypeFromFileExt(Ljava/lang/String;)I
    .locals 4
    .parameter "fileExtension"

    .prologue
    const/4 v2, 0x0

    .line 227
    if-nez p0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v2

    .line 229
    :cond_1
    const-string v3, "vcf"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    const/4 v2, 0x1

    goto :goto_0

    .line 231
    :cond_2
    const-string v3, "vcs"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 232
    const/4 v2, 0x5

    goto :goto_0

    .line 235
    :cond_3
    const/4 v0, 0x0

    .line 236
    .local v0, fileType:I
    invoke-static {p0}, Lcom/broadcom/bt/app/opp/util/Utils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, mimetype:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 239
    invoke-static {v1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 241
    :cond_4
    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 242
    const/4 v2, 0x3

    goto :goto_0

    .line 243
    :cond_5
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 244
    const/4 v2, 0x2

    goto :goto_0

    .line 245
    :cond_6
    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public static getObjectTypeFromMimeType(Ljava/lang/String;)I
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 194
    if-eqz p0, :cond_4

    .line 195
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, mType:Ljava/lang/String;
    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const/4 v1, 0x3

    .line 208
    .end local v0           #mType:Ljava/lang/String;
    :goto_0
    return v1

    .line 198
    .restart local v0       #mType:Ljava/lang/String;
    :cond_0
    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    const/4 v1, 0x2

    goto :goto_0

    .line 200
    :cond_1
    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    const/4 v1, 0x4

    goto :goto_0

    .line 202
    :cond_2
    const-string v1, "text/x-vcard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 203
    const/4 v1, 0x1

    goto :goto_0

    .line 204
    :cond_3
    const-string v1, "text/x-vcalendar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 205
    const/4 v1, 0x5

    goto :goto_0

    .line 208
    .end local v0           #mType:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getObjectTypeResourceId(I)I
    .locals 1
    .parameter "mObjectType"

    .prologue
    .line 106
    packed-switch p0, :pswitch_data_0

    .line 118
    const v0, 0x7f05009f

    :goto_0
    return v0

    .line 108
    :pswitch_0
    const v0, 0x7f05009c

    goto :goto_0

    .line 110
    :pswitch_1
    const v0, 0x7f05009d

    goto :goto_0

    .line 112
    :pswitch_2
    const v0, 0x7f05009e

    goto :goto_0

    .line 114
    :pswitch_3
    const v0, 0x7f05009b

    goto :goto_0

    .line 116
    :pswitch_4
    const v0, 0x7f05009a

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public static getObjectTypeResourceId_Cap(I)I
    .locals 1
    .parameter "mObjectType"

    .prologue
    .line 171
    packed-switch p0, :pswitch_data_0

    .line 183
    const v0, 0x7f0500ab

    :goto_0
    return v0

    .line 173
    :pswitch_0
    const v0, 0x7f0500a8

    goto :goto_0

    .line 175
    :pswitch_1
    const v0, 0x7f0500a9

    goto :goto_0

    .line 177
    :pswitch_2
    const v0, 0x7f0500aa

    goto :goto_0

    .line 179
    :pswitch_3
    const v0, 0x7f0500a7

    goto :goto_0

    .line 181
    :pswitch_4
    const v0, 0x7f0500a6

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public static getObjectTypeResourceId_Caps_Plural(I)I
    .locals 1
    .parameter "mObjectType"

    .prologue
    .line 147
    packed-switch p0, :pswitch_data_0

    .line 159
    const v0, 0x7f0500b1

    :goto_0
    return v0

    .line 149
    :pswitch_0
    const v0, 0x7f0500ae

    goto :goto_0

    .line 151
    :pswitch_1
    const v0, 0x7f0500af

    goto :goto_0

    .line 153
    :pswitch_2
    const v0, 0x7f0500b0

    goto :goto_0

    .line 155
    :pswitch_3
    const v0, 0x7f0500ad

    goto :goto_0

    .line 157
    :pswitch_4
    const v0, 0x7f0500ac

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public static getObjectTypeResourceId_Plural(I)I
    .locals 1
    .parameter "mObjectType"

    .prologue
    .line 130
    packed-switch p0, :pswitch_data_0

    .line 142
    const v0, 0x7f0500a5

    :goto_0
    return v0

    .line 132
    :pswitch_0
    const v0, 0x7f0500a2

    goto :goto_0

    .line 134
    :pswitch_1
    const v0, 0x7f0500a3

    goto :goto_0

    .line 136
    :pswitch_2
    const v0, 0x7f0500a4

    goto :goto_0

    .line 138
    :pswitch_3
    const v0, 0x7f0500a1

    goto :goto_0

    .line 140
    :pswitch_4
    const v0, 0x7f0500a0

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public static isFileUri(Landroid/net/Uri;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 617
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRecognizedFileType(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "fileUri"
    .parameter "mimetype"

    .prologue
    .line 80
    const/4 v2, 0x1

    .line 83
    .local v2, ret:Z
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RecognizedFileType() fileUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mimetype: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, mimetypeIntent:Landroid/content/Intent;
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 92
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NO application to handle MIME type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v2, 0x0

    .line 95
    :cond_0
    return v2
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .parameter "sourceName"
    .parameter "destName"

    .prologue
    .line 311
    const/4 v1, 0x0

    .line 312
    .local v1, source:Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 315
    .local v0, dest:Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 317
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 318
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 319
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 320
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 321
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 322
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    if-eqz v1, :cond_2

    .line 328
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 334
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 335
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 341
    :cond_3
    :goto_1
    return-void

    .line 323
    :catch_0
    move-exception v6

    .line 324
    .local v6, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 327
    if-eqz v1, :cond_4

    .line 328
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 334
    :cond_4
    :goto_2
    if-eqz v0, :cond_3

    .line 335
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 337
    :catch_1
    move-exception v6

    .line 338
    :goto_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 326
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 327
    if-eqz v1, :cond_5

    .line 328
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 334
    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    .line 335
    :try_start_7
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 326
    :cond_6
    :goto_5
    throw v2

    .line 330
    :catch_2
    move-exception v6

    .line 331
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 337
    .end local v6           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v6

    .line 338
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 330
    :catch_4
    move-exception v6

    .line 331
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 330
    .end local v6           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v6

    .line 331
    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 337
    .end local v6           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v6

    goto :goto_3
.end method

.method public static needToMoveFile(I)Z
    .locals 1
    .parameter "fileType"

    .prologue
    .line 348
    packed-switch p0, :pswitch_data_0

    .line 356
    sget-boolean v0, Lcom/broadcom/bt/app/opp/util/Utils;->mNeedMoveMisc:Z

    :goto_0
    return v0

    .line 350
    :pswitch_0
    sget-boolean v0, Lcom/broadcom/bt/app/opp/util/Utils;->mNeedMoveImg:Z

    goto :goto_0

    .line 352
    :pswitch_1
    sget-boolean v0, Lcom/broadcom/bt/app/opp/util/Utils;->mNeedMoveMus:Z

    goto :goto_0

    .line 354
    :pswitch_2
    sget-boolean v0, Lcom/broadcom/bt/app/opp/util/Utils;->mNeedMoveVid:Z

    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static setDefaultDirPermission(Ljava/lang/String;)V
    .locals 2
    .parameter "dirpath"

    .prologue
    const/4 v1, -0x1

    .line 638
    const/16 v0, 0x1ed

    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 640
    return-void
.end method

.method public static setDefaultFilePermission(Ljava/lang/String;)V
    .locals 2
    .parameter "filepath"

    .prologue
    const/4 v1, -0x1

    .line 643
    const/16 v0, 0x1e4

    invoke-static {p0, v0, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 645
    return-void
.end method
