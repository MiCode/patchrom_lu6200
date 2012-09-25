.class public Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;
.super Landroid/preference/CheckBoxPreference;
.source "LgBtUiHiddenSettingsPreference.java"


# instance fields
.field private mCheckBox:Landroid/view/View;

.field private final mFragment:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

.field private mKey:Ljava/lang/String;

.field private mSetingsButton:Landroid/widget/ImageView;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private mUseButton:Z


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;Ljava/lang/String;ZZ)V
    .locals 3
    .parameter "fragment"
    .parameter "key"
    .parameter "useCheckBox"
    .parameter "useButton"

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mFragment:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    .line 33
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mKey:Ljava/lang/String;

    .line 34
    iput-boolean p4, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mUseButton:Z

    .line 35
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setLayoutResource(I)V

    .line 36
    if-eqz p3, :cond_0

    .line 37
    const v0, 0x7f040078

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setWidgetLayoutResource(I)V

    .line 39
    :cond_0
    return-void
.end method

.method private enableSettingsButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 90
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->isChecked()Z

    move-result v0

    .line 92
    .local v0, checked:Z
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 93
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 94
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 95
    if-nez v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    const v2, 0x3ecccccd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 99
    .end local v0           #checked:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 105
    :cond_2
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 43
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 44
    const v1, 0x7f0b003c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mCheckBox:Landroid/view/View;

    .line 45
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mCheckBox:Landroid/view/View;

    new-instance v2, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference$1;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v1, 0x7f0b003e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    .line 53
    const v1, 0x7f0b003d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, divider:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mUseButton:Z

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :goto_0
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mTitleText:Landroid/widget/TextView;

    .line 62
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mSummaryText:Landroid/widget/TextView;

    .line 63
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference$2;-><init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->enableSettingsButton()V

    .line 71
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mSetingsButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCheckBoxClicked()V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 81
    .local v0, setValue:Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->setChecked(Z)V

    .line 82
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mFragment:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->onCheckboxResult(Ljava/lang/String;)V

    .line 83
    return-void

    .line 80
    .end local v0           #setValue:Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onSettingsButtonClicked(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mFragment:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsFragment;->onSettingsButtonResult(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettingsPreference;->enableSettingsButton()V

    .line 77
    return-void
.end method
