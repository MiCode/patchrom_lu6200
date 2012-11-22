.class public Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;
.super Ljava/lang/Object;
.source "LGNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/LGNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NfcTrigger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method trigger(Z)Z
    .locals 1
    .parameter "bOn"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v0

    .line 192
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$NfcTrigger;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    move-result v0

    goto :goto_0
.end method
