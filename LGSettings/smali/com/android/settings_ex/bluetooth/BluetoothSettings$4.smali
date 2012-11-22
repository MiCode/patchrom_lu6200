.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/BluetoothSettings;->askScanOption()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->setSearchFilter(I)V
    invoke-static {v0, p2}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$100(Lcom/android/settings_ex/bluetooth/BluetoothSettings;I)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v0, v0, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mScanOptionPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getSearchFilterSummary()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$200(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->removeAllDevices()V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    iget-object v1, v1, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateContent(IZ)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$300(Lcom/android/settings_ex/bluetooth/BluetoothSettings;IZ)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$400(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$4;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mAvailableDevicesCategory:Landroid/preference/PreferenceGroup;
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$400(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)Landroid/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 921
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 922
    return-void
.end method
