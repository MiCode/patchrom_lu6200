.class Lcom/android/settings_ex/nfc/LGNfcEnabler$2;
.super Ljava/lang/Object;
.source "LGNfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/nfc/LGNfcEnabler;->showAlertDlg(II)V
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
    iput-object p1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$2;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$2;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$2;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    iget-object v2, v2, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapterProxy:Lcom/android/settings_ex/nfc/NfcAdapterProxy;

    invoke-virtual {v2}, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->getAdapterExtraState()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->handleNfcStateChanged(II)V

    .line 645
    return-void
.end method
