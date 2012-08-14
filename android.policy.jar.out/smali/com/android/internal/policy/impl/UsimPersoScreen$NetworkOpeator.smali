.class public final enum Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;
.super Ljava/lang/Enum;
.source "UsimPersoScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UsimPersoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkOpeator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

.field public static final enum TELECOM_KT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

.field public static final enum TELECOM_LGT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

.field public static final enum TELECOM_NONE:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

.field public static final enum TELECOM_SKT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    const-string v1, "TELECOM_NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_NONE:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    .line 107
    new-instance v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    const-string v1, "TELECOM_LGT"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_LGT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    .line 108
    new-instance v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    const-string v1, "TELECOM_KT"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_KT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    .line 109
    new-instance v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    const-string v1, "TELECOM_SKT"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_SKT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    sget-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_NONE:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_LGT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_KT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_SKT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->$VALUES:[Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;
    .locals 1
    .parameter "name"

    .prologue
    .line 105
    const-class v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->$VALUES:[Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    return-object v0
.end method
