.class Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment$2;
.super Ljava/lang/Object;
.source "BluetoothAdvancedSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment$2;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;

    #calls: Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->initPreference()V
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;->access$100(Lcom/android/settings_ex/bluetooth/BluetoothAdvancedSettingsFragment;)V

    return-void
.end method
