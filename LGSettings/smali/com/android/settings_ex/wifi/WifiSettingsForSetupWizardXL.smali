.class public Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;
.super Landroid/app/Activity;
.source "WifiSettingsForSetupWizardXL.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL$1;,
        Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL$WifiServiceHandler;
    }
.end annotation


# static fields
.field private static final sNetworkStateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/NetworkInfo$DetailedState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field OPERATOR_KT:Z

.field OPERATOR_SKT:Z

.field private mAddNetworkButton:Landroid/widget/Button;

.field private mBackButton:Landroid/widget/Button;

.field private mBottomPadding:Landroid/view/View;

.field private mConnectButton:Landroid/widget/Button;

.field private mConnectingStatusLayout:Landroid/view/View;

.field private mConnectingStatusView:Landroid/widget/TextView;

.field private mContentPadding:Landroid/view/View;

.field private mEditingTitle:Ljava/lang/CharSequence;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mNetworkName:Ljava/lang/CharSequence;

.field private mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRefreshButton:Landroid/widget/Button;

.field private mScreenState:I

.field private mSetupWrizadr_True:Z

.field private mSkipOrNextButton:Landroid/widget/Button;

.field private mTitleView:Landroid/widget/TextView;

.field private mTopDividerNoProgress:Landroid/view/View;

.field private mTopPadding:Landroid/view/View;

.field private mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

.field private mWifiSettingsFragmentLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    .line 73
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 134
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 146
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

    .line 148
    const-string v0, "SKT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->OPERATOR_SKT:Z

    .line 149
    const-string v0, "KT"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->OPERATOR_KT:Z

    .line 150
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSetupWrizadr_True:Z

    .line 242
    return-void
.end method

.method private hideSoftwareKeyboard()V
    .locals 4

    .prologue
    .line 302
    const-string v1, "SetupWizard"

    const-string v2, "Hiding software keyboard."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 304
    .local v0, focusedView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 307
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 202
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "firstRun"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    const v2, 0x7f0b0092

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 204
    .local v1, layoutRoot:Landroid/view/View;
    const/high16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 206
    .end local v1           #layoutRoot:Landroid/view/View;
    :cond_0
    const-string v2, "extra_prefs_landscape_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    .line 209
    :cond_1
    const-string v2, "extra_prefs_portrait_lock"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 210
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setRequestedOrientation(I)V

    .line 213
    :cond_2
    const v2, 0x7f0b022f

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    .line 214
    const v2, 0x7f0b0230

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    .line 215
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 216
    const v2, 0x7f0b0231

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    .line 217
    const v2, 0x7f0b023a

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    .line 219
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 220
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 221
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 223
    const v2, 0x7f0b023c

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    .line 224
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    const v2, 0x7f0b0240

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    .line 226
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    const v2, 0x7f0b023f

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    .line 228
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    const v2, 0x7f0b023e

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    .line 230
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    const v2, 0x7f0b023d

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    .line 232
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    const v2, 0x7f0b022e

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTopPadding:Landroid/view/View;

    .line 235
    const v2, 0x7f0b0233

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mContentPadding:Landroid/view/View;

    .line 237
    const v2, 0x7f0b0234

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    .line 238
    const v2, 0x7f0b0237

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    .line 239
    const v2, 0x7f0b0238

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    .line 240
    return-void
.end method

.method private onAddNetworkButtonPressed()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAddNetworkPressed()V

    .line 471
    return-void
.end method

.method private onAuthenticationFailure()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 746
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 748
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 749
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 750
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 752
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mEditingTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 753
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mEditingTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    :goto_0
    const v1, 0x7f0b0236

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 760
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 761
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 763
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 764
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 765
    return-void

    .line 755
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_0
    const-string v1, "SetupWizard"

    const-string v2, "Title during editing/adding a network was empty."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showEditingTitle()V

    goto :goto_0
.end method

.method private onBackButtonPressed()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 632
    iget v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-eq v4, v11, :cond_0

    iget v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 633
    :cond_0
    const-string v4, "SetupWizard"

    const-string v5, "Back button pressed after connect action."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iput v8, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 638
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->restoreFirstVisibilityState()V

    .line 640
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 641
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->changeNextButtonState(Z)V

    .line 645
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 649
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 651
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_1

    .line 652
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 654
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const-string v4, "SetupWizard"

    const-string v5, "forgeting Wi-Fi network \"%s\" (id: %d)"

    new-array v6, v11, [Ljava/lang/Object;

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v7, v6, v8

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    goto :goto_0

    .line 660
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 661
    invoke-direct {p0, v9}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    .line 676
    .end local v1           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 677
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 678
    const v4, 0x7f0b0236

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 679
    .local v3, parent:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 680
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 681
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    .line 682
    return-void

    .line 663
    .end local v3           #parent:Landroid/view/ViewGroup;
    :cond_2
    iput v8, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 664
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/WifiSettings;->resumeWifiScan()V

    .line 666
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->restoreFirstVisibilityState()V

    .line 668
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 669
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 670
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 671
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 672
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 673
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private onEapNetworkSelected()V
    .locals 2

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v1, 0x7f0805ea

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 591
    return-void
.end method

.method private refreshAccessPoints(Z)V
    .locals 1
    .parameter "disconnectNetwork"

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 723
    if-eqz p1, :cond_0

    .line 724
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->refreshAccessPoints()V

    .line 728
    return-void
.end method

.method private restoreFirstVisibilityState()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 262
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDefaultTitle()V

    .line 263
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 268
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 269
    return-void
.end method

.method private showAddNetworkTitle()V
    .locals 2

    .prologue
    .line 407
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 408
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0805e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 409
    return-void
.end method

.method private showConnectedProgressBar()V
    .locals 2

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 807
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 808
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 809
    return-void
.end method

.method private showConnectedState()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 381
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 383
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 384
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 386
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showConnectedTitle()V

    .line 387
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showConnectedProgressBar()V

    .line 389
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    const v1, 0x7f0805fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 393
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 394
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v1, 0x7f0805ea

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 398
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 400
    return-void
.end method

.method private showConnectedTitle()V
    .locals 5

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 447
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0805e3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    return-void

    .line 443
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showConnectingProgressBar()V
    .locals 2

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 801
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 802
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 803
    return-void
.end method

.method private showConnectingState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 366
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 368
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mEditingTitle:Ljava/lang/CharSequence;

    .line 371
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showConnectingTitle()V

    .line 372
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showConnectingProgressBar()V

    .line 374
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 375
    return-void
.end method

.method private showConnectingTitle()V
    .locals 5

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 434
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0805e2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    return-void

    .line 430
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDefaultTitle()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0805e0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    return-void
.end method

.method private showDisconnectedProgressBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 776
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 778
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 779
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 786
    :goto_0
    return-void

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 782
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 783
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 784
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showDisconnectedState(Ljava/lang/String;)V
    .locals 3
    .parameter "stateString"

    .prologue
    const/4 v2, 0x1

    .line 355
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 356
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getAccessPointsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 362
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 363
    return-void
.end method

.method private showEditingButtonState()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 594
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 598
    return-void
.end method

.method private showEditingTitle()V
    .locals 5

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 421
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTitleView:Landroid/widget/TextView;

    const v1, 0x7f0805e1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    return-void

    .line 417
    :cond_1
    const-string v0, "SetupWizard"

    const-string v1, "Unexpected null found (WifiController or WifiConfig is null). Ignore them."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showScanningProgressBar()V
    .locals 2

    .prologue
    .line 792
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showTopDividerWithProgressBar()V

    .line 793
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 794
    return-void
.end method

.method private showScanningState()V
    .locals 2

    .prologue
    .line 464
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 465
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 466
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showScanningProgressBar()V

    .line 467
    return-void
.end method

.method private showTopDividerWithProgressBar()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 458
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTopDividerNoProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 461
    return-void
.end method


# virtual methods
.method changeNextButtonState(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 688
    if-eqz p1, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const v1, 0x7f0805e9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 693
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    const v1, 0x7f0805e8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method initSecurityFields(Landroid/view/View;I)Z
    .locals 6
    .parameter "view"
    .parameter "accessPointSecurity"

    .prologue
    const v5, 0x7f0b0218

    const v4, 0x7f0b0217

    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v0, 0x0

    .line 542
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 543
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 544
    const v2, 0x7f0b021a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 545
    const v2, 0x7f0b021b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 547
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 548
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 549
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 554
    const v1, 0x7f0b0219

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 555
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 560
    :goto_0
    const v1, 0x7f0b01ff

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 561
    const v1, 0x7f0b021a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 562
    const v1, 0x7f0b021b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 563
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->onEapNetworkSelected()V

    .line 585
    :goto_1
    return v0

    .line 558
    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 569
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 570
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setPaddingVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    if-eqz v0, :cond_3

    .line 576
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-ne p2, v1, :cond_4

    .line 578
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    const v2, 0x7f0b01e4

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    :cond_3
    :goto_2
    move v0, v1

    .line 585
    goto :goto_1

    .line 580
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    const v2, 0x7f0b0188

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->requestFocusAndShowKeyboard(I)V

    goto :goto_2
.end method

.method onAccessPointsUpdated(Landroid/preference/PreferenceScreen;Ljava/util/Collection;)V
    .locals 5
    .parameter "preferenceScreen"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceScreen;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_ex/wifi/AccessPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    const/4 v4, 0x1

    .line 704
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 705
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 706
    iget v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v2, :cond_0

    .line 707
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 708
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 710
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 711
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 714
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 715
    .local v0, accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    const v2, 0x7f040036

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/AccessPoint;->setLayoutResource(I)V

    .line 716
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 718
    .end local v0           #accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 273
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->hideSoftwareKeyboard()V

    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 275
    const-string v0, "SetupWizard"

    const-string v1, "AddNetwork button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->onAddNetworkButtonPressed()V

    .line 299
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 277
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 278
    const-string v0, "SetupWizard"

    const-string v1, "Refresh button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    goto :goto_0

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 281
    const-string v0, "SetupWizard"

    const-string v1, "Skip/Next button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const v0, 0x7f0805e8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 287
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    .line 291
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->finish()V

    goto :goto_0

    .line 289
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setResult(I)V

    goto :goto_1

    .line 292
    .restart local p1
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 293
    const-string v0, "SetupWizard"

    const-string v1, "Connect button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->onConnectButtonPressed()V

    goto :goto_0

    .line 295
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 296
    const-string v0, "SetupWizard"

    const-string v1, "Back button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->onBackButtonPressed()V

    goto :goto_0
.end method

.method onConnectButtonPressed()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 602
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 604
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->submit(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    .line 612
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showConnectingState()V

    .line 615
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 616
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v2, 0x7f0805ea

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 618
    const v1, 0x7f0b0236

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 619
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 620
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 621
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusView:Landroid/widget/TextView;

    const v2, 0x7f0805fa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 623
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 624
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSkipOrNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 625
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 626
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mAddNetworkButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 627
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mRefreshButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 628
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 154
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.LGSetupWizard"

    const-string v5, "com.android.LGSetupWizard.SetupFlowController"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v3, name:Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 159
    .local v0, componentEnableSetupWizard:I
    if-nez v0, :cond_0

    .line 160
    iput-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSetupWrizadr_True:Z

    .line 162
    :cond_0
    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->OPERATOR_SKT:Z

    if-eq v4, v7, :cond_1

    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->OPERATOR_KT:Z

    if-ne v4, v7, :cond_3

    :cond_1
    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mSetupWrizadr_True:Z

    if-nez v4, :cond_3

    .line 163
    const/4 v1, 0x0

    .line 164
    .local v1, exceptCheckStr:Ljava/lang/String;
    const/4 v2, 0x0

    .line 166
    .local v2, exceptCheckVal:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "LG_WIFI_IN"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "LG_WIFI"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 169
    :goto_0
    const-string v4, "SetupWizard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LG_WIFI_IN : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", LG_WIFI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->initWiFiCM()V

    .line 172
    const-string v4, "lg_wifi_into"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x47

    if-eq v2, v4, :cond_3

    :cond_2
    const-string v4, "lg_wifi_setup"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x49

    if-ne v2, v4, :cond_4

    .line 179
    .end local v1           #exceptCheckStr:Ljava/lang/String;
    .end local v2           #exceptCheckVal:I
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->requestWindowFeature(I)Z

    .line 180
    const v4, 0x7f0400c2

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->setContentView(I)V

    .line 182
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 185
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 186
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v5, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL$WifiServiceHandler;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL$WifiServiceHandler;-><init>(Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL$1;)V

    invoke-virtual {v4, p0, v5}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0b0235

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/wifi/WifiSettings;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    .line 190
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 192
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->initViews()V

    .line 196
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    .line 197
    :goto_1
    return-void

    .line 175
    .restart local v1       #exceptCheckStr:Ljava/lang/String;
    .restart local v2       #exceptCheckVal:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/settings_ex/wifi/WifiCarrierCmIntent;->carrierWiFiCM(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 168
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method onSaveNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 817
    return-void
.end method

.method onSupplicantStateChanged(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 735
    const-string v1, "supplicantError"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 736
    .local v0, errorCode:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 737
    const-string v1, "SetupWizard"

    const-string v2, "Received authentication error event."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->onAuthenticationFailure()V

    .line 740
    :cond_0
    return-void
.end method

.method setPaddingVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mTopPadding:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 770
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mContentPadding:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 771
    return-void
.end method

.method showConfigUi(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    .locals 5
    .parameter "selectedAccessPoint"
    .parameter "edit"

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 481
    iput v2, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    .line 483
    if-eqz p1, :cond_1

    iget v1, p1, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eq v1, v2, :cond_0

    iget v1, p1, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 489
    :cond_0
    const/4 p2, 0x1

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->pauseWifiScan()V

    .line 495
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectingStatusLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 497
    const v1, 0x7f0b0236

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 498
    .local v0, parent:Landroid/view/ViewGroup;
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 499
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 500
    new-instance v1, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;-><init>(Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;Landroid/view/ViewGroup;Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiConfig:Lcom/android/settings_ex/wifi/WifiConfigUiForSetupWizardXL;

    .line 502
    if-nez p1, :cond_2

    .line 503
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showAddNetworkTitle()V

    .line 504
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 506
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 507
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showEditingButtonState()V

    .line 530
    :goto_0
    return-void

    .line 508
    :cond_2
    iget v1, p1, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-nez v1, :cond_3

    .line 509
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 512
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    .line 514
    :cond_3
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/AccessPoint;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mNetworkName:Ljava/lang/CharSequence;

    .line 515
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showEditingTitle()V

    .line 516
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 517
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showEditingButtonState()V

    .line 518
    iget v1, p1, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 519
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->onEapNetworkSelected()V

    goto :goto_0

    .line 521
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 526
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mConnectButton:Landroid/widget/Button;

    const v2, 0x7f080257

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 527
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBackButton:Landroid/widget/Button;

    const v2, 0x7f0805ef

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .parameter "originalState"

    .prologue
    .line 311
    sget-object v1, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->sNetworkStateMap:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    .line 313
    .local v0, state:Landroid/net/NetworkInfo$DetailedState;
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_0

    .line 316
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->refreshAccessPoints(Z)V

    .line 319
    :cond_0
    sget-object v1, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL$1;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 345
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->getAccessPointsCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 347
    invoke-static {p0, v0}, Lcom/android/settings_ex/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedState(Ljava/lang/String;)V

    .line 351
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mPreviousNetworkState:Landroid/net/NetworkInfo$DetailedState;

    .line 352
    return-void

    .line 321
    :pswitch_0
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    if-nez v1, :cond_3

    .line 322
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->getAccessPointsCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 323
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showScanningState()V

    goto :goto_0

    .line 325
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    .line 326
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mWifiSettingsFragmentLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mBottomPadding:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 330
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showDisconnectedProgressBar()V

    goto :goto_0

    .line 335
    :pswitch_1
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->mScreenState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 336
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showConnectingState()V

    goto :goto_0

    .line 341
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettingsForSetupWizardXL;->showConnectedState()V

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
