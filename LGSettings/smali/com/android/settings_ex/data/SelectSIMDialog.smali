.class public Lcom/android/settings_ex/data/SelectSIMDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SelectSIMDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final SIM_TYPE_CHANGED:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mCancelable:Z

.field private mClickedPos:I

.field private mItemClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    const-string v0, "SelectSIMDialog"

    iput-object v0, p0, Lcom/android/settings_ex/data/SelectSIMDialog;->TAG:Ljava/lang/String;

    const-string v0, "android.intent.action.SIM_TYPE_CHANGED"

    iput-object v0, p0, Lcom/android/settings_ex/data/SelectSIMDialog;->SIM_TYPE_CHANGED:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/data/SelectSIMDialog;->mClickedPos:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/data/SelectSIMDialog;->mCancelable:Z

    new-instance v0, Lcom/android/settings_ex/data/SelectSIMDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/data/SelectSIMDialog$1;-><init>(Lcom/android/settings_ex/data/SelectSIMDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/data/SelectSIMDialog;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/data/SelectSIMDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/settings_ex/data/SelectSIMDialog;->mClickedPos:I

    return p1
.end method

.method private getSIMTypeDB(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, simType:I
    const/4 v0, 0x0

    .line 119
    .local v0, clickedPos:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_type_settings"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/lge/provider/SettingsEx$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 120
    const-string v2, "SelectSIMDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSIMTypeDB(): SimType (0:NS,1:Post,2:Pre): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-nez v1, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sim_type_settings"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    :goto_0
    return v0

    .line 127
    :cond_0
    if-ne v1, v5, :cond_1

    .line 128
    const/4 v0, 0x0

    goto :goto_0

    .line 130
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private sendIntentToSIMTypeChange()V
    .locals 3

    .prologue
    const-string v1, "SelectSIMDialog"

    const-string v2, "send intent SIM Type Changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_TYPE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/data/SelectSIMDialog;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setSIMTypeDB(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "clickedPos"

    .prologue
    .line 137
    const-string v1, "SelectSIMDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSIMTypeDB(): mClickedPos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/data/SelectSIMDialog;->mClickedPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x0

    .line 142
    .local v0, simType:I
    if-nez p2, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 147
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sim_type_settings"

    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    return-void

    .line 145
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private startDataEnableDialog(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const-string v0, "SelectSIMDialog"

    const-string v1, "start startDataEnableDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_ENABLE_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "cancelable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/data/DataEnableDialog;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/data/SelectSIMDialog;->mCancelable:Z

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
    .line 96
    const-string v0, "SelectSIMDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPositiveButton select="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/data/SelectSIMDialog;->mClickedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/settings_ex/data/SelectSIMDialog;->mClickedPos:I

    invoke-direct {p0, p0, v0}, Lcom/android/settings_ex/data/SelectSIMDialog;->setSIMTypeDB(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/android/settings_ex/data/SelectSIMDialog;->sendIntentToSIMTypeChange()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/data/SelectSIMDialog;->setResult(I)V

    iget-boolean v0, p0, Lcom/android/settings_ex/data/SelectSIMDialog;->mCancelable:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p0}, Lcom/android/settings_ex/data/SelectSIMDialog;->startDataEnableDialog(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/data/SelectSIMDialog;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isVodafoneUKSIM(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isORG_FR_SIM(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/data/SelectSIMDialog;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v4, 0x7f040038

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 43
    .local v0, alertLayout:Landroid/widget/LinearLayout;
    const v4, 0x7f0b0076

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 45
    .local v1, alertextView:Landroid/widget/TextView;
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    .line 48
    .local v2, items:[Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isORG_FR_SIM(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    const v4, 0x7f080909

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 50
    const v4, 0x7f080907

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/data/SelectSIMDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v7

    .line 51
    const v4, 0x7f080908

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/data/SelectSIMDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v6

    .line 59
    :goto_1
    invoke-direct {p0, p0}, Lcom/android/settings_ex/data/SelectSIMDialog;->getSIMTypeDB(Landroid/content/Context;)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/data/SelectSIMDialog;->mClickedPos:I

    iget-object v3, p0, Lcom/android/settings_ex/data/SelectSIMDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .local v3, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v4, 0x7f080903

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/data/SelectSIMDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    iput-object v2, v3, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/settings_ex/data/SelectSIMDialog;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget v4, p0, Lcom/android/settings_ex/data/SelectSIMDialog;->mClickedPos:I

    iput v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItem:I

    iput-boolean v6, v3, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    const v4, 0x7f08044e

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/data/SelectSIMDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v3, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settings_ex/data/SelectSIMDialog;->setupAlert()V

    invoke-virtual {p0}, Lcom/android/settings_ex/data/SelectSIMDialog;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "cancelable"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/data/SelectSIMDialog;->mCancelable:Z

    iget-boolean v4, p0, Lcom/android/settings_ex/data/SelectSIMDialog;->mCancelable:Z

    if-nez v4, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/data/SelectSIMDialog;->setFinishOnTouchOutside(Z)V

    goto :goto_0

    .end local v3           #p:Lcom/android/internal/app/AlertController$AlertParams;
    :cond_2
    const v4, 0x7f080906

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f080904

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/data/SelectSIMDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v7

    .line 55
    const v4, 0x7f080905

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/data/SelectSIMDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v6

    goto :goto_1
.end method
