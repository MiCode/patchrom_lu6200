.class public final Lcom/android/settings_ex/bluetooth/BluetoothCoexDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothCoexDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "saveedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothCoexDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 15
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f080c2a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothCoexDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 16
    const v1, 0x7f080b05

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothCoexDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 17
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/bluetooth/BluetoothCoexDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 18
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/BluetoothCoexDialog;->setupAlert()V

    .line 19
    return-void
.end method
