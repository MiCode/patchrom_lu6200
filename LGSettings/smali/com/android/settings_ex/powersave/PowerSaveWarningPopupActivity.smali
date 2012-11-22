.class public Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "PowerSaveWarningPopupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private checked:Z

.field private mBatteryImg:Landroid/widget/ImageView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDoPowerSave:Z

.field private mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;

.field private mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;

.field private mTextViewSub:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private noActivation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mDoPowerSave:Z

    iput-boolean v0, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->checked:Z

    iput-boolean v0, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->noActivation:Z

    new-instance v0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity$1;-><init>(Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;Landroid/content/Context;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getPowerSaveModeValue(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;)Lcom/android/settings_ex/powersave/PowerSave;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mBatteryImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->noActivation:Z

    return p1
.end method

.method private createView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040069

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mView:Landroid/view/View;

    const v3, 0x7f0b0110

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mView:Landroid/view/View;

    const v3, 0x7f0b010f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mBatteryImg:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mView:Landroid/view/View;

    const v3, 0x7f0b0111

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mTextViewSub:Landroid/widget/TextView;

    .line 205
    const-string v1, ": "

    .line 206
    .local v1, subText:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_sync"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f080b68

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_wifi"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f080b3a

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_bt"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f080b3e

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    :cond_2
    invoke-static {}, Lcom/android/settings_ex/lge/OverlayUtils;->isX3Model()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_cpu_adjust"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0809dd

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    :cond_3
    const-string v2, "ro.device.hapticfeedback"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, hapticfeedback:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 229
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_brightness_adjust"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f080b46

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_screen_timeout_adjust"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f080b62

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    :cond_6
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "l_dcm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 243
    :cond_7
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mTextViewSub:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mView:Landroid/view/View;

    return-object v2

    :cond_9
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_touch"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f080b60

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 239
    :cond_a
    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "power_save_front_led_adjust"

    invoke-static {v2, v3, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f080b64

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getPowerSaveModeValue(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_save_mode"

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private sendDoPowerSave()V
    .locals 4

    .prologue
    .line 251
    const-string v2, "PowerSaveWarningPopupActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDoPowerSave, Power save mode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v1, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mDoPowerSave:Z

    if-eqz v1, :cond_0

    const-string v1, "Start"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings_ex.powersave.POWERSAVE_ACTIVATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v2, "powersave_activation"

    iget-boolean v1, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mDoPowerSave:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const-string v1, "Stop"

    goto :goto_0

    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->sendDoPowerSave()V

    iput-boolean v1, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->checked:Z

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->finish()V

    return-void

    :pswitch_0
    iput-boolean v1, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mDoPowerSave:Z

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mDoPowerSave:Z

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v3, Lcom/android/settings_ex/powersave/PowerSave;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/powersave/PowerSave;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mPowerSave:Lcom/android/settings_ex/powersave/PowerSave;

    iget-object v2, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x7f080b65

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 110
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 111
    .local v1, out:Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x1010355

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_save_mode"

    const/16 v5, 0x1e

    invoke-static {v3, v4, v5}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 118
    .local v0, mode_value:I
    const/16 v3, 0x64

    if-ne v0, v3, :cond_0

    .line 119
    const v3, 0x7f08044f

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    :goto_0
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->setupAlert()V

    return-void

    :cond_0
    const v3, 0x7f080b75

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 164
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 184
    packed-switch p1, :pswitch_data_0

    .line 192
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mDoPowerSave:Z

    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->sendDoPowerSave()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->checked:Z

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    iget-object v0, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mPowerSaveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    iget-boolean v0, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->noActivation:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->checked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->mDoPowerSave:Z

    invoke-direct {p0}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->sendDoPowerSave()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->checked:Z

    invoke-virtual {p0}, Lcom/android/settings_ex/powersave/PowerSaveWarningPopupActivity;->finish()V

    goto :goto_0
.end method
