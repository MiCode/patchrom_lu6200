.class final enum Lcom/android/internal/policy/impl/LockScreen$StatusMode;
.super Ljava/lang/Enum;
.source "LockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "StatusMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/LockScreen$StatusMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/LockScreen$StatusMode;

.field public static final enum Normal:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

.field public static final enum PersoLocked:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

.field public static final enum SimIOError:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

.field public static final enum SimLocked:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

.field public static final enum SimMissing:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

.field public static final enum SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

.field public static final enum SimPermDisabled:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

.field public static final enum SimPukLocked:Lcom/android/internal/policy/impl/LockScreen$StatusMode;


# instance fields
.field private final mShowStatusLines:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 245
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/internal/policy/impl/LockScreen$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;->Normal:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    .line 246
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    const-string v1, "PersoLocked"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/policy/impl/LockScreen$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;->PersoLocked:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    .line 247
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    const-string v1, "SimMissing"

    invoke-direct {v0, v1, v5, v3}, Lcom/android/internal/policy/impl/LockScreen$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    .line 248
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    const-string v1, "SimMissingLocked"

    invoke-direct {v0, v1, v6, v3}, Lcom/android/internal/policy/impl/LockScreen$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    .line 249
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    const-string v1, "SimPukLocked"

    invoke-direct {v0, v1, v7, v3}, Lcom/android/internal/policy/impl/LockScreen$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    .line 250
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    const-string v1, "SimLocked"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/policy/impl/LockScreen$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    .line 251
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    const-string v1, "SimPermDisabled"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/LockScreen$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    .line 252
    new-instance v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    const-string v1, "SimIOError"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/policy/impl/LockScreen$StatusMode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;->SimIOError:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    .line 244
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$StatusMode;->Normal:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$StatusMode;->PersoLocked:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$StatusMode;->SimMissing:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$StatusMode;->SimMissingLocked:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/policy/impl/LockScreen$StatusMode;->SimPukLocked:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/policy/impl/LockScreen$StatusMode;->SimLocked:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/policy/impl/LockScreen$StatusMode;->SimPermDisabled:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/policy/impl/LockScreen$StatusMode;->SimIOError:Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;->$VALUES:[Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "mShowStatusLines"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 257
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;->mShowStatusLines:Z

    .line 258
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/LockScreen$StatusMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 244
    const-class v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/LockScreen$StatusMode;
    .locals 1

    .prologue
    .line 244
    sget-object v0, Lcom/android/internal/policy/impl/LockScreen$StatusMode;->$VALUES:[Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/LockScreen$StatusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/LockScreen$StatusMode;

    return-object v0
.end method
