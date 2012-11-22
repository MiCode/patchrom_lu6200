.class Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$9;
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
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$9;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$9;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;

    const-string v1, "[BTUI] [HID] Send Set_Report"

    #calls: Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->BtUiLog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->access$000(Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings$9;->this$0:Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;

    const-string v1, "com.lge.bluetooth.hid.setReport"

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/LgBtUiSigSettings;->BtUiSendIntent(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
