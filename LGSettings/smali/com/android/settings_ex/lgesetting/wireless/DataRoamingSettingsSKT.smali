.class public Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;
.super Landroid/app/Activity;
.source "DataRoamingSettingsSKT.java"


# instance fields
.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogRoamingInfo:Landroid/widget/TextView;

.field private mIsBootable:Z

.field private mIsCancelable:Z

.field private mIsSelected:Z

.field private mRadioAllowChecked:Landroid/widget/CheckedTextView;

.field private mRadioBlockChecked:Landroid/widget/CheckedTextView;

.field private mStatusBar:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsBootable:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mStatusBar:Landroid/app/StatusBarManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsCancelable:Z

    iput-boolean v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsSelected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsSelected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;)Landroid/widget/CheckedTextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mRadioAllowChecked:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->setDataRoamingEnabled(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsBootable:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsCancelable:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->setRadioAllowChecked(Z)V

    return-void
.end method

.method private createCustomViewDialog()V
    .locals 4

    .prologue
    .line 98
    const v1, 0x7f0400c9

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, view:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080890

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$1;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$2;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$3;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$3;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mDialog:Landroid/app/Dialog;

    iget-boolean v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsCancelable:Z

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mDialog:Landroid/app/Dialog;

    iget-boolean v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsCancelable:Z

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f0b0252

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mRadioBlockChecked:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f0b0253

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mRadioAllowChecked:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mDialog:Landroid/app/Dialog;

    const v2, 0x7f0b0254

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mDialogRoamingInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mRadioBlockChecked:Landroid/widget/CheckedTextView;

    new-instance v2, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$4;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$4;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mRadioAllowChecked:Landroid/widget/CheckedTextView;

    new-instance v2, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT$5;-><init>(Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    return-void
.end method

.method private setDataRoamingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 85
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 86
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 87
    return-void
.end method

.method private setRadioAllowChecked(Z)V
    .locals 2
    .parameter "allow"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mRadioAllowChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mRadioBlockChecked:Landroid/widget/CheckedTextView;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    invoke-direct {p0, p1}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->setRoamingInfo(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setRoamingInfo(Z)V
    .locals 2
    .parameter "allow"

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mDialogRoamingInfo:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f080892

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void

    .line 155
    :cond_0
    const v0, 0x7f080891

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->requestWindowFeature(I)Z

    iget-boolean v4, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsBootable:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .local v1, intent:Landroid/content/Intent;
    const-string v4, "IsCancelable"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsCancelable:Z

    iget-boolean v4, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsCancelable:Z

    if-nez v4, :cond_2

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsBootable:Z

    .line 52
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 54
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mStatusBar:Landroid/app/StatusBarManager;

    invoke-direct {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->createCustomViewDialog()V

    invoke-direct {p0, v3}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->setRadioAllowChecked(Z)V

    iget-boolean v2, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsBootable:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x100

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->extend:I

    invoke-virtual {p0}, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void

    .restart local v1       #intent:Landroid/content/Intent;
    :cond_2
    move v2, v3

    .line 49
    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsCancelable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mStatusBar:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsCancelable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mStatusBar:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    return-void
.end method

.method protected setIsBootable()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsBootable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataRoamingSettingsSKT;->mIsCancelable:Z

    return-void
.end method
