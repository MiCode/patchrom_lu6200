.class public Lcom/android/settings_ex/inputmethod/ScreenCheckersPreference;
.super Lcom/android/settings_ex/inputmethod/CheckBoxAndSettingsPreference;
.source "ScreenCheckersPreference.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/inputmethod/CheckBoxAndSettingsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/ScreenCheckersPreference;->mContext:Landroid/content/Context;

    .line 33
    const-string v0, "textservices"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Lcom/android/settings_ex/inputmethod/ScreenCheckersPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 36
    const-string v0, "USC"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/ScreenCheckersPreference;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/inputmethod/ScreenCheckersPreference;->setChecked(Z)V

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCheckBoxClicked()V
    .locals 4

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/settings_ex/inputmethod/CheckBoxAndSettingsPreference;->onCheckBoxClicked()V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings_ex/inputmethod/ScreenCheckersPreference;->isChecked()Z

    move-result v0

    .line 52
    .local v0, checked:Z
    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/ScreenCheckersPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_owner_info_enabled"

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 55
    return-void

    .line 52
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
