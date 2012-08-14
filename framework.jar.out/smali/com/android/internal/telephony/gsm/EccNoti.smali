.class public Lcom/android/internal/telephony/gsm/EccNoti;
.super Ljava/lang/Object;
.source "EccNoti.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/EccNoti$1;,
        Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;
    }
.end annotation


# static fields
.field public static final ACTIVATION_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/activation"

.field public static final ACTIVATION_VALUE:I = 0x1

.field public static final ALL_VALUE:I = 0x0

.field public static final AUTHORITY:Ljava/lang/String; = "ecc_notification"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATABASE_NAME:Ljava/lang/String; = "ecc_noti.db"

.field public static final DATABASE_VERSION:I = 0x1

.field private static final DBG:Z = true

.field public static final DTT_CODE_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/dtt_code"

.field public static final DTT_CODE_VALUE:I = 0x3

.field public static final DTT_DIGIT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/dtt_digit"

.field public static final DTT_DIGIT_VALUE:I = 0x4

.field public static final ECCNOTI_TABLE_NAME:Ljava/lang/String; = "ecc_noti"

.field public static final KEY_ACTIVATION:Ljava/lang/String; = "activation"

.field public static final KEY_DTT_CODE:Ljava/lang/String; = "dtt_code"

.field public static final KEY_DTT_DIGIT:Ljava/lang/String; = "dtt_digit"

.field public static final KEY_ID:Ljava/lang/String; = "_id"

.field public static final KEY_MMI:Ljava/lang/String; = "mmi"

.field public static final MMI_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/mmi"

.field public static final MMI_VALUE:I = 0x2

.field private static SENDING_ECN:Z = false

.field private static SENDING_UVR:Z = false

.field private static final TAG:Ljava/lang/String; = "ECC_NOTI"

.field public static final default_activation:Ljava/lang/String; = "ON"

.field public static final default_dtt_code:Ljava/lang/String; = "030708090B0C0E0F24405B5C5D5E5F601C1D1E1F1012131415161718191A"

.field public static final default_dtt_digit:Ljava/lang/String; = "897023415618307564290729486153"

.field public static final default_mmi:Ljava/lang/String; = "#119#"

.field static eccnoti_data:Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data; = null

.field private static mDecoded:Ljava/lang/String; = null

.field private static mMmiCode:Lcom/android/internal/telephony/gsm/GsmMmiCode; = null

.field private static mPhone:Lcom/android/internal/telephony/gsm/GSMPhone; = null

.field static mResolver:Landroid/content/ContentResolver; = null

.field private static mUiccapp:Lcom/android/internal/telephony/UiccCardApplication; = null

.field private static misProcessing:Z = false

.field private static notCloseCallScreen:Z = false

.field static final parsingEccNoti:Ljava/lang/String; = "ecn#"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    const-string v0, "content://ecc_notification/ecc_noti"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/EccNoti;->CONTENT_URI:Landroid/net/Uri;

    .line 123
    sput-boolean v1, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_ECN:Z

    .line 124
    sput-boolean v1, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_UVR:Z

    .line 125
    sput-boolean v1, Lcom/android/internal/telephony/gsm/EccNoti;->misProcessing:Z

    .line 126
    sput-boolean v1, Lcom/android/internal/telephony/gsm/EccNoti;->notCloseCallScreen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public static CompleteECCNoti()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 415
    const-string v0, "ECC_NOTI"

    const-string v1, "CompleteECCNoti "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    sput-boolean v2, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_ECN:Z

    .line 418
    sput-boolean v2, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_UVR:Z

    .line 419
    sput-boolean v2, Lcom/android/internal/telephony/gsm/EccNoti;->misProcessing:Z

    .line 420
    return-void
.end method

.method private static DecodeUNR(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "data"

    .prologue
    const/16 v11, 0x10

    const/4 v7, 0x0

    .line 503
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 508
    .local v0, Decoded:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/EccNoti;->StringToInt(Ljava/lang/String;)[I

    move-result-object v2

    .line 510
    .local v2, UNRHexa:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v2

    if-ge v3, v8, :cond_0

    .line 511
    const-string v8, "ECC_NOTI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DecodeUNR input Charater ( "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ) in Integer (0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10, v11}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ) to GSM Code ==>  0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v2, v3

    invoke-static {v10, v11}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 518
    :cond_0
    const/4 v6, 0x0

    .local v6, n:I
    :goto_1
    const/4 v8, 0x3

    if-ge v6, v8, :cond_7

    .line 520
    aget v8, v2, v6

    sget-object v9, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;->dtt_code:[I

    invoke-static {v8, v9}, Lcom/android/internal/telephony/gsm/EccNoti;->match(I[I)I

    move-result v5

    .line 521
    .local v5, matchingidx:I
    const-string v8, "ECC_NOTI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Digit Index tmpIdx : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " max length : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;->dtt_digit:[C

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    if-ltz v5, :cond_1

    sget-object v8, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;->dtt_digit:[C

    array-length v8, v8

    if-lt v5, v8, :cond_2

    :cond_1
    move-object v0, v7

    .line 553
    .end local v0           #Decoded:Ljava/lang/String;
    .end local v5           #matchingidx:I
    :goto_2
    return-object v0

    .line 528
    .restart local v0       #Decoded:Ljava/lang/String;
    .restart local v5       #matchingidx:I
    :cond_2
    sget-object v8, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;->dtt_digit:[C

    aget-char v8, v8, v5

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 529
    .local v1, Digitindex:I
    const-string v8, "ECC_NOTI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Digit Index Digitindex : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " max length : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    if-ltz v1, :cond_3

    array-length v8, v2

    if-lt v1, v8, :cond_4

    :cond_3
    move-object v0, v7

    .line 533
    goto :goto_2

    .line 536
    :cond_4
    add-int/lit8 v8, v1, 0x3

    aget v4, v2, v8

    .line 537
    .local v4, machingch:I
    const-string v8, "ECC_NOTI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Digit Index USSD Ch machingch : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    sget-object v8, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;->dtt_code:[I

    invoke-static {v4, v8}, Lcom/android/internal/telephony/gsm/EccNoti;->match(I[I)I

    move-result v5

    .line 541
    const-string v8, "ECC_NOTI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Digit Index USSD matchingidx : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " max length : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;->dtt_digit:[C

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    if-ltz v5, :cond_5

    sget-object v8, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;->dtt_digit:[C

    array-length v8, v8

    if-lt v5, v8, :cond_6

    :cond_5
    move-object v0, v7

    .line 545
    goto/16 :goto_2

    .line 548
    :cond_6
    sget-object v8, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;->dtt_digit:[C

    aget-char v8, v8, v5

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 551
    .end local v1           #Digitindex:I
    .end local v4           #machingch:I
    .end local v5           #matchingidx:I
    :cond_7
    const-string v7, "ECC_NOTI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Result( DecodeUNR ) ==>   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public static On(Ljava/lang/String;)Z
    .locals 7
    .parameter "Operation_Code"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 217
    new-instance v4, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/gsm/EccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;

    .line 224
    sget-object v4, Lcom/android/internal/telephony/gsm/EccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/gsm/EccNoti;->mResolver:Landroid/content/ContentResolver;

    if-nez v4, :cond_1

    .line 225
    :cond_0
    const-string v2, "ECC_NOTI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EccNoti Not allocate EccNot_Data resolver "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/EccNoti;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 259
    :goto_0
    return v2

    .line 230
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/gsm/EccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;

    sget-object v4, Lcom/android/internal/telephony/gsm/EccNoti;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "activation"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/EccNoti;->read(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;->activation:Ljava/lang/String;

    .line 232
    const-string v4, "ECC_NOTI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TMO OPerattion: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Enable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/gsm/EccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;

    sget-object v6, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;->activation:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget-object v4, Lcom/android/internal/telephony/gsm/EccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;

    sget-object v4, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;->activation:Ljava/lang/String;

    const-string v5, "ON"

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lcom/android/internal/telephony/gsm/EccNoti;->checkOperator_Code(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 240
    sget-object v4, Lcom/android/internal/telephony/gsm/EccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;

    sget-object v4, Lcom/android/internal/telephony/gsm/EccNoti;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "mmi"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/EccNoti;->read(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;->mmi:Ljava/lang/String;

    .line 241
    sget-object v4, Lcom/android/internal/telephony/gsm/EccNoti;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "dtt_code"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/EccNoti;->read(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, Temp_DTT_Code:Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/gsm/EccNoti;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "dtt_digit"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/EccNoti;->read(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, Temp_DTT_Digit:Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/gsm/EccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/EccNoti;->getGsmAlpaArrayFromDTTString(Ljava/lang/String;)[I

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;->dtt_code:[I

    .line 244
    sget-object v4, Lcom/android/internal/telephony/gsm/EccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/EccNoti;->StringtoChar(Ljava/lang/String;)[C

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;->dtt_digit:[C

    .line 248
    sput-boolean v2, Lcom/android/internal/telephony/gsm/EccNoti;->misProcessing:Z

    .line 250
    sput-boolean v3, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_ECN:Z

    .line 251
    sput-boolean v3, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_UVR:Z

    .line 253
    const-string v3, "ECC_NOTI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ECC Noti [On] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/gsm/EccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;

    sget-object v5, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;->mmi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 258
    .end local v0           #Temp_DTT_Code:Ljava/lang/String;
    .end local v1           #Temp_DTT_Digit:Ljava/lang/String;
    :cond_2
    const-string v2, "ECC_NOTI"

    const-string v4, "ECC Noti [OFF] "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 259
    goto/16 :goto_0
.end method

.method private static StringToInt(Ljava/lang/String;)[I
    .locals 4
    .parameter "str"

    .prologue
    .line 576
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 577
    .local v2, len:I
    new-array v0, v2, [I

    .line 579
    .local v0, Hexa:[I
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 580
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput v3, v0, v1

    .line 579
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 582
    :cond_0
    return-object v0
.end method

.method private static StringtoChar(Ljava/lang/String;)[C
    .locals 4
    .parameter "str"

    .prologue
    .line 590
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 591
    .local v1, len:I
    new-array v2, v1, [C

    .line 592
    .local v2, result:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 593
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v2, v0

    .line 592
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 596
    :cond_0
    return-object v2
.end method

.method private static checkOperator_Code(Ljava/lang/String;)Z
    .locals 6
    .parameter "mcc_mnc"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 621
    const/16 v4, 0x13

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "00101"

    aput-object v4, v0, v2

    const-string v4, "310160"

    aput-object v4, v0, v3

    const/4 v4, 0x2

    const-string v5, "310200"

    aput-object v5, v0, v4

    const/4 v4, 0x3

    const-string v5, "310210"

    aput-object v5, v0, v4

    const/4 v4, 0x4

    const-string v5, "310220"

    aput-object v5, v0, v4

    const/4 v4, 0x5

    const-string v5, "310230"

    aput-object v5, v0, v4

    const/4 v4, 0x6

    const-string v5, "310240"

    aput-object v5, v0, v4

    const/4 v4, 0x7

    const-string v5, "310250"

    aput-object v5, v0, v4

    const/16 v4, 0x8

    const-string v5, "310260"

    aput-object v5, v0, v4

    const/16 v4, 0x9

    const-string v5, "310270"

    aput-object v5, v0, v4

    const/16 v4, 0xa

    const-string v5, "310300"

    aput-object v5, v0, v4

    const/16 v4, 0xb

    const-string v5, "310310"

    aput-object v5, v0, v4

    const/16 v4, 0xc

    const-string v5, "310490"

    aput-object v5, v0, v4

    const/16 v4, 0xd

    const-string v5, "310530"

    aput-object v5, v0, v4

    const/16 v4, 0xe

    const-string v5, "310580"

    aput-object v5, v0, v4

    const/16 v4, 0xf

    const-string v5, "310590"

    aput-object v5, v0, v4

    const/16 v4, 0x10

    const-string v5, "310640"

    aput-object v5, v0, v4

    const/16 v4, 0x11

    const-string v5, "310660"

    aput-object v5, v0, v4

    const/16 v4, 0x12

    const-string v5, "310800"

    aput-object v5, v0, v4

    .line 628
    .local v0, Operator_Code:[Ljava/lang/String;
    if-nez p0, :cond_1

    .line 641
    :cond_0
    :goto_0
    return v2

    .line 631
    :cond_1
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 633
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 631
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 636
    :cond_3
    aget-object v4, v0, v1

    invoke-static {p0, v4}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 637
    goto :goto_0
.end method

.method private static getGsmAlpaArrayFromDTTString(Ljava/lang/String;)[I
    .locals 7
    .parameter "dtt_table"

    .prologue
    .line 605
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 606
    .local v0, Len:I
    div-int/lit8 v5, v0, 0x2

    new-array v1, v5, [I

    .line 608
    .local v1, TableArray:[I
    const/4 v3, 0x0

    .line 609
    .local v3, j:I
    const/4 v2, 0x0

    .local v2, i:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 610
    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v1, v4

    .line 609
    add-int/lit8 v2, v2, 0x2

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_0

    .line 613
    :cond_0
    return-object v1
.end method

.method public static getNotCloseCallScreenECCNoti()Z
    .locals 1

    .prologue
    .line 482
    sget-boolean v0, Lcom/android/internal/telephony/gsm/EccNoti;->notCloseCallScreen:Z

    return v0
.end method

.method public static getProcessECCNoti()Z
    .locals 1

    .prologue
    .line 444
    sget-boolean v0, Lcom/android/internal/telephony/gsm/EccNoti;->misProcessing:Z

    return v0
.end method

.method public static getResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 435
    sget-object v0, Lcom/android/internal/telephony/gsm/EccNoti;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public static isSENDING_ECN()Z
    .locals 1

    .prologue
    .line 463
    sget-boolean v0, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_ECN:Z

    return v0
.end method

.method public static isSENDING_UVR()Z
    .locals 1

    .prologue
    .line 472
    sget-boolean v0, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_UVR:Z

    return v0
.end method

.method private static match(I[I)I
    .locals 2
    .parameter "in"
    .parameter "out"

    .prologue
    .line 563
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 564
    aget v1, p1, v0

    if-ne p0, v1, :cond_0

    .line 567
    .end local v0           #i:I
    :goto_1
    return v0

    .line 563
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static processECN()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 334
    const-string v1, "ECC_NOTI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendECN MmiCode SENDING_ECN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_ECN:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget-boolean v1, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_ECN:Z

    if-eq v1, v4, :cond_0

    .line 337
    sput-boolean v4, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_ECN:Z

    .line 338
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_UVR:Z

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/telephony/gsm/EccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;

    sget-object v2, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;->mmi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ecn#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, ECN:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/EccNoti;->sendUSSD(Ljava/lang/String;)V

    .line 342
    :cond_0
    return-void
.end method

.method public static processUNR(Lcom/android/internal/telephony/MmiCode;)Z
    .locals 6
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 351
    if-nez p0, :cond_1

    .line 352
    const-string v3, "ECC_NOTI"

    const-string/jumbo v4, "processUNR fail [ MMI is NULL ]"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {}, Lcom/android/internal/telephony/gsm/EccNoti;->CompleteECCNoti()V

    move v0, v2

    .line 390
    :cond_0
    :goto_0
    return v0

    .line 357
    :cond_1
    invoke-interface {p0}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v1

    .line 358
    .local v1, state:Lcom/android/internal/telephony/MmiCode$State;
    const/4 v0, 0x0

    .line 360
    .local v0, ret:Z
    const-string v3, "ECC_NOTI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processEccNoti state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    sget-object v3, Lcom/android/internal/telephony/gsm/EccNoti$1;->$SwitchMap$com$android$internal$telephony$MmiCode$State:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/MmiCode$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v0, v2

    .line 386
    goto :goto_0

    .line 364
    :pswitch_0
    invoke-interface {p0}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_ECN:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 365
    invoke-interface {p0}, Lcom/android/internal/telephony/MmiCode;->getMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/EccNoti;->DecodeUNR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/gsm/EccNoti;->mDecoded:Ljava/lang/String;

    .line 366
    sget-object v2, Lcom/android/internal/telephony/gsm/EccNoti;->mDecoded:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 367
    const/4 v0, 0x0

    goto :goto_0

    .line 369
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 376
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/EccNoti;->CompleteECCNoti()V

    .line 377
    const/4 v0, 0x0

    .line 378
    goto :goto_0

    .line 381
    :pswitch_2
    invoke-static {}, Lcom/android/internal/telephony/gsm/EccNoti;->CompleteECCNoti()V

    .line 382
    const/4 v0, 0x0

    .line 383
    goto :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static processUVR()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 400
    const-string v0, "ECC_NOTI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processUVR MmiCode SENDING_UVR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_UVR:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    sget-boolean v0, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_UVR:Z

    if-eq v0, v3, :cond_0

    .line 403
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_ECN:Z

    .line 404
    sput-boolean v3, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_UVR:Z

    .line 405
    sget-object v0, Lcom/android/internal/telephony/gsm/EccNoti;->mDecoded:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/EccNoti;->sendUSSD(Ljava/lang/String;)V

    .line 407
    :cond_0
    return-void
.end method

.method public static read(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "resolver"
    .parameter "Key_value"

    .prologue
    .line 169
    const/4 v6, 0x0

    .line 170
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 173
    .local v8, retVal:Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/gsm/EccNoti;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 175
    if-eqz v6, :cond_0

    .line 176
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 177
    const-string v0, "activation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 197
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 198
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_1
    :goto_1
    const-string v0, "ECC_NOTI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "read Key value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  read value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-eqz v6, :cond_2

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_2
    return-object v8

    .line 179
    :cond_3
    :try_start_1
    const-string/jumbo v0, "mmi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 181
    :cond_4
    const-string v0, "dtt_code"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 182
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 183
    :cond_5
    const-string v0, "dtt_digit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 184
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 186
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ECC Noti Key value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    :catch_0
    move-exception v7

    .line 195
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "ECC_NOTI"

    const-string/jumbo v1, "read"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    if-eqz v6, :cond_1

    .line 198
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 191
    .end local v7           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_3
    const-string v0, "ECC_NOTI"

    const-string v1, "cursor cannot move to first"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 197
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_8

    .line 198
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method private static sendUSSD(Ljava/lang/String;)V
    .locals 2
    .parameter "mmi"

    .prologue
    .line 321
    sget-object v0, Lcom/android/internal/telephony/gsm/EccNoti;->mMmiCode:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    if-eqz v0, :cond_0

    .line 322
    sget-object v0, Lcom/android/internal/telephony/gsm/EccNoti;->mMmiCode:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 325
    :goto_0
    return-void

    .line 324
    :cond_0
    const-string v0, "ECC_NOTI"

    const-string/jumbo v1, "sendUSSD MmiCode is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setMMICode(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .locals 4
    .parameter "phone"
    .parameter "app"

    .prologue
    .line 274
    sput-object p1, Lcom/android/internal/telephony/gsm/EccNoti;->mUiccapp:Lcom/android/internal/telephony/UiccCardApplication;

    .line 275
    sput-object p0, Lcom/android/internal/telephony/gsm/EccNoti;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 280
    sget-boolean v1, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_ECN:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_UVR:Z

    if-nez v1, :cond_0

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/internal/telephony/gsm/EccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;

    sget-object v2, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;->mmi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ecn#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, ECN:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/telephony/gsm/EccNoti;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v2, Lcom/android/internal/telephony/gsm/EccNoti;->mUiccapp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gsm/EccNoti;->mMmiCode:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 288
    const-string v1, "ECC_NOTI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMMICode Setting ECN Format ==>  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/EccNoti;->eccnoti_data:Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;

    sget-object v3, Lcom/android/internal/telephony/gsm/EccNoti$EccNoti_Data;->mmi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return : [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/EccNoti;->mMmiCode:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local v0           #ECN:Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/android/internal/telephony/gsm/EccNoti;->mMmiCode:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    return-object v1

    .line 291
    :cond_0
    sget-boolean v1, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_ECN:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-boolean v1, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_UVR:Z

    if-nez v1, :cond_1

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/gsm/EccNoti;->mDecoded:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gsm/EccNoti;->mDecoded:Ljava/lang/String;

    .line 296
    sget-object v1, Lcom/android/internal/telephony/gsm/EccNoti;->mDecoded:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/gsm/EccNoti;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    sget-object v3, Lcom/android/internal/telephony/gsm/EccNoti;->mUiccapp:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/gsm/EccNoti;->mMmiCode:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 300
    const-string v1, "ECC_NOTI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMMICode Setting UVR Format ==>  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/EccNoti;->mDecoded:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " return : [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/EccNoti;->mMmiCode:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    :cond_1
    const-string v1, "ECC_NOTI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMMICode ECN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_ECN:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UVR : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/gsm/EccNoti;->SENDING_UVR:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static setNotCloseCallScreenECCNoti(Z)V
    .locals 3
    .parameter "setVal"

    .prologue
    .line 491
    const-string v0, "ECC_NOTI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNotCloseCallScreenECCNoti notCloseCallScreen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/gsm/EccNoti;->notCloseCallScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    sput-boolean p0, Lcom/android/internal/telephony/gsm/EccNoti;->notCloseCallScreen:Z

    .line 494
    return-void
.end method

.method public static setProcessECCNoti(Z)V
    .locals 3
    .parameter "setVal"

    .prologue
    .line 453
    sput-boolean p0, Lcom/android/internal/telephony/gsm/EccNoti;->misProcessing:Z

    .line 454
    const-string v0, "ECC_NOTI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProcessECCNoti Procssing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/telephony/gsm/EccNoti;->misProcessing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void
.end method

.method public static setResolver(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 427
    sput-object p0, Lcom/android/internal/telephony/gsm/EccNoti;->mResolver:Landroid/content/ContentResolver;

    .line 428
    return-void
.end method

.method public static update(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "resolver"
    .parameter "Key_value"
    .parameter "update_value"

    .prologue
    const/4 v5, 0x0

    .line 137
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 139
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "ECC_NOTI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "write key String : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  update String : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v2, "dtt_code"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "030708090B0C0E0F24405B5C5D5E5F601C1D1E1F1012131415161718191A"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 146
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ECC Noti Code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_0
    const-string v2, "dtt_digit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "897023415618307564290729486153"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 150
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ECC Noti Digit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_1
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v2, Lcom/android/internal/telephony/gsm/EccNoti;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 159
    .local v0, result:I
    return v0
.end method
