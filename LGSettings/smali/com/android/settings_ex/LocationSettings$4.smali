.class Lcom/android/settings_ex/LocationSettings$4;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/LocationSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/LocationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/LocationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/android/settings_ex/LocationSettings$4;->this$0:Lcom/android/settings_ex/LocationSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v0, 0x1

    .line 367
    iget-object v1, p0, Lcom/android/settings_ex/LocationSettings$4;->this$0:Lcom/android/settings_ex/LocationSettings;

    iget-object v1, v1, Lcom/android/settings_ex/LocationSettings;->mAssistedService:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/settings_ex/LocationSettings$4;->this$0:Lcom/android/settings_ex/LocationSettings;

    #getter for: Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings_ex/LocationSettings;->access$400(Lcom/android/settings_ex/LocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 369
    iget-object v1, p0, Lcom/android/settings_ex/LocationSettings$4;->this$0:Lcom/android/settings_ex/LocationSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/LocationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_gps_enabled"

    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings$4;->this$0:Lcom/android/settings_ex/LocationSettings;

    #getter for: Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings_ex/LocationSettings;->access$400(Lcom/android/settings_ex/LocationSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 372
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 373
    return-void

    .line 369
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
