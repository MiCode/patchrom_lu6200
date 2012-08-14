.class public Lcom/android/internal/policy/impl/SimPukUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimPukUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/internal/policy/impl/LgeDockStateChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;,
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$CheckSimPuk;,
        Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field private static final LOG_TAG:Ljava/lang/String; = "SimPukUnlockScreen"

.field private static final MAX_TEXT_SIZE_OF_CANCEL_OK_DCM:I = 0x12

.field private static final sModel:Ljava/lang/String;

.field private static final sOperator:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelButton:Landroid/widget/TextView;

.field private mCreationOrientation:I

.field private mDelPukButton:Landroid/view/View;

.field private mEmergencyCallButton:Landroid/widget/TextView;

.field private mEnteredDigits:I

.field private final mEnteredPin:[I

.field private mFocusedEntry:Landroid/widget/TextView;

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHidden:I

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNewPinCode:Ljava/lang/String;

.field private mOkButton:Landroid/widget/TextView;

.field private mPukCode:Ljava/lang/String;

.field private mPukText:Landroid/widget/TextView;

.field private mRetryText:Landroid/widget/TextView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

.field private mSubscription:I

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field public mdialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "ro.build.target_operator"

    const-string v1, "OPEN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->sOperator:Ljava/lang/String;

    .line 72
    const-string v0, "ro.product.model"

    const-string v1, "OPEN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->sModel:Ljava/lang/String;

    .line 121
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->DIGITS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 11
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"
    .parameter "subscription"

    .prologue
    .line 126
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredPin:[I

    .line 89
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 99
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mdialog:Landroid/app/AlertDialog;

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 119
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSubscription:I

    .line 127
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 128
    iput-object p4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 130
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    .line 131
    iget v1, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    .line 132
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 134
    move/from16 v0, p6

    iput v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSubscription:I

    .line 136
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 137
    .local v10, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 138
    const v1, 0x1090052

    const/4 v2, 0x1

    invoke-virtual {v10, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 146
    :goto_0
    const v1, 0x10202a6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 147
    const v1, 0x10202ab

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryText:Landroid/widget/TextView;

    .line 148
    const v1, 0x10202a8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    .line 153
    const v1, 0x10202b1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    .line 154
    const v1, 0x1020289

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    .line 155
    const v1, 0x1020259

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    .line 156
    const v1, 0x1020283

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    .line 158
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 165
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 166
    new-instance v1, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p3

    move-object/from16 v4, p5

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10402e4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSubscription:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, displayText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .end local v8           #displayText:Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 204
    sget-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 205
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 211
    sget-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->sOperator:Ljava/lang/String;

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->sModel:Ljava/lang/String;

    const-string v2, "L-01D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x4190

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 214
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCancelButton:Landroid/widget/TextView;

    const/4 v2, 0x1

    const/high16 v3, 0x4190

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 216
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEmergencyCallButton:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    .line 224
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 226
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 227
    iget v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 228
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 233
    :cond_2
    return-void

    .line 141
    :cond_3
    const v1, 0x1090053

    const/4 v2, 0x1

    invoke-virtual {v10, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 143
    new-instance v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;)V

    goto/16 :goto_0

    .line 174
    :cond_4
    :try_start_0
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getIccPuk1RetryCount()I

    move-result v7

    .line 176
    .local v7, attemptsRemaining:I
    sget-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v1, v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    .line 177
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ATT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 180
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 181
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sim_err_popup_msg"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_5

    .line 182
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sim_err_popup_msg"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    sget-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v1, v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setPopupStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    .line 187
    :cond_5
    const-string v1, "SimPukUnlockScreen"

    const-string v2, "hj : 0<=remain<10"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v7           #attemptsRemaining:I
    :goto_2
    sget-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->sOperator:Ljava/lang/String;

    const-string v2, "DCM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->sModel:Ljava/lang/String;

    const-string v2, "L-01D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    :cond_6
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p3

    move-object/from16 v4, p5

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    goto/16 :goto_1

    .line 188
    :catch_0
    move-exception v9

    .line 189
    .local v9, ex:Landroid/os/RemoteException;
    sget-object v1, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    goto :goto_2

    .line 88
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSubscription:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setPopupStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/SimPukUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/SimPukUnlockScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    return p1
.end method

.method private checkPuk()V
    .locals 3

    .prologue
    .line 487
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 489
    new-instance v0, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mNewPinCode:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/SimPukUnlockScreen;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$1;->start()V

    .line 537
    return-void
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 440
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 441
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x20b0227

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 448
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 449
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 450
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x104030f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getState()Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 972
    const-string v0, "SimPukUnlockScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return-void
.end method

.method private reportDigit(I)V
    .locals 3
    .parameter "digit"

    .prologue
    .line 674
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_0

    .line 675
    const-string v0, "SimPukUnlockScreen"

    const-string v1, "hj : reportDigit mEnteredDigits == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 679
    const-string v0, "SimPukUnlockScreen"

    const-string v1, "hj : reportDigit mEnteredDigits == 8"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_0
    return-void

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_0
.end method

.method private setPopupStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    .locals 13
    .parameter "state"
    .parameter "retryCount"

    .prologue
    .line 1087
    const/4 v2, 0x0

    .line 1088
    .local v2, mStrTitleWrongPuk:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1089
    .local v3, popupMsg:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1090
    .local v4, res:Landroid/content/res/Resources;
    sget-object v7, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1133
    if-lez p2, :cond_f

    .line 1134
    const/4 v7, 0x1

    if-ne p2, v7, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "VZW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1136
    const-string v7, "SimPukUnlockScreen"

    const-string v8, "hj : attemptsRemaining == 1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b00a6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1206
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 1207
    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->showPukDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    :cond_1
    :goto_1
    return-void

    .line 1092
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1093
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b020e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1095
    :cond_2
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b009d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1097
    goto :goto_0

    .line 1100
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1101
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SKT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1103
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b0214

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1109
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "VZW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1111
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b00b0

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1113
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ATT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1116
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1117
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v8, 0x10900ab

    const v7, 0x1020328

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v0, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1120
    .local v1, layout:Landroid/view/View;
    const v7, 0x102000b

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1121
    .local v5, text:Landroid/widget/TextView;
    const v7, 0x10402ec

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1123
    new-instance v6, Landroid/widget/Toast;

    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1124
    .local v6, toast:Landroid/widget/Toast;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 1125
    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 1126
    invoke-virtual {v6, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1127
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1106
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #layout:Landroid/view/View;
    .end local v5           #text:Landroid/widget/TextView;
    .end local v6           #toast:Landroid/widget/Toast;
    :cond_5
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b0214

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1138
    :cond_6
    const/16 v7, 0xa

    if-ne p2, v7, :cond_9

    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1139
    const-string v7, "SimPukUnlockScreen"

    const-string v8, "hj : attemptsRemaining == 10"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SKT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1142
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b0203

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1143
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b0205

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1144
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1146
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b0200

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1147
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LGU"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1149
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b0218

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1152
    :cond_9
    const-string v7, "SimPukUnlockScreen"

    const-string v8, "hj : attemptsRemaining is not 1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1154
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SKT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1156
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b020c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1157
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b0208

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    rsub-int/lit8 v11, p2, 0xa

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1158
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1160
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b022f

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1161
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LGU"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1163
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b0217

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    rsub-int/lit8 v11, p2, 0xa

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1166
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "VZW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1168
    const/16 v7, 0xa

    if-eq p2, v7, :cond_0

    .line 1169
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b00b1

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1170
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DCM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1171
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v9, 0x20b00a8

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v9, 0x20b00a9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1175
    :cond_e
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b009a

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1179
    :cond_f
    if-nez p2, :cond_0

    .line 1180
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KR"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1181
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SKT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1183
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b020c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1184
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b0207

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1185
    :cond_10
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "KT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1187
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x20b01ff

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1188
    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LGU"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1190
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x20b0219

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1193
    :cond_12
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "VZW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1195
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x20b00b2

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1196
    :cond_13
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "DCM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1197
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b00b6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1199
    :cond_14
    iget-object v7, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v8, 0x20b009f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1090
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    .line 689
    return-void
.end method

.method private setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    .locals 10
    .parameter "state"
    .parameter "retryCount"

    .prologue
    const v9, 0x20b0201

    const v8, 0x20b0099

    const v6, 0x20b00a9

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 987
    const/4 v0, 0x0

    .line 988
    .local v0, mHeaderTextString:Ljava/lang/String;
    const/4 v1, 0x0

    .line 989
    .local v1, mRetryTextString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 991
    .local v2, res:Landroid/content/res/Resources;
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1066
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1067
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SKT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1069
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1070
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20b0202

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1082
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mRetryText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    return-void

    .line 993
    :pswitch_0
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 994
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SKT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 996
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20b020b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 997
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20b0206

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 998
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1000
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1001
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1002
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LGU"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1004
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20b020b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1005
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20b0206

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1008
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1010
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1011
    const/16 v3, 0xa

    if-ne p2, v3, :cond_4

    .line 1012
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20b00af

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1027
    :goto_1
    if-nez p2, :cond_0

    .line 1029
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    goto/16 :goto_0

    .line 1013
    :cond_4
    if-nez p2, :cond_5

    .line 1014
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20b00b2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1016
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20b00b1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1017
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DCM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1019
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x20b00b3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1020
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1023
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1024
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1036
    :pswitch_1
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1037
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1038
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20b0209

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1040
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x20b009b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1041
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1042
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20b00ac

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1044
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DCM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1045
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1051
    :pswitch_2
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1052
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1053
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20b020a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1055
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x20b009c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1056
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VZW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1057
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x20b00ac

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1059
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getOperator()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DCM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1060
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1073
    :cond_c
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x10402e1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1074
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 1077
    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x20b01e8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1078
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 991
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showPukDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 460
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mdialog:Landroid/app/AlertDialog;

    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mdialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mdialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 469
    return-void
.end method

.method private showPukDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    .line 473
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x10802bc

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 479
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 480
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 481
    return-void
.end method

.method private updateView()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/16 v6, 0x834

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 734
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "hj : updateView "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 818
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    return-void

    .line 737
    :pswitch_0
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "hj : updateView  REQUIRE_PUK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getIccPuk1RetryCount()I

    move-result v0

    .line 742
    .local v0, attemptsRemaining:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    .end local v0           #attemptsRemaining:I
    :goto_1
    const/16 v2, 0x8

    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-le v2, v3, :cond_1

    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    if-ne v2, v5, :cond_1

    .line 749
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 750
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "hj : updateView REQUIRE_PUK mOkButton.setEnabled(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 743
    :catch_0
    move-exception v1

    .line 744
    .local v1, ex:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2, v6}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    goto :goto_1

    .line 752
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 753
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "hj : updateView REQUIRE_PUK  mOkButton.setEnabled(true)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 758
    :pswitch_1
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "hj : updateView REQUIRE_NEW_PIN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :try_start_1
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getIccPuk1RetryCount()I

    move-result v0

    .line 763
    .restart local v0       #attemptsRemaining:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 769
    .end local v0           #attemptsRemaining:I
    :goto_2
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-le v7, v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    if-ne v2, v5, :cond_0

    .line 771
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 772
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "hj : updateView REQUIRE_NEW_PIN mOkButton.setEnabled(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 764
    :catch_1
    move-exception v1

    .line 765
    .restart local v1       #ex:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2, v6}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    goto :goto_2

    .line 777
    .end local v1           #ex:Landroid/os/RemoteException;
    :pswitch_2
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "hj : updateView VERIFY_NEW_PIN "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :try_start_2
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getIccPuk1RetryCount()I

    move-result v0

    .line 782
    .restart local v0       #attemptsRemaining:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 788
    .end local v0           #attemptsRemaining:I
    :goto_3
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-le v7, v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    if-ne v2, v5, :cond_0

    .line 790
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 791
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "hj : updateView VERIFY_NEW_PIN mOkButton.setEnabled(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 783
    :catch_2
    move-exception v1

    .line 784
    .restart local v1       #ex:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2, v6}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    goto :goto_3

    .line 796
    .end local v1           #ex:Landroid/os/RemoteException;
    :pswitch_3
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "hj : updateView VERIFY_NEW_PIN_FAILED "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setPopupStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    .line 798
    sget-object v2, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 801
    :try_start_3
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getIccPuk1RetryCount()I

    move-result v0

    .line 803
    .restart local v0       #attemptsRemaining:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 808
    .end local v0           #attemptsRemaining:I
    :goto_4
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "hj : setState(SimLockState.REQUIRE_NEW_PIN) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-le v7, v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    if-ne v2, v5, :cond_0

    .line 812
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 813
    const-string v2, "SimPukUnlockScreen"

    const-string v3, "hj : updateView  VERIFY_NEW_PIN_FAILED mOkButton.setEnabled(false) "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 804
    :catch_3
    move-exception v1

    .line 805
    .restart local v1       #ex:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v2, v6}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setUIStringByOperator(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;I)V

    goto :goto_4

    .line 735
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private verifyNewPin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin1"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mNewPinCode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    const-string v0, "SimPukUnlockScreen"

    const-string v1, "hj :newpincode pin1 equal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    const/4 v0, 0x1

    .line 730
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 713
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 714
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateConfiguration()V

    .line 715
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 352
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    if-eq v3, v4, :cond_0

    .line 353
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 355
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 357
    .local v1, digits:Landroid/text/Editable;
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    if-ne p1, v3, :cond_4

    .line 358
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 360
    .local v2, len:I
    if-lez v2, :cond_1

    .line 361
    add-int/lit8 v3, v2, -0x1

    invoke-interface {v1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 362
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 365
    :cond_1
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 367
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 384
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 430
    .end local v2           #len:I
    :cond_3
    :goto_1
    return-void

    .line 369
    .restart local v2       #len:I
    :pswitch_0
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v3, v7, :cond_2

    .line 370
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 374
    :pswitch_1
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v3, v6, :cond_2

    .line 375
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 379
    :pswitch_2
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v3, v6, :cond_2

    .line 380
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 388
    .end local v2           #len:I
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v3, :cond_3

    .line 389
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 390
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, code:Ljava/lang/String;
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 393
    :pswitch_3
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v3, v7, :cond_3

    .line 395
    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukCode:Ljava/lang/String;

    .line 396
    iput v5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 397
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 398
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto :goto_1

    .line 402
    :pswitch_4
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v3, v6, :cond_3

    .line 404
    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mNewPinCode:Ljava/lang/String;

    .line 405
    iput v5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 406
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 407
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto :goto_1

    .line 411
    :pswitch_5
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v3, v6, :cond_3

    .line 413
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->verifyNewPin(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 414
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "hj : mOkButton verifyNewPin(code"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->checkPuk()V

    goto :goto_1

    .line 418
    :cond_5
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "hj : mOkButton VERIFY_NEW_PIN_FAILED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 420
    iput v5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 421
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto/16 :goto_1

    .line 367
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 391
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 720
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 721
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateConfiguration()V

    .line 722
    return-void
.end method

.method public onDockStateChanged(I)V
    .locals 1
    .parameter "dockMode"

    .prologue
    .line 980
    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 982
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 434
    if-eqz p2, :cond_0

    .line 435
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    .line 436
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 542
    sget-object v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v1

    .line 543
    .local v1, match:C
    if-eqz v1, :cond_1

    .line 544
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "hj : onKeyDown match != 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    add-int/lit8 v3, v1, -0x30

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->reportDigit(I)V

    .line 546
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    if-ne v3, v8, :cond_0

    .line 547
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "hj : onKeyDown mKeyboardHidden == Configuration.HARDKEYBOARDHIDDEN_YES"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 663
    :cond_0
    :goto_0
    return v2

    .line 552
    :pswitch_0
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "hj : onKeyDown REQUIRE_PUK"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v3, v7, :cond_0

    .line 554
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "hj : onKeyDown REQUIRE_PUK mEnteredDigits >= 8"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 561
    :pswitch_1
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "hj : onKeyDown REQUIRE_NEW_PIN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v3, v6, :cond_0

    .line 563
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "hj : onKeyDown REQUIRE_NEW_PIN mEnteredDigits >= 4)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 570
    :pswitch_2
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "hj : onKeyDown VERIFY_NEW_PIN"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lt v3, v6, :cond_0

    .line 572
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 573
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "hj : onKeyDown VERIFY_NEW_PIN mEnteredDigits >= 4)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 582
    :cond_1
    const/16 v4, 0x43

    if-ne p1, v4, :cond_2

    .line 583
    const-string v4, "SimPukUnlockScreen"

    const-string v5, "hj : onKeyDown KEYCODE_DEL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-lez v4, :cond_0

    .line 585
    const-string v4, "SimPukUnlockScreen"

    const-string v5, "hj : mEnteredDigits > 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v4, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 587
    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 588
    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    if-ne v4, v8, :cond_0

    .line 589
    const-string v4, "SimPukUnlockScreen"

    const-string v5, "mKeyboardHidden == Configuration.HARDKEYBOARDHIDDEN_YES"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    sget-object v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 593
    :pswitch_3
    const-string v4, "SimPukUnlockScreen"

    const-string v5, "hj : KEYCODE_DEL REQUIRE_PUK "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v4, v7, :cond_0

    .line 595
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 596
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "hj : KEYCODE_DEL REQUIRE_PUK mEnteredDigits < 8"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 602
    :pswitch_4
    const-string v4, "SimPukUnlockScreen"

    const-string v5, "hj : KEYCODE_DEL REQUIRE_NEW_PIN "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v4, v6, :cond_0

    .line 604
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 605
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "hj : KEYCODE_DEL REQUIRE_NEW_PIN mEnteredDigits < 4"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 611
    :pswitch_5
    const-string v4, "SimPukUnlockScreen"

    const-string v5, "hj : KEYCODE_DEL REQUIRE_NEW_PIN "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v4, v6, :cond_0

    .line 613
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 614
    const-string v3, "SimPukUnlockScreen"

    const-string v4, "hj : KEYCODE_DEL VERIFY_NEW_PIN mEnteredDigits < 4"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 624
    :cond_2
    const/16 v4, 0x42

    if-ne p1, v4, :cond_7

    .line 625
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, code:Ljava/lang/String;
    sget-object v4, Lcom/android/internal/policy/impl/SimPukUnlockScreen$2;->$SwitchMap$com$android$internal$policy$impl$SimPukUnlockScreen$SimLockState:[I

    iget-object v5, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mState:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    goto/16 :goto_0

    .line 628
    :pswitch_6
    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v4, v7, :cond_3

    move v2, v3

    .line 630
    goto/16 :goto_0

    .line 631
    :cond_3
    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukCode:Ljava/lang/String;

    .line 632
    iput v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 633
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->REQUIRE_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 634
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto/16 :goto_0

    .line 638
    :pswitch_7
    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v4, v6, :cond_4

    move v2, v3

    .line 639
    goto/16 :goto_0

    .line 640
    :cond_4
    iput-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mNewPinCode:Ljava/lang/String;

    .line 641
    iput v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 642
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->VERIFY_NEW_PIN:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 643
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto/16 :goto_0

    .line 647
    :pswitch_8
    iget v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    if-ge v4, v6, :cond_5

    move v2, v3

    .line 648
    goto/16 :goto_0

    .line 649
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->verifyNewPin(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 651
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->checkPuk()V

    goto/16 :goto_0

    .line 653
    :cond_6
    iput v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 654
    sget-object v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;->VERIFY_NEW_PIN_FAILED:Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->setState(Lcom/android/internal/policy/impl/SimPukUnlockScreen$SimLockState;)V

    .line 655
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    goto/16 :goto_0

    .end local v0           #code:Ljava/lang/String;
    :cond_7
    move v2, v3

    .line 663
    goto/16 :goto_0

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 591
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 626
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 324
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mDelPukButton:Landroid/view/View;

    if-ne p1, v3, :cond_3

    .line 325
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mFocusedEntry:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    if-eq v3, v4, :cond_0

    .line 326
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 328
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 329
    .local v0, digits:Landroid/text/Editable;
    const/4 v1, 0x0

    .line 330
    .local v1, len:I
    if-eqz v0, :cond_1

    .line 331
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 334
    :cond_1
    :goto_0
    if-lez v1, :cond_2

    .line 335
    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 337
    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 339
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 342
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 343
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 344
    const/4 v2, 0x1

    .line 347
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_3
    return v2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 246
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mPukText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mEnteredDigits:I

    .line 265
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->updateView()V

    .line 268
    return-void
.end method

.method updateConfiguration()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 698
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 699
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCreationOrientation:I

    if-eq v2, v3, :cond_1

    .line 700
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    if-eq v2, v3, :cond_0

    .line 702
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    .line 703
    iget v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mKeyboardHidden:I

    if-ne v2, v0, :cond_2

    .line 704
    .local v0, isKeyboardOpen:Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isKeyguardBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 705
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimPukUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0

    .line 703
    .end local v0           #isKeyboardOpen:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
