.class public Lcom/android/settings_ex/data/DataEnableDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "DataEnableDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final DATA_ENABLE_DIALOG:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mCancelable:Z

.field private mClickedPos:I

.field private mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private tViewDescription:Landroid/widget/TextView;

.field private tViewDescriptionTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const-string v0, "DataEnableDialog"

    iput-object v0, p0, Lcom/android/settings_ex/data/DataEnableDialog;->TAG:Ljava/lang/String;

    const-string v0, "android.intent.action.DATA_ENABLE_DIALOG"

    iput-object v0, p0, Lcom/android/settings_ex/data/DataEnableDialog;->DATA_ENABLE_DIALOG:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/data/DataEnableDialog;->mClickedPos:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/data/DataEnableDialog;->mCancelable:Z

    new-instance v0, Lcom/android/settings_ex/data/DataEnableDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/data/DataEnableDialog$1;-><init>(Lcom/android/settings_ex/data/DataEnableDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/data/DataEnableDialog;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/data/DataEnableDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/settings_ex/data/DataEnableDialog;->mClickedPos:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/data/DataEnableDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/data/DataEnableDialog;->mClickedPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/data/DataEnableDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/data/DataEnableDialog;->tViewDescriptionTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/data/DataEnableDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/data/DataEnableDialog;->tViewDescription:Landroid/widget/TextView;

    return-object v0
.end method

.method private getDataEnableDB(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, clickedPos:I
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/data/DataEnableDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 117
    .local v1, cm:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    .line 118
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 119
    const/4 v0, 0x0

    .line 125
    :cond_0
    :goto_0
    const-string v2, "DataEnableDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataEnableDB(): Type(0:Enable,1:Disable): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v0

    .line 121
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setDataEnableDB(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "clickedPos"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    const-string v1, "DataEnableDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataEnableDB(): mClickedPos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/data/DataEnableDialog;->mClickedPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/data/DataEnableDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 134
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 135
    if-nez p2, :cond_1

    .line 136
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_data_network_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_data_network_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/data/DataEnableDialog;->mCancelable:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 106
    const-string v0, "DataEnableDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPositiveButton select="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/data/DataEnableDialog;->mClickedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings_ex/data/DataEnableDialog;->mClickedPos:I

    invoke-direct {p0, p0, v0}, Lcom/android/settings_ex/data/DataEnableDialog;->setDataEnableDB(Landroid/content/Context;I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/data/DataEnableDialog;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/data/DataEnableDialog;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 34
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const-string v3, "DataEnableDialog"

    const-string v4, "DataEnableDialog onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    .line 38
    .local v0, items:[Ljava/lang/CharSequence;
    const v3, 0x7f080432

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/data/DataEnableDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v7

    .line 39
    const v3, 0x7f080431

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/data/DataEnableDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v6

    invoke-virtual {p0}, Lcom/android/settings_ex/data/DataEnableDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040039

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 42
    .local v2, view:Landroid/view/View;
    invoke-direct {p0, p0}, Lcom/android/settings_ex/data/DataEnableDialog;->getDataEnableDB(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/data/DataEnableDialog;->mClickedPos:I

    iget-object v1, p0, Lcom/android/settings_ex/data/DataEnableDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .local v1, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x7f0803cf

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/data/DataEnableDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings_ex/data/DataEnableDialog;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget v3, p0, Lcom/android/settings_ex/data/DataEnableDialog;->mClickedPos:I

    iput v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    iput-boolean v6, v1, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x7f08044e

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/data/DataEnableDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settings_ex/data/DataEnableDialog;->setupAlert()V

    const v3, 0x7f0b0078

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/data/DataEnableDialog;->tViewDescription:Landroid/widget/TextView;

    .line 57
    const v3, 0x7f0b0077

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/data/DataEnableDialog;->tViewDescriptionTitle:Landroid/widget/TextView;

    .line 60
    if-eqz p1, :cond_0

    .line 61
    const-string v3, "currentPosition"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/data/DataEnableDialog;->mClickedPos:I

    :cond_0
    iget v3, p0, Lcom/android/settings_ex/data/DataEnableDialog;->mClickedPos:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/data/DataEnableDialog;->tViewDescriptionTitle:Landroid/widget/TextView;

    const v4, 0x7f0809a7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/settings_ex/data/DataEnableDialog;->tViewDescription:Landroid/widget/TextView;

    const v4, 0x7f0809a9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/data/DataEnableDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "cancelable"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/data/DataEnableDialog;->mCancelable:Z

    iget-boolean v3, p0, Lcom/android/settings_ex/data/DataEnableDialog;->mCancelable:Z

    if-nez v3, :cond_1

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/data/DataEnableDialog;->setFinishOnTouchOutside(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/data/DataEnableDialog;->tViewDescriptionTitle:Landroid/widget/TextView;

    const v4, 0x7f0809a8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/settings_ex/data/DataEnableDialog;->tViewDescription:Landroid/widget/TextView;

    const v4, 0x7f0809aa

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 151
    const-string v0, "DataEnableDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState(): mClickedPos: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/data/DataEnableDialog;->mClickedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "currentPosition"

    iget v1, p0, Lcom/android/settings_ex/data/DataEnableDialog;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
