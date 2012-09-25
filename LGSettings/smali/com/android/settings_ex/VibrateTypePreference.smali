.class public Lcom/android/settings_ex/VibrateTypePreference;
.super Landroid/preference/PreferenceActivity;
.source "VibrateTypePreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private currentPreference:Lcom/android/settings_ex/VibrateTypeListPreference;

.field private mAlarm_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

.field private mCalendarPreference:Lcom/android/settings_ex/VibrateTypeListPreference;

.field private mEmail_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

.field private mIncomming_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

.field private mMessage_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

.field vibrate_type_entry:[Ljava/lang/CharSequence;

.field vibrate_type_value:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->currentPreference:Lcom/android/settings_ex/VibrateTypeListPreference;

    return-void
.end method

.method private getAlarm_VibrateType()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "distinctive_vibration_alarm"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 206
    .local v0, type:I
    invoke-direct {p0, v0}, Lcom/android/settings_ex/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 211
    .end local v0           #type:I
    :goto_0
    return v0

    .line 209
    .restart local v0       #type:I
    :cond_0
    const-string v2, "VibrateTypePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get call vibrate value is bad["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-direct {p0, v1}, Lcom/android/settings_ex/VibrateTypePreference;->setAlarm_VibrateType(I)V

    move v0, v1

    .line 211
    goto :goto_0
.end method

.method private getCalendar_VibrateType()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 218
    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "distinctive_vibration_calendar"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 219
    .local v0, type:I
    invoke-direct {p0, v0}, Lcom/android/settings_ex/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 224
    .end local v0           #type:I
    :goto_0
    return v0

    .line 222
    .restart local v0       #type:I
    :cond_0
    const-string v2, "VibrateTypePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get call vibrate value is bad["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0, v1}, Lcom/android/settings_ex/VibrateTypePreference;->setCalendar_VibrateType(I)V

    move v0, v1

    .line 224
    goto :goto_0
.end method

.method private getCall_VibrateType()I
    .locals 5

    .prologue
    const/4 v1, 0x2

    .line 166
    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "distinctive_vibration_incoming_calls"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 167
    .local v0, type:I
    const/4 v2, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 172
    .end local v0           #type:I
    :goto_0
    return v0

    .line 170
    .restart local v0       #type:I
    :cond_0
    const-string v2, "VibrateTypePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get call vibrate value is bad["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-direct {p0, v1}, Lcom/android/settings_ex/VibrateTypePreference;->setCall_VibrateType(I)V

    move v0, v1

    .line 172
    goto :goto_0
.end method

.method private getEmail_VibrateType()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "distinctive_vibration_email"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 193
    .local v0, type:I
    invoke-direct {p0, v0}, Lcom/android/settings_ex/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 198
    .end local v0           #type:I
    :goto_0
    return v0

    .line 196
    .restart local v0       #type:I
    :cond_0
    const-string v2, "VibrateTypePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get call vibrate value is bad["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0, v1}, Lcom/android/settings_ex/VibrateTypePreference;->setEmail_VibrateType(I)V

    move v0, v1

    .line 198
    goto :goto_0
.end method

.method private getMessage_VibrateType()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "distinctive_vibration_messaging"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 180
    .local v0, type:I
    invoke-direct {p0, v0}, Lcom/android/settings_ex/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 185
    .end local v0           #type:I
    :goto_0
    return v0

    .line 183
    .restart local v0       #type:I
    :cond_0
    const-string v2, "VibrateTypePreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get call vibrate value is bad["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-direct {p0, v1}, Lcom/android/settings_ex/VibrateTypePreference;->setMessage_VibrateType(I)V

    move v0, v1

    .line 185
    goto :goto_0
.end method

.method private setAlarm_VibrateType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 272
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings_ex/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "distinctive_vibration_alarm"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    const-string v0, "VibrateTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alarm vibrtate type - bad Value["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCalendar_VibrateType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 284
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings_ex/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "distinctive_vibration_calendar"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    const-string v0, "VibrateTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calendar vibrtate type - bad Value["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setCall_VibrateType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 236
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings_ex/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "distinctive_vibration_incoming_calls"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 242
    :goto_0
    return-void

    .line 240
    :cond_0
    const-string v0, "VibrateTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Imcomming call vibrtate type - bad Value["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setEmail_VibrateType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 260
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings_ex/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "distinctive_vibration_email"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 266
    :goto_0
    return-void

    .line 264
    :cond_0
    const-string v0, "VibrateTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Email vibrtate type - bad Value["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setEntiesValues()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mIncomming_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/VibrateTypePreference;->vibrate_type_entry:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mMessage_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/VibrateTypePreference;->vibrate_type_entry:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mEmail_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/VibrateTypePreference;->vibrate_type_entry:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mAlarm_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/VibrateTypePreference;->vibrate_type_entry:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mCalendarPreference:Lcom/android/settings_ex/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/VibrateTypePreference;->vibrate_type_entry:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mIncomming_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/VibrateTypePreference;->vibrate_type_value:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mMessage_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/VibrateTypePreference;->vibrate_type_value:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mEmail_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/VibrateTypePreference;->vibrate_type_value:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mAlarm_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/VibrateTypePreference;->vibrate_type_value:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mCalendarPreference:Lcom/android/settings_ex/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/VibrateTypePreference;->vibrate_type_value:[Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mIncomming_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/VibrateTypeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mMessage_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/VibrateTypeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mEmail_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/VibrateTypeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mAlarm_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/VibrateTypeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mCalendarPreference:Lcom/android/settings_ex/VibrateTypeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/VibrateTypeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    return-void
.end method

.method private setMessage_VibrateType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 248
    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings_ex/VibrateTypePreference;->typeIntegrityCheck(I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "distinctive_vibration_messaging"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    const-string v0, "VibrateTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message vibrtate type - bad Value["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSummary()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mIncomming_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/VibrateTypePreference;->getCall_VibrateType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setValue(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mMessage_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/VibrateTypePreference;->getMessage_VibrateType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setValue(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mEmail_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/VibrateTypePreference;->getEmail_VibrateType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setValue(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mAlarm_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/VibrateTypePreference;->getAlarm_VibrateType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setValue(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mCalendarPreference:Lcom/android/settings_ex/VibrateTypeListPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/VibrateTypePreference;->getCalendar_VibrateType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setValue(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mIncomming_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/VibrateTypePreference;->mIncomming_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mMessage_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/VibrateTypePreference;->mMessage_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mEmail_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/VibrateTypePreference;->mEmail_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mAlarm_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/VibrateTypePreference;->mAlarm_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mCalendarPreference:Lcom/android/settings_ex/VibrateTypeListPreference;

    iget-object v1, p0, Lcom/android/settings_ex/VibrateTypePreference;->mCalendarPreference:Lcom/android/settings_ex/VibrateTypeListPreference;

    invoke-virtual {v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/VibrateTypeListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method private steArrayList()V
    .locals 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateTypePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->vibrate_type_entry:[Ljava/lang/CharSequence;

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateTypePreference;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->vibrate_type_value:[Ljava/lang/CharSequence;

    .line 86
    return-void
.end method

.method private typeIntegrityCheck(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 228
    if-lez p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    .line 229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateState()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/settings_ex/VibrateTypePreference;->setSummary()V

    .line 132
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings_ex/VibrateTypePreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0809fe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 54
    const v0, 0x7f060049

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/VibrateTypePreference;->addPreferencesFromResource(I)V

    .line 55
    const-string v0, "incomming_vibrate"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/VibrateTypePreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/VibrateTypeListPreference;

    iput-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mIncomming_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    .line 56
    const-string v0, "message_vibrate"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/VibrateTypePreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/VibrateTypeListPreference;

    iput-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mMessage_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    .line 57
    const-string v0, "email_vibrate"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/VibrateTypePreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/VibrateTypeListPreference;

    iput-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mEmail_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    .line 58
    const-string v0, "alarm_vibrate"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/VibrateTypePreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/VibrateTypeListPreference;

    iput-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mAlarm_vibrateType:Lcom/android/settings_ex/VibrateTypeListPreference;

    .line 59
    const-string v0, "calendar_vibrate"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/VibrateTypePreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/VibrateTypeListPreference;

    iput-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->mCalendarPreference:Lcom/android/settings_ex/VibrateTypeListPreference;

    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/VibrateTypePreference;->setListener()V

    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/VibrateTypePreference;->steArrayList()V

    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/VibrateTypePreference;->setEntiesValues()V

    .line 64
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 77
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->currentPreference:Lcom/android/settings_ex/VibrateTypeListPreference;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->currentPreference:Lcom/android/settings_ex/VibrateTypeListPreference;

    invoke-virtual {v0}, Lcom/android/settings_ex/VibrateTypeListPreference;->vibrateStop()V

    .line 79
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, key:Ljava/lang/String;
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 147
    .local v1, value:I
    const-string v2, "incomming_vibrate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    invoke-direct {p0, v1}, Lcom/android/settings_ex/VibrateTypePreference;->setCall_VibrateType(I)V

    .line 158
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/VibrateTypePreference;->updateState()V

    .line 159
    const/4 v2, 0x0

    return v2

    .line 149
    :cond_1
    const-string v2, "message_vibrate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    invoke-direct {p0, v1}, Lcom/android/settings_ex/VibrateTypePreference;->setMessage_VibrateType(I)V

    goto :goto_0

    .line 151
    :cond_2
    const-string v2, "email_vibrate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    invoke-direct {p0, v1}, Lcom/android/settings_ex/VibrateTypePreference;->setEmail_VibrateType(I)V

    goto :goto_0

    .line 153
    :cond_3
    const-string v2, "alarm_vibrate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 154
    invoke-direct {p0, v1}, Lcom/android/settings_ex/VibrateTypePreference;->setAlarm_VibrateType(I)V

    goto :goto_0

    .line 155
    :cond_4
    const-string v2, "calendar_vibrate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-direct {p0, v1}, Lcom/android/settings_ex/VibrateTypePreference;->setCalendar_VibrateType(I)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 138
    move-object v0, p2

    check-cast v0, Lcom/android/settings_ex/VibrateTypeListPreference;

    iput-object v0, p0, Lcom/android/settings_ex/VibrateTypePreference;->currentPreference:Lcom/android/settings_ex/VibrateTypeListPreference;

    .line 139
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/VibrateTypePreference;->updateState()V

    .line 71
    return-void
.end method
