.class Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4$2;
.super Ljava/lang/Object;
.source "WifiSettingsAsSetupWizard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4$2;->this$1:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4$2;->this$1:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->access$200(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Lcom/android/settings_ex/wifi/WifiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4$2;->this$1:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard$4;->this$0:Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;

    #getter for: Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->mWifiSettings:Lcom/android/settings_ex/wifi/WifiSettings;
    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;->access$200(Lcom/android/settings_ex/wifi/WifiSettingsAsSetupWizard;)Lcom/android/settings_ex/wifi/WifiSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 205
    return-void
.end method
