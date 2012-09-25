.class Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$2;
.super Ljava/lang/Object;
.source "LgBtUiSigSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 107
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$2;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 110
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 112
    .local v1, value:I
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.bt_sig_batt_level"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "batt_level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 114
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$2;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;

    invoke-virtual {v2, v0}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    const/4 v2, 0x1

    return v2
.end method
