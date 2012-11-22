.class public Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;
.super Ljava/lang/Object;
.source "LGNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/LGNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BeamTrigger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method trigger(Z)Z
    .locals 2
    .parameter "bOn"

    .prologue
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v0

    .line 217
    .local v0, bRet:Z
    :goto_0
    return v0

    .line 214
    .end local v0           #bRet:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v0

    .restart local v0       #bRet:Z
    goto :goto_0
.end method
