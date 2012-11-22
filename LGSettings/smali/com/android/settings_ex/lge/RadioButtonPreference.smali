.class public Lcom/android/settings_ex/lge/RadioButtonPreference;
.super Landroid/preference/Preference;
.source "RadioButtonPreference.java"


# instance fields
.field private mChecked:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mRadioPreference:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings_ex/lge/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/lge/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f04007c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/lge/RadioButtonPreference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/lge/RadioButtonPreference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/lge/RadioButtonPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/lge/RadioButtonPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 39
    const v0, 0x7f0b0134

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings_ex/lge/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/android/settings_ex/lge/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/android/settings_ex/lge/RadioButtonPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    const v0, 0x7f0b0133

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/lge/RadioButtonPreference;->mRadioPreference:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings_ex/lge/RadioButtonPreference;->mRadioPreference:Landroid/view/View;

    new-instance v1, Lcom/android/settings_ex/lge/RadioButtonPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/lge/RadioButtonPreference$1;-><init>(Lcom/android/settings_ex/lge/RadioButtonPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    iput-boolean p1, p0, Lcom/android/settings_ex/lge/RadioButtonPreference;->mChecked:Z

    iget-object v0, p0, Lcom/android/settings_ex/lge/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/lge/RadioButtonPreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
