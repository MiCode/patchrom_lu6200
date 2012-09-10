.class public abstract Lcom/lge/camera/setting/Setting;
.super Ljava/util/Observable;
.source "Setting.java"


# static fields
.field public static final APP_PREFERENCE_VERSION:I = 0x0

.field public static final HELP_BEAUTY_SHOT:Ljava/lang/String; = "beauty_shot"

.field public static final HELP_CONTINUOUS_SHOT:Ljava/lang/String; = "continuous"

.field public static final HELP_HDR:Ljava/lang/String; = "hdr"

.field public static final HELP_LIVE_EFFECT:Ljava/lang/String; = "live_effect"

.field public static final HELP_OTHER:Ljava/lang/String; = "none"

.field public static final HELP_PANORAMA:Ljava/lang/String; = "panorama"

.field public static final HELP_TIMEMACHINE:Ljava/lang/String; = "timemachine"

.field public static final HELP_VOICE_PHOTO:Ljava/lang/String; = "voice_photo"

.field public static final KEY_BEAUTYSHOT:Ljava/lang/String; = "key_beautyshot"

.field public static final KEY_BRIGHTNESS:Ljava/lang/String; = "key_brightness"

.field public static final KEY_CAMERA_ANTI_BANDING:Ljava/lang/String; = "key_camera_anti_banding"

.field public static final KEY_CAMERA_AUTO_REVIEW:Ljava/lang/String; = "key_camera_auto_review"

.field public static final KEY_CAMERA_COLOREFFECT:Ljava/lang/String; = "key_camera_coloreffect"

.field public static final KEY_CAMERA_ID:Ljava/lang/String; = "pref_camera_id_key"

.field public static final KEY_CAMERA_PICTURESIZE:Ljava/lang/String; = "key_camera_picturesize"

.field public static final KEY_CAMERA_SHOT_MODE:Ljava/lang/String; = "key_camera_shot_mode"

.field public static final KEY_CAMERA_TAG_LOCATION:Ljava/lang/String; = "key_camera_tag_location"

.field public static final KEY_CAMERA_TIMER:Ljava/lang/String; = "key_camera_timer"

.field public static final KEY_CAMERA_WHITEBALANCE:Ljava/lang/String; = "key_camera_whitebalance"

.field public static final KEY_FLASH:Ljava/lang/String; = "key_flash"

.field public static final KEY_FOCUS:Ljava/lang/String; = "key_focus"

.field public static final KEY_HDR:Ljava/lang/String; = "key_hdr"

.field public static final KEY_HELP_GUIDE:Ljava/lang/String; = "key_help_guide"

.field public static final KEY_ISO:Ljava/lang/String; = "key_iso"

.field public static final KEY_LIVE_EFFECT:Ljava/lang/String; = "key_live_effect"

.field public static final KEY_PREFERENCE_VERSION:Ljava/lang/String; = "key_preference_version"

.field public static final KEY_PREVIEW_SIZE_ON_DEVICE:Ljava/lang/String; = "key_preview_size_on_device"

.field public static final KEY_RECORD_LOCATION:Ljava/lang/String; = "pref_camera_recordlocation_key"

.field public static final KEY_RESTORE:Ljava/lang/String; = "key_restore"

.field public static final KEY_SAVE_DIRECTION:Ljava/lang/String; = "key_save_direction"

.field public static final KEY_SCENE_MODE:Ljava/lang/String; = "key_scene_mode"

.field public static final KEY_SETTING:Ljava/lang/String; = "key_setting"

.field public static final KEY_SHOT_MODE:Ljava/lang/String; = "key_shot_mode"

.field public static final KEY_SHUTTER_SOUND:Ljava/lang/String; = "key_camera_shutter_sound"

.field public static final KEY_STORAGE:Ljava/lang/String; = "key_storage"

.field public static final KEY_SWAP:Ljava/lang/String; = "key_swap"

.field public static final KEY_TIME_MACHINE:Ljava/lang/String; = "key_time_machine"

.field public static final KEY_VIDEO_AUDIO_RECORDING:Ljava/lang/String; = "key_video_audio_recording"

.field public static final KEY_VIDEO_AUTO_REVIEW:Ljava/lang/String; = "key_video_auto_review"

.field public static final KEY_VIDEO_DURATION:Ljava/lang/String; = "key_video_duration"

.field public static final KEY_VOICESHUTTER:Ljava/lang/String; = "key_voiceshutter"

.field public static final KEY_ZOOM:Ljava/lang/String; = "key_zoom"

.field public static final SETTING_PRIMARY:Ljava/lang/String; = "Main_CameraAppConfig"

.field public static final SETTING_SECONDARY:Ljava/lang/String; = "Secondary_CameraAppConfig"

.field protected static final TAG:Ljava/lang/String; = "CameraApp"

.field public static final VIDEO_QUALITY_MMS:Ljava/lang/String; = "mms"


# instance fields
.field protected mConfigName:Ljava/lang/String;

.field protected mMediator:Lcom/lge/camera/Mediator;

.field protected mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

.field protected values:[I


# direct methods
.method public constructor <init>(Lcom/lge/camera/Mediator;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "mediator"
    .parameter "context"
    .parameter "configName"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/lge/camera/setting/Setting;->mMediator:Lcom/lge/camera/Mediator;

    .line 89
    iput-object p3, p0, Lcom/lge/camera/setting/Setting;->mConfigName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static readPreferredCameraId(Landroid/content/SharedPreferences;)I
    .locals 2
    .parameter "pref"

    .prologue
    .line 231
    const-string v0, "pref_camera_id_key"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected static sizeListToStringList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 225
    .local v2, size:Landroid/hardware/Camera$Size;
    const-string v3, "%dx%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_0
    return-object v1
.end method

.method public static writePreferredCameraId(Landroid/content/SharedPreferences;I)V
    .locals 3
    .parameter "pref"
    .parameter "cameraId"

    .prologue
    .line 235
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 236
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 237
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 238
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/setting/Setting;->values:[I

    .line 94
    invoke-virtual {p0}, Lcom/lge/camera/setting/Setting;->deleteObservers()V

    .line 95
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v0}, Lcom/lge/camera/setting/PreferenceGroup;->size()I

    move-result v0

    return v0
.end method

.method public getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    return-object v0
.end method

.method public getSetting(I)I
    .locals 6
    .parameter "index"

    .prologue
    .line 172
    const/4 v2, 0x0

    .line 174
    .local v2, valueIndex:I
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v3, p1}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 175
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_0

    .line 176
    new-instance v3, Ljava/lang/NullPointerException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pref is null at method Setting::getSetting("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "pref is Null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    .end local v0           #e:Ljava/lang/Exception;
    :goto_0
    return v2

    .line 178
    .restart local v1       #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0
.end method

.method public getSettingIndex(Ljava/lang/String;)I
    .locals 5
    .parameter "key"

    .prologue
    .line 188
    const/4 v2, 0x0

    .line 190
    .local v2, valueIndex:I
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v3, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 191
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 197
    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :goto_0
    return v2

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    const-string v3, "CameraApp"

    const-string v4, "pref  null error"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;
    .locals 1
    .parameter "key"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    return-object v0
.end method

.method public getSettingValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 201
    iget-object v1, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v1, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 202
    .local v0, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 206
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "not found"

    goto :goto_0
.end method

.method public initializeSetting(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 105
    const-string v1, "CameraApp"

    const-string v2, "Restore setting to default."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/lge/camera/setting/Setting;->values:[I

    if-eqz v1, :cond_0

    .line 108
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/setting/Setting;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/lge/camera/setting/Setting;->values:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v0           #i:I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lge/camera/setting/Setting;->saveSetting(Landroid/content/Context;)V

    .line 115
    invoke-virtual {p0}, Lcom/lge/camera/setting/Setting;->setChanged()V

    .line 116
    invoke-virtual {p0}, Lcom/lge/camera/setting/Setting;->notifyObservers()V

    .line 117
    return-void
.end method

.method public abstract loadSetting(Landroid/content/Context;)V
.end method

.method public abstract saveSetting(Landroid/content/Context;)V
.end method

.method public setPreferenceGroup(Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 0
    .parameter "prefGroup"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    .line 220
    return-void
.end method

.method public setSetting(II)Z
    .locals 5
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v4, p1}, Lcom/lge/camera/setting/PreferenceGroup;->getListPreference(I)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 122
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v2

    .line 126
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/ListPreference;->setSaveSettingEnabled(Z)V

    .line 131
    :goto_1
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, oldValue:I
    if-eq v0, p2, :cond_0

    .line 135
    invoke-virtual {v1, p2}, Lcom/lge/camera/setting/ListPreference;->setValueIndex(I)V

    .line 136
    invoke-virtual {p0}, Lcom/lge/camera/setting/Setting;->setChanged()V

    .line 137
    invoke-virtual {p0}, Lcom/lge/camera/setting/Setting;->notifyObservers()V

    move v2, v3

    .line 139
    goto :goto_0

    .line 129
    .end local v0           #oldValue:I
    :cond_2
    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setSaveSettingEnabled(Z)V

    goto :goto_1
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mPreferenceGroup:Lcom/lge/camera/setting/PreferenceGroup;

    invoke-virtual {v4, p1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 146
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_1

    .line 147
    const-string v3, "CameraApp"

    const-string v4, "ListPreference is null!!!"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    :goto_0
    return v2

    .line 151
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/setting/Setting;->mMediator:Lcom/lge/camera/Mediator;

    invoke-virtual {v4}, Lcom/lge/camera/Mediator;->isAttachIntent()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    invoke-virtual {v1, v2}, Lcom/lge/camera/setting/ListPreference;->setSaveSettingEnabled(Z)V

    .line 157
    :goto_1
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, oldValue:Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 161
    invoke-virtual {v1, p2}, Lcom/lge/camera/setting/ListPreference;->setValue(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/lge/camera/setting/Setting;->setChanged()V

    .line 163
    invoke-virtual {p0}, Lcom/lge/camera/setting/Setting;->notifyObservers()V

    move v2, v3

    .line 165
    goto :goto_0

    .line 154
    .end local v0           #oldValue:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->setSaveSettingEnabled(Z)V

    goto :goto_1
.end method
