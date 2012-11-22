.class Lcom/android/settings_ex/nfc/LGNfcEnabler$4;
.super Ljava/lang/Object;
.source "LGNfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$4;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$4;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    iget-object v0, v0, Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapterProxy:Lcom/android/settings_ex/nfc/NfcAdapterProxy;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/NfcAdapterProxy;->disable()Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const-string v0, "LGNfcEnabler"

    const-string v1, "showAlertDlg onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
