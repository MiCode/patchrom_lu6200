.class public Lcom/android/settings_ex/BrightnessPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/BrightnessPreference$SavedState;
    }
.end annotation


# instance fields
.field private isBinding:Z

.field private mAutomaticAvailable:Z

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mRestoredOldState:Z

.field private mScreenBrightnessDim:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSubtitle:Landroid/widget/TextView;

.field private mThermalMaxBrightness:I

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mThermalMaxBrightness:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->isBinding:Z

    .line 77
    new-instance v0, Lcom/android/settings_ex/BrightnessPreference$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/BrightnessPreference$1;-><init>(Lcom/android/settings_ex/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 84
    new-instance v0, Lcom/android/settings_ex/BrightnessPreference$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/BrightnessPreference$2;-><init>(Lcom/android/settings_ex/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 97
    iput-object p1, p0, Lcom/android/settings_ex/BrightnessPreference;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticAvailable:Z

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessDim:I

    .line 105
    const v0, 0x7f04006e

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/BrightnessPreference;->setDialogLayoutResource(I)V

    .line 109
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->getThermalBrightMax()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->onBrightnessModeChanged()V

    return-void
.end method

.method private getBrightness(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 223
    move v0, p1

    .line 225
    .local v0, brightness:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 229
    :goto_0
    return v0

    .line 227
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 233
    move v0, p1

    .line 235
    .local v0, brightnessMode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 239
    :goto_0
    return v0

    .line 237
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getPercent()I
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessDim:I

    rsub-int v1, v1, 0xff

    div-int/2addr v0, v1

    return v0
.end method

.method private getThermalBrightMax()V
    .locals 8

    .prologue
    .line 400
    new-instance v1, Ljava/lang/String;

    const-string v5, "/sys/class/leds/lcd-backlight/max_brightness"

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 401
    .local v1, flag_read_path:Ljava/lang/String;
    const-string v2, ""

    .line 402
    .local v2, frag:Ljava/lang/String;
    const/4 v3, 0x0

    .line 406
    .local v3, inFlagFile:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 407
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .local v4, inFlagFile:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 408
    const-string v5, "BrightnessPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thermal max bright -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 410
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/settings_ex/BrightnessPreference;->mThermalMaxBrightness:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 420
    if-eqz v4, :cond_0

    .line 421
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v3, v4

    .line 424
    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return-void

    .line 422
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v4       #inFlagFile:Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 423
    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    goto :goto_0

    .line 412
    :catch_1
    move-exception v0

    .line 414
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    const-string v5, "BrightnessPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "thermal max bright read fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/16 v5, 0xff

    iput v5, p0, Lcom/android/settings_ex/BrightnessPreference;->mThermalMaxBrightness:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 420
    if-eqz v3, :cond_1

    .line 421
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 422
    :catch_2
    move-exception v5

    goto :goto_0

    .line 419
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 420
    :goto_2
    if-eqz v3, :cond_2

    .line 421
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 422
    :cond_2
    :goto_3
    throw v5

    :catch_3
    move-exception v6

    goto :goto_3

    .line 419
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v4       #inFlagFile:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    goto :goto_2

    .line 412
    .end local v3           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v4       #inFlagFile:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #inFlagFile:Ljava/io/BufferedReader;
    .restart local v3       #inFlagFile:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private onBrightnessChanged()V
    .locals 3

    .prologue
    .line 243
    const/16 v1, 0xff

    invoke-direct {p0, v1}, Lcom/android/settings_ex/BrightnessPreference;->getBrightness(I)I

    move-result v0

    .line 244
    .local v0, brightness:I
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessDim:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 245
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 248
    invoke-direct {p0, v0}, Lcom/android/settings_ex/BrightnessPreference;->getBrightnessMode(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 249
    .local v0, checked:Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 250
    return-void
.end method

.method private restoreOldState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 271
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 274
    iget v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/settings_ex/BrightnessPreference;->setMode(I)V

    .line 276
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomatic:I

    if-nez v0, :cond_3

    .line 277
    :cond_2
    iget v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ex/BrightnessPreference;->setBrightness(IZ)V

    .line 281
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    iput-boolean v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mRestoredOldState:Z

    goto :goto_0

    .line 279
    :cond_3
    iget v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    add-int/lit16 v0, v0, 0x3e8

    invoke-direct {p0, v0, v3}, Lcom/android/settings_ex/BrightnessPreference;->setBrightness(IZ)V

    goto :goto_1
.end method

.method private setBrightness(IZ)V
    .locals 5
    .parameter "brightness"
    .parameter "force"

    .prologue
    .line 287
    move v1, p1

    .line 288
    .local v1, temp:I
    const-string v2, "BrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBrightness() : Brightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 292
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 293
    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p2, :cond_1

    .line 294
    add-int/lit16 v1, v1, 0x3e8

    .line 295
    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 296
    const-string v2, "BrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBrightness() : MultiALC="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 299
    .restart local v0       #power:Landroid/os/IPowerManager;
    :cond_1
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    .end local v0           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private setBrightnessTitle(I)V
    .locals 4
    .parameter "percent"

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0802de

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x102023d

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 433
    .local v1, tv:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 435
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 439
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 308
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/BrightnessPreference;->setBrightness(IZ)V

    .line 314
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .parameter "aStrID"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 459
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mToast:Landroid/widget/Toast;

    .line 458
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 139
    iput-boolean v1, p0, Lcom/android/settings_ex/BrightnessPreference;->isBinding:Z

    .line 141
    invoke-static {p1}, Lcom/android/settings_ex/BrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessDim:I

    rsub-int v3, v3, 0xff

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 144
    const v0, 0x7f0b0114

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-direct {p0, v2}, Lcom/android/settings_ex/BrightnessPreference;->getBrightness(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    .line 151
    const v0, 0x7f0b00ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSubtitle:Landroid/widget/TextView;

    .line 154
    iget v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mThermalMaxBrightness:I

    if-le v0, v3, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mThermalMaxBrightness:I

    iget v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessDim:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 160
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_3

    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 162
    invoke-direct {p0, v2}, Lcom/android/settings_ex/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomatic:I

    .line 163
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomatic:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSubtitle:Landroid/widget/TextView;

    const v1, 0x7f0802e1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 172
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 174
    iput-boolean v2, p0, Lcom/android/settings_ex/BrightnessPreference;->isBinding:Z

    .line 175
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    iget v4, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessDim:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 163
    goto :goto_1

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSubtitle:Landroid/widget/TextView;

    const v1, 0x7f0802e0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x0

    .line 203
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/BrightnessPreference;->setMode(I)V

    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSubtitle:Landroid/widget/TextView;

    const v2, 0x7f0802e1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 211
    :goto_1
    if-nez p2, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/BrightnessPreference;->setBrightness(IZ)V

    .line 217
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->isBinding:Z

    if-nez v0, :cond_1

    .line 218
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->getPercent()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/BrightnessPreference;->setBrightnessTitle(I)V

    .line 220
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 203
    goto :goto_0

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mSubtitle:Landroid/widget/TextView;

    const v2, 0x7f0802e0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 91
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 258
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 259
    iget-object v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 261
    if-eqz p1, :cond_0

    .line 262
    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->restoreOldState()V

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 117
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 180
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged###progress + mScreenBrightnessDim :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessDim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged###mThermalMaxBrightness :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mThermalMaxBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mThermalMaxBrightness:I

    if-le v0, v1, :cond_0

    .line 185
    iget v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mThermalMaxBrightness:I

    iget v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessDim:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 186
    const v0, 0x7f080980

    invoke-direct {p0, v0}, Lcom/android/settings_ex/BrightnessPreference;->showToast(I)V

    .line 191
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->getPercent()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/BrightnessPreference;->setBrightnessTitle(I)V

    .line 192
    return-void

    .line 190
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/BrightnessPreference;->setBrightness(IZ)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 337
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/android/settings_ex/BrightnessPreference$SavedState;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 349
    :goto_0
    return-void

    .line 343
    :cond_1
    check-cast p1, Lcom/android/settings_ex/BrightnessPreference$SavedState;

    .line 344
    invoke-virtual {p1}, Lcom/android/settings_ex/BrightnessPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 345
    iget v0, p1, Lcom/android/settings_ex/BrightnessPreference$SavedState;->oldProgress:I

    iput v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    .line 346
    iget-boolean v0, p1, Lcom/android/settings_ex/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomatic:I

    .line 347
    iget-boolean v0, p1, Lcom/android/settings_ex/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings_ex/BrightnessPreference;->setMode(I)V

    .line 348
    iget v0, p1, Lcom/android/settings_ex/BrightnessPreference$SavedState;->progress:I

    iget v1, p0, Lcom/android/settings_ex/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/BrightnessPreference;->setBrightness(IZ)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 346
    goto :goto_1

    :cond_3
    move v1, v2

    .line 347
    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 320
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 321
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 332
    :goto_0
    return-object v0

    .line 324
    :cond_1
    new-instance v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/BrightnessPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 325
    .local v0, myState:Lcom/android/settings_ex/BrightnessPreference$SavedState;
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->automatic:Z

    .line 326
    iget-object v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iput v3, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->progress:I

    .line 327
    iget v3, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldAutomatic:I

    if-ne v3, v2, :cond_2

    :goto_1
    iput-boolean v2, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->oldAutomatic:Z

    .line 328
    iget v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mOldBrightness:I

    iput v2, v0, Lcom/android/settings_ex/BrightnessPreference$SavedState;->oldProgress:I

    goto :goto_0

    .line 327
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 196
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 200
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 121
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/BrightnessPreference;->mRestoredOldState:Z

    .line 132
    invoke-direct {p0}, Lcom/android/settings_ex/BrightnessPreference;->getPercent()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/BrightnessPreference;->setBrightnessTitle(I)V

    .line 133
    return-void
.end method

.method public stopDialog()V
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/android/settings_ex/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 395
    :cond_0
    return-void
.end method
