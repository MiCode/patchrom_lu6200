.class public Lcom/android/internal/telephony/gsm/GsmSmsAddress;
.super Lcom/android/internal/telephony/SmsAddress;
.source "GsmSmsAddress.java"


# static fields
.field static final OFFSET_ADDRESS_LENGTH:I = 0x0

.field static final OFFSET_ADDRESS_VALUE:I = 0x2

.field static final OFFSET_TOA:I = 0x1


# direct methods
.method public constructor <init>([BII)V
    .locals 10
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 46
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsAddress;-><init>()V

    .line 47
    new-array v5, p3, [B

    iput-object v5, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 48
    iget-object v5, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-static {p1, p2, v5, v6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    iget-object v5, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v5, v5, v6

    and-int/lit16 v1, v5, 0xff

    .line 53
    .local v1, addressLength:I
    iget-object v5, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v5, v5, v8

    and-int/lit16 v4, v5, 0xff

    .line 54
    .local v4, toa:I
    shr-int/lit8 v5, v4, 0x4

    and-int/lit8 v5, v5, 0x7

    iput v5, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 57
    and-int/lit16 v5, v4, 0x80

    const/16 v6, 0x80

    if-eq v5, v6, :cond_0

    .line 58
    new-instance v5, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid TOA - high bit must be set. toa = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    invoke-direct {v5, v6, v7}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 63
    mul-int/lit8 v5, v1, 0x4

    div-int/lit8 v2, v5, 0x7

    .line 65
    .local v2, countSeptets:I
    iget-object v5, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v6, 0x2

    invoke-static {v5, v6, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 68
    const-string v5, "DCM_REPLACE_TP_OA_ADDRESS"

    invoke-static {v9, v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    iget-object v5, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const-string v6, "DoCoMo SMS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const-string v6, "NTT DoCoMo"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const-string v6, "DoCoMo.*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    :cond_1
    const-string v5, "NTT DOCOMO"

    iput-object v5, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 105
    .end local v2           #countSeptets:I
    :cond_2
    :goto_0
    return-void

    .line 78
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    add-int/lit8 v6, p3, -0x1

    aget-byte v3, v5, v6

    .line 80
    .local v3, lastByte:B
    and-int/lit8 v5, v1, 0x1

    if-ne v5, v8, :cond_4

    .line 82
    iget-object v5, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    add-int/lit8 v6, p3, -0x1

    aget-byte v7, v5, v6

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 86
    :cond_4
    const-string v5, "BCDaddedABCandWild"

    invoke-static {v9, v5}, Lcom/android/internal/telephony/lgeAutoProfiling;->isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v8, :cond_6

    .line 87
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 89
    .local v0, activePhone:I
    if-ne v8, v0, :cond_5

    .line 91
    iget-object v5, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    add-int/lit8 v6, p3, -0x1

    invoke-static {v5, v8, v6}, Landroid/telephony/PhoneNumberUtils;->KRsmscalledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 103
    .end local v0           #activePhone:I
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    add-int/lit8 v6, p3, -0x1

    aput-byte v3, v5, v6

    goto :goto_0

    .line 94
    .restart local v0       #activePhone:I
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    add-int/lit8 v6, p3, -0x1

    invoke-static {v5, v8, v6}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    goto :goto_1

    .line 99
    .end local v0           #activePhone:I
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    add-int/lit8 v6, p3, -0x1

    invoke-static {v5, v8, v6}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getAddressString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public isAlphanumeric()Z
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCphsVoiceMessageClear()Z
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCphsVoiceMessageIndicatorAddress()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 148
    iget-object v2, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v2, v2, v0

    and-int/lit8 v2, v2, 0xf

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isCphsVoiceMessageSet()Z
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkSpecific()Z
    .locals 2

    .prologue
    .line 119
    iget v0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
