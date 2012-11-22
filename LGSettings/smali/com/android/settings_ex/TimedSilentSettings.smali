.class public Lcom/android/settings_ex/TimedSilentSettings;
.super Landroid/app/Activity;
.source "TimedSilentSettings.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private day:[I

.field private desc0:Landroid/widget/TextView;

.field private dialog:Landroid/app/Dialog;

.field private isSilentModeChecked:Z

.field private isVibrateChecked:Z

.field private mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

.field private mTimedSilentSwitch:Landroid/widget/Switch;

.field private position:Ljava/lang/String;

.field private repeat:Landroid/widget/TextView;

.field private schedule:Landroid/widget/TextView;

.field private schedultTo:Landroid/widget/TextView;

.field private timeEndBtn:Landroid/widget/Button;

.field private timeStartBtn:Landroid/widget/Button;

.field private toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

.field private vibrateCheckBox:Landroid/widget/CheckedTextView;

.field private vibrateGroup:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->isSilentModeChecked:Z

    iput-boolean v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->isVibrateChecked:Z

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->day:[I

    const-string v0, "left"

    iput-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->position:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->dialog:Landroid/app/Dialog;

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private OnSilentGroupClick()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->isSilentModeChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->isSilentModeChecked:Z

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mTimedSilentSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->isSilentModeChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private OnVibrateGroupClick()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->isVibrateChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->isVibrateChecked:Z

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->vibrateCheckBox:Landroid/widget/CheckedTextView;

    iget-boolean v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->isVibrateChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private SetToggleButtonListener()V
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    .local v0, days:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v1, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v1, v0}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/TimedSilentSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/TimedSilentSettings;->OnSilentGroupClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/TimedSilentSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TimedSilentSettings;->setlayoutVisible(Z)V

    return-void
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    .line 251
    const-string v0, "TimedSilentSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDBStartTimeHour : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTimeHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v0, "TimedSilentSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDBStartTimeHour : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTimeMinute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v0, "TimedSilentSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDBEndTimeHour : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTimeHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v0, "TimedSilentSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDBEndTimeHour : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTimeMinute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v3, 0x0

    .line 257
    .local v3, hour:I
    const/4 v4, 0x0

    .line 258
    .local v4, minute:I
    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->position:Ljava/lang/String;

    const-string v1, "left"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTimeHour()I

    move-result v3

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTimeMinute()I

    move-result v4

    :cond_0
    :goto_0
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/TimedSilentSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->dialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->dialog:Landroid/app/Dialog;

    const v1, 0x7f08014f

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->dialog:Landroid/app/Dialog;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->position:Ljava/lang/String;

    const-string v1, "right"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTimeHour()I

    move-result v3

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTimeMinute()I

    move-result v4

    goto :goto_0
.end method

.method private getToggleDayToString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .local v2, s:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v3, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .local v0, dayBtn:Landroid/widget/ToggleButton;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/TimedSilentSettings;->day:[I

    const/4 v4, 0x1

    aput v4, v3, v1

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/TimedSilentSettings;->day:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/TimedSilentSettings;->day:[I

    const/4 v4, 0x0

    aput v4, v3, v1

    goto :goto_1

    .line 386
    .end local v0           #dayBtn:Landroid/widget/ToggleButton;
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private initDialogTime()V
    .locals 3

    .prologue
    .line 138
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 140
    .local v0, c:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;->setDBStartTimeHour(I)V

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;->setDBStartTimeMinute(I)V

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getHours()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;->setDBEndTimeHour(I)V

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getMinutes()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;->setDBEndTimeMinute(I)V

    .line 147
    return-void
.end method

.method private save()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    iget-object v2, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/QuietTimeInfo;->setDBSaveTime(J)V

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    iget-boolean v2, p0, Lcom/android/settings_ex/TimedSilentSettings;->isVibrateChecked:Z

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/QuietTimeInfo;->setDBVibrateMode(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-direct {p0}, Lcom/android/settings_ex/TimedSilentSettings;->getToggleDayToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/QuietTimeInfo;->setDBDays(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mTimedSilentSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings_ex/QuietTimeInfo;->setDBQuietTimeState(I)V

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setDBFirstStartFlag(I)V

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->registerAlarm()V

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mTimedSilentSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/settings_ex/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setSoundProfile(I)V

    .line 402
    :cond_0
    return-void

    .line 393
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setlayoutVisible(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 303
    const-string v0, "soosin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setlayoutVisible() isSilentModeChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/TimedSilentSettings;->isSilentModeChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v0, "soosin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setlayoutVisible() visible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-direct {p0, v4}, Lcom/android/settings_ex/TimedSilentSettings;->showTextViewEnabled(Z)V

    invoke-direct {p0, v4}, Lcom/android/settings_ex/TimedSilentSettings;->showTimeBtnEnabled(Z)V

    invoke-direct {p0, v4}, Lcom/android/settings_ex/TimedSilentSettings;->showGroupEnabled(Z)V

    invoke-direct {p0, v4}, Lcom/android/settings_ex/TimedSilentSettings;->showToggleDayEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {p0}, Lcom/android/settings_ex/TimedSilentSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/QuietTimeInfo;->TimedSilentReceiverEnable(Landroid/content/Context;Z)V

    return-void

    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings_ex/TimedSilentSettings;->showTextViewEnabled(Z)V

    invoke-direct {p0, v3}, Lcom/android/settings_ex/TimedSilentSettings;->showTimeBtnEnabled(Z)V

    invoke-direct {p0, v3}, Lcom/android/settings_ex/TimedSilentSettings;->showGroupEnabled(Z)V

    invoke-direct {p0, v3}, Lcom/android/settings_ex/TimedSilentSettings;->showToggleDayEnabled(Z)V

    goto :goto_0
.end method

.method private showGroupEnabled(Z)V
    .locals 1
    .parameter "b"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->vibrateGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method private showTextViewEnabled(Z)V
    .locals 1
    .parameter "b"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->schedule:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->repeat:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->schedultTo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->desc0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private showTimeBtnEnabled(Z)V
    .locals 1
    .parameter "b"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->timeStartBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->timeEndBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private showToggleDayChecked()V
    .locals 4

    .prologue
    .line 359
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v3, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 362
    .local v0, dayBtn:Landroid/widget/ToggleButton;
    iget-object v3, p0, Lcom/android/settings_ex/TimedSilentSettings;->day:[I

    aget v3, v3, v1

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 364
    .local v2, isChecked:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 359
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v2           #isChecked:Z
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 369
    .end local v0           #dayBtn:Landroid/widget/ToggleButton;
    :cond_2
    return-void
.end method

.method private showToggleDayEnabled(Z)V
    .locals 3
    .parameter "b"

    .prologue
    .line 348
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-virtual {v2, v1}, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 351
    .local v0, dayBtn:Landroid/widget/ToggleButton;
    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 348
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v0           #dayBtn:Landroid/widget/ToggleButton;
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string v0, "left"

    iput-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->position:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings_ex/TimedSilentSettings;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :sswitch_2
    const-string v0, "right"

    iput-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->position:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/settings_ex/TimedSilentSettings;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/android/settings_ex/TimedSilentSettings;->OnVibrateGroupClick()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/android/settings_ex/TimedSilentSettings;->save()V

    invoke-virtual {p0}, Lcom/android/settings_ex/TimedSilentSettings;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b00b1 -> :sswitch_4
        0x7f0b0284 -> :sswitch_1
        0x7f0b0286 -> :sswitch_2
        0x7f0b0289 -> :sswitch_0
        0x7f0b028a -> :sswitch_0
        0x7f0b028b -> :sswitch_0
        0x7f0b028c -> :sswitch_0
        0x7f0b028d -> :sswitch_0
        0x7f0b028e -> :sswitch_0
        0x7f0b028f -> :sswitch_0
        0x7f0b0290 -> :sswitch_0
        0x7f0b0291 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f060044

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/TimedSilentSettings;->setContentView(I)V

    const v1, 0x7f0b0283

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/TimedSilentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->schedule:Landroid/widget/TextView;

    .line 79
    const v1, 0x7f0b0288

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/TimedSilentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->repeat:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f0b0285

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/TimedSilentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->schedultTo:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0b0282

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/TimedSilentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->desc0:Landroid/widget/TextView;

    .line 84
    const v1, 0x7f0b0291

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/TimedSilentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->vibrateGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->vibrateGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0294

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/TimedSilentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->vibrateCheckBox:Landroid/widget/CheckedTextView;

    .line 88
    const v1, 0x7f0b0289

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/TimedSilentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    iput-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->toggleGroup:Lcom/lge/sui/widget/control/SUIToggleButtonGroup;

    invoke-direct {p0}, Lcom/android/settings_ex/TimedSilentSettings;->SetToggleButtonListener()V

    const v1, 0x7f0b0284

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/TimedSilentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->timeStartBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->timeStartBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0286

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/TimedSilentSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->timeEndBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->timeEndBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {p0}, Lcom/android/settings_ex/TimedSilentSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/settings_ex/QuietTimeInfo;->getToggleDayToArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->day:[I

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/settings_ex/QuietTimeInfo;->isQuietTimeState()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->isSilentModeChecked:Z

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/settings_ex/QuietTimeInfo;->isVibrateMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->isVibrateChecked:Z

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->vibrateCheckBox:Landroid/widget/CheckedTextView;

    iget-boolean v2, p0, Lcom/android/settings_ex/TimedSilentSettings;->isVibrateChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    const-string v1, "TimedSilentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vibrate check DB : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v3}, Lcom/android/settings_ex/QuietTimeInfo;->isVibrateMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mTimedSilentSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings_ex/TimedSilentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .local v0, padding:I
    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mTimedSilentSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mTimedSilentSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/android/settings_ex/TimedSilentSettings;->isSilentModeChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {p0}, Lcom/android/settings_ex/TimedSilentSettings;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ex/TimedSilentSettings;->isSilentModeChecked:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/QuietTimeInfo;->TimedSilentReceiverEnable(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mTimedSilentSwitch:Landroid/widget/Switch;

    new-instance v2, Lcom/android/settings_ex/TimedSilentSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/TimedSilentSettings$1;-><init>(Lcom/android/settings_ex/TimedSilentSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 125
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 173
    .local v0, itemId:I
    if-ne v0, v1, :cond_0

    .line 176
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/android/settings_ex/TimedSilentSettings;->save()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBFirstStartFlag()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;->getDummyTime(Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;->setDBStartTime(J)V

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/QuietTimeInfo;->getDummyTime(Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;->setDBEndTime(J)V

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->timeStartBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    iget-object v2, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->timeEndBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    iget-object v2, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings_ex/TimedSilentSettings;->initDialogTime()V

    invoke-direct {p0}, Lcom/android/settings_ex/TimedSilentSettings;->showToggleDayChecked()V

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->isQuietTimeState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->isSilentModeChecked:Z

    iget-boolean v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->isSilentModeChecked:Z

    invoke-direct {p0, v0}, Lcom/android/settings_ex/TimedSilentSettings;->setlayoutVisible(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/QuietTimeInfo;->setTime(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/QuietTimeInfo;->setTime(Z)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/16 v1, 0x10

    const/4 v4, -0x2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcom/android/settings_ex/TimedSilentSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {p0}, Lcom/android/settings_ex/TimedSilentSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mTimedSilentSwitch:Landroid/widget/Switch;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 159
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings_ex/TimedSilentSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {p0}, Lcom/android/settings_ex/TimedSilentSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 167
    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 5
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    const/16 v4, 0xd

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, calendar:Ljava/util/Calendar;
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->position:Ljava/lang/String;

    const-string v2, "left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v1, p2}, Lcom/android/settings_ex/QuietTimeInfo;->setDBStartTimeHour(I)V

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v1, p3}, Lcom/android/settings_ex/QuietTimeInfo;->setDBStartTimeMinute(I)V

    const-string v1, "TimedSilentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start hour : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v3}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTimeHour()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v1, "TimedSilentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start minite : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v3}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTimeMinute()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/QuietTimeInfo;->setDBStartTime(J)V

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->timeStartBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    iget-object v3, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v3}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->position:Ljava/lang/String;

    const-string v2, "right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x3b

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v1, p2}, Lcom/android/settings_ex/QuietTimeInfo;->setDBEndTimeHour(I)V

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v1, p3}, Lcom/android/settings_ex/QuietTimeInfo;->setDBEndTimeMinute(I)V

    const-string v1, "TimedSilentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End hour : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v3}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTimeHour()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v1, "TimedSilentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End minite : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v3}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTimeMinute()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/QuietTimeInfo;->setDBEndTime(J)V

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentSettings;->timeEndBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    iget-object v3, p0, Lcom/android/settings_ex/TimedSilentSettings;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v3}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/QuietTimeInfo;->getTimeString(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
