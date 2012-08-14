.class final enum Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;
.super Ljava/lang/Enum;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PinLockState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;

.field public static final enum PIN_CHECKPIN:Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;

.field public static final enum PIN_CREATE:Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;

.field public static final enum PIN_RESUME:Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;

    const-string v1, "PIN_CREATE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;->PIN_CREATE:Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;

    .line 97
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;

    const-string v1, "PIN_RESUME"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;->PIN_RESUME:Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;

    .line 98
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;

    const-string v1, "PIN_CHECKPIN"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;->PIN_CHECKPIN:Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;

    .line 95
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;->PIN_CREATE:Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;->PIN_RESUME:Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;->PIN_CHECKPIN:Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;->$VALUES:[Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;

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
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;
    .locals 1
    .parameter "name"

    .prologue
    .line 95
    const-class v0, Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;->$VALUES:[Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/SimUnlockScreen$PinLockState;

    return-object v0
.end method
