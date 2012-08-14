.class public Lcom/android/internal/policy/impl/UsimPersoScreen;
.super Landroid/widget/LinearLayout;
.source "UsimPersoScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;,
        Lcom/android/internal/policy/impl/UsimPersoScreen$CheckUsimPerso;,
        Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DIGITS:[C = null

.field private static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1b58

.field private static final EMERGENCY_DIALER_WAKE_MILLIS:I = 0x3a98

.field private static final LOG_TAG:Ljava/lang/String; = "UsimPersoScreen"

.field private static mStrTitleEnterPin:Ljava/lang/String;

.field private static mStrTitleRetryCount:Ljava/lang/String;

.field private static mStrTitleWrongPin:Ljava/lang/String;

.field private static mStrWrongPinMsg:Ljava/lang/String;

.field public static service_provider:Ljava/lang/String;


# instance fields
.field private KT_UsimPerso_retry_count:I

.field private mBackSpaceButton:Landroid/view/View;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mEnteredDigits:I

.field private final mEnteredPin:[I

.field private mHeaderText:Landroid/widget/TextView;

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

.field private mOkButton:Landroid/widget/TextView;

.field private mPinText:Landroid/widget/TextView;

.field private mRetryText:Landroid/widget/TextView;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

.field private maxDigits:I

.field private minDigits:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen;->DIGITS:[C

    .line 113
    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->service_provider:Ljava/lang/String;

    .line 115
    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleEnterPin:Ljava/lang/String;

    .line 116
    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleRetryCount:Ljava/lang/String;

    .line 117
    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleWrongPin:Ljava/lang/String;

    .line 118
    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrWrongPinMsg:Ljava/lang/String;

    return-void

    .line 103
    nop

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

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 6
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 130
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 86
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->KT_UsimPerso_retry_count:I

    .line 95
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredPin:[I

    .line 96
    iput v5, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    .line 97
    iput v5, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->minDigits:I

    .line 98
    iput v5, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->maxDigits:I

    .line 101
    iput-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    .line 112
    sget-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_NONE:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    .line 131
    iput-object p3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 132
    iput-object p4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 133
    iput-object p1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mContext:Landroid/content/Context;

    .line 136
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCreationOrientation:I

    .line 137
    iget v1, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I

    .line 138
    iput-object p5, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 140
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->readStringFromResource()V

    .line 142
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 143
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I

    if-ne v1, v4, :cond_3

    .line 144
    const v1, 0x1090050

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 152
    :goto_0
    const-string v1, "UsimPersoScreen"

    const-string v2, "UsimPersoScreen() is called."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const v1, 0x10202a6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mHeaderText:Landroid/widget/TextView;

    .line 154
    const v1, 0x10202ab

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mRetryText:Landroid/widget/TextView;

    .line 156
    const v1, 0x10202a8

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    .line 157
    const v1, 0x10202a9

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mBackSpaceButton:Landroid/view/View;

    .line 158
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v1, 0x1020283

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 161
    const v1, 0x1020289

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mOkButton:Landroid/widget/TextView;

    .line 164
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mHeaderText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mHeaderText:Landroid/widget/TextView;

    sget-object v2, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleEnterPin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    sget-object v2, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_SKT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    if-ne v1, v2, :cond_4

    .line 167
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mRetryText:Landroid/widget/TextView;

    sget-object v2, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleRetryCount:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :goto_1
    iget v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I

    if-ne v1, v4, :cond_5

    .line 174
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 181
    :goto_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I

    if-eq v1, v4, :cond_2

    .line 188
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/UsimPersoScreen;->SetEnableOKbtn(Z)V

    .line 191
    :cond_2
    return-void

    .line 146
    :cond_3
    const v1, 0x1090051

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 147
    new-instance v1, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/UsimPersoScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/UsimPersoScreen;Lcom/android/internal/policy/impl/UsimPersoScreen$1;)V

    goto/16 :goto_0

    .line 169
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mRetryText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleRetryCount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->KT_UsimPerso_retry_count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 177
    :cond_5
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 178
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/UsimPersoScreen;->setFocusableInTouchMode(Z)V

    goto :goto_2

    .line 95
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

.method static synthetic access$100(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrWrongPinMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/UsimPersoScreen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/UsimPersoScreen;->showUsimPersoDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleRetryCount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mRetryText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/UsimPersoScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->KT_UsimPerso_retry_count:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/UsimPersoScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/UsimPersoScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->reportDigit(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/UsimPersoScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/UsimPersoScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleEnterPin:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/UsimPersoScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/UsimPersoScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/UsimPersoScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    return p1
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleWrongPin:Ljava/lang/String;

    return-object v0
.end method

.method private checkPin()V
    .locals 2

    .prologue
    .line 349
    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    iget v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->minDigits:I

    if-ge v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x10400d7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 352
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 414
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->getUSIMPersoUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 359
    new-instance v0, Lcom/android/internal/policy/impl/UsimPersoScreen$1;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/UsimPersoScreen$1;-><init>(Lcom/android/internal/policy/impl/UsimPersoScreen;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/UsimPersoScreen$1;->start()V

    goto :goto_0
.end method

.method private getUSIMPersoUnlockProgressDialog()Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    .line 314
    invoke-static {}, Lcom/android/internal/telephony/LGEIccUtils;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mContext:Landroid/content/Context;

    const v2, 0x20b0227

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 321
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 322
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 325
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mContext:Landroid/content/Context;

    const v2, 0x104030f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private reportDigit(I)V
    .locals 3
    .parameter "digit"

    .prologue
    .line 458
    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    if-nez v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    iget v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->maxDigits:I

    if-ne v0, v1, :cond_1

    .line 467
    :goto_0
    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_0
.end method

.method private showUsimPersoDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "message"

    .prologue
    .line 334
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mContext:Landroid/content/Context;

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

    .line 340
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 341
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 342
    return-void
.end method


# virtual methods
.method public OnLocaleChange()V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method public SetEnableOKbtn(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 479
    if-ne p1, v2, :cond_1

    .line 481
    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->KT_UsimPerso_retry_count:I

    if-lez v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 495
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUsimPersoProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public onAlarmChanged()V
    .locals 0

    .prologue
    .line 684
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 277
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v5, 0x1b58

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 280
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 281
    .local v0, digits:Landroid/text/Editable;
    if-eqz v0, :cond_1

    .line 282
    iget-object v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v4, :cond_3

    .line 283
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 284
    .local v1, len:I
    if-lez v1, :cond_0

    .line 285
    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 286
    iget v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    .line 289
    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->minDigits:I

    iget v5, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    if-le v4, v5, :cond_1

    iget v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I

    if-ne v4, v2, :cond_2

    :goto_0
    if-nez v2, :cond_1

    .line 290
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UsimPersoScreen;->SetEnableOKbtn(Z)V

    .line 309
    .end local v1           #len:I
    :cond_1
    :goto_1
    return-void

    .restart local v1       #len:I
    :cond_2
    move v2, v3

    .line 289
    goto :goto_0

    .line 296
    .end local v1           #len:I
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_4

    .line 299
    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v3, 0x3a98

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 302
    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_1

    .line 304
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_1

    .line 305
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    .line 306
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->checkPin()V

    goto :goto_1
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 662
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 658
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 418
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 420
    iput v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    .line 422
    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 454
    :cond_0
    :goto_0
    return v1

    .line 426
    :cond_1
    sget-object v3, Lcom/android/internal/policy/impl/UsimPersoScreen;->DIGITS:[C

    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v0

    .line 427
    .local v0, match:C
    if-eqz v0, :cond_3

    .line 428
    add-int/lit8 v3, v0, -0x30

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/UsimPersoScreen;->reportDigit(I)V

    .line 431
    iget v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->minDigits:I

    iget v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->maxDigits:I

    iget v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I

    if-ne v3, v1, :cond_2

    move v2, v1

    :cond_2
    if-nez v2, :cond_0

    .line 432
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UsimPersoScreen;->SetEnableOKbtn(Z)V

    goto :goto_0

    .line 436
    :cond_3
    const/16 v3, 0x43

    if-ne p1, v3, :cond_5

    .line 437
    iget v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    if-lez v3, :cond_0

    .line 438
    iget-object v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 439
    iget v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    .line 442
    iget v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->minDigits:I

    iget v4, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    if-le v3, v4, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I

    if-ne v3, v1, :cond_4

    move v3, v1

    :goto_1
    if-nez v3, :cond_0

    .line 443
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UsimPersoScreen;->SetEnableOKbtn(Z)V

    goto :goto_0

    :cond_4
    move v3, v2

    .line 442
    goto :goto_1

    .line 449
    :cond_5
    const/16 v3, 0x42

    if-ne p1, v3, :cond_6

    .line 450
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->checkPin()V

    goto :goto_0

    :cond_6
    move v1, v2

    .line 454
    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 666
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 650
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 654
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 670
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    .line 673
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iput v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    .line 211
    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mKeyboardHidden:I

    if-eq v0, v3, :cond_0

    .line 214
    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->minDigits:I

    iget v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->maxDigits:I

    iget v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mEnteredDigits:I

    if-gt v0, v1, :cond_1

    .line 215
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/UsimPersoScreen;->SetEnableOKbtn(Z)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UsimPersoScreen;->SetEnableOKbtn(Z)V

    goto :goto_0
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 676
    return-void
.end method

.method public onServiceStateChanged()V
    .locals 0

    .prologue
    .line 689
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 680
    return-void
.end method

.method public readNetworkOperator()V
    .locals 3

    .prologue
    .line 635
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    sget-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_SKT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    .line 644
    :goto_0
    const-string v0, "UsimPersoScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readNetworkOperator: mNetworkOpeator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return-void

    .line 637
    :cond_0
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    sget-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_KT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    goto :goto_0

    .line 639
    :cond_1
    const-string v0, "ro.build.target_operator"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LGT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 640
    sget-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_LGT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    goto :goto_0

    .line 642
    :cond_2
    sget-object v0, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_NONE:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    goto :goto_0
.end method

.method public readStringFromResource()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 600
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 603
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UsimPersoScreen;->readNetworkOperator()V

    .line 605
    if-eqz v0, :cond_0

    .line 608
    iget-object v1, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->mNetworkOpeator:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    sget-object v2, Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;->TELECOM_SKT:Lcom/android/internal/policy/impl/UsimPersoScreen$NetworkOpeator;

    if-ne v1, v2, :cond_0

    .line 611
    const v1, 0x20b0210

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleEnterPin:Ljava/lang/String;

    .line 612
    const v1, 0x20b0211

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleRetryCount:Ljava/lang/String;

    .line 613
    const v1, 0x20b0212

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrTitleWrongPin:Ljava/lang/String;

    .line 614
    const v1, 0x20b0213

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/policy/impl/UsimPersoScreen;->mStrWrongPinMsg:Ljava/lang/String;

    .line 615
    iput v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->minDigits:I

    .line 616
    iput v3, p0, Lcom/android/internal/policy/impl/UsimPersoScreen;->maxDigits:I

    .line 629
    :cond_0
    return-void
.end method
