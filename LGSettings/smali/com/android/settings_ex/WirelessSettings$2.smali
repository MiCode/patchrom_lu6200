.class Lcom/android/settings_ex/WirelessSettings$2;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/WirelessSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings$2;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .parameter "profile"
    .parameter "proxy"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings$2;->this$0:Lcom/android/settings_ex/WirelessSettings;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2
    #setter for: Lcom/android/settings_ex/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, p2}, Lcom/android/settings_ex/WirelessSettings;->access$002(Lcom/android/settings_ex/WirelessSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 568
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .parameter "profile"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings$2;->this$0:Lcom/android/settings_ex/WirelessSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings_ex/WirelessSettings;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-static {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->access$002(Lcom/android/settings_ex/WirelessSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 571
    return-void
.end method
