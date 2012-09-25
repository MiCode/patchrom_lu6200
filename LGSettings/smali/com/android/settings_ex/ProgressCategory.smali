.class public Lcom/android/settings_ex/ProgressCategory;
.super Lcom/android/settings_ex/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mNoDeviceFoundAdded:Z

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;

.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    .line 39
    const v0, 0x7f04007b

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/ProgressCategory;->setLayoutResource(I)V

    .line 41
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ProgressCategory;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 43
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings_ex/ProgressCategoryBase;->onBindView(Landroid/view/View;)V

    .line 48
    const v5, 0x7f0b0131

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 49
    .local v2, textView:Landroid/widget/TextView;
    const v5, 0x7f0b0132

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 52
    .local v1, progressBar:Landroid/view/View;
    iget-boolean v5, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ex/ProgressCategory;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 53
    iput-boolean v4, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    .line 57
    :cond_0
    iget-boolean v5, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    if-eqz v5, :cond_4

    .line 58
    const v5, 0x7f0800c3

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ProgressCategory;->getPreferenceCount()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/ProgressCategory;->getPreferenceCount()I

    move-result v5

    if-ne v5, v4, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-ne v5, v6, :cond_5

    :cond_1
    move v0, v4

    .line 72
    .local v0, noDeviceFound:Z
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    if-eqz v5, :cond_6

    move v5, v3

    :goto_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-boolean v5, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    if-nez v5, :cond_2

    if-nez v0, :cond_7

    .line 75
    :cond_2
    iget-boolean v4, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-eqz v4, :cond_3

    .line 76
    iget-object v4, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 77
    iput-boolean v3, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 91
    :cond_3
    :goto_3
    return-void

    .line 60
    .end local v0           #noDeviceFound:Z
    :cond_4
    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    move v0, v3

    .line 65
    goto :goto_1

    .line 72
    .restart local v0       #noDeviceFound:Z
    :cond_6
    const/4 v5, 0x4

    goto :goto_2

    .line 80
    :cond_7
    iget-boolean v5, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundAdded:Z

    if-nez v5, :cond_3

    .line 81
    iget-object v5, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v5, :cond_8

    .line 82
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/ProgressCategory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    .line 83
    iget-object v5, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v6, 0x7f040073

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 84
    iget-object v5, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v6, 0x7f0800c5

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 85
    iget-object v5, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 87
    :cond_8
    iget-object v3, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 88
    iput-boolean v4, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundAdded:Z

    goto :goto_3
.end method

.method public setProgress(Z)V
    .locals 1
    .parameter "progressOn"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    .line 97
    if-nez p1, :cond_0

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceFoundAdded:Z

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ProgressCategory;->notifyChanged()V

    .line 101
    return-void
.end method
