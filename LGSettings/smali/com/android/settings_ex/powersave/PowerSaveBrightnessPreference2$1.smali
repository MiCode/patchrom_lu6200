.class Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2$1;
.super Ljava/lang/Object;
.source "PowerSaveBrightnessPreference2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    #setter for: Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;->mClickedIndex:I
    invoke-static {v1, p2}, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;->access$302(Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;I)I

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    invoke-virtual {v1}, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_save_started"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, activated:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2$1;->this$0:Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;

    #calls: Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;->setPreviewBrightness(I)V
    invoke-static {v1, p2}, Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;->access$400(Lcom/android/settings_ex/powersave/PowerSaveBrightnessPreference2;I)V

    :cond_0
    return-void
.end method
