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
    .line 401
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

    .line 403
    if-nez p2, :cond_1

    .line 404
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$pref:Landroid/preference/Preference;

    const v1, 0x7f080aed

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 405
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    .line 407
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_ftp"

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    .line 408
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_opp"

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    .line 409
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_pbap"

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    .line 410
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_map"

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    .line 411
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_hid"

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    .line 424
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 425
    return-void

    .line 413
    :cond_1
    if-ne p2, v2, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$pref:Landroid/preference/Preference;

    const v1, 0x7f080aec

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 415
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    .line 417
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_ftp"

    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    .line 418
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_opp"

    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    .line 419
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_pbap"

    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    .line 420
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_map"

    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    .line 421
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings$2;->val$device:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "service_hid"

    invoke-virtual {v0, v1, v3}, Landroid/bluetooth/BluetoothDevice;->setServiceTrust(Ljava/lang/String;Z)Z

    goto :goto_0
.end method
