.class Lcom/android/settings_ex/nfc/LGNfcEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "LGNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/LGNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$1;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    invoke-static {}, Lcom/android/settings_ex/Utils;->hasFeatureNfcP2P()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$1;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    iget-object v2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$1;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    iget-object v2, v2, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapterProxy:Lcom/android/settings_ex/nfc/NfcAdapterProxy;

    invoke-virtual {v2, p2}, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->getState(Landroid/content/Intent;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$1;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    iget-object v3, v3, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapterProxy:Lcom/android/settings_ex/nfc/NfcAdapterProxy;

    invoke-virtual {v3, p2}, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->getExtraState(Landroid/content/Intent;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->handleNfcStateChanged(II)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$1;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    iget-object v3, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$1;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v3}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$1;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v3}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->handleNfcStateChanged(II)V

    goto :goto_0
.end method
