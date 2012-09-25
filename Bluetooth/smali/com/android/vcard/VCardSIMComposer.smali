.class public Lcom/android/vcard/VCardSIMComposer;
.super Ljava/lang/Object;
.source "VCardSIMComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;
    }
.end annotation


# static fields
.field private static final ICC_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private IS_PBAP_FILTER_ADR:Z

.field private IS_PBAP_FILTER_BDAY:Z

.field private IS_PBAP_FILTER_EMAIL:Z

.field private IS_PBAP_FILTER_NICKNAME:Z

.field private IS_PBAP_FILTER_NOTE:Z

.field private IS_PBAP_FILTER_ORG:Z

.field private IS_PBAP_FILTER_PHOTO:Z

.field private IS_PBAP_FILTER_TEL:Z

.field private IS_PBAP_FILTER_TITLE:Z

.field private IS_PBAP_FILTER_URL:Z

.field mAppParam:[B

.field private final mCareHandlerErrors:Z

.field private final mCharset:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mErrorReason:Ljava/lang/String;

.field private final mHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsDoCoMo:Z

.field private mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

.field private mTerminateIsCalled:Z

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/VCardSIMComposer;->ICC_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "vcardType"
    .parameter "charset"

    .prologue
    .line 276
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/vcard/VCardSIMComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 277
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "vcardType"
    .parameter "charset"
    .parameter "careHandlerErrors"

    .prologue
    .line 313
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const-string v1, "No error"

    iput-object v1, p0, Lcom/android/vcard/VCardSIMComposer;->mErrorReason:Ljava/lang/String;

    .line 253
    const/16 v1, 0xa

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/vcard/VCardSIMComposer;->mAppParam:[B

    .line 314
    iput-object p1, p0, Lcom/android/vcard/VCardSIMComposer;->mContext:Landroid/content/Context;

    .line 315
    iput p2, p0, Lcom/android/vcard/VCardSIMComposer;->mVCardType:I

    .line 316
    iput-boolean p4, p0, Lcom/android/vcard/VCardSIMComposer;->mCareHandlerErrors:Z

    .line 317
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vcard/VCardSIMComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 319
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/vcard/VCardSIMComposer;->mIsDoCoMo:Z

    .line 320
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/vcard/VCardSIMComposer;->mHandlerList:Ljava/util/List;

    .line 322
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p3, "UTF-8"

    .line 323
    :cond_0
    invoke-static {p2}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "UTF-8"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 326
    .local v0, shouldAppendCharsetParam:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/vcard/VCardSIMComposer;->mIsDoCoMo:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_6

    .line 328
    :cond_2
    const-string v1, "SHIFT_JIS"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 348
    iput-object p3, p0, Lcom/android/vcard/VCardSIMComposer;->mCharset:Ljava/lang/String;

    .line 382
    :goto_1
    const-string v1, "VCardSIMComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use the charset \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vcard/VCardSIMComposer;->mCharset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void

    .line 323
    .end local v0           #shouldAppendCharsetParam:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 353
    .restart local v0       #shouldAppendCharsetParam:Z
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 354
    const-string v1, "SHIFT_JIS"

    iput-object v1, p0, Lcom/android/vcard/VCardSIMComposer;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 364
    :cond_5
    iput-object p3, p0, Lcom/android/vcard/VCardSIMComposer;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 368
    :cond_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 369
    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/android/vcard/VCardSIMComposer;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 378
    :cond_7
    iput-object p3, p0, Lcom/android/vcard/VCardSIMComposer;->mCharset:Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;[B)V
    .locals 9
    .parameter "context"
    .parameter "vcardType"
    .parameter "charset"
    .parameter "pceFilter"

    .prologue
    const/16 v8, 0x8

    const/16 v7, 0x9

    const/4 v6, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 282
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/vcard/VCardSIMComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 284
    iget v3, p0, Lcom/android/vcard/VCardSIMComposer;->mVCardType:I

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    move v0, v1

    .line 285
    .local v0, useFilter:Z
    :goto_0
    const-string v3, "VCardSIMComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BTUI] ### VCardSIMComposer : vcardType("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit16 v5, p2, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") charset("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/vcard/VCardSIMComposer;->mCharset:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") useFilter("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iput-object p4, p0, Lcom/android/vcard/VCardSIMComposer;->mAppParam:[B

    .line 289
    iget-object v3, p0, Lcom/android/vcard/VCardSIMComposer;->mAppParam:[B

    aget-byte v3, v3, v7

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/android/vcard/VCardSIMComposer;->IS_PBAP_FILTER_PHOTO:Z

    .line 290
    iget-object v3, p0, Lcom/android/vcard/VCardSIMComposer;->mAppParam:[B

    aget-byte v3, v3, v7

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_2

    move v3, v1

    :goto_2
    iput-boolean v3, p0, Lcom/android/vcard/VCardSIMComposer;->IS_PBAP_FILTER_BDAY:Z

    .line 291
    iget-object v3, p0, Lcom/android/vcard/VCardSIMComposer;->mAppParam:[B

    aget-byte v3, v3, v7

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_3

    move v3, v1

    :goto_3
    iput-boolean v3, p0, Lcom/android/vcard/VCardSIMComposer;->IS_PBAP_FILTER_ADR:Z

    .line 292
    iget-object v3, p0, Lcom/android/vcard/VCardSIMComposer;->mAppParam:[B

    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_4

    move v3, v1

    :goto_4
    iput-boolean v3, p0, Lcom/android/vcard/VCardSIMComposer;->IS_PBAP_FILTER_TEL:Z

    .line 294
    iget-object v3, p0, Lcom/android/vcard/VCardSIMComposer;->mAppParam:[B

    aget-byte v3, v3, v8

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    move v3, v1

    :goto_5
    iput-boolean v3, p0, Lcom/android/vcard/VCardSIMComposer;->IS_PBAP_FILTER_EMAIL:Z

    .line 295
    iget-object v3, p0, Lcom/android/vcard/VCardSIMComposer;->mAppParam:[B

    aget-byte v3, v3, v8

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    move v3, v1

    :goto_6
    iput-boolean v3, p0, Lcom/android/vcard/VCardSIMComposer;->IS_PBAP_FILTER_TITLE:Z

    .line 297
    iget-object v3, p0, Lcom/android/vcard/VCardSIMComposer;->mAppParam:[B

    aget-byte v3, v3, v6

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    move v3, v1

    :goto_7
    iput-boolean v3, p0, Lcom/android/vcard/VCardSIMComposer;->IS_PBAP_FILTER_ORG:Z

    .line 298
    iget-object v3, p0, Lcom/android/vcard/VCardSIMComposer;->mAppParam:[B

    aget-byte v3, v3, v6

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_8

    move v3, v1

    :goto_8
    iput-boolean v3, p0, Lcom/android/vcard/VCardSIMComposer;->IS_PBAP_FILTER_NOTE:Z

    .line 299
    iget-object v3, p0, Lcom/android/vcard/VCardSIMComposer;->mAppParam:[B

    aget-byte v3, v3, v6

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_9

    move v3, v1

    :goto_9
    iput-boolean v3, p0, Lcom/android/vcard/VCardSIMComposer;->IS_PBAP_FILTER_URL:Z

    .line 300
    iget-object v3, p0, Lcom/android/vcard/VCardSIMComposer;->mAppParam:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_a

    :goto_a
    iput-boolean v1, p0, Lcom/android/vcard/VCardSIMComposer;->IS_PBAP_FILTER_NICKNAME:Z

    .line 301
    return-void

    .end local v0           #useFilter:Z
    :cond_0
    move v0, v2

    .line 284
    goto/16 :goto_0

    .restart local v0       #useFilter:Z
    :cond_1
    move v3, v2

    .line 289
    goto :goto_1

    :cond_2
    move v3, v2

    .line 290
    goto :goto_2

    :cond_3
    move v3, v2

    .line 291
    goto :goto_3

    :cond_4
    move v3, v2

    .line 292
    goto :goto_4

    :cond_5
    move v3, v2

    .line 294
    goto :goto_5

    :cond_6
    move v3, v2

    .line 295
    goto :goto_6

    :cond_7
    move v3, v2

    .line 297
    goto :goto_7

    :cond_8
    move v3, v2

    .line 298
    goto :goto_8

    :cond_9
    move v3, v2

    .line 299
    goto :goto_9

    :cond_a
    move v1, v2

    .line 300
    goto :goto_a
.end method

.method private BtUiLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 651
    const-string v0, "VCardSIMComposer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-void
.end method

.method private createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 13
    .parameter "contactId"
    .parameter "getEntityIteratorMethod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 508
    new-instance v0, Lcom/android/vcard/VCardBuilder;

    iget v9, p0, Lcom/android/vcard/VCardSIMComposer;->mVCardType:I

    const-string v10, "UTF-8"

    invoke-direct {v0, v9, v10}, Lcom/android/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .line 509
    .local v0, builder:Lcom/android/vcard/VCardBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v1, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-object v9, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 513
    .local v8, pos:I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 514
    .local v4, name:Landroid/content/ContentValues;
    iget-object v9, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 515
    .local v5, nameStr:Ljava/lang/String;
    const-string v9, "_id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 516
    const-string v9, "mimetype"

    const-string v10, "vnd.android.cursor.item/name"

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v9, "data3"

    invoke-virtual {v4, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v9, "data1"

    invoke-virtual {v4, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v9, "is_primary"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 520
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendNameProperties(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 522
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 524
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 525
    .local v6, phone:Landroid/content/ContentValues;
    iget-object v9, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 526
    .local v7, phoneStr:Ljava/lang/String;
    const-string v9, "_id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    const-string v9, "mimetype"

    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v9, "data1"

    invoke-virtual {v6, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v9, "data2"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 530
    const-string v9, "is_primary"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 531
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v9, p0, Lcom/android/vcard/VCardSIMComposer;->mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

    invoke-virtual {v0, v1, v9}, Lcom/android/vcard/VCardBuilder;->appendPhones(Ljava/util/List;Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/android/vcard/VCardBuilder;

    .line 535
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 537
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 538
    .local v2, email:Landroid/content/ContentValues;
    iget-object v9, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 539
    .local v3, emailData:Ljava/lang/String;
    const-string v9, "mimetype"

    const-string v10, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v9, "data1"

    invoke-virtual {v2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v9, "data2"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 542
    const-string v9, "is_primary"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 543
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    iget v9, p0, Lcom/android/vcard/VCardSIMComposer;->mVCardType:I

    const/high16 v10, 0x8

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    .line 546
    iget-boolean v9, p0, Lcom/android/vcard/VCardSIMComposer;->IS_PBAP_FILTER_EMAIL:Z

    if-eqz v9, :cond_0

    .line 548
    const-string v9, "[BTUI] ### createOneEntryInternal() : IS_PBAP_FILTER_EMAIL"

    invoke-direct {p0, v9}, Lcom/android/vcard/VCardSIMComposer;->BtUiLog(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendEmails(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 555
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 557
    invoke-virtual {v0}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 552
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendEmails(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    goto :goto_0
.end method


# virtual methods
.method public addHandler(Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 389
    if-eqz p1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    :cond_0
    return-void
.end method

.method public createOneEntry()Z
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardSIMComposer;->createOneEntry(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public createOneEntry(Ljava/lang/reflect/Method;)Z
    .locals 9
    .parameter "getEntityIteratorMethod"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 469
    iget-object v7, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 470
    :cond_0
    const-string v6, "The vCard composer object is not correctly initialized"

    iput-object v6, p0, Lcom/android/vcard/VCardSIMComposer;->mErrorReason:Ljava/lang/String;

    .line 503
    :goto_0
    return v5

    .line 475
    :cond_1
    :try_start_0
    const-string v7, "-1"

    invoke-direct {p0, v7, p1}, Lcom/android/vcard/VCardSIMComposer;->createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 487
    .local v4, vcard:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 491
    iget-boolean v7, p0, Lcom/android/vcard/VCardSIMComposer;->mCareHandlerErrors:Z

    if-eqz v7, :cond_3

    .line 492
    iget-object v7, p0, Lcom/android/vcard/VCardSIMComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;

    .line 493
    .local v2, handler:Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;
    invoke-interface {v2, v4}, Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 476
    .end local v2           #handler:Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #vcard:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 477
    .local v0, e:Lcom/android/vcard/exception/VCardException;
    :try_start_1
    const-string v6, "VCardSIMComposer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VCardException has been thrown: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/vcard/exception/VCardException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    iget-object v6, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 479
    .end local v0           #e:Lcom/android/vcard/exception/VCardException;
    :catch_1
    move-exception v1

    .line 482
    .local v1, error:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v5, "VCardSIMComposer"

    const-string v7, "OutOfMemoryError occured. Ignore the entry."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 487
    iget-object v5, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move v5, v6

    goto :goto_0

    .end local v1           #error:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    throw v5

    .line 498
    .restart local v4       #vcard:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/vcard/VCardSIMComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;

    .line 499
    .restart local v2       #handler:Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;
    invoke-interface {v2, v4}, Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    goto :goto_1

    .end local v2           #handler:Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;
    :cond_4
    move v5, v6

    .line 503
    goto :goto_0
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 597
    iget-boolean v0, p0, Lcom/android/vcard/VCardSIMComposer;->mTerminateIsCalled:Z

    if-nez v0, :cond_0

    .line 598
    const-string v0, "VCardSIMComposer"

    const-string v1, "terminate() is not called yet. We call it in finalize() step."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {p0}, Lcom/android/vcard/VCardSIMComposer;->terminate()V

    .line 601
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 610
    const-string v0, "VCardSIMComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v0, 0x0

    .line 613
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 638
    const/4 v0, -0x1

    .line 640
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    goto :goto_0
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "contentUri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 411
    if-nez p1, :cond_0

    .line 412
    const/4 v0, 0x0

    .line 457
    :goto_0
    return v0

    .line 415
    :cond_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardSIMComposer;->mCareHandlerErrors:Z

    if-eqz v0, :cond_3

    .line 416
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 418
    .local v8, finishedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;>;"
    iget-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;

    .line 419
    .local v9, handler:Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;
    iget-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v0}, Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 420
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;

    .line 421
    .local v7, finished:Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;
    invoke-interface {v7}, Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;->onTerminate()V

    goto :goto_1

    .line 423
    .end local v7           #finished:Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 428
    .end local v8           #finishedList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;>;"
    .end local v9           #handler:Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;

    .line 429
    .restart local v9       #handler:Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;
    iget-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v0}, Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    goto :goto_2

    .line 433
    .end local v9           #handler:Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;
    :cond_4
    sget-object v0, Lcom/android/vcard/VCardSIMComposer;->ICC_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 434
    const-string v0, "The Uri vCard composer received is not supported by the composer."

    iput-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mErrorReason:Ljava/lang/String;

    .line 435
    const/4 v0, 0x0

    goto :goto_0

    .line 437
    :cond_5
    iget-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    .line 440
    iget-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    .line 441
    const-string v0, "Failed to get database information"

    iput-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mErrorReason:Ljava/lang/String;

    .line 442
    const/4 v0, 0x0

    goto :goto_0

    .line 445
    :cond_6
    invoke-virtual {p0}, Lcom/android/vcard/VCardSIMComposer;->getCount()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_8

    .line 447
    :cond_7
    :try_start_0
    iget-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    .line 452
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mErrorReason:Ljava/lang/String;

    .line 454
    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 448
    :catch_0
    move-exception v6

    .line 449
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "VCardSIMComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException on Cursor#close(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    .line 452
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mErrorReason:Ljava/lang/String;

    goto :goto_3

    .line 451
    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    .line 452
    const-string v1, "There\'s no exportable in the database"

    iput-object v1, p0, Lcom/android/vcard/VCardSIMComposer;->mErrorReason:Ljava/lang/String;

    throw v0

    .line 457
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 622
    const-string v0, "VCardSIMComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v0, 0x0

    .line 625
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    .line 631
    :cond_0
    const/4 v0, 0x0

    .line 633
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setPhoneNumberTranslationCallback(Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/vcard/VCardSIMComposer;->mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

    .line 576
    return-void
.end method

.method public terminate()V
    .locals 6

    .prologue
    .line 579
    iget-object v3, p0, Lcom/android/vcard/VCardSIMComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;

    .line 580
    .local v1, handler:Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;
    invoke-interface {v1}, Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;->onTerminate()V

    goto :goto_0

    .line 583
    .end local v1           #handler:Lcom/android/vcard/VCardSIMComposer$OneEntryHandler;
    :cond_0
    iget-object v3, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    .line 585
    :try_start_0
    iget-object v3, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/vcard/VCardSIMComposer;->mCursor:Landroid/database/Cursor;

    .line 592
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/vcard/VCardSIMComposer;->mTerminateIsCalled:Z

    .line 593
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "VCardSIMComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteException on Cursor#close(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
