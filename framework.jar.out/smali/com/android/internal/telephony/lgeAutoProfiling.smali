.class public final Lcom/android/internal/telephony/lgeAutoProfiling;
.super Lcom/android/internal/telephony/lgeKeyProfiling;
.source "lgeAutoProfiling.java"


# static fields
.field public static final DBG:Z = false

.field private static InitRILECC:Ljava/lang/String; = null

.field public static final PROFILING_PREF:Ljava/lang/String; = "telprofiling"

.field private static SYSTEM_PROP_ECCLIST:Ljava/lang/String; = null

.field private static SYSTEM_PROP_RO_ECCLIST:Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "TELProfiling"

.field public static final VDBG:Z = true

.field private static mContext:Landroid/content/Context;

.field private static mCountry:Ljava/lang/String;

.field private static mFeatureFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mFilePath:Ljava/lang/String;

.field private static mOperator:Ljava/lang/String;

.field private static mProfileSetting:Lcom/android/internal/telephony/ProfileSettings;

.field private static mTelephonyFileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/android/internal/telephony/lgeAutoProfiling;->InitRILECC:Ljava/lang/String;

    .line 61
    sput-object v0, Lcom/android/internal/telephony/lgeAutoProfiling;->mFilePath:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/ProfileSettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/ProfileSettings;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/lgeAutoProfiling;->mProfileSetting:Lcom/android/internal/telephony/ProfileSettings;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/lgeAutoProfiling;->mTelephonyFileMap:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/lgeAutoProfiling;->mFeatureFileMap:Ljava/util/HashMap;

    .line 69
    const-string/jumbo v0, "ro.build.target_operator"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/lgeAutoProfiling;->mOperator:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "ro.build.target_country"

    const-string/jumbo v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/lgeAutoProfiling;->mCountry:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, "ro.ril.ecclist"

    sput-object v0, Lcom/android/internal/telephony/lgeAutoProfiling;->SYSTEM_PROP_RO_ECCLIST:Ljava/lang/String;

    .line 76
    const-string/jumbo v0, "ril.ecclist"

    sput-object v0, Lcom/android/internal/telephony/lgeAutoProfiling;->SYSTEM_PROP_ECCLIST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/telephony/lgeKeyProfiling;-><init>()V

    return-void
.end method

.method private static StartProfiling(Z)V
    .locals 3
    .parameter "featuresearch"

    .prologue
    .line 506
    if-eqz p0, :cond_0

    .line 507
    const-string v1, "/etc/featureset.xml"

    sput-object v1, Lcom/android/internal/telephony/lgeAutoProfiling;->mFilePath:Ljava/lang/String;

    .line 514
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/lgeAutoProfiling;->getInstanceSimInfo()Lcom/android/internal/telephony/SimInfo;

    move-result-object v0

    .line 515
    .local v0, fromSim:Lcom/android/internal/telephony/SimInfo;
    sget-object v1, Lcom/android/internal/telephony/lgeAutoProfiling;->mProfileSetting:Lcom/android/internal/telephony/ProfileSettings;

    sget-object v2, Lcom/android/internal/telephony/lgeAutoProfiling;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/ProfileSettings;->updateSharedPreferenceFromXml(Lcom/android/internal/telephony/SimInfo;Ljava/lang/String;)V

    .line 517
    return-void

    .line 509
    .end local v0           #fromSim:Lcom/android/internal/telephony/SimInfo;
    :cond_0
    const-string v1, "/etc/telephony.xml"

    sput-object v1, Lcom/android/internal/telephony/lgeAutoProfiling;->mFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public static beNotShortCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 237
    if-eqz p0, :cond_0

    sput-object p0, Lcom/android/internal/telephony/lgeAutoProfiling;->mContext:Landroid/content/Context;

    .line 239
    :cond_0
    const/4 v0, 0x0

    .line 241
    .local v0, shortcode:Ljava/lang/String;
    const-string v3, "SEND_CALL_WITHOUT_CALL"

    invoke-static {p0, v3, v2}, Lcom/android/internal/telephony/lgeAutoProfiling;->getString(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 252
    :cond_1
    :goto_0
    return v2

    .line 245
    :cond_2
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v1, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    .local v1, st:Ljava/util/StringTokenizer;
    :cond_3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 249
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getArray(Landroid/content/Context;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "key"
    .parameter "featuresearch"

    .prologue
    .line 370
    invoke-static {p0}, Lcom/android/internal/telephony/lgeAutoProfiling;->setContext(Landroid/content/Context;)V

    .line 372
    const/4 v0, 0x0

    .line 374
    .local v0, NumberString:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/internal/telephony/lgeAutoProfiling;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 375
    const/4 v1, 0x0

    .line 391
    :cond_0
    return-object v1

    .line 378
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v4, v0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .local v4, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 383
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 385
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [Ljava/lang/String;

    .line 387
    .local v1, StrArray:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 388
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v2

    .line 387
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "context"
    .parameter "key"
    .parameter "featuresearch"

    .prologue
    const/4 v1, 0x0

    .line 286
    invoke-static {p0}, Lcom/android/internal/telephony/lgeAutoProfiling;->setContext(Landroid/content/Context;)V

    .line 287
    const/4 v0, 0x0

    .line 290
    .local v0, Feature:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/internal/telephony/lgeAutoProfiling;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v1

    .line 292
    :cond_1
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TRUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getDefaultECC(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 127
    invoke-static {p0}, Lcom/android/internal/telephony/lgeAutoProfiling;->setContext(Landroid/content/Context;)V

    .line 128
    const-string v0, "ECCList"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/lgeAutoProfiling;->getdefaultStringInArray(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getECCList(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 136
    invoke-static {p0}, Lcom/android/internal/telephony/lgeAutoProfiling;->setContext(Landroid/content/Context;)V

    .line 138
    const-string v3, "ECCList"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/android/internal/telephony/lgeAutoProfiling;->getArray(Landroid/content/Context;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, EccfromXml:[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/lgeAutoProfiling;->SYSTEM_PROP_RO_ECCLIST:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, Ro_ECCList:Ljava/lang/String;
    sget-object v3, Lcom/android/internal/telephony/lgeAutoProfiling;->mTelephonyFileMap:Ljava/util/HashMap;

    const-string v4, "ECCList"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    .local v1, Hash_ECCList:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 154
    const-string v3, "ECCList"

    invoke-static {v3, v1}, Lcom/android/internal/telephony/lgeAutoProfiling;->setFinalECCList(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    return-object v0
.end method

.method public static getInstanceSimInfo()Lcom/android/internal/telephony/SimInfo;
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 423
    const/4 v1, 0x0

    .line 424
    .local v1, mcc:Ljava/lang/String;
    const/4 v2, 0x0

    .line 425
    .local v2, mnc:Ljava/lang/String;
    const/4 v4, 0x0

    .line 426
    .local v4, spn:Ljava/lang/String;
    const/4 v3, 0x0

    .line 427
    .local v3, gid:Ljava/lang/String;
    const/4 v5, 0x0

    .line 429
    .local v5, imsi:Ljava/lang/String;
    const-string/jumbo v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 430
    .local v6, numeric:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v7, 0x5

    if-lt v0, v7, :cond_0

    .line 431
    const/4 v0, 0x0

    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 434
    :cond_0
    const-string/jumbo v0, "gsm.sim.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 435
    const-string/jumbo v0, "gsm.sim.operator.gid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 438
    new-instance v0, Lcom/android/internal/telephony/SimInfo;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/SimInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInteger(Landroid/content/Context;Ljava/lang/String;IZ)I
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"
    .parameter "featuresearch"

    .prologue
    .line 322
    invoke-static {p0}, Lcom/android/internal/telephony/lgeAutoProfiling;->setContext(Landroid/content/Context;)V

    .line 325
    :try_start_0
    invoke-static {p1, p3}, Lcom/android/internal/telephony/lgeAutoProfiling;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 331
    .end local p2
    :goto_0
    return p2

    .line 326
    .restart local p2
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "TELProfiling"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error IntegerNumber value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInteger(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "featuresearch"

    .prologue
    .line 305
    invoke-static {p0}, Lcom/android/internal/telephony/lgeAutoProfiling;->setContext(Landroid/content/Context;)V

    .line 308
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/internal/telephony/lgeAutoProfiling;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 313
    :goto_0
    return v1

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "TELProfiling"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error IntegerNumber value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/16 v1, 0xff

    goto :goto_0
.end method

.method public static getPreferredNetworkMode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 275
    if-eqz p0, :cond_0

    sput-object p0, Lcom/android/internal/telephony/lgeAutoProfiling;->mContext:Landroid/content/Context;

    .line 276
    :cond_0
    const-string v1, "PREFERRED_NETWORK_MODE"

    invoke-static {p0, v1, v2, v2}, Lcom/android/internal/telephony/lgeAutoProfiling;->getInteger(Landroid/content/Context;Ljava/lang/String;IZ)I

    move-result v0

    .line 278
    .local v0, preferredNetworkMode:I
    return v0
.end method

.method public static getRVMS(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 228
    if-eqz p0, :cond_0

    sput-object p0, Lcom/android/internal/telephony/lgeAutoProfiling;->mContext:Landroid/content/Context;

    .line 229
    :cond_0
    const-string v0, "RVMS"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/lgeAutoProfiling;->getString(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "featuresearch"

    .prologue
    .line 339
    invoke-static {p0}, Lcom/android/internal/telephony/lgeAutoProfiling;->setContext(Landroid/content/Context;)V

    .line 341
    invoke-static {p1, p2}, Lcom/android/internal/telephony/lgeAutoProfiling;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVMS(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 219
    if-eqz p0, :cond_0

    sput-object p0, Lcom/android/internal/telephony/lgeAutoProfiling;->mContext:Landroid/content/Context;

    .line 220
    :cond_0
    const-string v0, "VMS"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/lgeAutoProfiling;->getString(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getValue(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .parameter "key"
    .parameter "FeatureSearch"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 447
    const/4 v1, 0x0

    .line 449
    .local v1, retVal:Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 450
    sget-object v2, Lcom/android/internal/telephony/lgeAutoProfiling;->mFeatureFileMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/lgeAutoProfiling;->mFeatureFileMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 452
    sget-object v2, Lcom/android/internal/telephony/lgeAutoProfiling;->mFeatureFileMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #retVal:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 495
    .restart local v1       #retVal:Ljava/lang/String;
    :goto_0
    const-string v2, "TELProfiling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [getValue] --->  key  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Vale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    return-object v1

    .line 453
    :cond_0
    sget-object v2, Lcom/android/internal/telephony/lgeAutoProfiling;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    const-string v2, "com.android.phone"

    sget-object v3, Lcom/android/internal/telephony/lgeAutoProfiling;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 455
    sget-object v2, Lcom/android/internal/telephony/lgeAutoProfiling;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "telprofiling"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 457
    .local v0, preference:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_1

    .line 458
    invoke-interface {v0, p0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 460
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 462
    .end local v0           #preference:Landroid/content/SharedPreferences;
    :cond_2
    const-string v2, "TELProfiling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [getValue] mFeatureFileMap search again : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-static {p1}, Lcom/android/internal/telephony/lgeAutoProfiling;->StartProfiling(Z)V

    .line 464
    sget-object v2, Lcom/android/internal/telephony/lgeAutoProfiling;->mFeatureFileMap:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/lgeAutoProfiling;->mFeatureFileMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 465
    sget-object v2, Lcom/android/internal/telephony/lgeAutoProfiling;->mFeatureFileMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #retVal:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #retVal:Ljava/lang/String;
    goto :goto_0

    .line 467
    :cond_3
    const-string v2, "TELProfiling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [getValue] mFeatureFileMap is null --> cannot not get value [key] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 472
    :cond_4
    sget-object v2, Lcom/android/internal/telephony/lgeAutoProfiling;->mTelephonyFileMap:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/internal/telephony/lgeAutoProfiling;->mTelephonyFileMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 474
    sget-object v2, Lcom/android/internal/telephony/lgeAutoProfiling;->mTelephonyFileMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #retVal:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #retVal:Ljava/lang/String;
    goto/16 :goto_0

    .line 475
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/lgeAutoProfiling;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_7

    const-string v2, "com.android.phone"

    sget-object v3, Lcom/android/internal/telephony/lgeAutoProfiling;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 477
    sget-object v2, Lcom/android/internal/telephony/lgeAutoProfiling;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "telprofiling"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 479
    .restart local v0       #preference:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_6

    .line 480
    invoke-interface {v0, p0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 482
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 484
    .end local v0           #preference:Landroid/content/SharedPreferences;
    :cond_7
    const-string v2, "TELProfiling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [getValue] mTelephonyFileMap search again : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-static {p1}, Lcom/android/internal/telephony/lgeAutoProfiling;->StartProfiling(Z)V

    .line 486
    sget-object v2, Lcom/android/internal/telephony/lgeAutoProfiling;->mTelephonyFileMap:Ljava/util/HashMap;

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/internal/telephony/lgeAutoProfiling;->mTelephonyFileMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 487
    sget-object v2, Lcom/android/internal/telephony/lgeAutoProfiling;->mTelephonyFileMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #retVal:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #retVal:Ljava/lang/String;
    goto/16 :goto_0

    .line 489
    :cond_8
    const-string v2, "TELProfiling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [getValue] mTelephonyFileMap is null --> cannot not get value [key] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getdefaultStringInArray(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "featuresearch"

    .prologue
    const/4 v2, 0x0

    .line 349
    invoke-static {p0}, Lcom/android/internal/telephony/lgeAutoProfiling;->setContext(Landroid/content/Context;)V

    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, NumberString:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/android/internal/telephony/lgeAutoProfiling;->getValue(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-object v2

    .line 356
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v1, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .local v1, st:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static isCountry(Ljava/lang/String;)Z
    .locals 1
    .parameter "country"

    .prologue
    .line 406
    sget-object v0, Lcom/android/internal/telephony/lgeAutoProfiling;->mCountry:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isOperator(Ljava/lang/String;)Z
    .locals 1
    .parameter "operator"

    .prologue
    .line 413
    sget-object v0, Lcom/android/internal/telephony/lgeAutoProfiling;->mOperator:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isOperatorCountry(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "Country"
    .parameter "Operator"

    .prologue
    .line 399
    sget-object v0, Lcom/android/internal/telephony/lgeAutoProfiling;->mCountry:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/lgeAutoProfiling;->mOperator:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportFeature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 117
    invoke-static {p0}, Lcom/android/internal/telephony/lgeAutoProfiling;->setContext(Landroid/content/Context;)V

    .line 119
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/lgeAutoProfiling;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 85
    if-eqz p0, :cond_0

    .line 87
    sput-object p0, Lcom/android/internal/telephony/lgeAutoProfiling;->mContext:Landroid/content/Context;

    .line 89
    :cond_0
    return-void
.end method

.method public static setFileStructure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "key"
    .parameter "value"

    .prologue
    .line 96
    sget-object v5, Lcom/android/internal/telephony/lgeKeyProfiling;->ProfileSet:[Ljava/lang/String;

    .line 97
    .local v5, profileSet:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 99
    .local v2, isTelephonySet:Z
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 100
    .local v4, profile:Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    const/4 v2, 0x1

    .line 106
    .end local v4           #profile:Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_2

    .line 107
    sget-object v6, Lcom/android/internal/telephony/lgeAutoProfiling;->mFeatureFileMap:Ljava/util/HashMap;

    invoke-virtual {v6, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :goto_1
    return-void

    .line 99
    .restart local v4       #profile:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v4           #profile:Ljava/lang/String;
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/lgeAutoProfiling;->mTelephonyFileMap:Ljava/util/HashMap;

    invoke-virtual {v6, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public static setFinalECCList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "key"
    .parameter "EccValue"

    .prologue
    .line 169
    sget-object v4, Lcom/android/internal/telephony/lgeAutoProfiling;->SYSTEM_PROP_ECCLIST:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/lgeAutoProfiling;->InitRILECC:Ljava/lang/String;

    .line 172
    sget-object v4, Lcom/android/internal/telephony/lgeAutoProfiling;->InitRILECC:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/lgeAutoProfiling;->InitRILECC:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/lgeAutoProfiling;->InitRILECC:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/lgeAutoProfiling;->SYSTEM_PROP_RO_ECCLIST:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/lgeAutoProfiling;->InitRILECC:Ljava/lang/String;

    .line 179
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/lgeAutoProfiling;->InitRILECC:Ljava/lang/String;

    .line 182
    .local v0, ecclist:Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 184
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ","

    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .local v3, st:Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 191
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 195
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 203
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #st:Ljava/util/StringTokenizer;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "911,112,112,911,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_5
    sget-object v4, Lcom/android/internal/telephony/lgeAutoProfiling;->SYSTEM_PROP_ECCLIST:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method
