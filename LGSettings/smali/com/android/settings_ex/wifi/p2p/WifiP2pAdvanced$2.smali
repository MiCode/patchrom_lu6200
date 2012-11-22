.class Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced$2;
.super Ljava/lang/Object;
.source "WifiP2pAdvanced.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$StringResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced$2;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseAvailable(Ljava/lang/String;)V
    .locals 3
    .parameter "ipAddr"

    .prologue
    .line 153
    const-string v0, "WifiP2pAdvanced"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onResponseAvailable IP Address :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UNKNOWN COMMAND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced$2;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->wifip2pIpAddressPref:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced$2;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08034c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced$2;->this$0:Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;

    #getter for: Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->wifip2pIpAddressPref:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;->access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pAdvanced;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
