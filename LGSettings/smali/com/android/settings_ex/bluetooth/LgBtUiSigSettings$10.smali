.class Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$10;
.super Ljava/lang/Object;
.source "LgBtUiSigSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->updateScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$10;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$10;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;

    const-string v2, "[BTUI] [SAP] disconnect (Graceful)"

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->access$000(Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.bluetooth.sap.disconnect"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$10;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method
