.class Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings$4;
.super Ljava/lang/Object;
.source "LgBtUiHiddenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;

.field final synthetic val$serviceStatus:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings$4;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;

    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings$4;->val$serviceStatus:[Ljava/lang/CharSequence;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "item"

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings$4;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings$4;->val$serviceStatus:[Ljava/lang/CharSequence;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " signal sent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.bt_sig_svc_level"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, i:Landroid/content/Intent;
    const-string v1, "svc_level"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings$4;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiHiddenSettings;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
