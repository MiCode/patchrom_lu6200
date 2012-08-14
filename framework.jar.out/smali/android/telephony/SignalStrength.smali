.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static INVALID:I = 0x0

.field public static final INVALID_SNR:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

#the value of this static final field might be set in the static constructor
.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x0

.field public static final NUM_SIGNAL_STRENGTH_BINS_ORIGINAL:I = 0x5

.field public static final SIGNAL_STRENGTH_AWESOME:I = 0x5

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String; = null

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static lastEcIoIndex:I

.field private static lastEcIoValues:[I


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field operator:Ljava/lang/String;

.field private sDataNetType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x6

    const/4 v4, 0x0

    const/4 v1, 0x5

    .line 61
    const-string v0, "US"

    const-string v3, "VZW"

    invoke-static {v0, v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "US"

    const-string v3, "ATT"

    invoke-static {v0, v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    .line 67
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "none"

    aput-object v2, v0, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "poor"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "moderate"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "good"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "great"

    aput-object v3, v0, v2

    const-string v2, "awesome"

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 94
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    .line 95
    sput v4, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    .line 100
    const v0, 0x7fffffff

    sput v0, Landroid/telephony/SignalStrength;->INVALID:I

    .line 285
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :cond_1
    move v0, v1

    .line 61
    goto :goto_0

    .line 94
    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x63

    const/4 v1, -0x1

    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    .line 125
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 126
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 127
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 128
    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 129
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 130
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 131
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 132
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 133
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 134
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 135
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 136
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 138
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 1
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "lteSignalStrength"
    .parameter "lteRsrp"
    .parameter "lteRsrq"
    .parameter "lteRssnr"
    .parameter "lteCqi"
    .parameter "gsm"

    .prologue
    .line 149
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    .line 150
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 151
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 152
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 153
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 154
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 155
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 156
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 157
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 158
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 159
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 160
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 161
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 162
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 163
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .parameter "gsmSignalStrength"
    .parameter "gsmBitErrorRate"
    .parameter "cdmaDbm"
    .parameter "cdmaEcio"
    .parameter "evdoDbm"
    .parameter "evdoEcio"
    .parameter "evdoSnr"
    .parameter "gsm"

    .prologue
    .line 174
    const/16 v8, 0x63

    sget v9, Landroid/telephony/SignalStrength;->INVALID:I

    sget v10, Landroid/telephony/SignalStrength;->INVALID:I

    sget v11, Landroid/telephony/SignalStrength;->INVALID:I

    sget v12, Landroid/telephony/SignalStrength;->INVALID:I

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIZ)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 213
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 227
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;Z)V
    .locals 1
    .parameter "in"
    .parameter "validate"

    .prologue
    .line 236
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 250
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 251
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->validateInput()V

    .line 252
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const-string/jumbo v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    .line 186
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 187
    return-void
.end method

.method private getCdmaLevelKR()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 992
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 993
    .local v0, cdmaDbm:I
    const/4 v5, 0x0

    .line 999
    .local v5, levelDbm:I
    const/16 v1, -0x61

    .line 1000
    .local v1, level1:I
    const/16 v2, -0x66

    .line 1001
    .local v2, level2:I
    const/16 v3, -0x69

    .line 1002
    .local v3, level3:I
    const/16 v4, -0x6d

    .line 1004
    .local v4, level4:I
    if-le v0, v1, :cond_1

    const/4 v5, 0x4

    .line 1013
    :goto_0
    const-string/jumbo v6, "ril.cdma.1xRegState"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v7, :cond_0

    .line 1014
    const/4 v5, 0x0

    .line 1015
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--> ril.cdma.1xRegState is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 1019
    :cond_0
    return v5

    .line 1005
    :cond_1
    if-le v0, v2, :cond_2

    const/4 v5, 0x3

    goto :goto_0

    .line 1006
    :cond_2
    if-le v0, v3, :cond_3

    const/4 v5, 0x2

    goto :goto_0

    .line 1007
    :cond_3
    if-le v0, v4, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    .line 1008
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private getCdmaLevelVZW()I
    .locals 6

    .prologue
    .line 511
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 512
    .local v0, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 516
    .local v1, cdmaEcio:I
    const/16 v5, -0x4a

    if-lt v0, v5, :cond_0

    const/4 v3, 0x5

    .line 523
    .local v3, levelDbm:I
    :goto_0
    const/16 v5, -0x50

    if-lt v1, v5, :cond_4

    const/4 v4, 0x5

    .line 529
    .local v4, levelEcio:I
    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    .line 531
    .local v2, level:I
    :goto_2
    return v2

    .line 517
    .end local v2           #level:I
    .end local v3           #levelDbm:I
    .end local v4           #levelEcio:I
    :cond_0
    const/16 v5, -0x53

    if-lt v0, v5, :cond_1

    const/4 v3, 0x4

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 518
    .end local v3           #levelDbm:I
    :cond_1
    const/16 v5, -0x5d

    if-lt v0, v5, :cond_2

    const/4 v3, 0x3

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 519
    .end local v3           #levelDbm:I
    :cond_2
    const/16 v5, -0x61

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 520
    .end local v3           #levelDbm:I
    :cond_3
    const/4 v3, 0x1

    .restart local v3       #levelDbm:I
    goto :goto_0

    .line 524
    :cond_4
    const/16 v5, -0x64

    if-lt v1, v5, :cond_5

    const/4 v4, 0x4

    .restart local v4       #levelEcio:I
    goto :goto_1

    .line 525
    .end local v4           #levelEcio:I
    :cond_5
    const/16 v5, -0x78

    if-lt v1, v5, :cond_6

    const/4 v4, 0x3

    .restart local v4       #levelEcio:I
    goto :goto_1

    .line 526
    .end local v4           #levelEcio:I
    :cond_6
    const/16 v5, -0x8c

    if-lt v1, v5, :cond_7

    const/4 v4, 0x2

    .restart local v4       #levelEcio:I
    goto :goto_1

    .line 527
    .end local v4           #levelEcio:I
    :cond_7
    const/4 v4, 0x1

    .restart local v4       #levelEcio:I
    goto :goto_1

    :cond_8
    move v2, v4

    .line 529
    goto :goto_2
.end method

.method private getEvdoLevelVZW()I
    .locals 6

    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 539
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 543
    .local v1, evdoSnr:I
    const/16 v5, -0x40

    if-lt v0, v5, :cond_0

    const/4 v3, 0x5

    .line 549
    .local v3, levelEvdoDbm:I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_4

    const/4 v4, 0x5

    .line 555
    .local v4, levelEvdoSnr:I
    :goto_1
    if-ge v3, v4, :cond_8

    move v2, v3

    .line 557
    .local v2, level:I
    :goto_2
    return v2

    .line 544
    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_0
    const/16 v5, -0x4a

    if-lt v0, v5, :cond_1

    const/4 v3, 0x4

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 545
    .end local v3           #levelEvdoDbm:I
    :cond_1
    const/16 v5, -0x59

    if-lt v0, v5, :cond_2

    const/4 v3, 0x3

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 546
    .end local v3           #levelEvdoDbm:I
    :cond_2
    const/16 v5, -0x68

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 547
    .end local v3           #levelEvdoDbm:I
    :cond_3
    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 550
    :cond_4
    const/4 v5, 0x5

    if-lt v1, v5, :cond_5

    const/4 v4, 0x4

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 551
    .end local v4           #levelEvdoSnr:I
    :cond_5
    const/4 v5, 0x3

    if-lt v1, v5, :cond_6

    const/4 v4, 0x3

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 552
    .end local v4           #levelEvdoSnr:I
    :cond_6
    const/4 v5, 0x1

    if-lt v1, v5, :cond_7

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 553
    .end local v4           #levelEvdoSnr:I
    :cond_7
    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    :cond_8
    move v2, v4

    .line 555
    goto :goto_2
.end method

.method private getGsmLevelDCM()I
    .locals 7

    .prologue
    const/16 v6, 0x63

    const/16 v5, 0xc

    const/16 v4, 0x8

    .line 900
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 901
    .local v0, asu:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 906
    .local v2, networkType:I
    packed-switch v2, :pswitch_data_0

    .line 921
    if-lez v0, :cond_0

    if-ne v0, v6, :cond_6

    :cond_0
    const/4 v1, 0x0

    .line 930
    .local v1, iconLevel:I
    :goto_0
    return v1

    .line 909
    .end local v1           #iconLevel:I
    :pswitch_0
    const/4 v3, 0x5

    if-lt v0, v3, :cond_1

    if-ne v0, v6, :cond_2

    :cond_1
    const/4 v1, 0x0

    .restart local v1       #iconLevel:I
    goto :goto_0

    .line 910
    .end local v1           #iconLevel:I
    :cond_2
    if-lt v0, v5, :cond_3

    const/4 v1, 0x4

    .restart local v1       #iconLevel:I
    goto :goto_0

    .line 911
    .end local v1           #iconLevel:I
    :cond_3
    if-lt v0, v4, :cond_4

    const/4 v1, 0x3

    .restart local v1       #iconLevel:I
    goto :goto_0

    .line 912
    .end local v1           #iconLevel:I
    :cond_4
    const/4 v3, 0x6

    if-lt v0, v3, :cond_5

    const/4 v1, 0x2

    .restart local v1       #iconLevel:I
    goto :goto_0

    .line 913
    .end local v1           #iconLevel:I
    :cond_5
    const/4 v1, 0x1

    .line 914
    .restart local v1       #iconLevel:I
    goto :goto_0

    .line 922
    .end local v1           #iconLevel:I
    :cond_6
    if-lt v0, v5, :cond_7

    const/4 v1, 0x4

    .restart local v1       #iconLevel:I
    goto :goto_0

    .line 923
    .end local v1           #iconLevel:I
    :cond_7
    if-lt v0, v4, :cond_8

    const/4 v1, 0x3

    .restart local v1       #iconLevel:I
    goto :goto_0

    .line 924
    .end local v1           #iconLevel:I
    :cond_8
    const/4 v3, 0x4

    if-lt v0, v3, :cond_9

    const/4 v1, 0x2

    .restart local v1       #iconLevel:I
    goto :goto_0

    .line 925
    .end local v1           #iconLevel:I
    :cond_9
    const/4 v1, 0x1

    .restart local v1       #iconLevel:I
    goto :goto_0

    .line 906
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getGsmLevelKR()I
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/16 v8, 0x8

    const/4 v7, 0x5

    const/4 v6, 0x6

    const/16 v5, 0x63

    .line 806
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 816
    .local v0, asu:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 818
    .local v2, networkType:I
    packed-switch v2, :pswitch_data_0

    .line 868
    :pswitch_0
    const-string v3, "KR"

    const-string v4, "SKT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 869
    const/4 v3, 0x2

    if-le v0, v3, :cond_0

    if-ne v0, v5, :cond_23

    :cond_0
    const/4 v1, 0x0

    .line 890
    .local v1, level:I
    :goto_0
    return v1

    .line 821
    .end local v1           #level:I
    :pswitch_1
    const-string v3, "KR"

    const-string v4, "SKT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 822
    if-lt v0, v7, :cond_1

    if-ne v0, v5, :cond_2

    :cond_1
    const/4 v1, 0x0

    .restart local v1       #level:I
    goto :goto_0

    .line 823
    .end local v1           #level:I
    :cond_2
    const/16 v3, 0xd

    if-lt v0, v3, :cond_3

    const/4 v1, 0x4

    .restart local v1       #level:I
    goto :goto_0

    .line 824
    .end local v1           #level:I
    :cond_3
    const/16 v3, 0xa

    if-lt v0, v3, :cond_4

    const/4 v1, 0x3

    .restart local v1       #level:I
    goto :goto_0

    .line 825
    .end local v1           #level:I
    :cond_4
    const/4 v3, 0x7

    if-lt v0, v3, :cond_5

    const/4 v1, 0x2

    .restart local v1       #level:I
    goto :goto_0

    .line 826
    .end local v1           #level:I
    :cond_5
    const/4 v1, 0x1

    .restart local v1       #level:I
    goto :goto_0

    .line 827
    .end local v1           #level:I
    :cond_6
    const-string v3, "KR"

    const-string v4, "KT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 828
    if-lt v0, v7, :cond_7

    if-ne v0, v5, :cond_8

    :cond_7
    const/4 v1, 0x0

    .restart local v1       #level:I
    goto :goto_0

    .line 829
    .end local v1           #level:I
    :cond_8
    const/16 v3, 0xd

    if-lt v0, v3, :cond_9

    const/4 v1, 0x4

    .restart local v1       #level:I
    goto :goto_0

    .line 830
    .end local v1           #level:I
    :cond_9
    const/16 v3, 0xa

    if-lt v0, v3, :cond_a

    const/4 v1, 0x3

    .restart local v1       #level:I
    goto :goto_0

    .line 831
    .end local v1           #level:I
    :cond_a
    const/4 v3, 0x7

    if-lt v0, v3, :cond_b

    const/4 v1, 0x2

    .restart local v1       #level:I
    goto :goto_0

    .line 832
    .end local v1           #level:I
    :cond_b
    const/4 v1, 0x1

    .restart local v1       #level:I
    goto :goto_0

    .line 834
    .end local v1           #level:I
    :cond_c
    if-lt v0, v9, :cond_d

    if-ne v0, v5, :cond_e

    :cond_d
    const/4 v1, 0x0

    .restart local v1       #level:I
    goto :goto_0

    .line 835
    .end local v1           #level:I
    :cond_e
    const/16 v3, 0xc

    if-lt v0, v3, :cond_f

    const/4 v1, 0x4

    .restart local v1       #level:I
    goto :goto_0

    .line 836
    .end local v1           #level:I
    :cond_f
    const/16 v3, 0x9

    if-lt v0, v3, :cond_10

    const/4 v1, 0x3

    .restart local v1       #level:I
    goto :goto_0

    .line 837
    .end local v1           #level:I
    :cond_10
    if-lt v0, v6, :cond_11

    const/4 v1, 0x2

    .restart local v1       #level:I
    goto :goto_0

    .line 838
    .end local v1           #level:I
    :cond_11
    const/4 v1, 0x1

    .line 840
    .restart local v1       #level:I
    goto :goto_0

    .line 846
    .end local v1           #level:I
    :pswitch_2
    const-string v3, "KR"

    const-string v4, "SKT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 847
    const/4 v3, 0x2

    if-le v0, v3, :cond_12

    if-ne v0, v5, :cond_13

    :cond_12
    const/4 v1, 0x0

    .restart local v1       #level:I
    goto :goto_0

    .line 848
    .end local v1           #level:I
    :cond_13
    if-lt v0, v8, :cond_14

    const/4 v1, 0x4

    .restart local v1       #level:I
    goto :goto_0

    .line 849
    .end local v1           #level:I
    :cond_14
    if-lt v0, v6, :cond_15

    const/4 v1, 0x3

    .restart local v1       #level:I
    goto :goto_0

    .line 850
    .end local v1           #level:I
    :cond_15
    if-lt v0, v7, :cond_16

    const/4 v1, 0x2

    .restart local v1       #level:I
    goto :goto_0

    .line 851
    .end local v1           #level:I
    :cond_16
    const/4 v1, 0x1

    .restart local v1       #level:I
    goto :goto_0

    .line 852
    .end local v1           #level:I
    :cond_17
    const-string v3, "KR"

    const-string v4, "KT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 853
    if-lez v0, :cond_18

    if-ne v0, v5, :cond_19

    :cond_18
    const/4 v1, 0x0

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 854
    .end local v1           #level:I
    :cond_19
    if-lt v0, v8, :cond_1a

    const/4 v1, 0x4

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 855
    .end local v1           #level:I
    :cond_1a
    if-lt v0, v6, :cond_1b

    const/4 v1, 0x3

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 856
    .end local v1           #level:I
    :cond_1b
    if-lt v0, v9, :cond_1c

    const/4 v1, 0x2

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 857
    .end local v1           #level:I
    :cond_1c
    const/4 v1, 0x1

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 859
    .end local v1           #level:I
    :cond_1d
    const/4 v3, 0x3

    if-le v0, v3, :cond_1e

    if-ne v0, v5, :cond_1f

    :cond_1e
    const/4 v1, 0x0

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 860
    .end local v1           #level:I
    :cond_1f
    const/16 v3, 0xb

    if-lt v0, v3, :cond_20

    const/4 v1, 0x4

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 861
    .end local v1           #level:I
    :cond_20
    const/16 v3, 0x9

    if-lt v0, v3, :cond_21

    const/4 v1, 0x3

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 862
    .end local v1           #level:I
    :cond_21
    if-lt v0, v6, :cond_22

    const/4 v1, 0x2

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 863
    .end local v1           #level:I
    :cond_22
    const/4 v1, 0x1

    .line 865
    .restart local v1       #level:I
    goto/16 :goto_0

    .line 870
    .end local v1           #level:I
    :cond_23
    if-lt v0, v8, :cond_24

    const/4 v1, 0x4

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 871
    .end local v1           #level:I
    :cond_24
    if-lt v0, v6, :cond_25

    const/4 v1, 0x3

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 872
    .end local v1           #level:I
    :cond_25
    if-lt v0, v7, :cond_26

    const/4 v1, 0x2

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 873
    .end local v1           #level:I
    :cond_26
    const/4 v1, 0x1

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 874
    .end local v1           #level:I
    :cond_27
    const-string v3, "KR"

    const-string v4, "KT"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 875
    if-lez v0, :cond_28

    if-ne v0, v5, :cond_29

    :cond_28
    const/4 v1, 0x0

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 876
    .end local v1           #level:I
    :cond_29
    if-lt v0, v8, :cond_2a

    const/4 v1, 0x4

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 877
    .end local v1           #level:I
    :cond_2a
    if-lt v0, v6, :cond_2b

    const/4 v1, 0x3

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 878
    .end local v1           #level:I
    :cond_2b
    if-lt v0, v9, :cond_2c

    const/4 v1, 0x2

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 879
    .end local v1           #level:I
    :cond_2c
    const/4 v1, 0x1

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 881
    .end local v1           #level:I
    :cond_2d
    const/4 v3, 0x3

    if-le v0, v3, :cond_2e

    if-ne v0, v5, :cond_2f

    :cond_2e
    const/4 v1, 0x0

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 882
    .end local v1           #level:I
    :cond_2f
    const/16 v3, 0xc

    if-lt v0, v3, :cond_30

    const/4 v1, 0x4

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 883
    .end local v1           #level:I
    :cond_30
    const/16 v3, 0x9

    if-lt v0, v3, :cond_31

    const/4 v1, 0x3

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 884
    .end local v1           #level:I
    :cond_31
    if-lt v0, v6, :cond_32

    const/4 v1, 0x2

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 885
    .end local v1           #level:I
    :cond_32
    const/4 v1, 0x1

    .restart local v1       #level:I
    goto/16 :goto_0

    .line 818
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getLevelKR()I
    .locals 3

    .prologue
    .line 445
    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_2

    .line 448
    const-string v1, "KR"

    const-string v2, "LGU"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/lgeAutoProfiling;->isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getGsmLevelKR()I

    move-result v0

    .line 469
    .local v0, level:I
    :cond_0
    :goto_0
    return v0

    .line 456
    .end local v0           #level:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .line 459
    .restart local v0       #level:I
    if-nez v0, :cond_0

    .line 460
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getGsmLevelKR()I

    move-result v0

    goto :goto_0

    .line 466
    .end local v0           #level:I
    :cond_2
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getCdmaLevelKR()I

    move-result v0

    .restart local v0       #level:I
    goto :goto_0
.end method

.method private getLevelVZW()I
    .locals 3

    .prologue
    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, level:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 483
    .local v1, networkType:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .line 486
    if-nez v0, :cond_0

    .line 487
    packed-switch v1, :pswitch_data_0

    .line 500
    :pswitch_0
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getCdmaLevelVZW()I

    move-result v0

    .line 504
    :cond_0
    :goto_0
    return v0

    .line 490
    :pswitch_1
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getCdmaLevelVZW()I

    move-result v0

    .line 491
    goto :goto_0

    .line 496
    :pswitch_2
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getEvdoLevelVZW()I

    move-result v0

    .line 497
    goto :goto_0

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private final getRSSIindexGSM(I)I
    .locals 4
    .parameter "asu"

    .prologue
    const/16 v3, -0x4f

    const/16 v1, -0x58

    const/16 v2, -0x61

    .line 639
    const/4 v0, 0x0

    .line 649
    .local v0, iconLevel:I
    add-int/lit8 p1, p1, -0x1

    .line 650
    if-lt p1, v3, :cond_0

    const/4 v0, 0x5

    .line 658
    :goto_0
    return v0

    .line 651
    :cond_0
    if-lt p1, v1, :cond_1

    if-ge p1, v3, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    .line 652
    :cond_1
    if-lt p1, v2, :cond_2

    if-ge p1, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 653
    :cond_2
    const/16 v1, -0x67

    if-lt p1, v1, :cond_3

    if-ge p1, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 654
    :cond_3
    const/16 v1, -0x68

    if-gt p1, v1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    .line 655
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final getRSSIindexUMTS(II)I
    .locals 9
    .parameter "asu"
    .parameter "asu_Ecio"

    .prologue
    const/16 v8, -0x4f

    const/16 v7, -0x59

    const/16 v6, -0x63

    const/16 v5, -0x69

    .line 662
    const/4 v1, 0x0

    .line 663
    .local v1, iconLevel_ecio:I
    const/4 v3, 0x0

    .line 664
    .local v3, iconLevel_ecio_sum:I
    const/4 v2, 0x0

    .line 665
    .local v2, iconLevel_ecio_avr:I
    const/4 v0, 0x0

    .line 674
    .local v0, iconLevel:I
    add-int/lit8 p1, p1, -0x1

    .line 675
    if-lt p1, v8, :cond_1

    const/4 v0, 0x5

    .line 682
    :goto_0
    const/16 v5, -0x64

    if-le p2, v5, :cond_6

    const/4 v1, 0x5

    .line 689
    :goto_1
    sget-object v5, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    sget v6, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    aput v1, v5, v6

    .line 690
    sget v5, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    sget-object v6, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    array-length v6, v6

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    sput v5, Landroid/telephony/SignalStrength;->lastEcIoIndex:I

    .line 692
    :cond_0
    const/4 v4, 0x0

    .local v4, kk:I
    :goto_2
    sget-object v5, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    array-length v5, v5

    if-ge v4, v5, :cond_a

    .line 693
    sget-object v5, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    aget v5, v5, v4

    add-int/2addr v3, v5

    .line 692
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 676
    .end local v4           #kk:I
    :cond_1
    if-lt p1, v7, :cond_2

    if-ge p1, v8, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 677
    :cond_2
    if-lt p1, v6, :cond_3

    if-ge p1, v7, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 678
    :cond_3
    if-lt p1, v5, :cond_4

    if-ge p1, v6, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    .line 679
    :cond_4
    if-ge p1, v5, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    .line 680
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 683
    :cond_6
    const/16 v5, -0x78

    if-le p2, v5, :cond_7

    const/4 v1, 0x4

    goto :goto_1

    .line 684
    :cond_7
    const/16 v5, -0x8c

    if-le p2, v5, :cond_8

    const/4 v1, 0x3

    goto :goto_1

    .line 685
    :cond_8
    const/16 v5, -0xa0

    if-le p2, v5, :cond_9

    const/4 v1, 0x2

    goto :goto_1

    .line 686
    :cond_9
    const/4 v1, 0x1

    goto :goto_1

    .line 695
    .restart local v4       #kk:I
    :cond_a
    sget-object v5, Landroid/telephony/SignalStrength;->lastEcIoValues:[I

    array-length v5, v5

    div-int v2, v3, v5

    .line 696
    if-le v1, v2, :cond_b

    .line 701
    :goto_3
    if-ge v0, v1, :cond_c

    .line 702
    :goto_4
    return v0

    :cond_b
    move v1, v2

    .line 696
    goto :goto_3

    :cond_c
    move v0, v1

    .line 701
    goto :goto_4
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1529
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter "m"

    .prologue
    .line 114
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 115
    .local v0, ret:Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 116
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 1488
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1489
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1490
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1491
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1492
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1493
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1494
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1495
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1496
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1497
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1498
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1499
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1500
    const-string/jumbo v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1501
    return-void
.end method

.method private validateInput()V
    .locals 6

    .prologue
    const/16 v1, 0x63

    const/4 v4, -0x1

    const/16 v2, -0x78

    const/16 v3, -0xa0

    .line 299
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 302
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 305
    iget-object v0, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v5, "ATT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 307
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    const v5, 0x37849

    if-ne v0, v5, :cond_5

    .line 324
    :goto_2
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_0
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 325
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-lez v0, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 326
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_1
    iput v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 328
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_2

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_2
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 329
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 330
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 331
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 336
    return-void

    :cond_3
    move v0, v1

    .line 299
    goto :goto_0

    :cond_4
    move v0, v2

    .line 302
    goto :goto_1

    .line 312
    :cond_5
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_7
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_7

    .line 317
    :cond_7
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v3, v0

    :cond_8
    iput v3, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    goto :goto_2

    :cond_9
    move v0, v4

    .line 325
    goto :goto_3

    .line 329
    :cond_a
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    goto :goto_4

    .line 330
    :cond_b
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    goto :goto_5

    .line 331
    :cond_c
    sget v0, Landroid/telephony/SignalStrength;->INVALID:I

    goto :goto_6
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 193
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 194
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 195
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 196
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 197
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 198
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 199
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 200
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 201
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 202
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 203
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 204
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 205
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 206
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 1436
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    .local v2, s:Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 1445
    .end local v2           #s:Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 1437
    :catch_0
    move-exception v1

    .line 1438
    .local v1, ex:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1445
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 1510
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1511
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1512
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1513
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1514
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1515
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1516
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1517
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1518
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1519
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1520
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1521
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1522
    const-string/jumbo v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1523
    return-void
.end method

.method public getAsuLevel()I
    .locals 4

    .prologue
    .line 568
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_1

    .line 569
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_0

    .line 570
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 589
    .local v0, asuLevel:I
    :goto_0
    return v0

    .line 572
    .end local v0           #asuLevel:I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 575
    .end local v0           #asuLevel:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 576
    .local v1, cdmaAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 577
    .local v2, evdoAsuLevel:I
    if-nez v2, :cond_2

    .line 579
    move v0, v1

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 580
    .end local v0           #asuLevel:I
    :cond_2
    if-nez v1, :cond_3

    .line 582
    move v0, v2

    .restart local v0       #asuLevel:I
    goto :goto_0

    .line 585
    .end local v0           #asuLevel:I
    :cond_3
    if-ge v1, v2, :cond_4

    move v0, v1

    .restart local v0       #asuLevel:I
    :goto_1
    goto :goto_0

    .end local v0           #asuLevel:I
    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 1029
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 1030
    .local v1, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 1034
    .local v2, cdmaEcio:I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 1042
    .local v0, cdmaAsuLevel:I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 1049
    .local v3, ecioAsuLevel:I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 1051
    .local v4, level:I
    :goto_2
    return v4

    .line 1035
    .end local v0           #cdmaAsuLevel:I
    .end local v3           #ecioAsuLevel:I
    .end local v4           #level:I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 1036
    .end local v0           #cdmaAsuLevel:I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 1037
    .end local v0           #cdmaAsuLevel:I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 1038
    .end local v0           #cdmaAsuLevel:I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 1039
    .end local v0           #cdmaAsuLevel:I
    :cond_4
    const/16 v0, 0x63

    .restart local v0       #cdmaAsuLevel:I
    goto :goto_0

    .line 1043
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 1044
    .end local v3           #ecioAsuLevel:I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 1045
    .end local v3           #ecioAsuLevel:I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 1046
    .end local v3           #ecioAsuLevel:I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    .line 1047
    .end local v3           #ecioAsuLevel:I
    :cond_9
    const/16 v3, 0x63

    .restart local v3       #ecioAsuLevel:I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 1049
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    .line 957
    iget-object v5, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "VZW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 958
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getCdmaLevelVZW()I

    move-result v2

    .line 981
    :goto_0
    return v2

    .line 961
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 962
    .local v0, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 966
    .local v1, cdmaEcio:I
    const/16 v5, -0x50

    if-lt v0, v5, :cond_1

    const/4 v3, 0x4

    .line 973
    .local v3, levelDbm:I
    :goto_1
    if-lt v1, v7, :cond_5

    const/4 v4, 0x4

    .line 979
    .local v4, levelEcio:I
    :goto_2
    if-ge v3, v4, :cond_9

    move v2, v3

    .line 981
    .local v2, level:I
    :goto_3
    goto :goto_0

    .line 967
    .end local v2           #level:I
    .end local v3           #levelDbm:I
    .end local v4           #levelEcio:I
    :cond_1
    if-lt v0, v7, :cond_2

    const/4 v3, 0x3

    .restart local v3       #levelDbm:I
    goto :goto_1

    .line 968
    .end local v3           #levelDbm:I
    :cond_2
    const/16 v5, -0x64

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3       #levelDbm:I
    goto :goto_1

    .line 969
    .end local v3           #levelDbm:I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3       #levelDbm:I
    goto :goto_1

    .line 970
    .end local v3           #levelDbm:I
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #levelDbm:I
    goto :goto_1

    .line 974
    :cond_5
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_6

    const/4 v4, 0x3

    .restart local v4       #levelEcio:I
    goto :goto_2

    .line 975
    .end local v4           #levelEcio:I
    :cond_6
    const/16 v5, -0x82

    if-lt v1, v5, :cond_7

    const/4 v4, 0x2

    .restart local v4       #levelEcio:I
    goto :goto_2

    .line 976
    .end local v4           #levelEcio:I
    :cond_7
    const/16 v5, -0x96

    if-lt v1, v5, :cond_8

    const/4 v4, 0x1

    .restart local v4       #levelEcio:I
    goto :goto_2

    .line 977
    .end local v4           #levelEcio:I
    :cond_8
    const/4 v4, 0x0

    .restart local v4       #levelEcio:I
    goto :goto_2

    :cond_9
    move v2, v4

    .line 979
    goto :goto_3
.end method

.method public getDbm()I
    .locals 2

    .prologue
    .line 600
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v1

    if-nez v1, :cond_0

    .line 602
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    .line 610
    .local v0, dBm:I
    :goto_0
    return v0

    .line 604
    .end local v0           #dBm:I
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    .restart local v0       #dBm:I
    goto :goto_0

    .line 607
    .end local v0           #dBm:I
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .restart local v0       #dBm:I
    goto :goto_0
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    .prologue
    .line 1096
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1097
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1101
    .local v1, evdoSnr:I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 1108
    .local v3, levelEvdoDbm:I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 1115
    .local v4, levelEvdoSnr:I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 1117
    .local v2, level:I
    :goto_2
    return v2

    .line 1102
    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 1103
    .end local v3           #levelEvdoDbm:I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 1104
    .end local v3           #levelEvdoDbm:I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 1105
    .end local v3           #levelEvdoDbm:I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 1106
    .end local v3           #levelEvdoDbm:I
    :cond_4
    const/16 v3, 0x63

    .restart local v3       #levelEvdoDbm:I
    goto :goto_0

    .line 1109
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 1110
    .end local v4           #levelEvdoSnr:I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 1111
    .end local v4           #levelEvdoSnr:I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 1112
    .end local v4           #levelEvdoSnr:I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    .line 1113
    .end local v4           #levelEvdoSnr:I
    :cond_9
    const/16 v4, 0x63

    .restart local v4       #levelEvdoSnr:I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 1115
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 7

    .prologue
    .line 1061
    iget-object v5, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "VZW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1062
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getEvdoLevelVZW()I

    move-result v2

    .line 1084
    :goto_0
    return v2

    .line 1065
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1066
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1070
    .local v1, evdoSnr:I
    const/16 v5, -0x3f

    if-lt v0, v5, :cond_1

    const/4 v3, 0x4

    .line 1076
    .local v3, levelEvdoDbm:I
    :goto_1
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/4 v4, 0x4

    .line 1082
    .local v4, levelEvdoSnr:I
    :goto_2
    if-ge v3, v4, :cond_9

    move v2, v3

    .line 1084
    .local v2, level:I
    :goto_3
    goto :goto_0

    .line 1071
    .end local v2           #level:I
    .end local v3           #levelEvdoDbm:I
    .end local v4           #levelEvdoSnr:I
    :cond_1
    const/16 v5, -0x4a

    if-lt v0, v5, :cond_2

    const/4 v3, 0x3

    .restart local v3       #levelEvdoDbm:I
    goto :goto_1

    .line 1072
    .end local v3           #levelEvdoDbm:I
    :cond_2
    const/16 v5, -0x57

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3       #levelEvdoDbm:I
    goto :goto_1

    .line 1073
    .end local v3           #levelEvdoDbm:I
    :cond_3
    const/16 v5, -0x6a

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3       #levelEvdoDbm:I
    goto :goto_1

    .line 1074
    .end local v3           #levelEvdoDbm:I
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #levelEvdoDbm:I
    goto :goto_1

    .line 1077
    :cond_5
    const/4 v5, 0x5

    if-lt v1, v5, :cond_6

    const/4 v4, 0x3

    .restart local v4       #levelEvdoSnr:I
    goto :goto_2

    .line 1078
    .end local v4           #levelEvdoSnr:I
    :cond_6
    const/4 v5, 0x3

    if-lt v1, v5, :cond_7

    const/4 v4, 0x2

    .restart local v4       #levelEvdoSnr:I
    goto :goto_2

    .line 1079
    .end local v4           #levelEvdoSnr:I
    :cond_7
    const/4 v5, 0x1

    if-lt v1, v5, :cond_8

    const/4 v4, 0x1

    .restart local v4       #levelEvdoSnr:I
    goto :goto_2

    .line 1080
    .end local v4           #levelEvdoSnr:I
    :cond_8
    const/4 v4, 0x0

    .restart local v4       #levelEvdoSnr:I
    goto :goto_2

    :cond_9
    move v2, v4

    .line 1082
    goto :goto_3
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    .prologue
    .line 945
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 947
    .local v0, level:I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 621
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 622
    .local v2, gsmSignalStrength:I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_0

    move v0, v3

    .line 623
    .local v0, asu:I
    :goto_0
    if-eq v0, v3, :cond_1

    .line 624
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 629
    .local v1, dBm:I
    :goto_1
    return v1

    .end local v0           #asu:I
    .end local v1           #dBm:I
    :cond_0
    move v0, v2

    .line 622
    goto :goto_0

    .line 626
    .restart local v0       #asu:I
    :cond_1
    const/4 v1, -0x1

    .restart local v1       #dBm:I
    goto :goto_1
.end method

.method public getGsmLevel()I
    .locals 7

    .prologue
    .line 721
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 724
    .local v0, asu:I
    iget-object v5, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "ATT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 725
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v2

    .line 726
    .local v2, asu_dBm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 732
    .local v1, asu_Ecio:I
    iget v5, p0, Landroid/telephony/SignalStrength;->sDataNetType:I

    packed-switch v5, :pswitch_data_0

    .line 748
    :pswitch_0
    iget v4, p0, Landroid/telephony/SignalStrength;->sDataNetType:I

    .line 749
    .local v4, mDataNetType_CSonly:I
    const v5, 0x37849

    if-ne v1, v5, :cond_0

    const/4 v4, 0x1

    .line 752
    :cond_0
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 754
    invoke-direct {p0, v2}, Landroid/telephony/SignalStrength;->getRSSIindexGSM(I)I

    move-result v3

    .line 791
    .end local v1           #asu_Ecio:I
    .end local v2           #asu_dBm:I
    .end local v4           #mDataNetType_CSonly:I
    .local v3, level:I
    :goto_0
    return v3

    .line 735
    .end local v3           #level:I
    .restart local v1       #asu_Ecio:I
    .restart local v2       #asu_dBm:I
    :pswitch_1
    invoke-direct {p0, v2}, Landroid/telephony/SignalStrength;->getRSSIindexGSM(I)I

    move-result v3

    .line 736
    .restart local v3       #level:I
    goto :goto_0

    .line 743
    .end local v3           #level:I
    :pswitch_2
    invoke-direct {p0, v2, v1}, Landroid/telephony/SignalStrength;->getRSSIindexUMTS(II)I

    move-result v3

    .line 744
    .restart local v3       #level:I
    goto :goto_0

    .line 762
    .end local v3           #level:I
    .restart local v4       #mDataNetType_CSonly:I
    :cond_1
    invoke-direct {p0, v2, v1}, Landroid/telephony/SignalStrength;->getRSSIindexUMTS(II)I

    move-result v3

    .line 765
    .restart local v3       #level:I
    goto :goto_0

    .line 775
    .end local v1           #asu_Ecio:I
    .end local v2           #asu_dBm:I
    .end local v3           #level:I
    .end local v4           #mDataNetType_CSonly:I
    :cond_2
    iget-object v5, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "DCM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 776
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getGsmLevelDCM()I

    move-result v3

    .restart local v3       #level:I
    goto :goto_0

    .line 782
    .end local v3           #level:I
    :cond_3
    const/4 v5, 0x2

    if-le v0, v5, :cond_4

    const/16 v5, 0x63

    if-ne v0, v5, :cond_5

    :cond_4
    const/4 v3, 0x0

    .restart local v3       #level:I
    goto :goto_0

    .line 783
    .end local v3           #level:I
    :cond_5
    const/16 v5, 0xc

    if-lt v0, v5, :cond_6

    const/4 v3, 0x4

    .restart local v3       #level:I
    goto :goto_0

    .line 784
    .end local v3           #level:I
    :cond_6
    const/16 v5, 0x8

    if-lt v0, v5, :cond_7

    const/4 v3, 0x3

    .restart local v3       #level:I
    goto :goto_0

    .line 785
    .end local v3           #level:I
    :cond_7
    const/4 v5, 0x5

    if-lt v0, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3       #level:I
    goto :goto_0

    .line 786
    .end local v3           #level:I
    :cond_8
    const/4 v3, 0x1

    .restart local v3       #level:I
    goto :goto_0

    .line 732
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 5

    .prologue
    .line 406
    const-string v3, "KR"

    invoke-static {v3}, Lcom/android/internal/telephony/lgeAutoProfiling;->isCountry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelKR()I

    move-result v2

    .line 435
    :cond_0
    :goto_0
    return v2

    .line 409
    :cond_1
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_2

    .line 410
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v2

    .line 411
    .local v2, level:I
    if-nez v2, :cond_0

    .line 412
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v2

    goto :goto_0

    .line 416
    .end local v2           #level:I
    :cond_2
    iget-object v3, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 417
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getLevelVZW()I

    move-result v2

    .restart local v2       #level:I
    goto :goto_0

    .line 420
    .end local v2           #level:I
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 421
    .local v0, cdmaLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 422
    .local v1, evdoLevel:I
    if-nez v1, :cond_4

    .line 424
    move v2, v0

    .restart local v2       #level:I
    goto :goto_0

    .line 425
    .end local v2           #level:I
    :cond_4
    if-nez v0, :cond_5

    .line 427
    move v2, v1

    .restart local v2       #level:I
    goto :goto_0

    .line 430
    .end local v2           #level:I
    :cond_5
    if-ge v0, v1, :cond_6

    move v2, v0

    .restart local v2       #level:I
    :goto_1
    goto :goto_0

    .end local v2           #level:I
    :cond_6
    move v2, v1

    goto :goto_1
.end method

.method public getLteAsuLevel()I
    .locals 3

    .prologue
    .line 1385
    const/16 v0, 0x63

    .line 1386
    .local v0, lteAsuLevel:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1400
    .local v1, lteDbm:I
    sget v2, Landroid/telephony/SignalStrength;->INVALID:I

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1403
    :goto_0
    return v0

    .line 1401
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 1148
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 1126
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 12

    .prologue
    const/16 v11, -0x7e

    const/16 v10, -0x55

    const/16 v9, -0x5f

    const/16 v8, -0x69

    const/4 v7, -0x1

    .line 1166
    const/4 v3, 0x0

    .local v3, rssiIconLevel:I
    const/4 v1, -0x1

    .local v1, rsrpIconLevel:I
    const/4 v4, -0x1

    .line 1170
    .local v4, snrIconLevel:I
    const/4 v2, -0x1

    .line 1176
    .local v2, rsrqIconLevel:I
    iget-object v5, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "ATT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1178
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    sget v6, Landroid/telephony/SignalStrength;->INVALID:I

    if-ne v5, v6, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    move v5, v1

    .line 1376
    :goto_1
    return v5

    .line 1179
    :cond_1
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v5, v10, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    .line 1180
    :cond_2
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v5, v9, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    .line 1181
    :cond_3
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-le v5, v8, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    .line 1182
    :cond_4
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x72

    if-le v5, v6, :cond_5

    const/4 v1, 0x2

    goto :goto_0

    .line 1183
    :cond_5
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x72

    if-gt v5, v6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 1191
    :cond_6
    iget-object v5, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "SKT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1194
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    sget v6, Landroid/telephony/SignalStrength;->INVALID:I

    if-ne v5, v6, :cond_9

    const/4 v1, 0x0

    .line 1296
    :cond_7
    :goto_2
    iget-object v5, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "SKT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1299
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v6, -0xd

    if-lt v5, v6, :cond_34

    const/4 v2, 0x4

    .line 1322
    :cond_8
    :goto_3
    iget-object v5, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "SKT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    move v5, v1

    .line 1325
    goto :goto_1

    .line 1195
    :cond_9
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x5e

    if-lt v5, v6, :cond_a

    const/4 v1, 0x4

    goto :goto_2

    .line 1196
    :cond_a
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x5e

    if-ge v5, v6, :cond_b

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x6f

    if-lt v5, v6, :cond_b

    const/4 v1, 0x3

    goto :goto_2

    .line 1197
    :cond_b
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x6f

    if-ge v5, v6, :cond_c

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x77

    if-lt v5, v6, :cond_c

    const/4 v1, 0x2

    goto :goto_2

    .line 1198
    :cond_c
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x77

    if-ge v5, v6, :cond_d

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v5, v11, :cond_d

    const/4 v1, 0x1

    goto :goto_2

    .line 1199
    :cond_d
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ge v5, v11, :cond_7

    const/4 v1, 0x0

    goto :goto_2

    .line 1203
    :cond_e
    iget-object v5, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "DCM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1206
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    sget v6, Landroid/telephony/SignalStrength;->INVALID:I

    if-ne v5, v6, :cond_f

    const/4 v1, 0x0

    goto :goto_2

    .line 1207
    :cond_f
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x5e

    if-lt v5, v6, :cond_10

    const/4 v1, 0x4

    goto :goto_2

    .line 1208
    :cond_10
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x5e

    if-ge v5, v6, :cond_11

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x6f

    if-lt v5, v6, :cond_11

    const/4 v1, 0x3

    goto :goto_2

    .line 1209
    :cond_11
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x6f

    if-ge v5, v6, :cond_12

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x77

    if-lt v5, v6, :cond_12

    const/4 v1, 0x2

    goto/16 :goto_2

    .line 1210
    :cond_12
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x77

    if-ge v5, v6, :cond_13

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v5, v11, :cond_13

    const/4 v1, 0x1

    goto/16 :goto_2

    .line 1211
    :cond_13
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ge v5, v11, :cond_7

    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1215
    :cond_14
    iget-object v5, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "LGU"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1218
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    sget v6, Landroid/telephony/SignalStrength;->INVALID:I

    if-ne v5, v6, :cond_15

    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1219
    :cond_15
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v5, v10, :cond_16

    const/4 v1, 0x4

    goto/16 :goto_2

    .line 1220
    :cond_16
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ge v5, v10, :cond_17

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v5, v9, :cond_17

    const/4 v1, 0x3

    goto/16 :goto_2

    .line 1221
    :cond_17
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ge v5, v9, :cond_18

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v5, v8, :cond_18

    const/4 v1, 0x2

    goto/16 :goto_2

    .line 1222
    :cond_18
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ge v5, v8, :cond_19

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x73

    if-lt v5, v6, :cond_19

    const/4 v1, 0x1

    goto/16 :goto_2

    .line 1223
    :cond_19
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x73

    if-ge v5, v6, :cond_7

    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1227
    :cond_1a
    iget-object v5, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "VZW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1228
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 1229
    .local v0, networkType:I
    const/16 v5, 0xd

    if-ne v0, v5, :cond_1d

    .line 1236
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    sget v6, Landroid/telephony/SignalStrength;->INVALID:I

    if-ne v5, v6, :cond_1e

    const/4 v1, 0x0

    .line 1248
    :cond_1b
    :goto_4
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x82

    if-lt v5, v6, :cond_23

    const/4 v4, 0x5

    .line 1261
    :cond_1c
    :goto_5
    if-ge v1, v4, :cond_27

    move v5, v1

    goto/16 :goto_1

    .line 1233
    :cond_1d
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1237
    :cond_1e
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v5, v10, :cond_1f

    const/4 v1, 0x5

    goto :goto_4

    .line 1238
    :cond_1f
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v5, v9, :cond_20

    const/4 v1, 0x4

    goto :goto_4

    .line 1239
    :cond_20
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v5, v8, :cond_21

    const/4 v1, 0x3

    goto :goto_4

    .line 1240
    :cond_21
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x73

    if-lt v5, v6, :cond_22

    const/4 v1, 0x2

    goto :goto_4

    .line 1241
    :cond_22
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x8c

    if-lt v5, v6, :cond_1b

    const/4 v1, 0x1

    goto :goto_4

    .line 1249
    :cond_23
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x2d

    if-lt v5, v6, :cond_24

    const/4 v4, 0x4

    goto :goto_5

    .line 1250
    :cond_24
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0xa

    if-lt v5, v6, :cond_25

    const/4 v4, 0x3

    goto :goto_5

    .line 1251
    :cond_25
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, -0x1e

    if-lt v5, v6, :cond_26

    const/4 v4, 0x2

    goto :goto_5

    .line 1252
    :cond_26
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, -0xc8

    if-lt v5, v6, :cond_1c

    const/4 v4, 0x1

    goto :goto_5

    :cond_27
    move v5, v4

    .line 1261
    goto/16 :goto_1

    .line 1268
    .end local v0           #networkType:I
    :cond_28
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x2c

    if-le v5, v6, :cond_2a

    const/4 v1, -0x1

    .line 1283
    :cond_29
    :goto_6
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x12c

    if-le v5, v6, :cond_2f

    const/4 v4, -0x1

    goto/16 :goto_2

    .line 1269
    :cond_2a
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v5, v10, :cond_2b

    const/4 v1, 0x4

    goto :goto_6

    .line 1270
    :cond_2b
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v5, v9, :cond_2c

    const/4 v1, 0x3

    goto :goto_6

    .line 1271
    :cond_2c
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-lt v5, v8, :cond_2d

    const/4 v1, 0x2

    goto :goto_6

    .line 1272
    :cond_2d
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x73

    if-lt v5, v6, :cond_2e

    const/4 v1, 0x1

    goto :goto_6

    .line 1273
    :cond_2e
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v6, -0x8c

    if-lt v5, v6, :cond_29

    const/4 v1, 0x0

    goto :goto_6

    .line 1284
    :cond_2f
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x82

    if-lt v5, v6, :cond_30

    const/4 v4, 0x4

    goto/16 :goto_2

    .line 1285
    :cond_30
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x2d

    if-lt v5, v6, :cond_31

    const/4 v4, 0x3

    goto/16 :goto_2

    .line 1286
    :cond_31
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0xa

    if-lt v5, v6, :cond_32

    const/4 v4, 0x2

    goto/16 :goto_2

    .line 1287
    :cond_32
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, -0x1e

    if-lt v5, v6, :cond_33

    const/4 v4, 0x1

    goto/16 :goto_2

    .line 1288
    :cond_33
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, -0xc8

    if-lt v5, v6, :cond_7

    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1300
    :cond_34
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v6, -0xd

    if-ge v5, v6, :cond_35

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v6, -0xf

    if-lt v5, v6, :cond_35

    const/4 v2, 0x3

    goto/16 :goto_3

    .line 1301
    :cond_35
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v6, -0xf

    if-ge v5, v6, :cond_36

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v6, -0x11

    if-lt v5, v6, :cond_36

    const/4 v2, 0x2

    goto/16 :goto_3

    .line 1302
    :cond_36
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v6, -0x11

    if-ge v5, v6, :cond_37

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v6, -0x13

    if-lt v5, v6, :cond_37

    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1303
    :cond_37
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v6, -0x13

    if-ge v5, v6, :cond_8

    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1307
    :cond_38
    iget-object v5, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "DCM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1311
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v6, -0xd

    if-lt v5, v6, :cond_39

    const/4 v2, 0x4

    goto/16 :goto_3

    .line 1312
    :cond_39
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v6, -0xd

    if-ge v5, v6, :cond_3a

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v6, -0xf

    if-lt v5, v6, :cond_3a

    const/4 v2, 0x3

    goto/16 :goto_3

    .line 1313
    :cond_3a
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v6, -0xf

    if-ge v5, v6, :cond_3b

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v6, -0x11

    if-lt v5, v6, :cond_3b

    const/4 v2, 0x2

    goto/16 :goto_3

    .line 1314
    :cond_3b
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v6, -0x11

    if-ge v5, v6, :cond_3c

    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v6, -0x13

    if-lt v5, v6, :cond_3c

    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1315
    :cond_3c
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v6, -0x13

    if-ge v5, v6, :cond_8

    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1329
    :cond_3d
    iget-object v5, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "DCM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1333
    if-eq v2, v7, :cond_42

    if-eq v1, v7, :cond_42

    .line 1334
    if-ge v1, v2, :cond_3e

    move v5, v1

    goto/16 :goto_1

    :cond_3e
    move v5, v2

    goto/16 :goto_1

    .line 1337
    :cond_3f
    iget-object v5, p0, Landroid/telephony/SignalStrength;->operator:Ljava/lang/String;

    const-string v6, "LGU"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    move v5, v1

    .line 1343
    goto/16 :goto_1

    .line 1348
    :cond_40
    if-eq v4, v7, :cond_42

    if-eq v1, v7, :cond_42

    .line 1354
    if-ge v1, v4, :cond_41

    move v5, v1

    goto/16 :goto_1

    :cond_41
    move v5, v4

    goto/16 :goto_1

    .line 1358
    :cond_42
    if-eq v4, v7, :cond_43

    move v5, v4

    goto/16 :goto_1

    .line 1361
    :cond_43
    if-eq v1, v7, :cond_44

    move v5, v1

    goto/16 :goto_1

    .line 1365
    :cond_44
    if-eq v2, v7, :cond_45

    move v5, v2

    goto/16 :goto_1

    .line 1369
    :cond_45
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v6, 0x3f

    if-le v5, v6, :cond_47

    const/4 v3, 0x0

    :cond_46
    :goto_7
    move v5, v3

    .line 1376
    goto/16 :goto_1

    .line 1370
    :cond_47
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v6, 0xc

    if-lt v5, v6, :cond_48

    const/4 v3, 0x4

    goto :goto_7

    .line 1371
    :cond_48
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v6, 0x8

    if-lt v5, v6, :cond_49

    const/4 v3, 0x3

    goto :goto_7

    .line 1372
    :cond_49
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/4 v6, 0x5

    if-lt v5, v6, :cond_4a

    const/4 v3, 0x2

    goto :goto_7

    .line 1373
    :cond_4a
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v5, :cond_46

    const/4 v3, 0x1

    goto :goto_7
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 1136
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 1140
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssi()I
    .locals 1

    .prologue
    .line 1132
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x72

    return v0
.end method

.method public getLteSnr()I
    .locals 1

    .prologue
    .line 1144
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1418
    const/16 v0, 0x1f

    .line 1419
    .local v0, primeNum:I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1410
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setDataNetType(I)V
    .locals 0
    .parameter "DataType"

    .prologue
    .line 634
    iput p1, p0, Landroid/telephony/SignalStrength;->sDataNetType:I

    .line 636
    return-void
.end method

.method public setGsm(Z)V
    .locals 0
    .parameter "gsmFlag"

    .prologue
    .line 345
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 347
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 258
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
