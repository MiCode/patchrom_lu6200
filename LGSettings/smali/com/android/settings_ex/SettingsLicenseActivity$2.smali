.class Lcom/android/settings_ex/SettingsLicenseActivity$2;
.super Ljava/lang/Object;
.source "SettingsLicenseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SettingsLicenseActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 182
    iput-object p1, p0, Lcom/android/settings_ex/SettingsLicenseActivity$2;->this$0:Lcom/android/settings_ex/SettingsLicenseActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dlgi"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity$2;->this$0:Lcom/android/settings_ex/SettingsLicenseActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings_ex/SettingsLicenseActivity;->mQuit:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/SettingsLicenseActivity;->access$002(Lcom/android/settings_ex/SettingsLicenseActivity;Z)Z

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/SettingsLicenseActivity$2;->this$0:Lcom/android/settings_ex/SettingsLicenseActivity;

    #calls: Lcom/android/settings_ex/SettingsLicenseActivity;->cancelLoadData()V
    invoke-static {v0}, Lcom/android/settings_ex/SettingsLicenseActivity;->access$300(Lcom/android/settings_ex/SettingsLicenseActivity;)V

    .line 187
    return-void
.end method
