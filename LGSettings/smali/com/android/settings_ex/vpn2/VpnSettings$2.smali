.class Lcom/android/settings_ex/vpn2/VpnSettings$2;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/vpn2/VpnSettings;->deleteProfile(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

.field final synthetic val$preference:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/vpn2/VpnSettings;Landroid/preference/Preference;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/VpnSettings$2;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    iput-object p2, p0, Lcom/android/settings_ex/vpn2/VpnSettings$2;->val$preference:Landroid/preference/Preference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 581
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 582
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings$2;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings$2;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    #getter for: Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/vpn2/VpnSettings;->access$000(Lcom/android/settings_ex/vpn2/VpnSettings;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings_ex/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/vpn2/VpnSettings;->access$100(Lcom/android/settings_ex/vpn2/VpnSettings;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings$2;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    #getter for: Lcom/android/settings_ex/vpn2/VpnSettings;->mPs:Landroid/preference/PreferenceCategory;
    invoke-static {v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->access$200(Lcom/android/settings_ex/vpn2/VpnSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings$2;->val$preference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 585
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings$2;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    #getter for: Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->access$300(Lcom/android/settings_ex/vpn2/VpnSettings;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings$2;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    #getter for: Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/vpn2/VpnSettings;->access$000(Lcom/android/settings_ex/vpn2/VpnSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings$2;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    #getter for: Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;
    invoke-static {v0}, Lcom/android/settings_ex/vpn2/VpnSettings;->access$400(Lcom/android/settings_ex/vpn2/VpnSettings;)Landroid/security/KeyStore;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings$2;->this$0:Lcom/android/settings_ex/vpn2/VpnSettings;

    #getter for: Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings_ex/vpn2/VpnSettings;->access$000(Lcom/android/settings_ex/vpn2/VpnSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 588
    :cond_0
    return-void
.end method
