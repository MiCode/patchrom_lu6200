.class Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;
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
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->access$200(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Lcom/android/settings_ex/wifi/WifiSettings;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->access$300(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mMobileNetworkOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->access$100(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiOn:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->access$300(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->access$400()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;
    invoke-static {v1}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->access$200(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Lcom/android/settings_ex/wifi/WifiSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080739

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080bb5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4$2;-><init>(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4$1;-><init>(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 219
    :cond_2
    :goto_0
    return-void

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->access$200(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Lcom/android/settings_ex/wifi/WifiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->access$200(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Lcom/android/settings_ex/wifi/WifiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
