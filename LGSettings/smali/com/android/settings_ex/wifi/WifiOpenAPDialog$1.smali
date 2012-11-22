.class Lcom/android/settings_ex/wifi/WifiOpenAPDialog$1;
.super Ljava/lang/Object;
.source "WifiOpenAPDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiOpenAPDialog;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/AccessPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiOpenAPDialog;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiOpenAPDialog;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiOpenAPDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "WifiOpenAPDialog"

    const-string v1, "Yes Button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiOpenAPDialog;

    #getter for: Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->access$000(Lcom/android/settings_ex/wifi/WifiOpenAPDialog;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->generateOpenNetworkConfig()V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiOpenAPDialog;

    #getter for: Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->access$100(Lcom/android/settings_ex/wifi/WifiOpenAPDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiOpenAPDialog$1;->this$0:Lcom/android/settings_ex/wifi/WifiOpenAPDialog;

    #getter for: Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->mAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiOpenAPDialog;->access$000(Lcom/android/settings_ex/wifi/WifiOpenAPDialog;)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 74
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v0, "WifiOpenAPDialog"

    const-string v1, "No Button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
