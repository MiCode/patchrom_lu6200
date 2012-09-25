.class public Lcom/android/vcard/SystemConfig;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/SystemConfig$OPERATOR;,
        Lcom/android/vcard/SystemConfig$COUNTRY;
    }
.end annotation


# static fields
.field private static mBuildCountry:Lcom/android/vcard/SystemConfig$COUNTRY;

.field private static mBuildOperator:Lcom/android/vcard/SystemConfig$OPERATOR;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 404
    invoke-static {}, Lcom/android/vcard/SystemConfig;->getBuildCountry()Lcom/android/vcard/SystemConfig$COUNTRY;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/SystemConfig;->mBuildCountry:Lcom/android/vcard/SystemConfig$COUNTRY;

    .line 405
    invoke-static {}, Lcom/android/vcard/SystemConfig;->getBuildOperator()Lcom/android/vcard/SystemConfig$OPERATOR;

    move-result-object v0

    sput-object v0, Lcom/android/vcard/SystemConfig;->mBuildOperator:Lcom/android/vcard/SystemConfig$OPERATOR;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBuildCountry()Lcom/android/vcard/SystemConfig$COUNTRY;
    .locals 6

    .prologue
    .line 422
    const-string v3, "ro.build.target_country"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, code:Ljava/lang/String;
    sget-object v1, Lcom/android/vcard/SystemConfig$COUNTRY;->COM:Lcom/android/vcard/SystemConfig$COUNTRY;

    .line 425
    .local v1, country:Lcom/android/vcard/SystemConfig$COUNTRY;
    :try_start_0
    invoke-static {v0}, Lcom/android/vcard/SystemConfig$COUNTRY;->valueOf(Ljava/lang/String;)Lcom/android/vcard/SystemConfig$COUNTRY;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 430
    :goto_0
    const-string v3, "SystemConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BUILD Country: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-object v1

    .line 426
    :catch_0
    move-exception v2

    .line 427
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "SystemConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown country code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getBuildOperator()Lcom/android/vcard/SystemConfig$OPERATOR;
    .locals 6

    .prologue
    .line 436
    const-string v3, "ro.build.target_operator"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, code:Ljava/lang/String;
    sget-object v2, Lcom/android/vcard/SystemConfig$OPERATOR;->OPEN:Lcom/android/vcard/SystemConfig$OPERATOR;

    .line 439
    .local v2, operator:Lcom/android/vcard/SystemConfig$OPERATOR;
    :try_start_0
    invoke-static {v0}, Lcom/android/vcard/SystemConfig$OPERATOR;->valueOf(Ljava/lang/String;)Lcom/android/vcard/SystemConfig$OPERATOR;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 444
    :goto_0
    sget-object v3, Lcom/android/vcard/SystemConfig$OPERATOR;->TMO:Lcom/android/vcard/SystemConfig$OPERATOR;

    invoke-virtual {v2, v3}, Lcom/android/vcard/SystemConfig$OPERATOR;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/vcard/SystemConfig;->getBuildCountry()Lcom/android/vcard/SystemConfig$COUNTRY;

    move-result-object v3

    sget-object v4, Lcom/android/vcard/SystemConfig$COUNTRY;->US:Lcom/android/vcard/SystemConfig$COUNTRY;

    invoke-virtual {v3, v4}, Lcom/android/vcard/SystemConfig$COUNTRY;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 445
    sget-object v2, Lcom/android/vcard/SystemConfig$OPERATOR;->TMUS:Lcom/android/vcard/SystemConfig$OPERATOR;

    .line 447
    :cond_0
    const-string v3, "SystemConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BUILD Operator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-object v2

    .line 440
    :catch_0
    move-exception v1

    .line 441
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "SystemConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown operator code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isCountry(Lcom/android/vcard/SystemConfig$COUNTRY;)Z
    .locals 1
    .parameter "co"

    .prologue
    .line 413
    sget-object v0, Lcom/android/vcard/SystemConfig;->mBuildCountry:Lcom/android/vcard/SystemConfig$COUNTRY;

    invoke-virtual {v0, p0}, Lcom/android/vcard/SystemConfig$COUNTRY;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isKorea()Z
    .locals 2

    .prologue
    .line 417
    sget-object v0, Lcom/android/vcard/SystemConfig;->mBuildOperator:Lcom/android/vcard/SystemConfig$OPERATOR;

    sget-object v1, Lcom/android/vcard/SystemConfig$COUNTRY;->KR:Lcom/android/vcard/SystemConfig$COUNTRY;

    invoke-virtual {v0, v1}, Lcom/android/vcard/SystemConfig$OPERATOR;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOperator(Lcom/android/vcard/SystemConfig$OPERATOR;)Z
    .locals 1
    .parameter "op"

    .prologue
    .line 409
    sget-object v0, Lcom/android/vcard/SystemConfig;->mBuildOperator:Lcom/android/vcard/SystemConfig$OPERATOR;

    invoke-virtual {v0, p0}, Lcom/android/vcard/SystemConfig$OPERATOR;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
