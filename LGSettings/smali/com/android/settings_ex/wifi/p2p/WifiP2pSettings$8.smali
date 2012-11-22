.class Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 502
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " create group fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    const-string v0, "WifiP2pSettings"

    const-string v1, " create group success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1002(Z)Z

    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getWifiP2pStatus()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->updateMenuGroupOwner(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$8;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPassword:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1000()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 500
    return-void
.end method
