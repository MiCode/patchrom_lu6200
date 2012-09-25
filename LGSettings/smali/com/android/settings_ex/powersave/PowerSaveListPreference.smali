.class public Lcom/android/settings_ex/powersave/PowerSaveListPreference;
.super Landroid/preference/ListPreference;
.source "PowerSaveListPreference.java"


# instance fields
.field private mSummary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/powersave/PowerSaveListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveListPreference;->mSummary:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 23
    invoke-super {p0}, Landroid/preference/ListPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveListPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 33
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveListPreference;->mSummary:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveListPreference;->mSummary:Ljava/lang/String;

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveListPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveListPreference;->mSummary:Ljava/lang/String;

    goto :goto_0
.end method
