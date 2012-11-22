.class final Lcom/android/settings_ex/bluetooth/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/Utils$2;->val$cachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-string v0, "service.btui.gap.pairByLocal"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/Utils;->BtUiPropertySet(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/Utils$2;->val$cachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->startPairing()Z

    return-void
.end method
