.class public Lcom/android/settings_ex/lgesetting/Config/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/lgesetting/Config/Config$Country;,
        Lcom/android/settings_ex/lgesetting/Config/Config$Operator;
    }
.end annotation


# static fields
.field private static final DEFAULT_COUNTRY:Lcom/android/settings_ex/lgesetting/Config/Config$Country;

.field private static final DEFAULT_OPERATOR:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

.field private static initCalled:Z

.field private static mCountry:Ljava/lang/String;

.field private static mOperator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/lgesetting/Config/Config;->initCalled:Z

    sget-object v0, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->OPEN:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    sput-object v0, Lcom/android/settings_ex/lgesetting/Config/Config;->DEFAULT_OPERATOR:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    sget-object v0, Lcom/android/settings_ex/lgesetting/Config/Config$Country;->EU:Lcom/android/settings_ex/lgesetting/Config/Config$Country;

    sput-object v0, Lcom/android/settings_ex/lgesetting/Config/Config;->DEFAULT_COUNTRY:Lcom/android/settings_ex/lgesetting/Config/Config$Country;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private static checkNativeCA()Z
    .locals 5

    .prologue
    .line 185
    const-string v3, "Config"

    const-string v4, "start check native_ca"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v3, "ro.build.target_operator"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, operator:Ljava/lang/String;
    const-string v3, "ro.build.target_country"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, country:Ljava/lang/String;
    const-string v3, "ro.product.model"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, model:Ljava/lang/String;
    invoke-static {v0, v2, v1}, Lcom/android/settings_ex/lgesetting/Config/Config;->setCountryAndOperator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    return v3
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->init()V

    sget-object v0, Lcom/android/settings_ex/lgesetting/Config/Config;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public static getOperator()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->init()V

    sget-object v0, Lcom/android/settings_ex/lgesetting/Config/Config;->mOperator:Ljava/lang/String;

    return-object v0
.end method

.method public static init()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    sget-boolean v0, Lcom/android/settings_ex/lgesetting/Config/Config;->initCalled:Z

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v1, Lcom/android/settings_ex/lgesetting/Config/Config;->initCalled:Z

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->checkNativeCA()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Config"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") not support any flexible mechanism"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v0, "Config"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use default flex information("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/lgesetting/Config/Config;->DEFAULT_COUNTRY:Lcom/android/settings_ex/lgesetting/Config/Config$Country;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/lgesetting/Config/Config;->DEFAULT_OPERATOR:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings_ex/lgesetting/Config/Config;->DEFAULT_COUNTRY:Lcom/android/settings_ex/lgesetting/Config/Config$Country;

    invoke-virtual {v0}, Lcom/android/settings_ex/lgesetting/Config/Config$Country;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings_ex/lgesetting/Config/Config;->DEFAULT_OPERATOR:Lcom/android/settings_ex/lgesetting/Config/Config$Operator;

    invoke-virtual {v1}, Lcom/android/settings_ex/lgesetting/Config/Config$Operator;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/lgesetting/Config/Config;->setCountryAndOperator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private static setCountryAndOperator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "country"
    .parameter "operator"
    .parameter "model"

    .prologue
    const/4 v0, 0x0

    .line 137
    const-string v1, "not definded"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    const-string v1, "NOT_SUPPORT"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sput-object p0, Lcom/android/settings_ex/lgesetting/Config/Config;->mCountry:Ljava/lang/String;

    sput-object p1, Lcom/android/settings_ex/lgesetting/Config/Config;->mOperator:Ljava/lang/String;

    sget-object v0, Lcom/android/settings_ex/lgesetting/Config/Config;->mOperator:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "OPEN"

    sput-object v0, Lcom/android/settings_ex/lgesetting/Config/Config;->mOperator:Ljava/lang/String;

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
