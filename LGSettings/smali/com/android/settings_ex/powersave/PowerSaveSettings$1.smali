.class Lcom/android/settings_ex/powersave/PowerSaveSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaveSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/powersave/PowerSaveSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/powersave/PowerSaveSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/powersave/PowerSaveSettings;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 101
    const-string v8, "level"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 102
    .local v5, level:I
    const-string v8, "scale"

    const/16 v9, 0x64

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .local v6, scale:I
    invoke-static {p2}, Lcom/android/settings_ex/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .local v1, batteryLevel:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, p2}, Lcom/android/settings_ex/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, batteryStatus:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v7, v8, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 108
    .local v7, systemLocale:Ljava/util/Locale;
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, language:Ljava/lang/String;
    const-string v8, "ko"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080095

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveSettings;

    invoke-virtual {v8}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080096

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 111
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveSettings;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBattery:Landroid/preference/Preference;
    invoke-static {v8}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->access$000(Lcom/android/settings_ex/powersave/PowerSaveSettings;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    :goto_0
    iget-object v8, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveSettings;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBattery:Landroid/preference/Preference;
    invoke-static {v8}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->access$000(Lcom/android/settings_ex/powersave/PowerSaveSettings;)Landroid/preference/Preference;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveSettings;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveSettings;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;
    invoke-static {v9}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->access$100(Lcom/android/settings_ex/powersave/PowerSaveSettings;)Lcom/android/settings_ex/powersave/PowerSave;

    move-result-object v9

    mul-int/lit8 v10, v5, 0x64

    div-int/2addr v10, v6

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/powersave/PowerSave;->getBatteryImgId(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setIcon(I)V

    .line 119
    .end local v1           #batteryLevel:Ljava/lang/String;
    .end local v2           #batteryStatus:Ljava/lang/String;
    .end local v4           #language:Ljava/lang/String;
    .end local v5           #level:I
    .end local v6           #scale:I
    .end local v7           #systemLocale:Ljava/util/Locale;
    :cond_1
    return-void

    .line 113
    .restart local v1       #batteryLevel:Ljava/lang/String;
    .restart local v2       #batteryStatus:Ljava/lang/String;
    .restart local v4       #language:Ljava/lang/String;
    .restart local v5       #level:I
    .restart local v6       #scale:I
    .restart local v7       #systemLocale:Ljava/util/Locale;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080505

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v11

    const/4 v11, 0x1

    aput-object v2, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, batterySummary:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveSettings;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveSettings;->mBattery:Landroid/preference/Preference;
    invoke-static {v8}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->access$000(Lcom/android/settings_ex/powersave/PowerSaveSettings;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
