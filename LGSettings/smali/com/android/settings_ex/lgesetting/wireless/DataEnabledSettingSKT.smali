.class public Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;
.super Landroid/app/Activity;
.source "DataEnabledSettingSKT.java"


# instance fields
.field private mAskAtBootChecked:Landroid/widget/CheckedTextView;

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDialog:Landroid/app/Dialog;

.field private mIsBootable:Z

.field private mIsCancelable:Z

.field private mRadioDisabledChecked:Landroid/widget/CheckedTextView;

.field private mRadioEnabledChecked:Landroid/widget/CheckedTextView;

.field private mStatusBar:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mIsBootable:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mStatusBar:Landroid/app/StatusBarManager;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mIsCancelable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->putSettingsSecureDB()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mIsCancelable:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->showAlertDialog(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)Landroid/widget/CheckedTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mAskAtBootChecked:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)Landroid/widget/CheckedTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mRadioEnabledChecked:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)Landroid/widget/CheckedTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mRadioDisabledChecked:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method private createCustomViewDialog()V
    .locals 4

    .prologue
    .line 84
    const v1, 0x7f0400c6

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, view:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08081b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$1;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mDialog:Landroid/app/Dialog;

    .line 96
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$2;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 102
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$3;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 110
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mDialog:Landroid/app/Dialog;

    iget-boolean v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mIsCancelable:Z

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 111
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mDialog:Landroid/app/Dialog;

    iget-boolean v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mIsCancelable:Z

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 112
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 114
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f0b024d

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mRadioEnabledChecked:Landroid/widget/CheckedTextView;

    .line 115
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f0b024e

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mRadioDisabledChecked:Landroid/widget/CheckedTextView;

    .line 116
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f0b024f

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mAskAtBootChecked:Landroid/widget/CheckedTextView;

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mRadioEnabledChecked:Landroid/widget/CheckedTextView;

    new-instance v2, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$4;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mRadioDisabledChecked:Landroid/widget/CheckedTextView;

    new-instance v2, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$5;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mAskAtBootChecked:Landroid/widget/CheckedTextView;

    new-instance v2, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$6;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$6;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    return-void
.end method

.method private getSettingsSecureDB()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mRadioEnabledChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 171
    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mRadioDisabledChecked:Landroid/widget/CheckedTextView;

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mRadioEnabledChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 172
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mAskAtBootChecked:Landroid/widget/CheckedTextView;

    iget-object v3, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "preferred_data_network_mode"

    invoke-static {v3, v4, v1}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 173
    return-void

    :cond_0
    move v0, v2

    .line 171
    goto :goto_0

    :cond_1
    move v1, v2

    .line 172
    goto :goto_1
.end method

.method private putSettingsSecureDB()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 176
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mRadioEnabledChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    .line 177
    .local v0, enabled:Z
    iget-object v4, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "mobile_data"

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 178
    iget-object v4, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "preferred_data_network_mode"

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mAskAtBootChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v4, v5, v1}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    if-eqz v0, :cond_2

    .line 181
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 185
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 177
    goto :goto_0

    :cond_1
    move v1, v3

    .line 178
    goto :goto_1

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_2
.end method

.method private showAlertDialog(IZ)V
    .locals 3
    .parameter "message"
    .parameter "enabled"

    .prologue
    .line 151
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$8;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$8;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$7;

    invoke-direct {v2, p0, p2}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$7;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 165
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->requestWindowFeature(I)Z

    .line 46
    iget-boolean v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mIsBootable:Z

    if-nez v1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "IsCancelable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mIsCancelable:Z

    .line 51
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mStatusBar:Landroid/app/StatusBarManager;

    .line 52
    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mContentResolver:Landroid/content/ContentResolver;

    .line 54
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->createCustomViewDialog()V

    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->getSettingsSecureDB()V

    .line 58
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mIsCancelable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 73
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 74
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 64
    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mIsCancelable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 66
    :cond_0
    return-void
.end method
