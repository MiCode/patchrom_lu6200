.class Lcom/android/settings_ex/TetherSettings$6;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v5, 0x0

    .line 1183
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    .line 1187
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mPassword:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/settings_ex/TetherSettings;->access$1100(Lcom/android/settings_ex/TetherSettings;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1189
    .local v1, password:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v4}, Lcom/android/settings_ex/TetherSettings;->access$1300(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    #setter for: Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3, v4}, Lcom/android/settings_ex/TetherSettings;->access$1202(Lcom/android/settings_ex/TetherSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 1190
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings_ex/TetherSettings;->access$1200(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/settings_ex/TetherSettings;->access$1200(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v1, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1191
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v3}, Lcom/android/settings_ex/TetherSettings;->access$1300(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/settings_ex/TetherSettings;->access$1200(Lcom/android/settings_ex/TetherSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1219
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;
    invoke-static {v3}, Lcom/android/settings_ex/TetherSettings;->access$900(Lcom/android/settings_ex/TetherSettings;)Lcom/android/settings_ex/wifi/WifiApEnabler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mWifiHotspotStatus:Z
    invoke-static {v4}, Lcom/android/settings_ex/TetherSettings;->access$800(Lcom/android/settings_ex/TetherSettings;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 1220
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    #getter for: Lcom/android/settings_ex/TetherSettings;->mWifiHotspotStatus:Z
    invoke-static {v3}, Lcom/android/settings_ex/TetherSettings;->access$800(Lcom/android/settings_ex/TetherSettings;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1221
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    #setter for: Lcom/android/settings_ex/TetherSettings;->mInit:Z
    invoke-static {v3, v5}, Lcom/android/settings_ex/TetherSettings;->access$1402(Lcom/android/settings_ex/TetherSettings;Z)Z

    .line 1222
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings$6;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "FIRST_FLAG"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1223
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1224
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "f_flag"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1225
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1233
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #password:Ljava/lang/String;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 1229
    :cond_2
    const/4 v3, -0x2

    if-ne p2, v3, :cond_1

    goto :goto_0
.end method
