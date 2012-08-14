.class final enum Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;
.super Ljava/lang/Enum;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "LockMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;

.field public static final enum Normal:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;

.field public static final enum Pouch:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 229
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;->Normal:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;

    .line 230
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;

    const-string v1, "Pouch"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;->Pouch:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;

    .line 228
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;->Normal:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;->Pouch:Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;->$VALUES:[Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;

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
    .line 228
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 228
    const-class v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;->$VALUES:[Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/LockPatternKeyguardView$LockMode;

    return-object v0
.end method
