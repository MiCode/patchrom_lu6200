.class public Lcom/android/settings_ex/QuietTimeInfo;
.super Ljava/lang/Object;
.source "QuietTimeInfo.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "_context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBQuietTimeState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/QuietTimeInfo;->setDBQuietTimeState(I)V

    return-void
.end method

.method private getAfterDay(J)J
    .locals 7
    .parameter "time"

    .prologue
    const/16 v6, 0xd

    const/16 v5, 0xc

    .line 304
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 305
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 306
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 307
    .local v1, hourOfDay:I
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 308
    .local v2, minute:I
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 309
    .local v3, seconds:I
    const/16 v4, 0xa

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 310
    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 311
    invoke-virtual {v0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 312
    const/4 v4, 0x6

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 313
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    return-wide v4
.end method

.method private getCalendarTimeMillis(J)J
    .locals 9
    .parameter "time"

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xc

    .line 274
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 275
    .local v1, dummy:Ljava/util/Calendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 277
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 278
    .local v2, hourOfDay:I
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 279
    .local v3, minute:I
    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 281
    .local v4, seconds:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 282
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 283
    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 284
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 285
    invoke-virtual {v0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 286
    invoke-virtual {v0, v8, v4}, Ljava/util/Calendar;->set(II)V

    .line 287
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    return-wide v5
.end method

.method private getDBQuietTimeState()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "timed_silent_mode"

    invoke-static {v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 139
    :goto_0
    return v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setDBQuietTimeState(I)V

    goto :goto_0
.end method

.method private isSilentDay()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getToggleDayToArray()[I

    move-result-object v1

    .local v1, checkDay:[I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, calendar:Ljava/util/Calendar;
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 551
    .local v2, dayOfWeek:I
    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    .line 552
    const/4 v2, 0x6

    .line 556
    :goto_0
    aget v4, v1, v2

    if-ne v4, v3, :cond_2

    .line 562
    :cond_0
    :goto_1
    return v3

    .line 554
    :cond_1
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 559
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->isNorepeatCase()Z

    move-result v4

    if-eq v4, v3, :cond_0

    .line 562
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private vibrateOn()V
    .locals 3

    .prologue
    .line 635
    new-instance v0, Landroid/os/Vibrator;

    invoke-direct {v0}, Landroid/os/Vibrator;-><init>()V

    .line 636
    .local v0, mVibrator:Landroid/os/Vibrator;
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getSoundProfile()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 637
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 638
    :cond_0
    return-void
.end method


# virtual methods
.method public SetSilentModeState(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    const/4 v1, 0x1

    .line 626
    if-ne v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBFirstStartFlag()I

    move-result v0

    if-ne v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->isSilentState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->silentModeOn()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->silentModeOff()V

    goto :goto_0
.end method

.method public TimedSilentReceiverEnable(Landroid/content/Context;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 682
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 683
    if-ne v3, p2, :cond_0

    .line 684
    const-string v1, "QuietTimeInfo"

    const-string v2, "TimedSilentReceiver enabled!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings_ex/TimedSilentReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 696
    :goto_0
    return-void

    .line 690
    :cond_0
    const-string v1, "QuietTimeInfo"

    const-string v2, "TimedSilentReceiver disabled!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings_ex/TimedSilentReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0
.end method

.method public getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method public getCurrentTimeMillis()J
    .locals 3

    .prologue
    .line 268
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 269
    .local v0, c:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 270
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public getDBAfterAudioMode()I
    .locals 3

    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "after_audio_mode"

    invoke-static {v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 219
    :goto_0
    return v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getSoundProfile()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setDBAfterAudioMode(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getSoundProfile()I

    move-result v1

    goto :goto_0
.end method

.method public getDBBeforeAudioMode()I
    .locals 3

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "prev_audio_mode"

    invoke-static {v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 211
    :goto_0
    return v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getSoundProfile()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setDBBeforeAudioMode(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getSoundProfile()I

    move-result v1

    goto :goto_0
.end method

.method public getDBDays()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quiet_time_check_days"

    invoke-static {v1, v2}, Lcom/lge/provider/SettingsEx$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, days:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 194
    const-string v0, "1111111"

    .line 196
    .end local v0           #days:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getDBDuringQuietTime()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 200
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "during_timed_silent"

    invoke-static {v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 203
    :goto_0
    return v1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setDBDuringQuietTime(I)V

    goto :goto_0
.end method

.method public getDBEndTime()J
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quiet_time_end_start_time"

    invoke-static {v1, v2}, Lcom/lge/provider/SettingsEx$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;->getCalendarTimeMillis(J)J
    :try_end_0
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 188
    :goto_0
    return-wide v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/QuietTimeInfo;->getDummyTime(Z)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;->setDBStartTime(J)V

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/QuietTimeInfo;->getDummyTime(Z)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getDBEndTimeHour()I
    .locals 4

    .prologue
    const/4 v1, 0x6

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_time_end_hour"

    invoke-static {v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 172
    :goto_0
    return v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setDBStartTimeHour(I)V

    goto :goto_0
.end method

.method public getDBEndTimeMinute()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_time_end_minute"

    invoke-static {v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 180
    :goto_0
    return v1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setDBStartTimeHour(I)V

    goto :goto_0
.end method

.method public getDBFirstStartFlag()I
    .locals 3

    .prologue
    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quiet_time_first_start_flag"

    invoke-static {v1, v2}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setDBFirstStartFlag(I)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDBModeChangeCount()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_time_change_count"

    invoke-static {v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 236
    :goto_0
    return v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setDBModeChangeCount(I)V

    goto :goto_0
.end method

.method public getDBSaveTime()Ljava/lang/Long;
    .locals 3

    .prologue
    .line 260
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quiet_time_save_time"

    invoke-static {v1, v2}, Lcom/lge/provider/SettingsEx$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;->getCalendarTimeMillis(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 263
    :goto_0
    return-object v1

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;->setDBSaveTime(J)V

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public getDBStartTime()J
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quiet_time_start_time"

    invoke-static {v1, v2}, Lcom/lge/provider/SettingsEx$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;->getCalendarTimeMillis(J)J
    :try_end_0
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 148
    :goto_0
    return-wide v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/QuietTimeInfo;->getDummyTime(Z)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/QuietTimeInfo;->setDBStartTime(J)V

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/QuietTimeInfo;->getDummyTime(Z)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getDBStartTimeHour()I
    .locals 4

    .prologue
    const/16 v1, 0x16

    .line 153
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_time_start_hour"

    invoke-static {v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 156
    :goto_0
    return v1

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setDBStartTimeHour(I)V

    goto :goto_0
.end method

.method public getDBStartTimeMinute()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 161
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_time_start_minute"

    invoke-static {v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 164
    :goto_0
    return v1

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setDBStartTimeHour(I)V

    goto :goto_0
.end method

.method public getDBVibrateMode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 224
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "quiet_time_check_vibrate"

    invoke-static {v2, v3}, Lcom/lge/provider/SettingsEx$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/lge/provider/SettingsEx$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 227
    :goto_0
    return v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Lcom/lge/provider/SettingsEx$SettingNotFoundException;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setDBVibrateMode(Z)V

    goto :goto_0
.end method

.method public getDummyTime(Z)J
    .locals 11
    .parameter "isAmPm"

    .prologue
    const/16 v10, 0xd

    const/16 v9, 0xc

    const/16 v8, 0xa

    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 321
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 322
    .local v0, c:Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 323
    .local v1, date:Ljava/util/Date;
    if-nez p1, :cond_0

    .line 324
    const/16 v5, 0x16

    invoke-virtual {v1, v5}, Ljava/util/Date;->setHours(I)V

    .line 325
    invoke-virtual {v1, v6}, Ljava/util/Date;->setMinutes(I)V

    .line 326
    invoke-virtual {v1, v6}, Ljava/util/Date;->setSeconds(I)V

    .line 334
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 335
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 336
    .local v2, hourOfDay:I
    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 337
    .local v3, minute:I
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 338
    .local v4, seconds:I
    invoke-virtual {v0, v8, v2}, Ljava/util/Calendar;->set(II)V

    .line 339
    invoke-virtual {v0, v9, v3}, Ljava/util/Calendar;->set(II)V

    .line 340
    invoke-virtual {v0, v10, v4}, Ljava/util/Calendar;->set(II)V

    .line 341
    const/4 v5, 0x1

    invoke-virtual {v0, v7, v5}, Ljava/util/Calendar;->add(II)V

    .line 342
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    return-wide v5

    .line 329
    .end local v2           #hourOfDay:I
    .end local v3           #minute:I
    .end local v4           #seconds:I
    :cond_0
    invoke-virtual {v1, v7}, Ljava/util/Date;->setHours(I)V

    .line 330
    invoke-virtual {v1, v6}, Ljava/util/Date;->setMinutes(I)V

    .line 331
    const/16 v5, 0x3b

    invoke-virtual {v1, v5}, Ljava/util/Date;->setSeconds(I)V

    goto :goto_0
.end method

.method public getSoundProfile()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    return v0
.end method

.method public getTimeString(Ljava/lang/Long;)Ljava/lang/String;
    .locals 1
    .parameter "time"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleDayToArray()[I
    .locals 4

    .prologue
    .line 566
    const/4 v2, 0x7

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 567
    .local v1, tmp:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBDays()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 567
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 571
    :cond_0
    return-object v1

    .line 566
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

.method public isNorepeatCase()Z
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBDays()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isNorepeatEndTimeCase()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .local v6, timedelay:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v0

    .local v0, current:J
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    .local v2, end:J
    sub-long v4, v0, v2

    .local v4, result:J
    const-string v7, "QuietTimeInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[NR_isNorepeatEndTimeCase] EndTime- Cur : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-wide/16 v7, 0x3e8

    cmp-long v7, v4, v7

    if-gez v7, :cond_0

    const-wide/16 v7, -0x3e8

    cmp-long v7, v4, v7

    if-lez v7, :cond_0

    .line 522
    const/4 v6, 0x1

    .line 524
    :cond_0
    return v6
.end method

.method public isNorepeatStartTimeCase()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    .local v6, timedelay:Z
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v0

    .local v0, current:J
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v4

    .local v4, start:J
    sub-long v2, v0, v4

    .local v2, result:J
    const-string v7, "QuietTimeInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[NR_isNorepeatStartTimeCase] Cur - StartTime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-wide/16 v7, 0x3e8

    cmp-long v7, v2, v7

    if-lez v7, :cond_0

    .line 537
    const/4 v6, 0x0

    .line 539
    :cond_0
    return v6
.end method

.method public isQuietTimeState()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBQuietTimeState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRevertTimecase()Z
    .locals 4

    .prologue
    .line 641
    const-string v0, "QuietTimeInfo"

    const-string v1, "[isRevertTimecase] : no repeat case QuietTime DB OFF set"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-string v0, "QuietTimeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isRevertTimecase] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[starttime]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v0, "QuietTimeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isRevertTimecase] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [endtime]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v0, "QuietTimeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isRevertTimecase] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [currenttime]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 647
    const-string v0, "QuietTimeInfo"

    const-string v1, "[isRevertTimecase] : start>end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v0, 0x1

    .line 651
    :goto_0
    return v0

    .line 650
    :cond_0
    const-string v0, "QuietTimeInfo"

    const-string v1, "[isRevertTimecase] : start<end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaveTimeCurrentTime_Interval()Z
    .locals 8

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBSaveTime()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 501
    .local v0, time:J
    const-string v2, "QuietTimeInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSaveTimeCurrentTime_Interval] : Interval - Currenttime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-string v2, "QuietTimeInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSaveTimeCurrentTime_Interval] : Interval - Savetime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string v2, "QuietTimeInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSaveTimeCurrentTime_Interval] : Interval - Intaval : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBSaveTime()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-wide/16 v2, 0x5dc

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 506
    const-string v2, "QuietTimeInfo"

    const-string v3, "[isSaveTimeCurrentTime_Intervall] time<1500"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v2, 0x1

    .line 509
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSilentState()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->isSilentTime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/QuietTimeInfo;->isSilentDay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSilentTime()Z
    .locals 11

    .prologue
    const/4 v4, 0x0

    .local v4, isSetTime:Z
    const-wide/16 v5, 0x0

    .local v5, start:J
    const-wide/16 v2, 0x0

    .local v2, end:J
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    add-long v0, v7, v9

    .line 466
    .local v0, current:J
    const-string v7, "QuietTimeInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[isSilentTime] starttime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v7, "QuietTimeInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[isSilentTime] endtime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v7, "QuietTimeInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[isSilentTime] currenttime : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    cmp-long v7, v5, v2

    if-gtz v7, :cond_1

    .line 471
    cmp-long v7, v5, v0

    if-gtz v7, :cond_0

    cmp-long v7, v0, v2

    if-gez v7, :cond_0

    .line 472
    const-string v7, "QuietTimeInfo"

    const-string v8, "[isSilentTime][1] true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v4, 0x1

    .line 487
    :goto_0
    return v4

    .line 475
    :cond_0
    const-string v7, "QuietTimeInfo"

    const-string v8, "[isSilentTime][3] false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v4, 0x0

    goto :goto_0

    .line 479
    :cond_1
    cmp-long v7, v2, v0

    if-gez v7, :cond_2

    cmp-long v7, v0, v5

    if-gtz v7, :cond_2

    .line 480
    const-string v7, "QuietTimeInfo"

    const-string v8, "[isSilentTime][3] false"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v4, 0x0

    goto :goto_0

    .line 483
    :cond_2
    const-string v7, "QuietTimeInfo"

    const-string v8, "[isSilentTime][4] true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public isVibrateMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBVibrateMode()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerAlarm()V
    .locals 25

    .prologue
    .line 402
    const-string v2, "registerAlarm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v2, "registerAlarm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v2, "registerAlarm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v24, Landroid/content/Intent;

    const-string v2, "settings.Quiet_Time.ALARM"

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v24, startIntent:Landroid/content/Intent;
    const-string v2, "start"

    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    new-instance v23, Landroid/content/Intent;

    const-string v2, "settings.Quiet_Time.ALARM"

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 409
    .local v23, endIntent:Landroid/content/Intent;
    const-string v2, "start"

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 411
    .local v7, startSender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 414
    .local v14, endSender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 415
    .local v1, alarmStart:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    .line 417
    .local v8, alarmEnd:Landroid/app/AlarmManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->isQuietTimeState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 418
    invoke-virtual {v1, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 419
    invoke-virtual {v1, v14}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 420
    invoke-virtual {v8, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 421
    invoke-virtual {v8, v14}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 455
    :goto_0
    return-void

    .line 423
    :cond_0
    const v22, 0x5265c00

    .line 425
    .local v22, ONE_DAY:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 426
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 427
    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    invoke-virtual/range {v8 .. v14}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 429
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 430
    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v17

    const-wide/32 v19, 0x5265c00

    move-object v15, v8

    move-object/from16 v21, v7

    invoke-virtual/range {v15 .. v21}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 431
    invoke-virtual {v8, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 438
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 439
    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings_ex/QuietTimeInfo;->getAfterDay(J)J

    move-result-wide v17

    const-wide/32 v19, 0x5265c00

    move-object v15, v1

    move-object/from16 v21, v14

    invoke-virtual/range {v15 .. v21}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 452
    :goto_1
    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v17

    const-wide/32 v19, 0x5265c00

    move-object v15, v8

    move-object/from16 v21, v7

    invoke-virtual/range {v15 .. v21}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 446
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 447
    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings_ex/QuietTimeInfo;->getAfterDay(J)J

    move-result-wide v17

    const-wide/32 v19, 0x5265c00

    move-object v15, v1

    move-object/from16 v21, v14

    invoke-virtual/range {v15 .. v21}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 450
    :cond_4
    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v17

    const-wide/32 v19, 0x5265c00

    move-object v15, v1

    move-object/from16 v21, v14

    invoke-virtual/range {v15 .. v21}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public restorationAudioCheck()V
    .locals 7

    .prologue
    .line 655
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 656
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 658
    .local v1, currentTime:J
    const-string v3, "QuietTimeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restorationAudioCheck start_time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v3, "QuietTimeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restorationAudioCheck end_time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const-string v3, "QuietTimeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restorationAudioCheck currentTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-lez v3, :cond_1

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBAfterAudioMode()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getSoundProfile()I

    move-result v4

    if-ne v3, v4, :cond_1

    const-string v3, "QuietTimeInfo"

    const-string v4, "restorationAudio"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/QuietTimeInfo;->setSoundProfile(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gtz v3, :cond_1

    .line 672
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBAfterAudioMode()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getSoundProfile()I

    move-result v4

    if-ne v3, v4, :cond_1

    const-string v3, "QuietTimeInfo"

    const-string v4, "restorationAudio"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/QuietTimeInfo;->setSoundProfile(I)V

    goto :goto_0
.end method

.method public setDBAfterAudioMode(I)V
    .locals 2
    .parameter "afterAudioMode"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "after_audio_mode"

    invoke-static {v0, v1, p1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    return-void
.end method

.method public setDBBeforeAudioMode(I)V
    .locals 2
    .parameter "beforeAudioMode"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prev_audio_mode"

    invoke-static {v0, v1, p1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 113
    return-void
.end method

.method public setDBDays(Ljava/lang/String;)V
    .locals 2
    .parameter "days"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_check_days"

    invoke-static {v0, v1, p1}, Lcom/lge/provider/SettingsEx$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    return-void
.end method

.method public setDBDuringQuietTime(I)V
    .locals 2
    .parameter "duringQuietTime"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "during_timed_silent"

    invoke-static {v0, v1, p1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    return-void
.end method

.method public setDBEndTime(J)V
    .locals 2
    .parameter "endTime"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_end_start_time"

    invoke-static {v0, v1, p1, p2}, Lcom/lge/provider/SettingsEx$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 98
    return-void
.end method

.method public setDBEndTimeHour(I)V
    .locals 2
    .parameter "hour"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_end_hour"

    invoke-static {v0, v1, p1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    return-void
.end method

.method public setDBEndTimeMinute(I)V
    .locals 2
    .parameter "minute"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_end_minute"

    invoke-static {v0, v1, p1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    return-void
.end method

.method public setDBFirstStartFlag(I)V
    .locals 2
    .parameter "flag"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_first_start_flag"

    invoke-static {v0, v1, p1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    return-void
.end method

.method public setDBModeChangeCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_change_count"

    invoke-static {v0, v1, p1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    return-void
.end method

.method public setDBQuietTimeState(I)V
    .locals 2
    .parameter "state"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "timed_silent_mode"

    invoke-static {v0, v1, p1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 86
    return-void
.end method

.method public setDBSaveTime(J)V
    .locals 2
    .parameter "time"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_save_time"

    invoke-static {v0, v1, p1, p2}, Lcom/lge/provider/SettingsEx$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 131
    return-void
.end method

.method public setDBStartTime(J)V
    .locals 2
    .parameter "startTime"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_start_time"

    invoke-static {v0, v1, p1, p2}, Lcom/lge/provider/SettingsEx$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 89
    return-void
.end method

.method public setDBStartTimeHour(I)V
    .locals 2
    .parameter "hour"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_start_hour"

    invoke-static {v0, v1, p1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    return-void
.end method

.method public setDBStartTimeMinute(I)V
    .locals 2
    .parameter "minute"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quiet_time_start_minute"

    invoke-static {v0, v1, p1}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 95
    return-void
.end method

.method public setDBVibrateMode(Z)V
    .locals 3
    .parameter "isVibrateMode"

    .prologue
    iget-object v0, p0, Lcom/android/settings_ex/QuietTimeInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quiet_time_check_vibrate"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/lge/provider/SettingsEx$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSoundProfile(I)V
    .locals 1
    .parameter "ringerMode"

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void
.end method

.method public setTime(Z)V
    .locals 4
    .parameter "start_end"

    .prologue
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .local v0, c:Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .local v1, date:Ljava/util/Date;
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTimeHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->setHours(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTimeMinute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->setMinutes(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Date;->setSeconds(I)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v2, 0xb

    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 389
    const/16 v2, 0xc

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 390
    const/16 v2, 0xd

    invoke-virtual {v1}, Ljava/util/Date;->getSeconds()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/QuietTimeInfo;->setDBStartTime(J)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTimeHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->setHours(I)V

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTimeMinute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->setMinutes(I)V

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/util/Date;->setSeconds(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/QuietTimeInfo;->setDBEndTime(J)V

    goto :goto_1
.end method

.method public silentModeOff()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 608
    const-string v2, "QuietTimeInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SilentModeOff] getDBModeChangeCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBModeChangeCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string v2, "QuietTimeInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SilentModeOff] beforeRinger : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", afterRinger : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBAfterAudioMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const-string v2, "QuietTimeInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SilentModeOff] endTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentTimeMillis : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBDuringQuietTime()I

    move-result v2

    if-ne v2, v0, :cond_2

    .local v0, isDuring:Z
    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getCurrentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 615
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/QuietTimeInfo;->setSoundProfile(I)V

    invoke-direct {p0}, Lcom/android/settings_ex/QuietTimeInfo;->vibrateOn()V

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/QuietTimeInfo;->setDBAfterAudioMode(I)V

    const-string v2, "QuietTimeInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SilentModeOff] PREV_AUDIO_MODE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setDBDuringQuietTime(I)V

    const-string v1, "QuietTimeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SilentModeOff] PREV_AUDIO_IN_TIMED_SILENT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getSoundProfile()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void

    .end local v0           #isDuring:Z
    :cond_2
    move v0, v1

    .line 612
    goto :goto_0
.end method

.method public silentModeOn()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 587
    const-string v1, "QuietTimeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SilentModeOn] getDBModeChangeCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBModeChangeCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const-string v4, "QuietTimeInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SilentModeOn] during : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBDuringQuietTime()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", ringerModeChanged : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getSoundProfile()I

    move-result v6

    if-eq v1, v6, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const-string v1, "QuietTimeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SilentModeOn]  current Soundprofile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getSoundProfile()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " beforeAudioMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBAfterAudioMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const-string v1, "QuietTimeInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SilentModeOn] isVibrate : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->isVibrateMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->isVibrateMode()Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    .line 595
    .local v0, silentOrVibrate:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBDuringQuietTime()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getSoundProfile()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setDBBeforeAudioMode(I)V

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/QuietTimeInfo;->setDBDuringQuietTime(I)V

    const-string v1, "QuietTimeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SilentModeOn] PREV_AUDIO_MODE saved : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/QuietTimeInfo;->setSoundProfile(I)V

    invoke-direct {p0}, Lcom/android/settings_ex/QuietTimeInfo;->vibrateOn()V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/QuietTimeInfo;->setDBAfterAudioMode(I)V

    const-string v1, "QuietTimeInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SilentModeOn] AFTER_AUDIO_MODE saved : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return-void

    .end local v0           #silentOrVibrate:I
    :cond_1
    move v1, v3

    .line 588
    goto/16 :goto_0

    :cond_2
    move v0, v3

    .line 593
    goto :goto_2

    .line 592
    :catch_0
    move-exception v1

    goto :goto_1
.end method
