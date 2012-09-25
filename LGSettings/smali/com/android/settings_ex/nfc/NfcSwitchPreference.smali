.class public final Lcom/android/settings_ex/nfc/NfcSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "NfcSwitchPreference.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bSwitchEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->bSwitchEnable:Z

    .line 37
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 38
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 53
    const v2, 0x10202e2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, checkableView:Landroid/view/View;
    sget-boolean v2, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 57
    :cond_0
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 58
    check-cast v1, Landroid/widget/Switch;

    .line 59
    .local v1, switchView:Landroid/widget/Switch;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    .end local v1           #switchView:Landroid/widget/Switch;
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 64
    if-eqz v0, :cond_2

    .line 65
    iget-boolean v2, p0, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->bSwitchEnable:Z

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 68
    :cond_2
    const-string v2, "syyoon"

    const-string v3, "-------------- onBindView = "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public setEnableSwitch(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->bSwitchEnable:Z

    .line 48
    invoke-virtual {p0}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->notifyChanged()V

    .line 49
    return-void
.end method
