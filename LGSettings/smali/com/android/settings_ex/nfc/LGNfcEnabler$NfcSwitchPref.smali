.class public Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;
.super Ljava/lang/Object;
.source "LGNfcEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/LGNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NfcSwitchPref"
.end annotation


# instance fields
.field private final mSwitch:Lcom/android/settings_ex/nfc/NfcSwitchPreference;

.field private mTrigger:Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;

.field final synthetic this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;Lcom/android/settings_ex/nfc/NfcSwitchPreference;Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;)V
    .locals 2
    .parameter
    .parameter "prep"
    .parameter "trigger"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    iput-object p3, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mTrigger:Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    const v1, 0x7f0801fd

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->setSummaryOn(I)V

    invoke-static {}, Lcom/android/settings_ex/Utils;->hasFeatureNfcP2P()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    const v1, 0x7f080209

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->setSummaryOff(I)V

    :goto_0
    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {p1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    const v1, 0x7f08020a

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->setSummaryOff(I)V

    goto :goto_0
.end method


# virtual methods
.method public handleNfcStateChanged(II)V
    .locals 3
    .parameter "newState"
    .parameter "extraState"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->setEnableSwitch(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->setEnableSwitch(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->setEnableSwitch(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->setEnableSwitch(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->setChecked(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x0

    .line 366
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .local v0, bValue:Z
    iget-object v1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->setEnableSwitch(Z)V

    iget-object v1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mTrigger:Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;->trigger(Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->setEnableSwitch(Z)V

    :cond_0
    const-string v1, "LGNfcEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return v4
.end method

.method public pause()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcSwitchPref;->mSwitch:Lcom/android/settings_ex/nfc/NfcSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/nfc/NfcSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
