.class public Lcom/android/settings_ex/inputmethod/SpellCheckersPreference;
.super Lcom/android/settings_ex/inputmethod/CheckBoxAndSettingsPreference;
.source "SpellCheckersPreference.java"


# instance fields
.field private final mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/inputmethod/CheckBoxAndSettingsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const-string v1, "textservices"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/TextServicesManager;

    iput-object v1, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 31
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/inputmethod/SpellCheckersPreference;->setChecked(Z)V

    .line 33
    const-string v1, "ro.build.target_operator"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "BELL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ro.build.target_country"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "CA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 34
    .local v0, isBelloperator:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/inputmethod/SpellCheckersPreference;->setChecked(Z)V

    .line 38
    :cond_0
    return-void

    .end local v0           #isBelloperator:Z
    :cond_1
    move v0, v2

    .line 33
    goto :goto_0
.end method


# virtual methods
.method protected onCheckBoxClicked()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/settings_ex/inputmethod/CheckBoxAndSettingsPreference;->onCheckBoxClicked()V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/SpellCheckersPreference;->isChecked()Z

    move-result v0

    .line 44
    .local v0, checked:Z
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1, v0}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerEnabled(Z)V

    .line 45
    return-void
.end method
