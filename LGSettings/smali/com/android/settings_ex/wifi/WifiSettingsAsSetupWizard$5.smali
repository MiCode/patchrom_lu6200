.class Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$5;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->onInitView(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/widget/Switch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 241
    const-string v1, "WifiSettingsAsSetupWizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onPreferenceChange] value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 243
    .local v0, enable:Z
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$5;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->access$500(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 244
    const/4 v1, 0x0

    return v1
.end method
