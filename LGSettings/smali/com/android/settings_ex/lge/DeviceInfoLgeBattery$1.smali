.class Lcom/android/settings_ex/lge/DeviceInfoLgeBattery$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfoLgeBattery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery$1;->this$0:Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 38
    invoke-static {p2}, Lcom/android/settings_ex/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, batteryLevel:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery$1;->this$0:Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;

    invoke-virtual {v3}, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/settings_ex/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, batteryStatus:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery$1;->this$0:Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;

    #getter for: Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->mBatteryLevel:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->access$000(Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 43
    iget-object v3, p0, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery$1;->this$0:Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;

    #getter for: Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->mBatteryLevel:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->access$000(Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 45
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery$1;->this$0:Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;

    #getter for: Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->mBatteryStatus:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->access$100(Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 46
    iget-object v3, p0, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery$1;->this$0:Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;

    #getter for: Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->mBatteryStatus:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;->access$100(Lcom/android/settings_ex/lge/DeviceInfoLgeBattery;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 50
    .end local v1           #batteryLevel:Ljava/lang/String;
    .end local v2           #batteryStatus:Ljava/lang/String;
    :cond_1
    return-void
.end method
