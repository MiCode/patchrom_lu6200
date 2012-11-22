.class Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$2;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mCurrActivity:Landroid/app/Activity;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$2;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->access$100(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 137
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
