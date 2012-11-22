.class public Lcom/android/settings_ex/DoubleTitleListPreference;
.super Landroid/preference/ListPreference;
.source "DoubleTitleListPreference.java"


# instance fields
.field private mSubTitle:Landroid/widget/TextView;

.field private mSubTitleRes:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleRes:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/DoubleTitleListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings_ex/DoubleTitleListPreference;->mTitleRes:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/DoubleTitleListPreference;->mSubTitleRes:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .parameter "builder"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/DoubleTitleListPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 33
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04004e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 35
    .local v1, layout:Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 37
    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/DoubleTitleListPreference;->mTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/DoubleTitleListPreference;->mTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/DoubleTitleListPreference;->mTitleRes:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/DoubleTitleListPreference;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/DoubleTitleListPreference;->mTitleRes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v2, 0x7f0b00ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/DoubleTitleListPreference;->mSubTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/DoubleTitleListPreference;->mSubTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/DoubleTitleListPreference;->mSubTitleRes:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/DoubleTitleListPreference;->mSubTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings_ex/DoubleTitleListPreference;->mSubTitleRes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "res"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/DoubleTitleListPreference;->mTitleRes:Ljava/lang/String;

    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "res"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/DoubleTitleListPreference;->mSubTitleRes:Ljava/lang/String;

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/DoubleTitleListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x102023e

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 57
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :cond_0
    return-void
.end method
