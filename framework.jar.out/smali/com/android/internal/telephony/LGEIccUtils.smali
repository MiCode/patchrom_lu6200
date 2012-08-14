.class public Lcom/android/internal/telephony/LGEIccUtils;
.super Ljava/lang/Object;
.source "LGEIccUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/LGEIccUtils$LguImsi;,
        Lcom/android/internal/telephony/LGEIccUtils$SMSPType;,
        Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;
    }
.end annotation


# static fields
.field private static final FPLMN_ENTRY_SIZE:I = 0x3

.field static final LOG_TAG:Ljava/lang/String; = "LGEIccUtils"

.field private static final PLMNWACT_ENTRY_MAX:I = 0x3c

.field private static final PLMNWACT_ENTRY_SIZE:I = 0x5

.field private static final SIZE_OF_SMSP_NONE_ALPHA_ID:I = 0x1c

.field private static final SMSP_ADDRESS_SIZE:I = 0xc

.field private static final mCountry:Ljava/lang/String;

.field private static final mOperator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-string/jumbo v0, "ro.build.target_operator"

    const-string v1, "OPEN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/LGEIccUtils;->mOperator:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "ro.build.target_country"

    const-string v1, "COM"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/LGEIccUtils;->mCountry:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 628
    return-void
.end method

.method public static decodeMdn([B)Ljava/lang/String;
    .locals 8
    .parameter "mMdn"

    .prologue
    const/16 v7, 0xa

    const/16 v6, 0x9

    .line 557
    const/4 v2, 0x0

    .line 559
    .local v2, mEFMdn:Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    aget-byte v5, p0, v5

    if-gtz v5, :cond_0

    .line 560
    const/4 v5, 0x0

    .line 585
    :goto_0
    return-object v5

    .line 562
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 563
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    const/16 v5, 0x11

    if-ge v1, v5, :cond_2

    .line 567
    aget-byte v5, p0, v1

    and-int/lit8 v4, v5, 0xf

    .line 568
    .local v4, v:I
    if-ne v4, v7, :cond_1

    const/4 v4, 0x0

    .line 569
    :cond_1
    if-le v4, v6, :cond_3

    .line 578
    .end local v4           #v:I
    :cond_2
    const-string v5, "LGEIccUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mEFMdn : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1           #i:I
    .end local v3           #ret:Ljava/lang/StringBuilder;
    :goto_2
    move-object v5, v2

    .line 585
    goto :goto_0

    .line 570
    .restart local v1       #i:I
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    .restart local v4       #v:I
    :cond_3
    add-int/lit8 v5, v4, 0x30

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v4, v5, 0xf

    .line 573
    if-ne v4, v7, :cond_4

    const/4 v4, 0x0

    .line 574
    :cond_4
    if-gt v4, v6, :cond_2

    .line 575
    add-int/lit8 v5, v4, 0x30

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 581
    .end local v1           #i:I
    .end local v3           #ret:Ljava/lang/StringBuilder;
    .end local v4           #v:I
    :catch_0
    move-exception v0

    .line 582
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v5, "LGEIccUtils"

    const-string/jumbo v6, "readEF_Mdn() RuntimeException  occur"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static encodeMdn(Ljava/lang/String;)[B
    .locals 7
    .parameter "mdn"

    .prologue
    .line 589
    const/4 v2, 0x0

    .line 590
    .local v2, i:I
    const/4 v3, 0x0

    .line 591
    .local v3, rawData:[B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 594
    .local v4, sz:I
    const/16 v5, 0x30

    const/16 v6, 0x41

    :try_start_0
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 596
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 599
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 602
    const/4 v2, 0x0

    :goto_0
    const/16 v5, 0x10

    if-ge v2, v5, :cond_2

    .line 604
    add-int/lit8 v5, v4, -0x1

    if-ne v2, v5, :cond_0

    .line 605
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 602
    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 606
    :cond_0
    if-lt v2, v4, :cond_1

    .line 607
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 621
    .end local v0           #buf:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 622
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v5, "LGEIccUtils"

    const-string/jumbo v6, "writeEF_Mdn() RuntimeException  occur"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :goto_2
    return-object v3

    .line 609
    .restart local v0       #buf:Ljava/io/ByteArrayOutputStream;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 614
    :cond_2
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 617
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 619
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_2
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/internal/telephony/LGEIccUtils;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public static getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/LGEIccUtils;->mOperator:Ljava/lang/String;

    return-object v0
.end method

.method private getPLMNfromSimData([B)Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;
    .locals 14
    .parameter "SimData"

    .prologue
    const/4 v11, -0x1

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 87
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    .line 89
    :cond_0
    aget-byte v7, p1, v12

    .line 90
    .local v7, plmn1:B
    aget-byte v8, p1, v13

    .line 91
    .local v8, plmn2:B
    const/4 v10, 0x2

    aget-byte v9, p1, v10

    .line 93
    .local v9, plmn3:B
    new-instance v0, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;-><init>(Lcom/android/internal/telephony/LGEIccUtils;)V

    .line 95
    .local v0, bufPLMN:Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;
    const/4 v6, 0x0

    .local v6, mnc_digit_3:I
    move v5, v6

    .local v5, mnc_digit_2:I
    move v4, v6

    .line 97
    .local v4, mnc_digit_1:I
    if-ne v7, v11, :cond_1

    if-ne v8, v11, :cond_1

    if-ne v9, v11, :cond_1

    .line 99
    iput v12, v0, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->mcc:I

    .line 100
    iput v12, v0, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->mnc:I

    .line 101
    iput-boolean v13, v0, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->includepcs:Z

    .line 127
    :goto_1
    array-length v10, p1

    const/4 v11, 0x5

    if-ne v10, v11, :cond_3

    .line 129
    iget-object v10, v0, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->act:[B

    const/4 v11, 0x3

    aget-byte v11, p1, v11

    aput-byte v11, v10, v12

    .line 130
    iget-object v10, v0, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->act:[B

    const/4 v11, 0x4

    aget-byte v11, p1, v11

    aput-byte v11, v10, v13

    .line 138
    :goto_2
    const-string v10, "LGEIccUtils"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/LGEIccUtils;->logPLMNtoString(Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_1
    and-int/lit8 v1, v7, 0xf

    .line 106
    .local v1, mcc_digit_1:I
    shr-int/lit8 v10, v7, 0x4

    and-int/lit8 v2, v10, 0xf

    .line 107
    .local v2, mcc_digit_2:I
    and-int/lit8 v3, v8, 0xf

    .line 109
    .local v3, mcc_digit_3:I
    and-int/lit8 v4, v9, 0xf

    .line 110
    shr-int/lit8 v10, v9, 0x4

    and-int/lit8 v5, v10, 0xf

    .line 111
    shr-int/lit8 v10, v8, 0x4

    and-int/lit8 v6, v10, 0xf

    .line 113
    mul-int/lit8 v10, v1, 0x64

    mul-int/lit8 v11, v2, 0xa

    add-int/2addr v10, v11

    add-int/2addr v10, v3

    iput v10, v0, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->mcc:I

    .line 115
    const/16 v10, 0xf

    if-ne v6, v10, :cond_2

    .line 117
    iput-boolean v12, v0, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->includepcs:Z

    .line 118
    mul-int/lit8 v10, v4, 0xa

    add-int/2addr v10, v5

    iput v10, v0, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->mnc:I

    goto :goto_1

    .line 122
    :cond_2
    iput-boolean v13, v0, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->includepcs:Z

    .line 123
    mul-int/lit8 v10, v4, 0x64

    mul-int/lit8 v11, v5, 0xa

    add-int/2addr v10, v11

    add-int/2addr v10, v6

    iput v10, v0, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->mnc:I

    goto :goto_1

    .line 134
    .end local v1           #mcc_digit_1:I
    .end local v2           #mcc_digit_2:I
    .end local v3           #mcc_digit_3:I
    :cond_3
    iget-object v10, v0, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->act:[B

    aput-byte v12, v10, v12

    .line 135
    iget-object v10, v0, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->act:[B

    aput-byte v12, v10, v13

    goto :goto_2
.end method

.method public static subarray([BII)[B
    .locals 4
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 44
    if-eqz p0, :cond_0

    if-gt p1, p2, :cond_0

    array-length v3, p0

    if-ge v3, p2, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 51
    :cond_1
    return-object v0

    .line 46
    :cond_2
    sub-int v3, p2, p1

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 47
    .local v0, arrayBuf:[B
    move v1, p1

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-gt v1, p2, :cond_1

    .line 49
    aget-byte v3, p0, v1

    aput-byte v3, v0, v2

    .line 47
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public SMSPtoString(Lcom/android/internal/telephony/LGEIccUtils$SMSPType;)Ljava/lang/String;
    .locals 2
    .parameter "smspData"

    .prologue
    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alphaID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->alphaID:[B

    if-nez v0, :cond_0

    const-string v0, "NULL"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,ParamIndi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->ParamIndicator:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,Dest:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->DestAddr:[B

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,Center:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,ProtoclID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->ProtoclID:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,Code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->CodeScheme:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,Period:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->ValidPeriod:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->alphaID:[B

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public analyzeFPLMN([B)Ljava/util/ArrayList;
    .locals 9
    .parameter "SimData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x3c

    const/4 v8, 0x0

    .line 257
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v3, mPLMNListType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;>;"
    if-nez p1, :cond_1

    .line 260
    const/4 v3, 0x0

    .line 280
    .end local v3           #mPLMNListType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;>;"
    :cond_0
    return-object v3

    .line 262
    .restart local v3       #mPLMNListType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;>;"
    :cond_1
    const/4 v6, 0x5

    new-array v0, v6, [B

    .line 264
    .local v0, PLMNdata:[B
    array-length v6, p1

    div-int/lit8 v6, v6, 0x3

    if-lt v6, v4, :cond_3

    .line 267
    .local v4, max_loop_count:I
    :goto_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_0

    .line 269
    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v7, v2, 0x1

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v6, v7}, Lcom/android/internal/telephony/LGEIccUtils;->subarray([BII)[B

    move-result-object v5

    .line 271
    .local v5, subSimData:[B
    const/4 v6, 0x3

    invoke-static {v5, v8, v0, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/LGEIccUtils;->getPLMNfromSimData([B)Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;

    move-result-object v1

    .line 274
    .local v1, TempPLMN:Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;
    if-eqz v1, :cond_2

    .line 276
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 264
    .end local v1           #TempPLMN:Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;
    .end local v2           #i:I
    .end local v4           #max_loop_count:I
    .end local v5           #subSimData:[B
    :cond_3
    array-length v6, p1

    div-int/lit8 v4, v6, 0x3

    goto :goto_0
.end method

.method public analyzePLMN([B)Ljava/util/ArrayList;
    .locals 7
    .parameter "SimData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x3c

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v2, mPLMNListType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;>;"
    if-nez p1, :cond_1

    .line 62
    const/4 v2, 0x0

    .line 77
    .end local v2           #mPLMNListType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;>;"
    :cond_0
    return-object v2

    .line 64
    .restart local v2       #mPLMNListType:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;>;"
    :cond_1
    array-length v5, p1

    div-int/lit8 v5, v5, 0x5

    if-lt v5, v3, :cond_3

    .line 66
    .local v3, max_loop_count:I
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 68
    mul-int/lit8 v5, v1, 0x5

    add-int/lit8 v6, v1, 0x1

    mul-int/lit8 v6, v6, 0x5

    add-int/lit8 v6, v6, -0x1

    invoke-static {p1, v5, v6}, Lcom/android/internal/telephony/LGEIccUtils;->subarray([BII)[B

    move-result-object v4

    .line 69
    .local v4, subSimData:[B
    if-nez v4, :cond_4

    .line 66
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    .end local v1           #i:I
    .end local v3           #max_loop_count:I
    .end local v4           #subSimData:[B
    :cond_3
    array-length v5, p1

    div-int/lit8 v3, v5, 0x5

    goto :goto_0

    .line 71
    .restart local v1       #i:I
    .restart local v3       #max_loop_count:I
    .restart local v4       #subSimData:[B
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/LGEIccUtils;->getPLMNfromSimData([B)Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;

    move-result-object v0

    .line 72
    .local v0, TempPLMN:Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;
    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public analyzeSMSP([B)Lcom/android/internal/telephony/LGEIccUtils$SMSPType;
    .locals 8
    .parameter "SimData"

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x0

    .line 366
    new-instance v1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;-><init>(Lcom/android/internal/telephony/LGEIccUtils;)V

    .line 368
    .local v1, TempSMSP:Lcom/android/internal/telephony/LGEIccUtils$SMSPType;
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 411
    .end local v1           #TempSMSP:Lcom/android/internal/telephony/LGEIccUtils$SMSPType;
    :goto_0
    return-object v1

    .line 370
    .restart local v1       #TempSMSP:Lcom/android/internal/telephony/LGEIccUtils$SMSPType;
    :cond_0
    array-length v4, p1

    add-int/lit8 v0, v4, -0x1c

    .line 371
    .local v0, NoneAlphaStartPoint:I
    const/4 v2, 0x0

    .line 373
    .local v2, arrayPoint:I
    if-lez v0, :cond_1

    .line 375
    add-int/lit8 v4, v0, -0x1

    invoke-static {p1, v2, v4}, Lcom/android/internal/telephony/LGEIccUtils;->subarray([BII)[B

    move-result-object v4

    iput-object v4, v1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->alphaID:[B

    .line 376
    move v2, v0

    .line 379
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2           #arrayPoint:I
    .local v3, arrayPoint:I
    aget-byte v4, p1, v2

    iput-byte v4, v1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->ParamIndicator:B

    .line 381
    iget-object v4, v1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->DestAddr:[B

    invoke-static {p1, v3, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    add-int/lit8 v2, v3, 0xc

    .line 384
    .end local v3           #arrayPoint:I
    .restart local v2       #arrayPoint:I
    iget-byte v4, v1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->ParamIndicator:B

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 387
    iget-object v4, v1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    invoke-static {p1, v2, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    :cond_2
    add-int/lit8 v2, v2, 0xc

    .line 391
    iget-byte v4, v1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->ParamIndicator:B

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    .line 393
    add-int/lit8 v3, v2, 0x1

    .end local v2           #arrayPoint:I
    .restart local v3       #arrayPoint:I
    aget-byte v4, p1, v2

    iput-byte v4, v1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->ProtoclID:B

    move v2, v3

    .line 399
    .end local v3           #arrayPoint:I
    .restart local v2       #arrayPoint:I
    :goto_1
    iget-byte v4, v1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->ParamIndicator:B

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    .line 401
    add-int/lit8 v3, v2, 0x1

    .end local v2           #arrayPoint:I
    .restart local v3       #arrayPoint:I
    aget-byte v4, p1, v2

    iput-byte v4, v1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->CodeScheme:B

    move v2, v3

    .line 407
    .end local v3           #arrayPoint:I
    .restart local v2       #arrayPoint:I
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .end local v2           #arrayPoint:I
    .restart local v3       #arrayPoint:I
    aget-byte v4, p1, v2

    iput-byte v4, v1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->ValidPeriod:B

    .line 409
    const-string v4, "LGEIccUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMSP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/LGEIccUtils;->SMSPtoString(Lcom/android/internal/telephony/LGEIccUtils$SMSPType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 396
    .end local v3           #arrayPoint:I
    .restart local v2       #arrayPoint:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 404
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public composeFPLMN(Ljava/util/ArrayList;)[B
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p1, FplmnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;>;"
    const/16 v12, 0x3e7

    const/4 v11, -0x1

    .line 287
    const/4 v5, 0x0

    .line 290
    .local v5, mnc_includes_pcs_digit:Z
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 332
    :goto_0
    return-object v0

    .line 292
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 294
    .local v6, num:I
    mul-int/lit8 v9, v6, 0x3

    new-array v0, v9, [B

    .line 296
    .local v0, SimData:[B
    const/4 v1, 0x0

    .line 297
    .local v1, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;

    .line 299
    .local v7, tempPLMN:Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;
    iget v3, v7, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->mcc:I

    .line 300
    .local v3, mcc:I
    iget v4, v7, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->mnc:I

    .line 301
    .local v4, mnc:I
    iget-boolean v5, v7, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->includepcs:Z

    .line 303
    if-gt v3, v12, :cond_2

    if-lez v3, :cond_2

    if-ltz v4, :cond_2

    if-eqz v5, :cond_1

    if-gt v4, v12, :cond_2

    :cond_1
    if-nez v5, :cond_3

    const/16 v9, 0x63

    if-le v4, v9, :cond_3

    .line 307
    :cond_2
    const-string v9, "LGEIccUtils"

    const-string/jumbo v10, "invalid mcc mnc "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v3, 0x0

    .line 309
    const/4 v4, 0x0

    .line 310
    const/4 v5, 0x1

    .line 313
    :cond_3
    const-string v9, "LGEIccUtils"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/LGEIccUtils;->logPLMNtoString(Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0, v5, v3, v4}, Lcom/android/internal/telephony/LGEIccUtils;->setPLMNfromMCCMNC(ZII)[B

    move-result-object v8

    .line 316
    .local v8, tempSim:[B
    if-nez v8, :cond_4

    .line 318
    aput-byte v11, v0, v1

    .line 319
    add-int/lit8 v9, v1, 0x1

    aput-byte v11, v0, v9

    .line 320
    add-int/lit8 v9, v1, 0x2

    aput-byte v11, v0, v9

    .line 327
    :goto_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 324
    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-static {v8, v9, v0, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 330
    .end local v3           #mcc:I
    .end local v4           #mnc:I
    .end local v7           #tempPLMN:Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;
    .end local v8           #tempSim:[B
    :cond_5
    const-string v9, "LGEIccUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FPLMNData "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public composePLMN(Ljava/util/ArrayList;)[B
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, PlmnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;>;"
    const/4 v6, 0x0

    .line 150
    .local v6, mnc_includes_pcs_digit:Z
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 193
    :goto_0
    return-object v0

    .line 152
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 153
    .local v7, num:I
    mul-int/lit8 v10, v7, 0x5

    new-array v0, v10, [B

    .line 155
    .local v0, SimData:[B
    const/4 v1, 0x0

    .line 156
    .local v1, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;

    .line 158
    .local v8, tempPLMN:Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;
    iget v4, v8, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->mcc:I

    .line 159
    .local v4, mcc:I
    iget v5, v8, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->mnc:I

    .line 160
    .local v5, mnc:I
    iget-boolean v6, v8, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->includepcs:Z

    .line 162
    const/16 v10, 0x3e7

    if-gt v4, v10, :cond_2

    if-lez v4, :cond_2

    if-ltz v5, :cond_2

    if-eqz v6, :cond_1

    const/16 v10, 0x3e7

    if-gt v5, v10, :cond_2

    :cond_1
    if-nez v6, :cond_3

    const/16 v10, 0x63

    if-le v5, v10, :cond_3

    .line 166
    :cond_2
    const-string v10, "LGEIccUtils"

    const-string/jumbo v11, "invalid mcc mnc "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v4, 0x0

    .line 168
    const/4 v5, 0x0

    .line 169
    const/4 v6, 0x1

    .line 172
    :cond_3
    const-string v10, "LGEIccUtils"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/LGEIccUtils;->logPLMNtoString(Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0, v6, v4, v5}, Lcom/android/internal/telephony/LGEIccUtils;->setPLMNfromMCCMNC(ZII)[B

    move-result-object v9

    .line 175
    .local v9, tempSim:[B
    if-nez v9, :cond_4

    .line 177
    const/4 v10, -0x1

    aput-byte v10, v0, v1

    .line 178
    add-int/lit8 v10, v1, 0x1

    const/4 v11, -0x1

    aput-byte v11, v0, v10

    .line 179
    add-int/lit8 v10, v1, 0x2

    const/4 v11, -0x1

    aput-byte v11, v0, v10

    .line 186
    :goto_2
    add-int/lit8 v1, v1, 0x3

    .line 187
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    iget-object v10, v8, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->act:[B

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    aput-byte v10, v0, v1

    .line 188
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    iget-object v10, v8, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->act:[B

    const/4 v11, 0x1

    aget-byte v10, v10, v11

    aput-byte v10, v0, v2

    goto :goto_1

    .line 183
    :cond_4
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-static {v9, v10, v0, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 191
    .end local v4           #mcc:I
    .end local v5           #mnc:I
    .end local v8           #tempPLMN:Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;
    .end local v9           #tempSim:[B
    :cond_5
    const-string v10, "LGEIccUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SimData "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public composeSMSP(Lcom/android/internal/telephony/LGEIccUtils$SMSPType;)[B
    .locals 7
    .parameter "smspData"

    .prologue
    const/4 v4, 0x0

    .line 419
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 456
    :goto_0
    return-object v0

    .line 420
    :cond_0
    const-string v3, "LGEIccUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMSP: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LGEIccUtils;->SMSPtoString(Lcom/android/internal/telephony/LGEIccUtils$SMSPType;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v3, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->alphaID:[B

    if-nez v3, :cond_3

    move v3, v4

    :goto_1
    iget-object v5, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->DestAddr:[B

    array-length v5, v5

    add-int/2addr v3, v5

    iget-object v5, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    array-length v5, v5

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x4

    new-array v0, v3, [B

    .line 423
    .local v0, SimData:[B
    const/4 v1, 0x0

    .line 425
    .local v1, arrayPoint:I
    iget-object v3, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->alphaID:[B

    if-eqz v3, :cond_1

    .line 426
    iget-object v3, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->alphaID:[B

    iget-object v5, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->alphaID:[B

    array-length v5, v5

    invoke-static {v3, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 427
    iget-object v3, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->alphaID:[B

    array-length v3, v3

    add-int/2addr v1, v3

    .line 430
    :cond_1
    iget-object v3, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    aget-byte v3, v3, v4

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    iget-object v3, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    aget-byte v3, v3, v4

    if-nez v3, :cond_4

    .line 432
    :cond_2
    iget-byte v3, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->ParamIndicator:B

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    iput-byte v3, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->ParamIndicator:B

    .line 438
    :goto_2
    const-string v3, "LGEIccUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SVCCenterAddr[0] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    aget-byte v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ParamIndicator: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->ParamIndicator:B

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    add-int/lit8 v2, v1, 0x1

    .end local v1           #arrayPoint:I
    .local v2, arrayPoint:I
    iget-byte v3, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->ParamIndicator:B

    aput-byte v3, v0, v1

    .line 443
    iget-object v3, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->DestAddr:[B

    iget-object v5, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->DestAddr:[B

    array-length v5, v5

    invoke-static {v3, v4, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 444
    iget-object v3, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->DestAddr:[B

    array-length v3, v3

    add-int v1, v2, v3

    .line 446
    .end local v2           #arrayPoint:I
    .restart local v1       #arrayPoint:I
    iget-object v3, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    iget-object v5, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    array-length v5, v5

    invoke-static {v3, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    iget-object v3, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->SVCCenterAddr:[B

    array-length v3, v3

    add-int/2addr v1, v3

    .line 450
    add-int/lit8 v2, v1, 0x1

    .end local v1           #arrayPoint:I
    .restart local v2       #arrayPoint:I
    iget-byte v3, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->ProtoclID:B

    aput-byte v3, v0, v1

    .line 451
    add-int/lit8 v1, v2, 0x1

    .end local v2           #arrayPoint:I
    .restart local v1       #arrayPoint:I
    iget-byte v3, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->CodeScheme:B

    aput-byte v3, v0, v2

    .line 452
    iget-byte v3, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->ValidPeriod:B

    aput-byte v3, v0, v1

    .line 454
    const-string v3, "LGEIccUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMSPData "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 422
    .end local v0           #SimData:[B
    .end local v1           #arrayPoint:I
    :cond_3
    iget-object v3, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->alphaID:[B

    array-length v3, v3

    goto/16 :goto_1

    .line 435
    .restart local v0       #SimData:[B
    .restart local v1       #arrayPoint:I
    :cond_4
    iget-byte v3, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->ParamIndicator:B

    and-int/lit16 v3, v3, 0xfd

    int-to-byte v3, v3

    iput-byte v3, p1, Lcom/android/internal/telephony/LGEIccUtils$SMSPType;->ParamIndicator:B

    goto/16 :goto_2
.end method

.method public decodeSCAddr([B)Ljava/lang/String;
    .locals 6
    .parameter "scData"

    .prologue
    const/4 v5, 0x1

    .line 473
    const/4 v0, 0x0

    .line 476
    .local v0, InternationalIndicator:C
    if-nez p1, :cond_1

    const/4 v2, 0x0

    .line 492
    :cond_0
    :goto_0
    return-object v2

    .line 478
    :cond_1
    const/4 v3, 0x0

    aget-byte v1, p1, v3

    .line 480
    .local v1, length:I
    if-gtz v1, :cond_2

    .line 481
    const-string v2, ""

    .local v2, scAddrString:Ljava/lang/String;
    goto :goto_0

    .line 484
    .end local v2           #scAddrString:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x2

    add-int/lit8 v4, v1, -0x1

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 486
    .restart local v2       #scAddrString:Ljava/lang/String;
    aget-byte v3, p1, v5

    and-int/lit8 v3, v3, 0x70

    shr-int/lit8 v3, v3, 0x4

    if-ne v3, v5, :cond_0

    .line 488
    const-string v3, "+"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public encodeSCAddr(Ljava/lang/String;[B)[B
    .locals 12
    .parameter "newSCAddr"
    .parameter "oldSCAddr"

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 504
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    .line 506
    const/16 v7, 0xc

    new-array v4, v7, [B

    .line 507
    .local v4, scData:[B
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 508
    const-string v7, "LGEIccUtils"

    const-string v8, "SMSPData SCAddr is Null: "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    .end local v4           #scData:[B
    :goto_0
    return-object v4

    .line 512
    :cond_0
    const/16 v7, 0x2b

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_1

    .line 513
    const/4 v0, 0x1

    .line 517
    .local v0, InternationalIndicator:B
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 520
    .local v6, tempString:Ljava/lang/String;
    :try_start_0
    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 526
    .local v5, tempData:[B
    array-length v7, p2

    new-array v4, v7, [B

    .line 528
    .restart local v4       #scData:[B
    invoke-static {v4, v10}, Ljava/util/Arrays;->fill([BB)V

    .line 530
    array-length v7, v5

    div-int/lit8 v7, v7, 0x2

    array-length v8, v5

    rem-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, v4, v11

    .line 532
    aget-byte v7, p2, v9

    const/16 v8, 0xff

    if-eq v7, v8, :cond_2

    .line 534
    shl-int/lit8 v7, v0, 0x4

    aget-byte v8, p2, v9

    and-int/lit16 v8, v8, 0x8f

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v9

    .line 541
    :goto_2
    const/4 v3, 0x0

    .local v3, j:I
    move v2, v3

    .local v2, i:I
    :goto_3
    add-int/lit8 v7, v2, 0x1

    array-length v8, v5

    if-ge v7, v8, :cond_3

    .line 544
    add-int/lit8 v7, v3, 0x2

    aget-byte v8, v5, v2

    and-int/lit8 v8, v8, 0xf

    add-int/lit8 v9, v2, 0x1

    aget-byte v9, v5, v9

    and-int/lit8 v9, v9, 0xf

    shl-int/lit8 v9, v9, 0x4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 541
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 515
    .end local v0           #InternationalIndicator:B
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #scData:[B
    .end local v5           #tempData:[B
    .end local v6           #tempString:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #InternationalIndicator:B
    goto :goto_1

    .line 522
    .restart local v6       #tempString:Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/UnsupportedEncodingException;
    move-object v4, p2

    .line 523
    goto :goto_0

    .line 538
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v4       #scData:[B
    .restart local v5       #tempData:[B
    :cond_2
    shl-int/lit8 v7, v0, 0x4

    or-int/lit16 v7, v7, 0x81

    int-to-byte v7, v7

    aput-byte v7, v4, v9

    goto :goto_2

    .line 547
    .restart local v2       #i:I
    .restart local v3       #j:I
    :cond_3
    array-length v7, v5

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_4

    .line 548
    add-int/lit8 v7, v3, 0x2

    aget-byte v8, v5, v2

    and-int/lit8 v8, v8, 0xf

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v4, v7

    .line 550
    :cond_4
    const-string v7, "LGEIccUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "scData"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public logPLMNtoString(Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;)Ljava/lang/String;
    .locals 3
    .parameter "logPLMN"

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mcc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->mcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,mnc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->mnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,pcs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->includepcs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,act0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->act:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ,act1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/LGEIccUtils$PLMNListType;->act:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPLMNfromMCCMNC(ZII)[B
    .locals 10
    .parameter "mnc_includes_pcs_digit"
    .parameter "mcc"
    .parameter "mnc"

    .prologue
    .line 205
    const/4 v7, 0x3

    new-array v0, v7, [B

    .line 207
    .local v0, arrayBuff:[B
    const/4 v6, 0x0

    .local v6, mnc_digit_3:I
    move v5, v6

    .local v5, mnc_digit_2:I
    move v4, v6

    .line 209
    .local v4, mnc_digit_1:I
    const/16 v7, 0x3e7

    if-gt p2, v7, :cond_1

    if-eqz p2, :cond_1

    if-ltz p3, :cond_1

    if-eqz p1, :cond_0

    const/16 v7, 0x3e7

    if-gt p3, v7, :cond_1

    :cond_0
    if-nez p1, :cond_2

    const/16 v7, 0x63

    if-le p3, v7, :cond_2

    .line 213
    :cond_1
    const/4 v7, 0x0

    const/4 v8, -0x1

    aput-byte v8, v0, v7

    .line 214
    const/4 v7, 0x1

    const/4 v8, -0x1

    aput-byte v8, v0, v7

    .line 215
    const/4 v7, 0x2

    const/4 v8, -0x1

    aput-byte v8, v0, v7

    .line 241
    :goto_0
    const-string v7, "LGEIccUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mnc "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-object v0

    .line 219
    :cond_2
    div-int/lit8 v1, p2, 0x64

    .line 220
    .local v1, mcc_digit_1:I
    mul-int/lit8 v7, v1, 0x64

    sub-int v7, p2, v7

    div-int/lit8 v2, v7, 0xa

    .line 221
    .local v2, mcc_digit_2:I
    mul-int/lit8 v7, v1, 0x64

    sub-int v7, p2, v7

    mul-int/lit8 v8, v2, 0xa

    sub-int v3, v7, v8

    .line 223
    .local v3, mcc_digit_3:I
    if-eqz p1, :cond_3

    .line 225
    div-int/lit8 v4, p3, 0x64

    .line 226
    mul-int/lit8 v7, v4, 0x64

    sub-int v7, p3, v7

    div-int/lit8 v5, v7, 0xa

    .line 227
    mul-int/lit8 v7, v4, 0x64

    sub-int v7, p3, v7

    mul-int/lit8 v8, v5, 0xa

    sub-int v6, v7, v8

    .line 236
    :goto_1
    const/4 v7, 0x0

    shl-int/lit8 v8, v2, 0x4

    add-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 237
    const/4 v7, 0x1

    shl-int/lit8 v8, v6, 0x4

    add-int/2addr v8, v3

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 238
    const/4 v7, 0x2

    shl-int/lit8 v8, v5, 0x4

    add-int/2addr v8, v4

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    goto :goto_0

    .line 231
    :cond_3
    div-int/lit8 v4, p3, 0xa

    .line 232
    mul-int/lit8 v7, v4, 0xa

    sub-int v5, p3, v7

    .line 233
    const/16 v6, 0xf

    goto :goto_1
.end method
