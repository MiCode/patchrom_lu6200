.class Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$3;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

.field final synthetic val$device:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

.field final synthetic val$profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$3;->val$device:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$3;->val$profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$3;->val$device:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$3;->val$profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$3;->val$profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$3;->val$device:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 494
    return-void
.end method
