.class Lcom/android/settings_ex/SettingsLicenseActivity$4;
.super Landroid/webkit/WebViewClient;
.source "SettingsLicenseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SettingsLicenseActivity;->showPageOfText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SettingsLicenseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsLicenseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/settings_ex/SettingsLicenseActivity$4;->this$0:Lcom/android/settings_ex/SettingsLicenseActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity$4;->this$0:Lcom/android/settings_ex/SettingsLicenseActivity;

    #getter for: Lcom/android/settings_ex/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/SettingsLicenseActivity;->access$400(Lcom/android/settings_ex/SettingsLicenseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity$4;->this$0:Lcom/android/settings_ex/SettingsLicenseActivity;

    #getter for: Lcom/android/settings_ex/SettingsLicenseActivity;->mSpinnerDlg:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/settings_ex/SettingsLicenseActivity;->access$400(Lcom/android/settings_ex/SettingsLicenseActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity$4;->this$0:Lcom/android/settings_ex/SettingsLicenseActivity;

    #getter for: Lcom/android/settings_ex/SettingsLicenseActivity;->mQuit:Z
    invoke-static {v0}, Lcom/android/settings_ex/SettingsLicenseActivity;->access$000(Lcom/android/settings_ex/SettingsLicenseActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 241
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity$4;->this$0:Lcom/android/settings_ex/SettingsLicenseActivity;

    #getter for: Lcom/android/settings_ex/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/SettingsLicenseActivity;->access$500(Lcom/android/settings_ex/SettingsLicenseActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity$4;->this$0:Lcom/android/settings_ex/SettingsLicenseActivity;

    #getter for: Lcom/android/settings_ex/SettingsLicenseActivity;->mTextDlg:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings_ex/SettingsLicenseActivity;->access$500(Lcom/android/settings_ex/SettingsLicenseActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
