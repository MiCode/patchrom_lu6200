.class public Lcom/android/settings_ex/powersave/PowerSaveEnabler;
.super Ljava/lang/Object;
.source "PowerSaveEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragment:Landroid/app/Fragment;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Landroid/app/Fragment;)V
    .locals 0
    .parameter "context"
    .parameter "switch_"
    .parameter "fragment"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mSwitch:Landroid/widget/Switch;

    .line 23
    iput-object p3, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mFragment:Landroid/app/Fragment;

    .line 30
    return-void
.end method

.method private doPowerSaveService(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings_ex"

    const-string v2, "com.android.settings_ex.powersave.PowerSaveService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 65
    if-eqz p2, :cond_2

    const/4 v2, 0x1

    .line 66
    .local v2, value:I
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->setSwitchChecked(Z)V

    .line 68
    iget-object v4, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_save_enabled"

    invoke-static {v4, v5, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 69
    .local v1, preState:I
    if-eq v1, v2, :cond_0

    .line 70
    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_save_enabled"

    invoke-static {v3, v4, v2}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    invoke-direct {p0, p2}, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->doPowerSaveService(Z)V

    .line 74
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mFragment:Landroid/app/Fragment;

    instance-of v3, v3, Lcom/android/settings_ex/powersave/PowerSaveSettings;

    if-eqz v3, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings_ex/powersave/PowerSaveSettings;

    .line 76
    .local v0, fragment:Lcom/android/settings_ex/powersave/PowerSaveSettings;
    invoke-virtual {v0, p2}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->onSwitchCheckedChanged(Z)V

    .line 79
    .end local v0           #fragment:Lcom/android/settings_ex/powersave/PowerSaveSettings;
    :cond_1
    return-void

    .end local v1           #preState:I
    .end local v2           #value:I
    :cond_2
    move v2, v3

    .line 65
    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_enabled"

    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 55
    .local v0, isEnabled:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 56
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 3
    .parameter "switch_"

    .prologue
    const/4 v0, 0x0

    .line 33
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 35
    iput-object p1, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mSwitch:Landroid/widget/Switch;

    .line 36
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 38
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_enabled"

    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 40
    .local v0, isEnabled:Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public setSwitchChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 48
    :cond_0
    return-void
.end method
