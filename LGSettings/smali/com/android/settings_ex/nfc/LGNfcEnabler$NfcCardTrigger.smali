.class public Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcCardTrigger;
.super Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;
.source "LGNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/LGNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NfcCardTrigger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcCardTrigger;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-direct {p0, p1}, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;-><init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;)V

    return-void
.end method


# virtual methods
.method trigger(Z)Z
    .locals 3
    .parameter "bOn"

    .prologue
    .line 199
    if-nez p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcCardTrigger;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    const v1, 0x7f080399

    const v2, 0x7f080203

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->showAlertDlg(II)V

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcCardTrigger;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapterProxy:Lcom/android/settings_ex/nfc/NfcAdapterProxy;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->enable()Z

    move-result v0

    goto :goto_0
.end method
