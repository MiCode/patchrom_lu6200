.class public Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;
.super Landroid/app/Fragment;
.source "ChooseBackupPin.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseBackupPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseBackupPinFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;
    }
.end annotation


# static fields
.field private static afterConfirm:I

.field private static beforeConfirm:I

.field private static checkConfig:I

.field private static nextClick:Z

.field private static typeface:Landroid/graphics/Typeface;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mDescText:Landroid/widget/TextView;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mSavePin:Lcom/android/settings_ex/PinSettingsUtils;

.field private mUiStage:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

.field private visible:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 108
    sput v0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->beforeConfirm:I

    .line 109
    sput v0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->afterConfirm:I

    .line 110
    sput v0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->checkConfig:I

    .line 111
    sput-boolean v0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->nextClick:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 91
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordMinLength:I

    .line 92
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordMaxLength:I

    .line 93
    sget-object v0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    .line 117
    new-instance v0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$1;-><init>(Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mHandler:Landroid/os/Handler;

    .line 155
    return-void
.end method

.method private handleCancel()V
    .locals 4

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 304
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080129

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 310
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 311
    return-void

    .line 309
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleNext()V
    .locals 6

    .prologue
    .line 255
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, pin:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    sput v4, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->checkConfig:I

    .line 258
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    const/4 v1, 0x0

    .line 264
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    sget-object v5, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    if-ne v4, v5, :cond_3

    .line 265
    invoke-direct {p0, v3}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    if-nez v1, :cond_2

    .line 268
    iput-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mFirstPin:Ljava/lang/String;

    .line 269
    sget-object v4, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->updateStage(Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;)V

    .line 270
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 273
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 275
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mNextButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 279
    .end local v0           #error:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    sget-object v5, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    if-ne v4, v5, :cond_0

    .line 280
    invoke-direct {p0, v3}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 282
    new-instance v4, Lcom/android/settings_ex/PinSettingsUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings_ex/PinSettingsUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mSavePin:Lcom/android/settings_ex/PinSettingsUtils;

    .line 283
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mSavePin:Lcom/android/settings_ex/PinSettingsUtils;

    invoke-virtual {v4, v3}, Lcom/android/settings_ex/PinSettingsUtils;->savePasswrod(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 285
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 290
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    sget-object v4, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->updateStage(Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;)V

    .line 293
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_0

    .line 295
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->nextClick:Z

    goto/16 :goto_0
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const v7, 0x7f0808a9

    const/4 v4, 0x0

    .line 348
    iget-object v5, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, password:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 351
    .local v0, length:I
    iget-object v5, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    sget-object v6, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    if-ne v5, v6, :cond_3

    .line 352
    iget v5, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordMinLength:I

    if-ge v0, v5, :cond_1

    .line 353
    invoke-direct {p0, v2}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, msg:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 355
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    iget v5, v5, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;->numericHint:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 358
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 359
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 386
    .end local v1           #msg:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mNextButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    iget v4, v4, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;->buttonText:I

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 387
    return-void

    .line 357
    .restart local v1       #msg:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 362
    .end local v1           #msg:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .restart local v1       #msg:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 366
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mHeaderText:Landroid/widget/TextView;

    const v5, 0x7f0808f4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 367
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 368
    iget-object v4, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 372
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mDescText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 374
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 379
    .end local v1           #msg:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    iget v6, v6, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;->numericHint:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 380
    iget-object v5, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mCancelButton:Landroid/widget/Button;

    const v6, 0x7f0801a2

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 381
    iget-object v5, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mDescText:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v5, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mNextButton:Landroid/widget/Button;

    if-lez v0, :cond_4

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 383
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPassword:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_1

    :cond_4
    move v3, v4

    .line 382
    goto :goto_2
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "password"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    if-ne v0, v1, :cond_1

    .line 236
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordMinLength:I

    if-ge v0, v1, :cond_0

    .line 238
    const v0, 0x7f0808f3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    .line 240
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordMaxLength:I

    if-le v0, v1, :cond_3

    .line 241
    const v0, 0x7f080199

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordMaxLength:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordMinLength:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 248
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0808f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 251
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 394
    sget v0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->beforeConfirm:I

    sget v1, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->afterConfirm:I

    if-ne v0, v1, :cond_2

    .line 395
    const-string v0, "hong"

    const-string v1, "@@"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    sput v2, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->beforeConfirm:I

    .line 411
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->updateUi()V

    .line 413
    :cond_1
    return-void

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    sget-object v1, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;->ConfirmWrong:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->checkConfig:I

    iget-object v1, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 402
    sget-boolean v0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->nextClick:Z

    if-eqz v0, :cond_1

    .line 405
    sget-object v0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    .line 407
    :cond_3
    sget-object v0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;->NeedToConfirm:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    iput-object v0, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    .line 408
    sput-boolean v2, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->nextClick:Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 417
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "button"
    .parameter "checked"

    .prologue
    .line 426
    iget-object v2, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->visible:Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 428
    iget-object v2, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 429
    .local v1, selectionStart:I
    iget-object v2, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 431
    .local v0, selectionEnd:I
    if-eqz p2, :cond_0

    .line 433
    iget-object v2, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 434
    iget-object v2, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    sget-object v3, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 440
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v1, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 442
    return-void

    .line 438
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setInputType(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 323
    :goto_0
    return-void

    .line 316
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->handleNext()V

    goto :goto_0

    .line 320
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->handleCancel()V

    goto :goto_0

    .line 314
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
    .line 159
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 161
    sget v0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->afterConfirm:I

    sput v0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->beforeConfirm:I

    .line 162
    const/4 v0, 0x1

    sput v0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->afterConfirm:I

    .line 164
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 169
    const v3, 0x7f040021

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 170
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0b0045

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mCancelButton:Landroid/widget/Button;

    .line 171
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    const v3, 0x7f0b0009

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mNextButton:Landroid/widget/Button;

    .line 173
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v3, 0x7f0b0042

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPassword:Landroid/widget/EditText;

    .line 175
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPassword:Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 176
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v4, 0x12

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 177
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 178
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 179
    const v3, 0x7f0b0043

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->visible:Landroid/widget/CheckBox;

    .line 180
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->visible:Landroid/widget/CheckBox;

    const v4, 0x7f0808ac

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 181
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->visible:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 182
    const v3, 0x7f0b0040

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mHeaderText:Landroid/widget/TextView;

    .line 183
    const v3, 0x7f0b0044

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mDescText:Landroid/widget/TextView;

    .line 184
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    sput-object v3, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->typeface:Landroid/graphics/Typeface;

    .line 186
    if-nez p3, :cond_2

    .line 187
    sget-object v3, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;->Introduction:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->updateStage(Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;)V

    .line 199
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/lge/config/ConfigBuildFlags;->CAPP_MDM:Z

    if-eqz v3, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 201
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "PASSWORD_EXPIRE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 207
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-object v2

    .line 191
    :cond_2
    const-string v3, "first_pin"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mFirstPin:Ljava/lang/String;

    .line 192
    const-string v3, "ui_stage"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, state:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 194
    invoke-static {v1}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    .line 195
    iget-object v3, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->updateStage(Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;)V

    goto :goto_0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 335
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->handleNext()V

    .line 339
    const/4 v0, 0x1

    .line 341
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 220
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->updateStage(Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;)V

    .line 214
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 225
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 421
    return-void
.end method

.method protected updateStage(Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;)V
    .locals 0
    .parameter "stage"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->mUiStage:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    .line 231
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->updateUi()V

    .line 232
    return-void
.end method
