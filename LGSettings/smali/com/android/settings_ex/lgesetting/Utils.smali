.class public Lcom/android/settings_ex/lgesetting/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static CARRIER_KT:Z

.field private static CARRIER_LGUPLUS:Z

.field private static CARRIER_SKT:Z

.field public static COUNTRY_KR:Z

.field public static COUNTRY_OPERATOR_KOREA:Z

.field public static COUNTRY_OPERATOR_KT:Z

.field public static COUNTRY_OPERATOR_LGUPLUS:Z

.field public static COUNTRY_OPERATOR_SKT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    const-string v0, "KR"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->COUNTRY_KR:Z

    .line 20
    const-string v0, "LGU"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->CARRIER_LGUPLUS:Z

    .line 21
    const-string v0, "KT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->CARRIER_KT:Z

    .line 22
    const-string v0, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->CARRIER_SKT:Z

    sget-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->COUNTRY_KR:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->CARRIER_LGUPLUS:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->COUNTRY_OPERATOR_LGUPLUS:Z

    sget-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->COUNTRY_KR:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->CARRIER_KT:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->COUNTRY_OPERATOR_KT:Z

    sget-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->COUNTRY_KR:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->CARRIER_SKT:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->COUNTRY_OPERATOR_SKT:Z

    sget-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->COUNTRY_KR:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->CARRIER_LGUPLUS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->CARRIER_KT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings_ex/lgesetting/Utils;->CARRIER_SKT:Z

    if-eqz v0, :cond_4

    :cond_0
    :goto_3
    sput-boolean v1, Lcom/android/settings_ex/lgesetting/Utils;->COUNTRY_OPERATOR_KOREA:Z

    return-void

    :cond_1
    move v0, v2

    .line 24
    goto :goto_0

    :cond_2
    move v0, v2

    .line 25
    goto :goto_1

    :cond_3
    move v0, v2

    .line 26
    goto :goto_2

    :cond_4
    move v1, v2

    .line 27
    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
