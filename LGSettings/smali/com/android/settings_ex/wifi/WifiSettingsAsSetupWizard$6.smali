.class Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$6;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->IsSIMStateCheck()Z
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
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->access$402(Z)Z

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->access$100(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$6;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->access$100(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const v1, 0x7f080bf7

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 366
    return-void
.end method
