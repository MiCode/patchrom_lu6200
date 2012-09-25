.class Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDiscoverableEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/high16 v5, -0x8000

    .line 84
    const-string v3, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    const-string v3, "android.bluetooth.adapter.extra.SCAN_MODE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 87
    .local v0, mode:I
    if-eq v0, v5, :cond_0

    .line 88
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->handleModeChanged(I)V

    .line 108
    .end local v0           #mode:I
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const-string v3, "LGBT_CNDTL_FUNCTION_BLOCK_DISCOVER_INCALL"

    invoke-static {v3}, Lcom/lge/config/BtFeatureConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.btui.callState"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    const-string v3, "btui_call_state_prev"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 95
    .local v2, oState:I
    const-string v3, "btui_call_state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 97
    .local v1, nState:I
    if-ne v1, v7, :cond_2

    .line 98
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->access$100(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 101
    :cond_2
    if-ne v2, v7, :cond_0

    if-nez v1, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 103
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;

    #getter for: Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->mDiscoveryPreference:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;->access$100(Lcom/android/settings_ex/bluetooth/BluetoothDiscoverableEnabler;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method
