.class public Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;
.super Ljava/lang/Object;
.source "LockPatternKeyguardViewProperties.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardViewProperties;


# static fields
.field private static final sModel:Ljava/lang/String;

.field private static final sOperator:Ljava/lang/String;


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "ro.build.target_operator"

    const-string v1, "OPEN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->sOperator:Ljava/lang/String;

    .line 38
    const-string v0, "ro.product.model"

    const-string v1, "OPEN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->sModel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 0
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 49
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 50
    return-void
.end method

.method private isSimPinSecure()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, isSimPinSecure:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 78
    .local v2, numPhones:I
    new-array v3, v2, [Lcom/android/internal/telephony/IccCard$State;

    .line 79
    .local v3, simState:[Lcom/android/internal/telephony/IccCard$State;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 80
    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6, v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v6

    aput-object v6, v3, v0

    .line 82
    if-nez v1, :cond_0

    aget-object v6, v3, v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v6

    if-nez v6, :cond_0

    aget-object v6, v3, v0

    sget-object v7, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v6, v7, :cond_0

    aget-object v6, v3, v0

    sget-object v7, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v6, v7, :cond_4

    :cond_0
    move v1, v5

    .line 85
    :goto_1
    if-eqz v1, :cond_5

    .line 87
    :cond_1
    if-nez v1, :cond_2

    iget-object v6, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    sget-object v6, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUsimPersoFinishState:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    sget-object v7, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->mUsimPersoFinishState:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

    sget-object v7, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;->USIM_PERSO_DOING_LOCK:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$UsimPersoFinishState;

    if-ne v6, v7, :cond_3

    :cond_2
    move v4, v5

    :cond_3
    return v4

    :cond_4
    move v1, v4

    .line 82
    goto :goto_1

    .line 79
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public createKeyguardView(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardWindowController;)Lcom/android/internal/policy/impl/KeyguardViewBase;
    .locals 2
    .parameter "context"
    .parameter "updateMonitor"
    .parameter "controller"

    .prologue
    .line 55
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->sOperator:Ljava/lang/String;

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->sModel:Ljava/lang/String;

    const-string v1, "L-01D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V

    .line 63
    :goto_0
    return-object v0

    .line 59
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V

    goto :goto_0

    .line 63
    :cond_1
    new-instance v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardViewProperties;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
