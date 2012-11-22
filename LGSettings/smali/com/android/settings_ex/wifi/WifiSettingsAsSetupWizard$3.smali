.class Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$3;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$3;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$3;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->access$200(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Lcom/android/settings_ex/wifi/WifiSettings;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$3;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->access$200(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Lcom/android/settings_ex/wifi/WifiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$3;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->access$200(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Lcom/android/settings_ex/wifi/WifiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 186
    :cond_0
    return-void
.end method
