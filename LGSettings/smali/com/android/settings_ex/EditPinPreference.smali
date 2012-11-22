.class Lcom/android/settings_ex/EditPinPreference;
.super Landroid/preference/EditTextPreference;
.source "EditPinPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;,
        Lcom/android/settings_ex/EditPinPreference$OnShowDialog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isKR:Z

.field private static final sMaxLenFilter:[Landroid/text/InputFilter;


# instance fields
.field private mDialogOpen:Z

.field private mMaxLenFilter:[Landroid/text/InputFilter;

.field private mOnShowDialog:Lcom/android/settings_ex/EditPinPreference$OnShowDialog;

.field private mPinListener:Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;

.field private mStyle:I

.field mVirtualDisabler:Lcom/android/settings_ex/PreferenceVirtualDisabler;

.field private maxPinCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-class v0, Lcom/android/settings_ex/EditPinPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/EditPinPreference;->TAG:Ljava/lang/String;

    .line 65
    const-string v0, "ro.build.target_country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/EditPinPreference;->isKR:Z

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/EditPinPreference;->sMaxLenFilter:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/EditPinPreference;->maxPinCode:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/EditPinPreference;->mStyle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/EditPinPreference;->mOnShowDialog:Lcom/android/settings_ex/EditPinPreference$OnShowDialog;

    sget-object v0, Lcom/android/settings_ex/EditPinPreference;->sMaxLenFilter:[Landroid/text/InputFilter;

    iput-object v0, p0, Lcom/android/settings_ex/EditPinPreference;->mMaxLenFilter:[Landroid/text/InputFilter;

    sget-boolean v0, Lcom/android/settings_ex/EditPinPreference;->isKR:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/EditPinPreference;->construct()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/EditPinPreference;->maxPinCode:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/EditPinPreference;->mStyle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/EditPinPreference;->mOnShowDialog:Lcom/android/settings_ex/EditPinPreference$OnShowDialog;

    sget-object v0, Lcom/android/settings_ex/EditPinPreference;->sMaxLenFilter:[Landroid/text/InputFilter;

    iput-object v0, p0, Lcom/android/settings_ex/EditPinPreference;->mMaxLenFilter:[Landroid/text/InputFilter;

    sget-boolean v0, Lcom/android/settings_ex/EditPinPreference;->isKR:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/EditPinPreference;->construct()V

    :cond_0
    return-void
.end method

.method private construct()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/settings_ex/PreferenceVirtualDisabler;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/PreferenceVirtualDisabler;-><init>(Landroid/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings_ex/EditPinPreference;->mVirtualDisabler:Lcom/android/settings_ex/PreferenceVirtualDisabler;

    return-void
.end method

.method private hasStyle(I)Z
    .locals 1
    .parameter "aStyle"

    .prologue
    iget v0, p0, Lcom/android/settings_ex/EditPinPreference;->mStyle:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 287
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 270
    return-void
.end method

.method public dismissDialog()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public isDialogOpen()Z
    .locals 2

    .prologue
    sget-boolean v1, Lcom/android/settings_ex/EditPinPreference;->isKR:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/EditPinPreference;->mDialogOpen:Z

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVirtualEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreference;->mVirtualDisabler:Lcom/android/settings_ex/PreferenceVirtualDisabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/PreferenceVirtualDisabler;->isVirtualEnabled()Z

    move-result v0

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const v3, 0x1020003

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindDialogView(Landroid/view/View;)V

    sget-boolean v2, Lcom/android/settings_ex/EditPinPreference;->isKR:Z

    if-eqz v2, :cond_3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .local v0, editText:Landroid/widget/EditText;
    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    sget-boolean v2, Lcom/android/settings_ex/EditPinPreference;->isKR:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/EditPinPreference;->mMaxLenFilter:[Landroid/text/InputFilter;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 150
    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 151
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    const-string v2, "IMENP"

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 154
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 155
    .local v1, mHandler:Landroid/os/Handler;
    new-instance v2, Lcom/android/settings_ex/EditPinPreference$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings_ex/EditPinPreference$1;-><init>(Lcom/android/settings_ex/EditPinPreference;Landroid/widget/EditText;)V

    const-wide/16 v3, 0x96

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v1           #mHandler:Landroid/os/Handler;
    :cond_1
    sget-boolean v2, Lcom/android/settings_ex/EditPinPreference;->isKR:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/EditPinPreference;->hasStyle(I)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/settings_ex/EditPinPreference;->TAG:Ljava/lang/String;

    const-string v3, "NO CANCEL feature is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .end local v0           #editText:Landroid/widget/EditText;
    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .restart local v0       #editText:Landroid/widget/EditText;
    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "aView"

    .prologue
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings_ex/EditPinPreference;->mVirtualDisabler:Lcom/android/settings_ex/PreferenceVirtualDisabler;

    invoke-virtual {v2, p1}, Lcom/android/settings_ex/PreferenceVirtualDisabler;->onBindView(Landroid/view/View;)V

    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 228
    .local v0, textView:Landroid/widget/TextView;
    invoke-direct {p0, v1}, Lcom/android/settings_ex/EditPinPreference;->hasStyle(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 230
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onBindView(Landroid/view/View;)V

    .line 231
    return-void

    .line 228
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreference;->mVirtualDisabler:Lcom/android/settings_ex/PreferenceVirtualDisabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/PreferenceVirtualDisabler;->onPreferenceClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-super {p0}, Landroid/preference/EditTextPreference;->onClick()V

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "arg0"

    .prologue
    sget-boolean v1, Lcom/android/settings_ex/EditPinPreference;->isKR:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings_ex/EditPinPreference;->mVirtualDisabler:Lcom/android/settings_ex/PreferenceVirtualDisabler;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/PreferenceVirtualDisabler;->onCreateView(Landroid/view/View;)Landroid/view/View;

    .end local v0           #view:Landroid/view/View;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    sget-boolean v0, Lcom/android/settings_ex/EditPinPreference;->isKR:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/EditPinPreference;->mDialogOpen:Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreference;->mPinListener:Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreference;->mPinListener:Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/android/settings_ex/EditPinPreference;Z)V

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .local v1, textfield:Landroid/widget/EditText;
    instance-of v2, v0, Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    iget v3, p0, Lcom/android/settings_ex/EditPinPreference;->maxPinCode:I

    if-lt v2, v3, :cond_1

    .line 278
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #d:Landroid/app/Dialog;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 280
    .restart local v0       #d:Landroid/app/Dialog;
    :cond_1
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #d:Landroid/app/Dialog;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setMaxLenInputFilter([Landroid/text/InputFilter;)V
    .locals 0
    .parameter "aFilter"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/EditPinPreference;->mMaxLenFilter:[Landroid/text/InputFilter;

    return-void
.end method

.method public setOnPinEnteredListener(Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/EditPinPreference;->mPinListener:Lcom/android/settings_ex/EditPinPreference$OnPinEnteredListener;

    return-void
.end method

.method public setOnShowDialog(Lcom/android/settings_ex/EditPinPreference$OnShowDialog;)V
    .locals 0
    .parameter "aOnShowDialog"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/EditPinPreference;->mOnShowDialog:Lcom/android/settings_ex/EditPinPreference$OnShowDialog;

    return-void
.end method

.method public setStyle(IZ)V
    .locals 2
    .parameter "aStyle"
    .parameter "aEnable"

    .prologue
    iget v0, p0, Lcom/android/settings_ex/EditPinPreference;->mStyle:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings_ex/EditPinPreference;->mStyle:I

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/settings_ex/EditPinPreference;->mStyle:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings_ex/EditPinPreference;->mStyle:I

    :cond_0
    return-void
.end method

.method public setVirtualDisabledOnClickListener(Lcom/android/settings_ex/PreferenceVirtualDisabler$OnPreferenceClickListener;)V
    .locals 1
    .parameter "aOnClickListener"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreference;->mVirtualDisabler:Lcom/android/settings_ex/PreferenceVirtualDisabler;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/PreferenceVirtualDisabler;->setVirtualDisabledOnClickListener(Lcom/android/settings_ex/PreferenceVirtualDisabler$OnPreferenceClickListener;)V

    return-void
.end method

.method public setVirtualEnabled(Z)V
    .locals 1
    .parameter "aEnabled"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/EditPinPreference;->mVirtualDisabler:Lcom/android/settings_ex/PreferenceVirtualDisabler;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/PreferenceVirtualDisabler;->setVirtualEnabled(Z)V

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/EditPinPreference;->mOnShowDialog:Lcom/android/settings_ex/EditPinPreference$OnShowDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/EditPinPreference;->mOnShowDialog:Lcom/android/settings_ex/EditPinPreference$OnShowDialog;

    invoke-interface {v1}, Lcom/android/settings_ex/EditPinPreference$OnShowDialog;->onShowDialog()V

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .local v0, ad:Landroid/app/AlertDialog;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    iget v3, p0, Lcom/android/settings_ex/EditPinPreference;->maxPinCode:I

    if-lt v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 261
    return-void

    .line 259
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showPinDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/settings_ex/EditPinPreference;->isKR:Z

    if-eqz v1, :cond_1

    const-string v1, "EditPinPreference"

    const-string v2, "!!! showPinDialog()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/EditPinPreference;->mDialogOpen:Z

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/EditPinPreference;->showDialog(Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/EditPinPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method
