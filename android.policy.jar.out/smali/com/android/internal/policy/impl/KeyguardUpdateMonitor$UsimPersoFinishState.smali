.class public final enum Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;
.super Ljava/lang/Enum;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UsimPersoFinishState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

.field public static final enum USIM_PERSO_DEFAULT:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

.field public static final enum USIM_PERSO_DOING_LOCK:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

.field public static final enum USIM_PERSO_FINISH_LOCK:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

    const-string v1, "USIM_PERSO_DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;->USIM_PERSO_DEFAULT:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

    const-string v1, "USIM_PERSO_DOING_LOCK"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;->USIM_PERSO_DOING_LOCK:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

    const-string v1, "USIM_PERSO_FINISH_LOCK"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;->USIM_PERSO_FINISH_LOCK:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

    .line 133
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;->USIM_PERSO_DEFAULT:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;->USIM_PERSO_DOING_LOCK:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;->USIM_PERSO_FINISH_LOCK:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;->$VALUES:[Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

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
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;
    .locals 1
    .parameter "name"

    .prologue
    .line 133
    const-class v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;->$VALUES:[Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

    return-object v0
.end method
