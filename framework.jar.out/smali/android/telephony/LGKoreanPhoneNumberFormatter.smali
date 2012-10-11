.class Landroid/telephony/LGKoreanPhoneNumberFormatter;
.super Ljava/lang/Object;
.source "LGKoreanPhoneNumberFormatter.java"


# static fields
.field private static DDD_3_Number:[S

.field private static DDD_5_Number:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x25

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_3_Number:[S

    .line 30
    const/16 v0, 0x11

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_5_Number:[S

    return-void

    .line 23
    nop

    :array_0
    .array-data 0x2
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0xbt 0x0t
        0xct 0x0t
        0xdt 0x0t
        0xft 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x13t 0x0t
        0x1ft 0x0t
        0x20t 0x0t
        0x21t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x3ct 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x3ft 0x0t
        0x40t 0x0t
        0x46t 0x0t
        0x50t 0x0t
    .end array-data

    .line 30
    nop

    :array_1
    .array-data 0x2
        0x2ct 0x1t
        0x41t 0x1t
        0x55t 0x1t
        0x58t 0x1t
        0x59t 0x1t
        0x6dt 0x1t
        0xbct 0x2t
        0xd7t 0x2t
        0xf3t 0x2t
        0xct 0x3t
        0xfet 0x2t
        0x13t 0x3t
        0x84t 0x1t
        0x2t 0x3t
        0x9t 0x3t
        0xf1t 0x2t
        0xc3t 0x2t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Landroid/text/Editable;)V
    .locals 14
    .parameter "text"

    .prologue
    .line 36
    const/16 v0, 0x24

    .line 37
    .local v0, MAX_DDD_NUM:I
    const/4 v9, 0x0

    .line 38
    .local v9, tmp1stHyphen:I
    const/4 v10, 0x0

    .line 40
    .local v10, tmp2ndHyphen:I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v7

    .line 42
    .local v7, length:I
    const/4 v8, 0x0

    .line 43
    .local v8, p:I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v12

    if-ge v8, v12, :cond_1

    .line 44
    invoke-interface {p0, v8}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_0

    .line 45
    add-int/lit8 v12, v8, 0x1

    invoke-interface {p0, v8, v12}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 47
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v7

    .line 54
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_5

    .line 55
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x30

    if-lt v12, v13, :cond_2

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x39

    if-le v12, v13, :cond_4

    :cond_2
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x2a

    if-eq v12, v13, :cond_4

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x23

    if-eq v12, v13, :cond_4

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x57

    if-eq v12, v13, :cond_4

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x50

    if-eq v12, v13, :cond_4

    .line 194
    :cond_3
    return-void

    .line 54
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    :cond_5
    const/4 v12, 0x2

    if-lt v7, v12, :cond_3

    .line 72
    const-string v12, "*"

    invoke-virtual {p0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    const-string v12, "#"

    invoke-virtual {p0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 75
    const/4 v12, 0x0

    invoke-interface {p0, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x30

    if-ne v12, v13, :cond_6

    const/4 v12, 0x1

    invoke-interface {p0, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x32

    if-ne v12, v13, :cond_6

    .line 76
    const/4 v9, 0x2

    .line 79
    :cond_6
    const/4 v12, 0x3

    if-lt v7, v12, :cond_7

    .line 80
    const/4 v12, 0x0

    invoke-interface {p0, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x30

    if-ne v12, v13, :cond_7

    const/4 v12, 0x1

    invoke-interface {p0, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x32

    if-ne v12, v13, :cond_7

    const/4 v12, 0x2

    invoke-interface {p0, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x30

    if-ne v12, v13, :cond_7

    .line 81
    const/4 v9, 0x3

    .line 86
    :cond_7
    const/4 v12, 0x4

    if-lt v7, v12, :cond_8

    .line 88
    const-string v12, "KR"

    const-string v13, "KT"

    invoke-static {v12, v13}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 89
    const/4 v12, 0x4

    if-ne v7, v12, :cond_10

    .line 90
    const/4 v12, 0x0

    invoke-interface {p0, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    add-int/lit8 v12, v12, -0x30

    mul-int/lit16 v12, v12, 0x3e8

    const/4 v13, 0x1

    invoke-interface {p0, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    mul-int/lit8 v13, v13, 0x64

    add-int/2addr v12, v13

    const/4 v13, 0x2

    invoke-interface {p0, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    mul-int/lit8 v13, v13, 0xa

    add-int/2addr v12, v13

    const/4 v13, 0x3

    invoke-interface {p0, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    add-int v11, v12, v13

    .line 92
    .local v11, tmpDDDNumber:I
    const/16 v12, 0x7d4

    if-ne v11, v12, :cond_8

    .line 93
    const/4 v9, 0x0

    .line 114
    .end local v11           #tmpDDDNumber:I
    :cond_8
    const/4 v12, 0x4

    if-ne v7, v12, :cond_b

    .line 115
    const/4 v12, 0x0

    invoke-interface {p0, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    add-int/lit8 v12, v12, -0x30

    mul-int/lit16 v12, v12, 0x3e8

    const/4 v13, 0x1

    invoke-interface {p0, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    mul-int/lit8 v13, v13, 0x64

    add-int/2addr v12, v13

    const/4 v13, 0x2

    invoke-interface {p0, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    mul-int/lit8 v13, v13, 0xa

    add-int/2addr v12, v13

    const/4 v13, 0x3

    invoke-interface {p0, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    add-int v11, v12, v13

    .line 116
    .restart local v11       #tmpDDDNumber:I
    const/16 v12, 0x1f4

    if-lt v11, v12, :cond_9

    const/16 v12, 0x1fd

    if-le v11, v12, :cond_a

    :cond_9
    const/16 v12, 0x82

    if-ne v11, v12, :cond_b

    .line 117
    :cond_a
    const/4 v9, 0x0

    .line 120
    .end local v11           #tmpDDDNumber:I
    :cond_b
    const/4 v12, 0x4

    if-le v7, v12, :cond_e

    .line 121
    const/4 v12, 0x0

    invoke-interface {p0, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    add-int/lit8 v12, v12, -0x30

    mul-int/lit16 v12, v12, 0x3e8

    const/4 v13, 0x1

    invoke-interface {p0, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    mul-int/lit8 v13, v13, 0x64

    add-int/2addr v12, v13

    const/4 v13, 0x2

    invoke-interface {p0, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    mul-int/lit8 v13, v13, 0xa

    add-int/2addr v12, v13

    const/4 v13, 0x3

    invoke-interface {p0, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    add-int v11, v12, v13

    .line 122
    .restart local v11       #tmpDDDNumber:I
    const/16 v12, 0x1f4

    if-lt v11, v12, :cond_c

    const/16 v12, 0x1fd

    if-le v11, v12, :cond_d

    :cond_c
    const/16 v12, 0x82

    if-ne v11, v12, :cond_e

    .line 123
    :cond_d
    const/4 v9, 0x4

    .line 126
    .end local v11           #tmpDDDNumber:I
    :cond_e
    const/4 v12, 0x6

    if-lt v7, v12, :cond_14

    const/4 v12, 0x1

    invoke-interface {p0, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x30

    if-ne v12, v13, :cond_14

    .line 127
    const/4 v12, 0x0

    invoke-interface {p0, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    add-int/lit8 v12, v12, -0x30

    mul-int/lit16 v12, v12, 0x2710

    const/4 v13, 0x1

    invoke-interface {p0, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    mul-int/lit16 v13, v13, 0x3e8

    add-int/2addr v12, v13

    const/4 v13, 0x2

    invoke-interface {p0, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    mul-int/lit8 v13, v13, 0x64

    add-int/2addr v12, v13

    const/4 v13, 0x3

    invoke-interface {p0, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    mul-int/lit8 v13, v13, 0xa

    add-int/2addr v12, v13

    const/4 v13, 0x4

    invoke-interface {p0, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    add-int v11, v12, v13

    .line 128
    .restart local v11       #tmpDDDNumber:I
    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_5_Number:[S

    .local v1, arr$:[S
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v6, :cond_14

    aget-short v2, v1, v3

    .line 129
    if-ne v2, v11, :cond_f

    .line 130
    const/4 v9, 0x5

    .line 128
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 97
    .end local v1           #arr$:[S
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v11           #tmpDDDNumber:I
    :cond_10
    const/4 v12, 0x0

    invoke-interface {p0, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    add-int/lit8 v12, v12, -0x30

    mul-int/lit8 v12, v12, 0x64

    const/4 v13, 0x1

    invoke-interface {p0, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    mul-int/lit8 v13, v13, 0xa

    add-int/2addr v12, v13

    const/4 v13, 0x2

    invoke-interface {p0, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    add-int v11, v12, v13

    .line 98
    .restart local v11       #tmpDDDNumber:I
    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_3_Number:[S

    .restart local v1       #arr$:[S
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v6, :cond_8

    aget-short v2, v1, v3

    .line 99
    if-ne v2, v11, :cond_11

    .line 100
    const/4 v9, 0x3

    .line 98
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 105
    .end local v1           #arr$:[S
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v11           #tmpDDDNumber:I
    :cond_12
    const/4 v12, 0x0

    invoke-interface {p0, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    add-int/lit8 v12, v12, -0x30

    mul-int/lit8 v12, v12, 0x64

    const/4 v13, 0x1

    invoke-interface {p0, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    mul-int/lit8 v13, v13, 0xa

    add-int/2addr v12, v13

    const/4 v13, 0x2

    invoke-interface {p0, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    add-int/lit8 v13, v13, -0x30

    add-int v11, v12, v13

    .line 106
    .restart local v11       #tmpDDDNumber:I
    sget-object v1, Landroid/telephony/LGKoreanPhoneNumberFormatter;->DDD_3_Number:[S

    .restart local v1       #arr$:[S
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_4
    if-ge v3, v6, :cond_8

    aget-short v2, v1, v3

    .line 107
    if-ne v2, v11, :cond_13

    .line 108
    const/4 v9, 0x3

    .line 106
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 134
    .end local v1           #arr$:[S
    .end local v3           #i$:I
    .end local v6           #len$:I
    .end local v11           #tmpDDDNumber:I
    :cond_14
    const/4 v4, 0x0

    .line 136
    .local v4, j:I
    if-lez v9, :cond_1f

    .line 137
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_5
    if-ge v2, v7, :cond_16

    .line 138
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x50

    if-eq v12, v13, :cond_15

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x57

    if-ne v12, v13, :cond_1a

    .line 139
    :cond_15
    move v4, v2

    .line 143
    :cond_16
    if-eqz v4, :cond_1b

    .line 144
    move v10, v4

    .line 178
    :cond_17
    :goto_6
    const/4 v5, 0x0

    .local v5, k:I
    :goto_7
    if-ge v5, v7, :cond_3

    .line 179
    if-ne v5, v9, :cond_18

    if-eqz v5, :cond_18

    .line 180
    const-string v12, "-"

    invoke-interface {p0, v5, v12}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 182
    :cond_18
    const/4 v12, 0x4

    if-le v10, v12, :cond_24

    .line 183
    add-int/lit8 v12, v5, 0x1

    if-ne v12, v10, :cond_19

    if-eqz v5, :cond_19

    .line 184
    add-int/lit8 v12, v5, 0x1

    const-string v13, "-"

    invoke-interface {p0, v12, v13}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 178
    :cond_19
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 137
    .end local v5           #k:I
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 147
    :cond_1b
    const/4 v12, 0x0

    invoke-interface {p0, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x30

    if-ne v12, v13, :cond_1c

    const/4 v12, 0x1

    invoke-interface {p0, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x31

    if-ne v12, v13, :cond_1c

    const/4 v12, 0x2

    invoke-interface {p0, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x30

    if-ne v12, v13, :cond_1c

    .line 148
    add-int/lit8 v10, v9, 0x5

    goto :goto_6

    .line 150
    :cond_1c
    add-int/lit8 v12, v9, 0x8

    if-lt v7, v12, :cond_1d

    add-int/lit8 v12, v7, -0x1

    invoke-interface {p0, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x23

    if-ne v12, v13, :cond_1d

    .line 151
    add-int/lit8 v10, v9, 0x4

    goto :goto_6

    .line 153
    :cond_1d
    add-int/lit8 v12, v9, 0x8

    if-lt v7, v12, :cond_1e

    .line 154
    add-int/lit8 v10, v9, 0x5

    goto :goto_6

    .line 156
    :cond_1e
    add-int/lit8 v10, v9, 0x4

    goto :goto_6

    .line 162
    :cond_1f
    const/4 v9, 0x0

    .line 163
    const/4 v12, 0x0

    invoke-interface {p0, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x2a

    if-eq v12, v13, :cond_20

    const/4 v12, 0x0

    invoke-interface {p0, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v12

    const/16 v13, 0x23

    if-ne v12, v13, :cond_21

    .line 164
    :cond_20
    const/4 v10, 0x0

    goto :goto_6

    .line 166
    :cond_21
    const/16 v12, 0x8

    if-lt v7, v12, :cond_23

    .line 167
    const/4 v10, 0x4

    .line 171
    :goto_9
    const/4 v12, 0x4

    if-ne v7, v12, :cond_17

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-interface {p0, v12, v13}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "050"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_22

    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-interface {p0, v12, v13}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "0130"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 172
    :cond_22
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 169
    :cond_23
    const/4 v10, 0x3

    goto :goto_9

    .line 187
    .restart local v5       #k:I
    :cond_24
    if-ne v5, v10, :cond_19

    if-eqz v5, :cond_19

    .line 188
    const-string v12, "-"

    invoke-interface {p0, v5, v12}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_8
.end method
