.class Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->onCreate(Landroid/os/Bundle;)V
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
    .line 297
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 3
    .parameter "group"

    .prologue
    .line 299
    const-string v0, "WifiP2pSettings"

    const-string v1, "[madoga] onGroupInfoAvailable ----------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-nez p1, :cond_0

    .line 302
    const-string v0, "WifiP2pSettings"

    const-string v1, "[madoga] group is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const-string v0, ""

    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$402(Ljava/lang/String;)Ljava/lang/String;

    .line 329
    :goto_0
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0, p1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$902(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 307
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    const-string v0, "WifiP2pSettings"

    const-string v1, "[madoga] isGroup : true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1002(Z)Z

    .line 310
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$402(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mGroup:Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$900(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->ssid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1102(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 312
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[madoga] password : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ssid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->ssid:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1100(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->updateDevicePref()V
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)V

    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->getWifiP2pStatus()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    #calls: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->updateMenuGroupOwner(Z)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1200(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Z)V

    .line 327
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->mPassword:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1300(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1000()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 314
    :cond_1
    const-string v0, "WifiP2pSettings"

    const-string v1, "[madoga] isGroup : false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1002(Z)Z

    .line 316
    const-string v0, ""

    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$402(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings$3;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    const-string v1, ""

    #setter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->ssid:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;->access$1102(Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method
