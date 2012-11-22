.class public Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;
.super Landroid/preference/ListPreference;
.source "PowerSaveCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$ImageButtonListener;,
        Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;
    }
.end annotation


# instance fields
.field private mButtonClickListener:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$ImageButtonListener;

.field private mCheckBox:Landroid/view/View;

.field private mChecked:Z

.field private mDisableDependentsState:Z

.field private mSetingsButton:Landroid/widget/ImageView;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;

.field private mTreeClickListener:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$ImageButtonListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$ImageButtonListener;-><init>(Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mButtonClickListener:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$ImageButtonListener;

    const v0, 0x7f040077

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setLayoutResource(I)V

    const v0, 0x7f040078

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setWidgetLayoutResource(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->showDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;)Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mTreeClickListener:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;

    return-object v0
.end method

.method private enableSettingsButton()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mSetingsButton:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, entries:[Ljava/lang/CharSequence;
    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mSetingsButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .end local v1           #entries:[Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    return-void

    .restart local v1       #entries:[Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    .local v0, checked:Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mSetingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mSetingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mSetingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mSetingsButton:Landroid/widget/ImageView;

    const v4, 0x3ecccccd

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 93
    .end local v0           #checked:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 56
    const v1, 0x7f0b012b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mCheckBox:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mCheckBox:Landroid/view/View;

    new-instance v2, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$1;-><init>(Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v1, 0x7f0b012c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mSetingsButton:Landroid/widget/ImageView;

    .line 67
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mTitleText:Landroid/widget/TextView;

    .line 68
    const v1, 0x1020010

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mSummaryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mSetingsButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mButtonClickListener:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$ImageButtonListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->enableSettingsButton()V

    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, checkboxView:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 75
    check-cast v0, Landroid/widget/Checkable;

    .end local v0           #checkboxView:Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 77
    :cond_0
    return-void
.end method

.method protected onCheckBoxClicked()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onClick()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 133
    .local v0, newValue:Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    :goto_1
    return-void

    .line 131
    .end local v0           #newValue:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    .restart local v0       #newValue:Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mChecked:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mChecked:Z

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->persistBoolean(Z)Z

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->notifyDependencyChange(Z)V

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setOnTreeClickListener(Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mTreeClickListener:Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference$OnTreeClickListener;

    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mDisableDependentsState:Z

    if-eqz v3, :cond_2

    iget-boolean v0, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mChecked:Z

    .local v0, shouldDisable:Z
    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/preference/ListPreference;->shouldDisableDependents()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 125
    .end local v0           #shouldDisable:Z
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings_ex/powersave/PowerSaveCheckBoxPreference;->mChecked:Z

    if-nez v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
