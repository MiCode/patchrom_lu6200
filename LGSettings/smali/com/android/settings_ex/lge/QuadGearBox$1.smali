.class Lcom/android/settings_ex/lge/QuadGearBox$1;
.super Landroid/content/BroadcastReceiver;
.source "QuadGearBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/lge/QuadGearBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lge/QuadGearBox;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lge/QuadGearBox;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/lge/QuadGearBox$1;->this$0:Lcom/android/settings_ex/lge/QuadGearBox;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.settings_ex.ecomode.CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "QuadGearBox"

    const-string v5, "ACTION_ECOMODE_CHANGED sent."

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.android.settings_ex.ecomode.CHANGED"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, eco_mode:I
    iget-object v2, p0, Lcom/android/settings_ex/lge/QuadGearBox$1;->this$0:Lcom/android/settings_ex/lge/QuadGearBox;

    #getter for: Lcom/android/settings_ex/lge/QuadGearBox;->mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/settings_ex/lge/QuadGearBox;->access$000(Lcom/android/settings_ex/lge/QuadGearBox;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    if-lez v1, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings_ex/lge/QuadGearBox$1;->this$0:Lcom/android/settings_ex/lge/QuadGearBox;

    iget-object v5, p0, Lcom/android/settings_ex/lge/QuadGearBox$1;->this$0:Lcom/android/settings_ex/lge/QuadGearBox;

    #getter for: Lcom/android/settings_ex/lge/QuadGearBox;->mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings_ex/lge/QuadGearBox;->access$000(Lcom/android/settings_ex/lge/QuadGearBox;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    #calls: Lcom/android/settings_ex/lge/QuadGearBox;->updateImage(Z)V
    invoke-static {v2, v5}, Lcom/android/settings_ex/lge/QuadGearBox;->access$100(Lcom/android/settings_ex/lge/QuadGearBox;Z)V

    iget-object v2, p0, Lcom/android/settings_ex/lge/QuadGearBox$1;->this$0:Lcom/android/settings_ex/lge/QuadGearBox;

    invoke-virtual {v2}, Lcom/android/settings_ex/lge/QuadGearBox;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "eco_mode"

    iget-object v6, p0, Lcom/android/settings_ex/lge/QuadGearBox$1;->this$0:Lcom/android/settings_ex/lge/QuadGearBox;

    #getter for: Lcom/android/settings_ex/lge/QuadGearBox;->mQuadGearboxPreference:Landroid/preference/CheckBoxPreference;
    invoke-static {v6}, Lcom/android/settings_ex/lge/QuadGearBox;->access$000(Lcom/android/settings_ex/lge/QuadGearBox;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    invoke-static {v2, v5, v3}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 56
    .end local v1           #eco_mode:I
    :cond_0
    return-void

    .restart local v1       #eco_mode:I
    :cond_1
    move v2, v4

    .line 52
    goto :goto_0

    :cond_2
    move v3, v4

    .line 54
    goto :goto_1
.end method
