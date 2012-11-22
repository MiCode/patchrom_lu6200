.class public Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcbeamScrPref;
.super Ljava/lang/Object;
.source "LGNfcEnabler.java"

# interfaces
.implements Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/LGNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NfcbeamScrPref"
.end annotation


# instance fields
.field private final mAndroidBeam:Landroid/preference/PreferenceScreen;

.field final synthetic this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;Landroid/preference/PreferenceScreen;)V
    .locals 2
    .parameter
    .parameter "prep"

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcbeamScrPref;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcbeamScrPref;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {p1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcbeamScrPref;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleNfcStateChanged(II)V
    .locals 2
    .parameter "newState"
    .parameter "extraState"

    .prologue
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcbeamScrPref;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcbeamScrPref;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0801fa

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 310
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcbeamScrPref;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcbeamScrPref;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcbeamScrPref;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0801f8

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcbeamScrPref;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0801f9

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 318
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcbeamScrPref;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 321
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcbeamScrPref;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method
