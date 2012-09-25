.class Lcom/android/settings_ex/powersave/PowerSaveSettings$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/settings_ex/powersave/PowerSaveSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings$2;->this$0:Lcom/android/settings_ex/powersave/PowerSaveSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 127
    const-string v1, "PowerSaveSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings$2;->this$0:Lcom/android/settings_ex/powersave/PowerSaveSettings;

    #getter for: Lcom/android/settings_ex/powersave/PowerSaveSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->access$200(Lcom/android/settings_ex/powersave/PowerSaveSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_started"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 129
    .local v0, isChecked:Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveSettings$2;->this$0:Lcom/android/settings_ex/powersave/PowerSaveSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/powersave/PowerSaveSettings;->setItemMenuEnabled(Z)V

    .line 130
    return-void

    .line 128
    .end local v0           #isChecked:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
