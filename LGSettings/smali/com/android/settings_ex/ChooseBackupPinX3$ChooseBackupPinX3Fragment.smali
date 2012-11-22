.class public Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;
.super Landroid/app/Fragment;
.source "ChooseBackupPinX3.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseBackupPinX3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseBackupPinX3Fragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;
    }
.end annotation


# static fields
.field private static afterConfirm:I

.field private static beforeConfirm:I

.field private static checkConfig:I

.field private static isExsist:Z

.field private static isFirst:Z

.field private static nextClick:Z

.field private static typeface:Landroid/graphics/Typeface;


# instance fields
.field private currentCursor:Z

.field private mCancelButton:Landroid/widget/Button;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mSavePin:Lcom/android/settings_ex/PinSettingsUtils;

.field private mUiStage:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

.field private visible:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->beforeConfirm:I

    sput v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->afterConfirm:I

    sput v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->checkConfig:I

    sput-boolean v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->nextClick:Z

    sput-boolean v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->isExsist:Z

    sput-boolean v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->isFirst:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordMinLength:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordMaxLength:I

    sget-object v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    new-instance v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$1;-><init>(Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private handleCancel()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 340
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private handleNext()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, pin:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    sput v4, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->checkConfig:I

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    sget-object v5, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    if-ne v4, v5, :cond_1

    sget-boolean v4, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->isExsist:Z

    if-eqz v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 287
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v6, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 296
    const/4 v1, 0x0

    .line 298
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    sget-object v5, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    if-ne v4, v5, :cond_3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iput-object v3, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mFirstPin:Ljava/lang/String;

    sget-object v4, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->updateStage(Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;)V

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mNextButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 313
    .end local v0           #error:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    sget-object v5, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    if-ne v4, v5, :cond_0

    invoke-direct {p0, v3}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/android/settings_ex/PinSettingsUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings_ex/PinSettingsUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mSavePin:Lcom/android/settings_ex/PinSettingsUtils;

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mSavePin:Lcom/android/settings_ex/PinSettingsUtils;

    invoke-virtual {v4}, Lcom/android/settings_ex/PinSettingsUtils;->fileInit()V

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mSavePin:Lcom/android/settings_ex/PinSettingsUtils;

    invoke-virtual {v4, v3}, Lcom/android/settings_ex/PinSettingsUtils;->savePasswrod(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 321
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v6, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 326
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->updateStage(Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;)V

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 331
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->nextClick:Z

    goto/16 :goto_0
.end method

.method private updateUi()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, password:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 381
    .local v0, length:I
    iget-object v5, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    sget-object v6, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPassword:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    iget v5, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordMinLength:I

    if-ge v0, v5, :cond_2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, msg:Ljava/lang/String;
    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    iget v5, v5, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->numericHint:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mNextButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    iget v4, v4, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->buttonText:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 416
    return-void

    .line 388
    .restart local v1       #msg:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v1           #msg:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #msg:Ljava/lang/String;
    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mHeaderText:Landroid/widget/TextView;

    const v5, 0x7f0808f4

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .end local v1           #msg:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    iget v6, v6, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->numericHint:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mNextButton:Landroid/widget/Button;

    if-lez v0, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPassword:Landroid/widget/EditText;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setImeOptions(I)V

    sget-boolean v3, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->isExsist:Z

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "password"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordMinLength:I

    if-ge v0, v1, :cond_0

    const v0, 0x7f0808f3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordMaxLength:I

    if-le v0, v1, :cond_3

    .line 267
    const v0, 0x7f080199

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordMaxLength:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordMinLength:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 274
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0808f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    const/4 v3, 0x0

    const-string v1, "hong"

    const-string v2, "afterTextChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->beforeConfirm:I

    sget v2, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->afterConfirm:I

    if-ne v1, v2, :cond_2

    sput v3, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->beforeConfirm:I

    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->isExsist:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    sget-object v2, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    if-ne v1, v2, :cond_4

    sget-boolean v1, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->isFirst:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCursorVisible(Z)V

    iget-object v1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    sput-boolean v3, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->isFirst:Z

    iget-object v1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPassword:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, input:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    sget-object v1, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->updateStage(Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;)V

    .end local v0           #input:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    sget-object v2, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->checkConfig:I

    iget-object v2, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-ne v1, v2, :cond_3

    sget-boolean v1, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->nextClick:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    iput-object v1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    :cond_3
    sget-object v1, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    iput-object v1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    sput-boolean v3, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->nextClick:Z

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->updateUi()V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 458
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "button"
    .parameter "checked"

    .prologue
    iget-object v2, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->visible:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    iget-object v2, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .local v1, selectionStart:I
    iget-object v2, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .local v0, selectionEnd:I
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v2, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    sget-object v3, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 483
    return-void

    .line 479
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->handleNext()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->handleCancel()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0b0009 -> :sswitch_0
        0x7f0b0045 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->afterConfirm:I

    sput v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->beforeConfirm:I

    const/4 v0, 0x1

    sput v0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->afterConfirm:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 161
    const v4, 0x7f040023

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 162
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0b0045

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mCancelButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0b0009

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mNextButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0b0042

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPassword:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPassword:Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v4, 0x7f0b0043

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->visible:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->visible:Landroid/widget/CheckBox;

    const v5, 0x7f0808ac

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(I)V

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v4, 0x7f0b0040

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->typeface:Landroid/graphics/Typeface;

    new-instance v1, Lcom/android/settings_ex/PinSettingsUtils;

    invoke-direct {v1}, Lcom/android/settings_ex/PinSettingsUtils;-><init>()V

    .local v1, passinit:Lcom/android/settings_ex/PinSettingsUtils;
    invoke-virtual {v1}, Lcom/android/settings_ex/PinSettingsUtils;->exsistFile()Z

    move-result v4

    sput-boolean v4, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->isExsist:Z

    sget-boolean v4, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->isExsist:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    const v5, 0x7f0809ec

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(I)V

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setCursorVisible(Z)V

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    sput-boolean v7, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->isFirst:Z

    sget-object v4, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->updateStage(Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;)V

    :goto_0
    if-nez p3, :cond_3

    sget-boolean v4, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->isExsist:Z

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->updateStage(Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;)V

    :cond_0
    :goto_1
    sget-boolean v4, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 225
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "PASSWORD_EXPIRE"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-object v3

    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iput-boolean v7, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->currentCursor:Z

    goto :goto_0

    :cond_3
    const-string v4, "first_pin"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mFirstPin:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v5, "hint_text"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v5, "cusor_gravity"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sput-boolean v6, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->isFirst:Z

    :cond_4
    const-string v4, "cusor_gravity"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v8, :cond_5

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setCursorVisible(Z)V

    :goto_2
    const-string v4, "ui_stage"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, state:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->updateStage(Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;)V

    goto/16 :goto_1

    .end local v2           #state:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto :goto_2
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 366
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->handleNext()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->updateStage(Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 248
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 249
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hint_text"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "cusor_gravity"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 462
    return-void
.end method

.method protected updateStage(Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;)V
    .locals 0
    .parameter "stage"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment$Stage;

    invoke-direct {p0}, Lcom/android/settings_ex/ChooseBackupPinX3$ChooseBackupPinX3Fragment;->updateUi()V

    return-void
.end method
