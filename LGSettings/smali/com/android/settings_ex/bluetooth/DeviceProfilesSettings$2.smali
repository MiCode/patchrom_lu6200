.class Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->askIncomingSecurity(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$pref:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;Landroid/preference/Preference;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->this$0:Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$pref:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$pref:Landroid/preference/Preference;

    const v1, 0x7f080aed

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_ftp"

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_opp"

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_pbap"

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_map"

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_hid"

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$pref:Landroid/preference/Preference;

    const v1, 0x7f080aec

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_ftp"

    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_opp"

    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_pbap"

    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_map"

    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_hid"

    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    goto :goto_0
.end method
