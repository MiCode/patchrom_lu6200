.class public Lcom/android/settings_ex/TimedSilentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimedSilentReceiver.java"


# instance fields
.field private action:Ljava/lang/String;

.field private isQuietTimeState:Z

.field private mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method alarmReceived(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/settings_ex/TimedSilentReceiver;->isQuietTimeState:Z

    if-ne v2, v3, :cond_0

    :try_start_0
    const-string v2, "start"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 78
    .local v1, flag:Z
    const-string v2, "TimedSilentReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[1] flag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v2, "TimedSilentReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[2] SilentState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v4}, Lcom/android/settings_ex/QuietTimeInfo;->isSilentState()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v2, "TimedSilentReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[3] Nopeatcase : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v4}, Lcom/android/settings_ex/QuietTimeInfo;->isNorepeatCase()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v2, "TimedSilentReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[4] RevertTimecase : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v4}, Lcom/android/settings_ex/QuietTimeInfo;->isRevertTimecase()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/TimedSilentReceiver;->soundProfileStateChange(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #flag:Z
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v2, "TimedSilentReceiver"

    const-string v3, "[5] alarmReceived exception!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v2, "TimedSilentReceiver"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v2, "TimedSilentReceiver"

    const-string v3, "silent mode off from the current time."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->silentModeOff()V

    goto :goto_0
.end method

.method audioModeChangeCheck()V
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/settings_ex/QuietTimeInfo;->isQuietTimeState()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->isSaveTimeCurrentTime_Interval()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->isNorepeatStartTimeCase()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->isNorepeatEndTimeCase()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    const-string v0, "TimedSilentReceiver"

    const-string v1, "[SoundProfileChanged] isSaveTimeCurrentTime_Intaval() -> false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    return-void
.end method

.method bootReceived()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->isQuietTimeState:Z

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBFirstStartFlag()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 69
    :cond_0
    const-string v0, "TimedSilentReceiver"

    const-string v1, "BOOT_COMPLETED & QuietTime status On"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->registerAlarm()V

    :cond_1
    return-void
.end method

.method checkActivity()Z
    .locals 2

    .prologue
    const-string v0, "com.android.settings_ex.SubSoundSettings"

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isTopActivity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.settings_ex.TimedSilentSettings"

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isTopActivity(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    const-string v0, "TimedSilentReceiver"

    const-string v1, "[checkActivity] SubSoundSetting or TimedSilentSettings in!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    new-instance v0, Lcom/android/settings_ex/QuietTimeInfo;

    invoke-direct {v0, p1}, Lcom/android/settings_ex/QuietTimeInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->isQuietTimeState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->isQuietTimeState:Z

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->action:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->action:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "TimedSilentReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TimedSilentReceiver;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->action:Ljava/lang/String;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/TimedSilentReceiver;->bootReceived()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "TimedSilentReceiver"

    const-string v1, "action null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->action:Ljava/lang/String;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ex/TimedSilentReceiver;->soundProfileChanged_evnet()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->action:Ljava/lang/String;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setTime(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/QuietTimeInfo;->setTime(Z)V

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->registerAlarm()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->action:Ljava/lang/String;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->registerAlarm()V

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/TimedSilentReceiver;->soundProfileStateChange(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->action:Ljava/lang/String;

    const-string v1, "settings.Quiet_Time.ALARM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/settings_ex/TimedSilentReceiver;->alarmReceived(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method setNorepeatCase_mode()V
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/settings_ex/QuietTimeInfo;->isNorepeatCase()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->isSaveTimeCurrentTime_Interval()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TimedSilentReceiver"

    const-string v1, "[SP_Changed] silent mode [off] from the current time."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setDBQuietTimeState(I)V

    :cond_0
    return-void
.end method

.method soundProfileChanged_evnet()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/settings_ex/TimedSilentReceiver;->audioModeChangeCheck()V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/settings_ex/TimedSilentReceiver;->checkActivity()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/TimedSilentReceiver;->setNorepeatCase_mode()V

    goto :goto_0
.end method

.method soundProfileStateChange(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    const/4 v2, 0x1

    .line 95
    const-string v0, "TimedSilentReceiver"

    const-string v1, "[Alarm] soundProfileStateChange init!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-ne v2, p1, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->isSilentState()Z

    move-result v0

    if-ne v2, v0, :cond_1

    const-string v0, "TimedSilentReceiver"

    const-string v1, "[Alarm] NR : silent mode [on] from the current time."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->silentModeOn()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->isSilentState()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "TimedSilentReceiver"

    const-string v1, "[Alarm] NR : silent mode [off] from the current time."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->silentModeOff()V

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->isNorepeatCase()Z

    move-result v0

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->isNorepeatEndTimeCase()Z

    move-result v0

    if-ne v2, v0, :cond_0

    const-string v0, "TimedSilentReceiver"

    const-string v1, "[Alarm] YN : silent mode [off] from the current time."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setDBQuietTimeState(I)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 107
    const-string v0, "TimedSilentReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startTimeHour : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->getDBStartTimeHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string v0, "TimedSilentReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EndTimeHour: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->getDBEndTimeHour()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->isSilentState()Z

    move-result v0

    if-nez v0, :cond_3

    .line 110
    const-string v0, "TimedSilentReceiver"

    const-string v1, "isSilentState is false!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v0, "TimedSilentReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Before Sound profile set : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v2}, Lcom/android/settings_ex/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    iget-object v1, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v1}, Lcom/android/settings_ex/QuietTimeInfo;->getDBBeforeAudioMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/QuietTimeInfo;->setSoundProfile(I)V

    goto/16 :goto_0

    .line 114
    :cond_3
    const-string v0, "TimedSilentReceiver"

    const-string v1, "isSilentState is true!, silentModeOn!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->silentModeOn()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->isSilentState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TimedSilentReceiver;->mQuietTimeInfo:Lcom/android/settings_ex/QuietTimeInfo;

    invoke-virtual {v0}, Lcom/android/settings_ex/QuietTimeInfo;->restorationAudioCheck()V

    goto/16 :goto_0
.end method
